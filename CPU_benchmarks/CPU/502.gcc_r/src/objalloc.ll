; ModuleID = 'objalloc.bc'
source_filename = "objalloc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.objalloc = type { i8*, i32, i8* }
%struct.objalloc_chunk = type { %struct.objalloc_chunk*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !30 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !43, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !44, metadata !DIExpression()), !dbg !45
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !46
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !47
  ret i32 %call, !dbg !48
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !49 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !52
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !53
  ret i32 %call, !dbg !54
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !55 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !118, metadata !DIExpression()), !dbg !119
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !120
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !120
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !120
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !120
  %cmp = icmp uge i8* %0, %1, !dbg !120
  %conv1 = zext i1 %cmp to i64, !dbg !120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !120
  %tobool = icmp eq i64 %expval, 0, !dbg !120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !120

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !120
  br label %cond.end, !dbg !120

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !120
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !120
  %2 = load i8, i8* %0, align 1, !dbg !120
  %conv3 = zext i8 %2 to i32, !dbg !120
  br label %cond.end, !dbg !120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !120
  ret i32 %cond, !dbg !121
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !124, metadata !DIExpression()), !dbg !125
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !126
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !126
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !126
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !126
  %cmp = icmp uge i8* %0, %1, !dbg !126
  %conv1 = zext i1 %cmp to i64, !dbg !126
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !126
  %tobool = icmp eq i64 %expval, 0, !dbg !126
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !126

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !126
  br label %cond.end, !dbg !126

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !126
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !126
  %2 = load i8, i8* %0, align 1, !dbg !126
  %conv3 = zext i8 %2 to i32, !dbg !126
  br label %cond.end, !dbg !126

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !126
  ret i32 %cond, !dbg !127
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !128 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !129
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !129
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !129
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !129
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !129
  %cmp = icmp uge i8* %1, %2, !dbg !129
  %conv1 = zext i1 %cmp to i64, !dbg !129
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !129
  %tobool = icmp eq i64 %expval, 0, !dbg !129
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !129

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !129
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !129
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !129
  %3 = load i8, i8* %1, align 1, !dbg !129
  %conv3 = zext i8 %3 to i32, !dbg !129
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !129
  ret i32 %cond, !dbg !130
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !131 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !137
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !138
  ret i32 %call, !dbg !139
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !140 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !144, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !145, metadata !DIExpression()), !dbg !146
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !147
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !147
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !147
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !147
  %cmp = icmp uge i8* %0, %1, !dbg !147
  %conv1 = zext i1 %cmp to i64, !dbg !147
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !147
  %tobool = icmp eq i64 %expval, 0, !dbg !147
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !147

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !147
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !147
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !147
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !147
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !147
  store i8 %conv2, i8* %0, align 1, !dbg !147
  %conv6 = and i32 %__c, 255, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !147
  ret i32 %cond, !dbg !148
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !151, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !152, metadata !DIExpression()), !dbg !153
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !154
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !154
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !154
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !154
  %cmp = icmp uge i8* %0, %1, !dbg !154
  %conv1 = zext i1 %cmp to i64, !dbg !154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !154
  %tobool = icmp eq i64 %expval, 0, !dbg !154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !154

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !154
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !154
  br label %cond.end, !dbg !154

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !154
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !154
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !154
  store i8 %conv2, i8* %0, align 1, !dbg !154
  %conv6 = and i32 %__c, 255, !dbg !154
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !154
  ret i32 %cond, !dbg !155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !160
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !160
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !160
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !160
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !160
  %cmp = icmp uge i8* %1, %2, !dbg !160
  %conv1 = zext i1 %cmp to i64, !dbg !160
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !160
  %tobool = icmp eq i64 %expval, 0, !dbg !160
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !160

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !160
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !160
  br label %cond.end, !dbg !160

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !160
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !160
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !160
  store i8 %conv4, i8* %1, align 1, !dbg !160
  %conv6 = and i32 %__c, 255, !dbg !160
  br label %cond.end, !dbg !160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !160
  ret i32 %cond, !dbg !161
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !168, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata i64* %__n, metadata !169, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !172
  ret i64 %call, !dbg !173
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !176, metadata !DIExpression()), !dbg !177
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !178
  %0 = load i32, i32* %_flags, align 8, !dbg !178
  %and = lshr i32 %0, 4, !dbg !178
  %and.lobit = and i32 %and, 1, !dbg !178
  ret i32 %and.lobit, !dbg !179
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !182, metadata !DIExpression()), !dbg !183
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !184
  %0 = load i32, i32* %_flags, align 8, !dbg !184
  %and = lshr i32 %0, 5, !dbg !184
  %and.lobit = and i32 %and, 1, !dbg !184
  ret i32 %and.lobit, !dbg !185
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !191, metadata !DIExpression()), !dbg !192
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !193
  %conv = trunc i64 %call to i32, !dbg !194
  ret i32 %conv, !dbg !195
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !200, metadata !DIExpression()), !dbg !201
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !202
  ret i64 %call, !dbg !203
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !209, metadata !DIExpression()), !dbg !210
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !211
  ret i64 %call, !dbg !212
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !213 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !224, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i8* %__base, metadata !225, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !226, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %__size, metadata !227, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !228, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 0, metadata !229, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !230, metadata !DIExpression()), !dbg !234
  br label %while.cond, !dbg !235

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !236
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !234
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !230, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !229, metadata !DIExpression()), !dbg !234
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !237
  br i1 %cmp, label %while.body, label %cleanup, !dbg !235

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !238
  %div = lshr i64 %add, 1, !dbg !240
  call void @llvm.dbg.value(metadata i64 %div, metadata !231, metadata !DIExpression()), !dbg !234
  %mul = mul i64 %div, %__size, !dbg !241
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !242
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !232, metadata !DIExpression()), !dbg !234
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !243
  call void @llvm.dbg.value(metadata i32 %call, metadata !233, metadata !DIExpression()), !dbg !234
  %cmp1 = icmp slt i32 %call, 0, !dbg !244
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !246

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !247
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !249

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !250
  call void @llvm.dbg.value(metadata i64 %add4, metadata !229, metadata !DIExpression()), !dbg !234
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !234
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !234
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !230, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !229, metadata !DIExpression()), !dbg !234
  br label %while.cond, !dbg !235, !llvm.loop !251

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !234
  ret i8* %retval.0, !dbg !253
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !260, metadata !DIExpression()), !dbg !261
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !262
  ret double %call, !dbg !263
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.objalloc* @objalloc_create() local_unnamed_addr #3 !dbg !264 {
entry:
  %call = tail call i8* @malloc(i64 24) #5, !dbg !270
  %0 = bitcast i8* %call to %struct.objalloc*, !dbg !271
  call void @llvm.dbg.value(metadata %struct.objalloc* %0, metadata !268, metadata !DIExpression()), !dbg !272
  %cmp = icmp eq i8* %call, null, !dbg !273
  br i1 %cmp, label %cleanup, label %if.end, !dbg !275

if.end:                                           ; preds = %entry
  %call1 = tail call i8* @malloc(i64 4064) #5, !dbg !276
  %chunks = getelementptr inbounds i8, i8* %call, i64 16, !dbg !277
  %1 = bitcast i8* %chunks to i8**, !dbg !277
  store i8* %call1, i8** %1, align 8, !dbg !278
  %cmp3 = icmp eq i8* %call1, null, !dbg !279
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !281

if.then4:                                         ; preds = %if.end
  tail call void @free(i8* nonnull %call) #5, !dbg !282
  br label %cleanup, !dbg !284

if.end5:                                          ; preds = %if.end
  call void @llvm.dbg.value(metadata i8* %call1, metadata !269, metadata !DIExpression()), !dbg !272
  %next = bitcast i8* %call1 to %struct.objalloc_chunk**, !dbg !285
  store %struct.objalloc_chunk* null, %struct.objalloc_chunk** %next, align 8, !dbg !286
  %current_ptr = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !287
  %2 = bitcast i8* %current_ptr to i8**, !dbg !287
  store i8* null, i8** %2, align 8, !dbg !288
  %add.ptr1 = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !289
  %3 = bitcast i8* %call to i8**, !dbg !290
  store i8* %add.ptr1, i8** %3, align 8, !dbg !290
  %current_space = getelementptr inbounds i8, i8* %call, i64 8, !dbg !291
  %4 = bitcast i8* %current_space to i32*, !dbg !291
  store i32 4048, i32* %4, align 8, !dbg !292
  br label %cleanup, !dbg !293

cleanup:                                          ; preds = %entry, %if.end5, %if.then4
  %retval.0 = phi %struct.objalloc* [ null, %if.then4 ], [ %0, %if.end5 ], [ null, %entry ], !dbg !272
  ret %struct.objalloc* %retval.0, !dbg !294
}

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i8* @_objalloc_alloc(%struct.objalloc* %o, i64 %len) local_unnamed_addr #3 !dbg !295 {
entry:
  %current_space = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 1, !dbg !307
  %chunks30 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 2, !dbg !309
  %0 = bitcast i8** %chunks30 to i64*, !dbg !309
  %current_ptr34 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 0, !dbg !309
  %.pre = load i32, i32* %current_space, align 8, !dbg !310
  br label %tailrecurse, !dbg !311

tailrecurse:                                      ; preds = %if.end29, %entry
  %1 = phi i32 [ %.pre, %entry ], [ 4048, %if.end29 ], !dbg !310
  %len.tr = phi i64 [ %len, %entry ], [ %and, %if.end29 ]
  call void @llvm.dbg.value(metadata %struct.objalloc* %o, metadata !299, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.value(metadata i64 %len.tr, metadata !300, metadata !DIExpression()), !dbg !312
  %cmp = icmp eq i64 %len.tr, 0, !dbg !313
  %len.op.op = add i64 %len.tr, 7, !dbg !315
  %len.op.op.op = and i64 %len.op.op, -8, !dbg !316
  %and = select i1 %cmp, i64 8, i64 %len.op.op.op, !dbg !316
  call void @llvm.dbg.value(metadata i64 %and, metadata !300, metadata !DIExpression()), !dbg !312
  %conv = zext i32 %1 to i64, !dbg !317
  %cmp1 = icmp ugt i64 %and, %conv, !dbg !318
  br i1 %cmp1, label %if.end10, label %if.then3, !dbg !319

if.then3:                                         ; preds = %tailrecurse
  %.lcssa = phi i32 [ %1, %tailrecurse ], !dbg !310
  %and.lcssa = phi i64 [ %and, %tailrecurse ], !dbg !316
  %2 = load i8*, i8** %current_ptr34, align 8, !dbg !320
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 %and.lcssa, !dbg !320
  store i8* %add.ptr, i8** %current_ptr34, align 8, !dbg !320
  %3 = trunc i64 %and.lcssa to i32, !dbg !322
  %conv7 = sub i32 %.lcssa, %3, !dbg !322
  store i32 %conv7, i32* %current_space, align 8, !dbg !322
  br label %return, !dbg !323

if.end10:                                         ; preds = %tailrecurse
  %cmp11 = icmp ugt i64 %and, 511, !dbg !324
  br i1 %cmp11, label %if.then13, label %if.else, !dbg !325

if.then13:                                        ; preds = %if.end10
  %and.lcssa7 = phi i64 [ %and, %if.end10 ], !dbg !316
  %add14 = add i64 %and.lcssa7, 16, !dbg !326
  %call = tail call i8* @malloc(i64 %add14) #5, !dbg !327
  call void @llvm.dbg.value(metadata i8* %call, metadata !301, metadata !DIExpression()), !dbg !328
  %cmp15 = icmp eq i8* %call, null, !dbg !329
  br i1 %cmp15, label %return, label %if.end18, !dbg !331

if.end18:                                         ; preds = %if.then13
  call void @llvm.dbg.value(metadata i8* %call, metadata !304, metadata !DIExpression()), !dbg !328
  %4 = load i64, i64* %0, align 8, !dbg !332
  %5 = bitcast i8* %call to i64*, !dbg !333
  store i64 %4, i64* %5, align 8, !dbg !333
  %6 = bitcast %struct.objalloc* %o to i64*, !dbg !334
  %7 = load i64, i64* %6, align 8, !dbg !334
  %current_ptr20 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !335
  %8 = bitcast i8* %current_ptr20 to i64*, !dbg !336
  store i64 %7, i64* %8, align 8, !dbg !336
  store i8* %call, i8** %chunks30, align 8, !dbg !337
  %add.ptr22 = getelementptr inbounds i8, i8* %call, i64 16, !dbg !338
  br label %return, !dbg !339

if.else:                                          ; preds = %if.end10
  %call25 = tail call i8* @malloc(i64 4064) #5, !dbg !340
  call void @llvm.dbg.value(metadata i8* %call25, metadata !305, metadata !DIExpression()), !dbg !309
  %cmp26 = icmp eq i8* %call25, null, !dbg !341
  br i1 %cmp26, label %return.loopexit, label %if.end29, !dbg !343

if.end29:                                         ; preds = %if.else
  call void @llvm.dbg.value(metadata i8* %call25, metadata !305, metadata !DIExpression()), !dbg !309
  %9 = load i64, i64* %0, align 8, !dbg !344
  %10 = bitcast i8* %call25 to i64*, !dbg !345
  store i64 %9, i64* %10, align 8, !dbg !345
  %current_ptr32 = getelementptr inbounds i8, i8* %call25, i64 8, !dbg !346
  %11 = bitcast i8* %current_ptr32 to i8**, !dbg !346
  store i8* null, i8** %11, align 8, !dbg !347
  %add.ptr33 = getelementptr inbounds i8, i8* %call25, i64 16, !dbg !348
  store i8* %add.ptr33, i8** %current_ptr34, align 8, !dbg !349
  store i32 4048, i32* %current_space, align 8, !dbg !350
  store i8* %call25, i8** %chunks30, align 8, !dbg !351
  br label %tailrecurse, !dbg !311

return.loopexit:                                  ; preds = %if.else
  br label %return, !dbg !352

return:                                           ; preds = %return.loopexit, %if.end18, %if.then13, %if.then3
  %retval.2 = phi i8* [ %2, %if.then3 ], [ %add.ptr22, %if.end18 ], [ null, %if.then13 ], [ null, %return.loopexit ], !dbg !312
  ret i8* %retval.2, !dbg !352
}

; Function Attrs: nounwind uwtable
define dso_local void @objalloc_free(%struct.objalloc* %o) local_unnamed_addr #3 !dbg !353 {
entry:
  call void @llvm.dbg.value(metadata %struct.objalloc* %o, metadata !357, metadata !DIExpression()), !dbg !361
  %chunks = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 2, !dbg !362
  %0 = bitcast i8** %chunks to %struct.objalloc_chunk**, !dbg !362
  %1 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %0, align 8, !dbg !362
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %1, metadata !358, metadata !DIExpression()), !dbg !361
  br label %while.cond, !dbg !363

while.cond:                                       ; preds = %while.body, %entry
  %.in = phi %struct.objalloc_chunk* [ %1, %entry ], [ %3, %while.body ]
  %l.0 = phi %struct.objalloc_chunk* [ %1, %entry ], [ %3, %while.body ], !dbg !361
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %l.0, metadata !358, metadata !DIExpression()), !dbg !361
  %cmp = icmp eq %struct.objalloc_chunk* %l.0, null, !dbg !364
  br i1 %cmp, label %while.end, label %while.body, !dbg !363

while.body:                                       ; preds = %while.cond
  %2 = bitcast %struct.objalloc_chunk* %.in to i8*, !dbg !361
  %next1 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %l.0, i64 0, i32 0, !dbg !365
  %3 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %next1, align 8, !dbg !365
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %3, metadata !359, metadata !DIExpression()), !dbg !366
  tail call void @free(i8* %2) #5, !dbg !367
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %3, metadata !358, metadata !DIExpression()), !dbg !361
  br label %while.cond, !dbg !363, !llvm.loop !368

while.end:                                        ; preds = %while.cond
  %4 = bitcast %struct.objalloc* %o to i8*, !dbg !370
  tail call void @free(i8* %4) #5, !dbg !371
  ret void, !dbg !372
}

; Function Attrs: nounwind uwtable
define dso_local void @objalloc_free_block(%struct.objalloc* %o, i8* %block) local_unnamed_addr #3 !dbg !373 {
entry:
  call void @llvm.dbg.value(metadata %struct.objalloc* %o, metadata !377, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i8* %block, metadata !378, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata i8* %block, metadata !381, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* null, metadata !380, metadata !DIExpression()), !dbg !393
  %chunks = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 2, !dbg !394
  %0 = bitcast i8** %chunks to %struct.objalloc_chunk**, !dbg !394
  br label %for.cond, !dbg !396

for.cond:                                         ; preds = %for.inc, %entry
  %small.0 = phi %struct.objalloc_chunk* [ null, %entry ], [ %small.1, %for.inc ], !dbg !393
  %p.0.in = phi %struct.objalloc_chunk** [ %0, %entry ], [ %next, %for.inc ]
  %p.0 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %p.0.in, align 8, !dbg !397
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %p.0, metadata !379, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0, metadata !380, metadata !DIExpression()), !dbg !393
  %cond = icmp eq %struct.objalloc_chunk* %p.0, null, !dbg !398
  br i1 %cond, label %if.then11.loopexit, label %for.body, !dbg !398

for.body:                                         ; preds = %for.cond
  %current_ptr = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.0, i64 0, i32 1, !dbg !399
  %1 = load i8*, i8** %current_ptr, align 8, !dbg !399
  %cmp1 = icmp eq i8* %1, null, !dbg !403
  br i1 %cmp1, label %if.then, label %if.else, !dbg !404

if.then:                                          ; preds = %for.body
  %2 = bitcast %struct.objalloc_chunk* %p.0 to i8*, !dbg !405
  %cmp2 = icmp ult i8* %2, %block, !dbg !406
  br i1 %cmp2, label %land.lhs.true, label %for.inc, !dbg !409

land.lhs.true:                                    ; preds = %if.then
  %add.ptr7 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.0, i64 254, !dbg !410
  %add.ptr = bitcast %struct.objalloc_chunk* %add.ptr7 to i8*, !dbg !410
  %cmp3 = icmp ugt i8* %add.ptr, %block, !dbg !411
  br i1 %cmp3, label %for.end, label %for.inc, !dbg !412

if.else:                                          ; preds = %for.body
  %add.ptr53 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.0, i64 1, !dbg !413
  %add.ptr5 = bitcast %struct.objalloc_chunk* %add.ptr53 to i8*, !dbg !413
  %cmp6 = icmp eq i8* %add.ptr5, %block, !dbg !416
  br i1 %cmp6, label %for.end, label %for.inc, !dbg !417

for.inc:                                          ; preds = %land.lhs.true, %if.then, %if.else
  %small.1 = phi %struct.objalloc_chunk* [ %p.0, %land.lhs.true ], [ %p.0, %if.then ], [ %small.0, %if.else ], !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.1, metadata !380, metadata !DIExpression()), !dbg !393
  %next = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.0, i64 0, i32 0, !dbg !418
  br label %for.cond, !dbg !419, !llvm.loop !420

for.end:                                          ; preds = %if.else, %land.lhs.true
  %.lcssa = phi i8* [ %1, %if.else ], [ %1, %land.lhs.true ], !dbg !399
  %small.0.lcssa20 = phi %struct.objalloc_chunk* [ %small.0, %if.else ], [ %small.0, %land.lhs.true ], !dbg !393
  %p.0.lcssa18 = phi %struct.objalloc_chunk* [ %p.0, %if.else ], [ %p.0, %land.lhs.true ], !dbg !397
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa20, metadata !380, metadata !DIExpression()), !dbg !393
  br label %if.end12, !dbg !422

if.then11.loopexit:                               ; preds = %for.cond
  %small.0.lcssa = phi %struct.objalloc_chunk* [ %small.0, %for.cond ], !dbg !393
  %p.0.lcssa = phi %struct.objalloc_chunk* [ %p.0, %for.cond ], !dbg !397
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.0.lcssa, metadata !380, metadata !DIExpression()), !dbg !393
  tail call void @abort() #5, !dbg !423
  %.pre = load i8*, i8** inttoptr (i64 8 to i8**), align 8, !dbg !425
  br label %if.end12, !dbg !423

if.end12:                                         ; preds = %for.end, %if.then11.loopexit
  %small.021 = phi %struct.objalloc_chunk* [ %small.0.lcssa20, %for.end ], [ %small.0.lcssa, %if.then11.loopexit ]
  %p.019 = phi %struct.objalloc_chunk* [ %p.0.lcssa18, %for.end ], [ %p.0.lcssa, %if.then11.loopexit ]
  %3 = phi i8* [ %.lcssa, %for.end ], [ %.pre, %if.then11.loopexit ], !dbg !425
  %cmp14 = icmp eq i8* %3, null, !dbg !426
  br i1 %cmp14, label %if.then15, label %if.else41, !dbg !427

if.then15:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* null, metadata !385, metadata !DIExpression()), !dbg !428
  %4 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %0, align 8, !dbg !429
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %4, metadata !382, metadata !DIExpression()), !dbg !428
  br label %while.cond, !dbg !430

while.cond:                                       ; preds = %if.end34, %if.then15
  %.in6 = phi %struct.objalloc_chunk* [ %4, %if.then15 ], [ %6, %if.end34 ]
  %q.0 = phi %struct.objalloc_chunk* [ %4, %if.then15 ], [ %6, %if.end34 ], !dbg !428
  %small.2 = phi %struct.objalloc_chunk* [ %small.021, %if.then15 ], [ %small.4, %if.end34 ], !dbg !393
  %first.0 = phi %struct.objalloc_chunk* [ null, %if.then15 ], [ %first.3, %if.end34 ], !dbg !431
  %5 = bitcast %struct.objalloc_chunk* %.in6 to i8*, !dbg !428
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %first.0, metadata !385, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.2, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %q.0, metadata !382, metadata !DIExpression()), !dbg !428
  %cmp17 = icmp eq %struct.objalloc_chunk* %q.0, %p.019, !dbg !432
  br i1 %cmp17, label %while.end, label %while.body, !dbg !430

while.body:                                       ; preds = %while.cond
  %next19 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %q.0, i64 0, i32 0, !dbg !433
  %6 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %next19, align 8, !dbg !433
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %6, metadata !386, metadata !DIExpression()), !dbg !434
  %cmp20 = icmp eq %struct.objalloc_chunk* %small.2, null, !dbg !435
  br i1 %cmp20, label %if.else25, label %if.then21, !dbg !437

if.then21:                                        ; preds = %while.body
  %cmp22 = icmp eq %struct.objalloc_chunk* %small.2, %q.0, !dbg !438
  %spec.select = select i1 %cmp22, %struct.objalloc_chunk* null, %struct.objalloc_chunk* %small.2, !dbg !441
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %spec.select, metadata !380, metadata !DIExpression()), !dbg !393
  tail call void @free(i8* %5) #5, !dbg !442
  br label %if.end34, !dbg !443

if.else25:                                        ; preds = %while.body
  %current_ptr26 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %q.0, i64 0, i32 1, !dbg !444
  %7 = load i8*, i8** %current_ptr26, align 8, !dbg !444
  %cmp27 = icmp ugt i8* %7, %block, !dbg !446
  br i1 %cmp27, label %if.then28, label %if.else29, !dbg !447

if.then28:                                        ; preds = %if.else25
  tail call void @free(i8* %5) #5, !dbg !448
  br label %if.end34, !dbg !448

if.else29:                                        ; preds = %if.else25
  %cmp30 = icmp eq %struct.objalloc_chunk* %first.0, null, !dbg !449
  %spec.select1 = select i1 %cmp30, %struct.objalloc_chunk* %q.0, %struct.objalloc_chunk* %first.0, !dbg !451
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %spec.select1, metadata !385, metadata !DIExpression()), !dbg !428
  br label %if.end34

if.end34:                                         ; preds = %if.then28, %if.else29, %if.then21
  %small.4 = phi %struct.objalloc_chunk* [ %spec.select, %if.then21 ], [ null, %if.else29 ], [ null, %if.then28 ], !dbg !393
  %first.3 = phi %struct.objalloc_chunk* [ %first.0, %if.then21 ], [ %spec.select1, %if.else29 ], [ %first.0, %if.then28 ], !dbg !431
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %first.3, metadata !385, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %small.4, metadata !380, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %6, metadata !382, metadata !DIExpression()), !dbg !428
  br label %while.cond, !dbg !430, !llvm.loop !452

while.end:                                        ; preds = %while.cond
  %first.0.lcssa = phi %struct.objalloc_chunk* [ %first.0, %while.cond ], !dbg !431
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %first.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %first.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !428
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %first.0.lcssa, metadata !385, metadata !DIExpression()), !dbg !428
  %cmp35 = icmp eq %struct.objalloc_chunk* %first.0.lcssa, null, !dbg !454
  %spec.select2 = select i1 %cmp35, %struct.objalloc_chunk* %p.019, %struct.objalloc_chunk* %first.0.lcssa, !dbg !456
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %spec.select2, metadata !385, metadata !DIExpression()), !dbg !428
  store %struct.objalloc_chunk* %spec.select2, %struct.objalloc_chunk** %0, align 8, !dbg !457
  %current_ptr39 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 0, !dbg !458
  store i8* %block, i8** %current_ptr39, align 8, !dbg !459
  %add.ptr405 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.019, i64 254, !dbg !460
  %sub.ptr.lhs.cast = ptrtoint %struct.objalloc_chunk* %add.ptr405 to i64, !dbg !461
  %sub.ptr.rhs.cast = ptrtoint i8* %block to i64, !dbg !461
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !461
  %conv = trunc i64 %sub.ptr.sub to i32, !dbg !462
  %current_space = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 1, !dbg !463
  store i32 %conv, i32* %current_space, align 8, !dbg !464
  br label %if.end69, !dbg !465

if.else41:                                        ; preds = %if.end12
  call void @llvm.dbg.value(metadata i8* %3, metadata !390, metadata !DIExpression()), !dbg !466
  %next45 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.019, i64 0, i32 0, !dbg !467
  %8 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %next45, align 8, !dbg !467
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %8, metadata !379, metadata !DIExpression()), !dbg !393
  %9 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %0, align 8, !dbg !468
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %9, metadata !388, metadata !DIExpression()), !dbg !466
  br label %while.cond47, !dbg !469

while.cond47:                                     ; preds = %while.body50, %if.else41
  %.in = phi %struct.objalloc_chunk* [ %9, %if.else41 ], [ %11, %while.body50 ]
  %q42.0 = phi %struct.objalloc_chunk* [ %9, %if.else41 ], [ %11, %while.body50 ], !dbg !466
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %q42.0, metadata !388, metadata !DIExpression()), !dbg !466
  %cmp48 = icmp eq %struct.objalloc_chunk* %q42.0, %8, !dbg !470
  br i1 %cmp48, label %while.end53, label %while.body50, !dbg !469

while.body50:                                     ; preds = %while.cond47
  %10 = bitcast %struct.objalloc_chunk* %.in to i8*, !dbg !466
  %next52 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %q42.0, i64 0, i32 0, !dbg !471
  %11 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %next52, align 8, !dbg !471
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %11, metadata !391, metadata !DIExpression()), !dbg !472
  tail call void @free(i8* %10) #5, !dbg !473
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %11, metadata !388, metadata !DIExpression()), !dbg !466
  br label %while.cond47, !dbg !469, !llvm.loop !474

while.end53:                                      ; preds = %while.cond47
  store %struct.objalloc_chunk* %8, %struct.objalloc_chunk** %0, align 8, !dbg !476
  br label %while.cond55, !dbg !477

while.cond55:                                     ; preds = %while.body59, %while.end53
  %p.1 = phi %struct.objalloc_chunk* [ %8, %while.end53 ], [ %13, %while.body59 ], !dbg !466
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %p.1, metadata !379, metadata !DIExpression()), !dbg !393
  %current_ptr56 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.1, i64 0, i32 1, !dbg !478
  %12 = load i8*, i8** %current_ptr56, align 8, !dbg !478
  %cmp57 = icmp eq i8* %12, null, !dbg !479
  br i1 %cmp57, label %while.end61, label %while.body59, !dbg !477

while.body59:                                     ; preds = %while.cond55
  %next60 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.1, i64 0, i32 0, !dbg !480
  %13 = load %struct.objalloc_chunk*, %struct.objalloc_chunk** %next60, align 8, !dbg !480
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %13, metadata !379, metadata !DIExpression()), !dbg !393
  br label %while.cond55, !dbg !477, !llvm.loop !481

while.end61:                                      ; preds = %while.cond55
  %p.1.lcssa = phi %struct.objalloc_chunk* [ %p.1, %while.cond55 ], !dbg !466
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %p.1.lcssa, metadata !379, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %p.1.lcssa, metadata !379, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.value(metadata %struct.objalloc_chunk* %p.1.lcssa, metadata !379, metadata !DIExpression()), !dbg !393
  %current_ptr62 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 0, !dbg !482
  store i8* %3, i8** %current_ptr62, align 8, !dbg !483
  %add.ptr634 = getelementptr inbounds %struct.objalloc_chunk, %struct.objalloc_chunk* %p.1.lcssa, i64 254, !dbg !484
  %sub.ptr.lhs.cast64 = ptrtoint %struct.objalloc_chunk* %add.ptr634 to i64, !dbg !485
  %sub.ptr.rhs.cast65 = ptrtoint i8* %3 to i64, !dbg !485
  %sub.ptr.sub66 = sub i64 %sub.ptr.lhs.cast64, %sub.ptr.rhs.cast65, !dbg !485
  %conv67 = trunc i64 %sub.ptr.sub66 to i32, !dbg !486
  %current_space68 = getelementptr inbounds %struct.objalloc, %struct.objalloc* %o, i64 0, i32 1, !dbg !487
  store i32 %conv67, i32* %current_space68, align 8, !dbg !488
  br label %if.end69

if.end69:                                         ; preds = %while.end61, %while.end
  ret void, !dbg !489
}

declare dso_local void @abort() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "objalloc.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !6, !7, !10, !11, !13, !21, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "objalloc", file: !15, line: 44, size: 192, elements: !16)
!15 = !DIFile(filename: "./include/objalloc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!16 = !{!17, !18, !20}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "current_ptr", scope: !14, file: !15, line: 46, baseType: !8, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "current_space", scope: !14, file: !15, line: 47, baseType: !19, size: 32, offset: 64)
!19 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !14, file: !15, line: 48, baseType: !10, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "objalloc_chunk", file: !1, line: 58, size: 128, elements: !23)
!23 = !{!24, !25}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !22, file: !1, line: 61, baseType: !21, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "current_ptr", scope: !22, file: !1, line: 65, baseType: !8, size: 64, offset: 64)
!26 = !{i32 2, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!30 = distinct !DISubprogram(name: "vprintf", scope: !31, file: !31, line: 39, type: !32, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!31 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!32 = !DISubroutineType(types: !33)
!33 = !{!6, !34, !35}
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !11)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !37)
!37 = !{!38, !39, !40, !41}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !36, file: !1, baseType: !19, size: 32)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !36, file: !1, baseType: !19, size: 32, offset: 32)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !36, file: !1, baseType: !10, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !36, file: !1, baseType: !10, size: 64, offset: 128)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: "__fmt", arg: 1, scope: !30, file: !31, line: 39, type: !34)
!44 = !DILocalVariable(name: "__arg", arg: 2, scope: !30, file: !31, line: 39, type: !35)
!45 = !DILocation(line: 0, scope: !30)
!46 = !DILocation(line: 41, column: 20, scope: !30)
!47 = !DILocation(line: 41, column: 10, scope: !30)
!48 = !DILocation(line: 41, column: 3, scope: !30)
!49 = distinct !DISubprogram(name: "getchar", scope: !31, file: !31, line: 47, type: !50, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{!6}
!52 = !DILocation(line: 49, column: 16, scope: !49)
!53 = !DILocation(line: 49, column: 10, scope: !49)
!54 = !DILocation(line: 49, column: 3, scope: !49)
!55 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !31, file: !31, line: 56, type: !56, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!56 = !DISubroutineType(types: !57)
!57 = !{!6, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !60, line: 7, baseType: !61)
!60 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !62, line: 49, size: 1728, elements: !63)
!62 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !79, !81, !82, !83, !87, !89, !91, !95, !98, !100, !103, !106, !107, !108, !112, !113}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !61, file: !62, line: 51, baseType: !6, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !61, file: !62, line: 54, baseType: !8, size: 64, offset: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !61, file: !62, line: 55, baseType: !8, size: 64, offset: 128)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !61, file: !62, line: 56, baseType: !8, size: 64, offset: 192)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !61, file: !62, line: 57, baseType: !8, size: 64, offset: 256)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !61, file: !62, line: 58, baseType: !8, size: 64, offset: 320)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !61, file: !62, line: 59, baseType: !8, size: 64, offset: 384)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !61, file: !62, line: 60, baseType: !8, size: 64, offset: 448)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !61, file: !62, line: 61, baseType: !8, size: 64, offset: 512)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !61, file: !62, line: 64, baseType: !8, size: 64, offset: 576)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !61, file: !62, line: 65, baseType: !8, size: 64, offset: 640)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !61, file: !62, line: 66, baseType: !8, size: 64, offset: 704)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !61, file: !62, line: 68, baseType: !77, size: 64, offset: 768)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !62, line: 36, flags: DIFlagFwdDecl)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !61, file: !62, line: 70, baseType: !80, size: 64, offset: 832)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !61, file: !62, line: 72, baseType: !6, size: 32, offset: 896)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !61, file: !62, line: 73, baseType: !6, size: 32, offset: 928)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !61, file: !62, line: 74, baseType: !84, size: 64, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !85, line: 152, baseType: !86)
!85 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!86 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !61, file: !62, line: 77, baseType: !88, size: 16, offset: 1024)
!88 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !61, file: !62, line: 78, baseType: !90, size: 8, offset: 1040)
!90 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !61, file: !62, line: 79, baseType: !92, size: 8, offset: 1048)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 8, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 1)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !61, file: !62, line: 81, baseType: !96, size: 64, offset: 1088)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !62, line: 43, baseType: null)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !61, file: !62, line: 89, baseType: !99, size: 64, offset: 1152)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !85, line: 153, baseType: !86)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !61, file: !62, line: 91, baseType: !101, size: 64, offset: 1216)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !62, line: 37, flags: DIFlagFwdDecl)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !61, file: !62, line: 92, baseType: !104, size: 64, offset: 1280)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !62, line: 38, flags: DIFlagFwdDecl)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !61, file: !62, line: 93, baseType: !80, size: 64, offset: 1344)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !61, file: !62, line: 94, baseType: !10, size: 64, offset: 1408)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !61, file: !62, line: 95, baseType: !109, size: 64, offset: 1472)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 46, baseType: !111)
!110 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!111 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !61, file: !62, line: 96, baseType: !6, size: 32, offset: 1536)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !61, file: !62, line: 98, baseType: !114, size: 160, offset: 1568)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 160, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 20)
!117 = !{!118}
!118 = !DILocalVariable(name: "__fp", arg: 1, scope: !55, file: !31, line: 56, type: !58)
!119 = !DILocation(line: 0, scope: !55)
!120 = !DILocation(line: 58, column: 10, scope: !55)
!121 = !DILocation(line: 58, column: 3, scope: !55)
!122 = distinct !DISubprogram(name: "getc_unlocked", scope: !31, file: !31, line: 66, type: !56, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!123 = !{!124}
!124 = !DILocalVariable(name: "__fp", arg: 1, scope: !122, file: !31, line: 66, type: !58)
!125 = !DILocation(line: 0, scope: !122)
!126 = !DILocation(line: 68, column: 10, scope: !122)
!127 = !DILocation(line: 68, column: 3, scope: !122)
!128 = distinct !DISubprogram(name: "getchar_unlocked", scope: !31, file: !31, line: 73, type: !50, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!129 = !DILocation(line: 75, column: 10, scope: !128)
!130 = !DILocation(line: 75, column: 3, scope: !128)
!131 = distinct !DISubprogram(name: "putchar", scope: !31, file: !31, line: 82, type: !132, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!6, !6}
!134 = !{!135}
!135 = !DILocalVariable(name: "__c", arg: 1, scope: !131, file: !31, line: 82, type: !6)
!136 = !DILocation(line: 0, scope: !131)
!137 = !DILocation(line: 84, column: 21, scope: !131)
!138 = !DILocation(line: 84, column: 10, scope: !131)
!139 = !DILocation(line: 84, column: 3, scope: !131)
!140 = distinct !DISubprogram(name: "fputc_unlocked", scope: !31, file: !31, line: 91, type: !141, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !143)
!141 = !DISubroutineType(types: !142)
!142 = !{!6, !6, !58}
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "__c", arg: 1, scope: !140, file: !31, line: 91, type: !6)
!145 = !DILocalVariable(name: "__stream", arg: 2, scope: !140, file: !31, line: 91, type: !58)
!146 = !DILocation(line: 0, scope: !140)
!147 = !DILocation(line: 93, column: 10, scope: !140)
!148 = !DILocation(line: 93, column: 3, scope: !140)
!149 = distinct !DISubprogram(name: "putc_unlocked", scope: !31, file: !31, line: 101, type: !141, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !150)
!150 = !{!151, !152}
!151 = !DILocalVariable(name: "__c", arg: 1, scope: !149, file: !31, line: 101, type: !6)
!152 = !DILocalVariable(name: "__stream", arg: 2, scope: !149, file: !31, line: 101, type: !58)
!153 = !DILocation(line: 0, scope: !149)
!154 = !DILocation(line: 103, column: 10, scope: !149)
!155 = !DILocation(line: 103, column: 3, scope: !149)
!156 = distinct !DISubprogram(name: "putchar_unlocked", scope: !31, file: !31, line: 108, type: !132, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !157)
!157 = !{!158}
!158 = !DILocalVariable(name: "__c", arg: 1, scope: !156, file: !31, line: 108, type: !6)
!159 = !DILocation(line: 0, scope: !156)
!160 = !DILocation(line: 110, column: 10, scope: !156)
!161 = !DILocation(line: 110, column: 3, scope: !156)
!162 = distinct !DISubprogram(name: "getline", scope: !31, file: !31, line: 118, type: !163, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!163 = !DISubroutineType(types: !164)
!164 = !{!165, !7, !166, !58}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !85, line: 193, baseType: !86)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!167 = !{!168, !169, !170}
!168 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !162, file: !31, line: 118, type: !7)
!169 = !DILocalVariable(name: "__n", arg: 2, scope: !162, file: !31, line: 118, type: !166)
!170 = !DILocalVariable(name: "__stream", arg: 3, scope: !162, file: !31, line: 118, type: !58)
!171 = !DILocation(line: 0, scope: !162)
!172 = !DILocation(line: 120, column: 10, scope: !162)
!173 = !DILocation(line: 120, column: 3, scope: !162)
!174 = distinct !DISubprogram(name: "feof_unlocked", scope: !31, file: !31, line: 128, type: !56, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "__stream", arg: 1, scope: !174, file: !31, line: 128, type: !58)
!177 = !DILocation(line: 0, scope: !174)
!178 = !DILocation(line: 130, column: 10, scope: !174)
!179 = !DILocation(line: 130, column: 3, scope: !174)
!180 = distinct !DISubprogram(name: "ferror_unlocked", scope: !31, file: !31, line: 135, type: !56, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !181)
!181 = !{!182}
!182 = !DILocalVariable(name: "__stream", arg: 1, scope: !180, file: !31, line: 135, type: !58)
!183 = !DILocation(line: 0, scope: !180)
!184 = !DILocation(line: 137, column: 10, scope: !180)
!185 = !DILocation(line: 137, column: 3, scope: !180)
!186 = distinct !DISubprogram(name: "atoi", scope: !187, file: !187, line: 361, type: !188, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!187 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!188 = !DISubroutineType(types: !189)
!189 = !{!6, !11}
!190 = !{!191}
!191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !186, file: !187, line: 361, type: !11)
!192 = !DILocation(line: 0, scope: !186)
!193 = !DILocation(line: 363, column: 16, scope: !186)
!194 = !DILocation(line: 363, column: 10, scope: !186)
!195 = !DILocation(line: 363, column: 3, scope: !186)
!196 = distinct !DISubprogram(name: "atol", scope: !187, file: !187, line: 366, type: !197, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!86, !11}
!199 = !{!200}
!200 = !DILocalVariable(name: "__nptr", arg: 1, scope: !196, file: !187, line: 366, type: !11)
!201 = !DILocation(line: 0, scope: !196)
!202 = !DILocation(line: 368, column: 10, scope: !196)
!203 = !DILocation(line: 368, column: 3, scope: !196)
!204 = distinct !DISubprogram(name: "atoll", scope: !187, file: !187, line: 373, type: !205, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!205 = !DISubroutineType(types: !206)
!206 = !{!207, !11}
!207 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!208 = !{!209}
!209 = !DILocalVariable(name: "__nptr", arg: 1, scope: !204, file: !187, line: 373, type: !11)
!210 = !DILocation(line: 0, scope: !204)
!211 = !DILocation(line: 375, column: 10, scope: !204)
!212 = !DILocation(line: 375, column: 3, scope: !204)
!213 = distinct !DISubprogram(name: "bsearch", scope: !214, file: !214, line: 20, type: !215, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !223)
!214 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!215 = !DISubroutineType(types: !216)
!216 = !{!10, !217, !217, !109, !109, !219}
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !187, line: 808, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!6, !217, !217}
!223 = !{!224, !225, !226, !227, !228, !229, !230, !231, !232, !233}
!224 = !DILocalVariable(name: "__key", arg: 1, scope: !213, file: !214, line: 20, type: !217)
!225 = !DILocalVariable(name: "__base", arg: 2, scope: !213, file: !214, line: 20, type: !217)
!226 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !213, file: !214, line: 20, type: !109)
!227 = !DILocalVariable(name: "__size", arg: 4, scope: !213, file: !214, line: 20, type: !109)
!228 = !DILocalVariable(name: "__compar", arg: 5, scope: !213, file: !214, line: 21, type: !219)
!229 = !DILocalVariable(name: "__l", scope: !213, file: !214, line: 23, type: !109)
!230 = !DILocalVariable(name: "__u", scope: !213, file: !214, line: 23, type: !109)
!231 = !DILocalVariable(name: "__idx", scope: !213, file: !214, line: 23, type: !109)
!232 = !DILocalVariable(name: "__p", scope: !213, file: !214, line: 24, type: !217)
!233 = !DILocalVariable(name: "__comparison", scope: !213, file: !214, line: 25, type: !6)
!234 = !DILocation(line: 0, scope: !213)
!235 = !DILocation(line: 29, column: 3, scope: !213)
!236 = !DILocation(line: 27, column: 7, scope: !213)
!237 = !DILocation(line: 29, column: 14, scope: !213)
!238 = !DILocation(line: 31, column: 20, scope: !239)
!239 = distinct !DILexicalBlock(scope: !213, file: !214, line: 30, column: 5)
!240 = !DILocation(line: 31, column: 27, scope: !239)
!241 = !DILocation(line: 32, column: 56, scope: !239)
!242 = !DILocation(line: 32, column: 47, scope: !239)
!243 = !DILocation(line: 33, column: 22, scope: !239)
!244 = !DILocation(line: 34, column: 24, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !214, line: 34, column: 11)
!246 = !DILocation(line: 34, column: 11, scope: !239)
!247 = !DILocation(line: 36, column: 29, scope: !248)
!248 = distinct !DILexicalBlock(scope: !245, file: !214, line: 36, column: 16)
!249 = !DILocation(line: 36, column: 16, scope: !245)
!250 = !DILocation(line: 37, column: 14, scope: !248)
!251 = distinct !{!251, !235, !252}
!252 = !DILocation(line: 40, column: 5, scope: !213)
!253 = !DILocation(line: 43, column: 1, scope: !213)
!254 = distinct !DISubprogram(name: "atof", scope: !255, file: !255, line: 25, type: !256, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !259)
!255 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!256 = !DISubroutineType(types: !257)
!257 = !{!258, !11}
!258 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!259 = !{!260}
!260 = !DILocalVariable(name: "__nptr", arg: 1, scope: !254, file: !255, line: 25, type: !11)
!261 = !DILocation(line: 0, scope: !254)
!262 = !DILocation(line: 27, column: 10, scope: !254)
!263 = !DILocation(line: 27, column: 3, scope: !254)
!264 = distinct !DISubprogram(name: "objalloc_create", scope: !1, file: !1, line: 86, type: !265, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!13}
!267 = !{!268, !269}
!268 = !DILocalVariable(name: "ret", scope: !264, file: !1, line: 88, type: !13)
!269 = !DILocalVariable(name: "chunk", scope: !264, file: !1, line: 89, type: !21)
!270 = !DILocation(line: 91, column: 29, scope: !264)
!271 = !DILocation(line: 91, column: 9, scope: !264)
!272 = !DILocation(line: 0, scope: !264)
!273 = !DILocation(line: 92, column: 11, scope: !274)
!274 = distinct !DILexicalBlock(scope: !264, file: !1, line: 92, column: 7)
!275 = !DILocation(line: 92, column: 7, scope: !264)
!276 = !DILocation(line: 95, column: 23, scope: !264)
!277 = !DILocation(line: 95, column: 8, scope: !264)
!278 = !DILocation(line: 95, column: 15, scope: !264)
!279 = !DILocation(line: 96, column: 19, scope: !280)
!280 = distinct !DILexicalBlock(scope: !264, file: !1, line: 96, column: 7)
!281 = !DILocation(line: 96, column: 7, scope: !264)
!282 = !DILocation(line: 98, column: 7, scope: !283)
!283 = distinct !DILexicalBlock(scope: !280, file: !1, line: 97, column: 5)
!284 = !DILocation(line: 99, column: 7, scope: !283)
!285 = !DILocation(line: 103, column: 10, scope: !264)
!286 = !DILocation(line: 103, column: 15, scope: !264)
!287 = !DILocation(line: 104, column: 10, scope: !264)
!288 = !DILocation(line: 104, column: 22, scope: !264)
!289 = !DILocation(line: 106, column: 37, scope: !264)
!290 = !DILocation(line: 106, column: 20, scope: !264)
!291 = !DILocation(line: 107, column: 8, scope: !264)
!292 = !DILocation(line: 107, column: 22, scope: !264)
!293 = !DILocation(line: 109, column: 3, scope: !264)
!294 = !DILocation(line: 110, column: 1, scope: !264)
!295 = distinct !DISubprogram(name: "_objalloc_alloc", scope: !1, file: !1, line: 115, type: !296, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !298)
!296 = !DISubroutineType(types: !297)
!297 = !{!10, !13, !111}
!298 = !{!299, !300, !301, !304, !305}
!299 = !DILocalVariable(name: "o", arg: 1, scope: !295, file: !1, line: 115, type: !13)
!300 = !DILocalVariable(name: "len", arg: 2, scope: !295, file: !1, line: 115, type: !111)
!301 = !DILocalVariable(name: "ret", scope: !302, file: !1, line: 133, type: !8)
!302 = distinct !DILexicalBlock(scope: !303, file: !1, line: 132, column: 5)
!303 = distinct !DILexicalBlock(scope: !295, file: !1, line: 131, column: 7)
!304 = !DILocalVariable(name: "chunk", scope: !302, file: !1, line: 134, type: !21)
!305 = !DILocalVariable(name: "chunk", scope: !306, file: !1, line: 150, type: !21)
!306 = distinct !DILexicalBlock(scope: !303, file: !1, line: 149, column: 5)
!307 = !DILocation(line: 0, scope: !308)
!308 = distinct !DILexicalBlock(scope: !295, file: !1, line: 124, column: 7)
!309 = !DILocation(line: 0, scope: !306)
!310 = !DILocation(line: 124, column: 17, scope: !308)
!311 = !DILocation(line: 163, column: 14, scope: !306)
!312 = !DILocation(line: 0, scope: !295)
!313 = !DILocation(line: 119, column: 11, scope: !314)
!314 = distinct !DILexicalBlock(scope: !295, file: !1, line: 119, column: 7)
!315 = !DILocation(line: 122, column: 31, scope: !295)
!316 = !DILocation(line: 122, column: 36, scope: !295)
!317 = !DILocation(line: 124, column: 14, scope: !308)
!318 = !DILocation(line: 124, column: 11, scope: !308)
!319 = !DILocation(line: 124, column: 7, scope: !295)
!320 = !DILocation(line: 126, column: 22, scope: !321)
!321 = distinct !DILexicalBlock(scope: !308, file: !1, line: 125, column: 5)
!322 = !DILocation(line: 127, column: 24, scope: !321)
!323 = !DILocation(line: 128, column: 7, scope: !321)
!324 = !DILocation(line: 131, column: 11, scope: !303)
!325 = !DILocation(line: 131, column: 7, scope: !295)
!326 = !DILocation(line: 136, column: 48, scope: !302)
!327 = !DILocation(line: 136, column: 22, scope: !302)
!328 = !DILocation(line: 0, scope: !302)
!329 = !DILocation(line: 137, column: 15, scope: !330)
!330 = distinct !DILexicalBlock(scope: !302, file: !1, line: 137, column: 11)
!331 = !DILocation(line: 137, column: 11, scope: !302)
!332 = !DILocation(line: 141, column: 50, scope: !302)
!333 = !DILocation(line: 141, column: 19, scope: !302)
!334 = !DILocation(line: 142, column: 31, scope: !302)
!335 = !DILocation(line: 142, column: 14, scope: !302)
!336 = !DILocation(line: 142, column: 26, scope: !302)
!337 = !DILocation(line: 144, column: 17, scope: !302)
!338 = !DILocation(line: 146, column: 25, scope: !302)
!339 = !DILocation(line: 146, column: 7, scope: !302)
!340 = !DILocation(line: 152, column: 41, scope: !306)
!341 = !DILocation(line: 153, column: 17, scope: !342)
!342 = distinct !DILexicalBlock(scope: !306, file: !1, line: 153, column: 11)
!343 = !DILocation(line: 153, column: 11, scope: !306)
!344 = !DILocation(line: 155, column: 50, scope: !306)
!345 = !DILocation(line: 155, column: 19, scope: !306)
!346 = !DILocation(line: 156, column: 14, scope: !306)
!347 = !DILocation(line: 156, column: 26, scope: !306)
!348 = !DILocation(line: 158, column: 39, scope: !306)
!349 = !DILocation(line: 158, column: 22, scope: !306)
!350 = !DILocation(line: 159, column: 24, scope: !306)
!351 = !DILocation(line: 161, column: 17, scope: !306)
!352 = !DILocation(line: 165, column: 1, scope: !295)
!353 = distinct !DISubprogram(name: "objalloc_free", scope: !1, file: !1, line: 170, type: !354, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !356)
!354 = !DISubroutineType(types: !355)
!355 = !{null, !13}
!356 = !{!357, !358, !359}
!357 = !DILocalVariable(name: "o", arg: 1, scope: !353, file: !1, line: 170, type: !13)
!358 = !DILocalVariable(name: "l", scope: !353, file: !1, line: 172, type: !21)
!359 = !DILocalVariable(name: "next", scope: !360, file: !1, line: 177, type: !21)
!360 = distinct !DILexicalBlock(scope: !353, file: !1, line: 176, column: 5)
!361 = !DILocation(line: 0, scope: !353)
!362 = !DILocation(line: 174, column: 36, scope: !353)
!363 = !DILocation(line: 175, column: 3, scope: !353)
!364 = !DILocation(line: 175, column: 12, scope: !353)
!365 = !DILocation(line: 179, column: 17, scope: !360)
!366 = !DILocation(line: 0, scope: !360)
!367 = !DILocation(line: 180, column: 7, scope: !360)
!368 = distinct !{!368, !363, !369}
!369 = !DILocation(line: 182, column: 5, scope: !353)
!370 = !DILocation(line: 184, column: 9, scope: !353)
!371 = !DILocation(line: 184, column: 3, scope: !353)
!372 = !DILocation(line: 185, column: 1, scope: !353)
!373 = distinct !DISubprogram(name: "objalloc_free_block", scope: !1, file: !1, line: 191, type: !374, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !376)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !13, !10}
!376 = !{!377, !378, !379, !380, !381, !382, !385, !386, !388, !390, !391}
!377 = !DILocalVariable(name: "o", arg: 1, scope: !373, file: !1, line: 191, type: !13)
!378 = !DILocalVariable(name: "block", arg: 2, scope: !373, file: !1, line: 191, type: !10)
!379 = !DILocalVariable(name: "p", scope: !373, file: !1, line: 193, type: !21)
!380 = !DILocalVariable(name: "small", scope: !373, file: !1, line: 193, type: !21)
!381 = !DILocalVariable(name: "b", scope: !373, file: !1, line: 194, type: !8)
!382 = !DILocalVariable(name: "q", scope: !383, file: !1, line: 220, type: !21)
!383 = distinct !DILexicalBlock(scope: !384, file: !1, line: 219, column: 5)
!384 = distinct !DILexicalBlock(scope: !373, file: !1, line: 218, column: 7)
!385 = !DILocalVariable(name: "first", scope: !383, file: !1, line: 221, type: !21)
!386 = !DILocalVariable(name: "next", scope: !387, file: !1, line: 234, type: !21)
!387 = distinct !DILexicalBlock(scope: !383, file: !1, line: 233, column: 2)
!388 = !DILocalVariable(name: "q", scope: !389, file: !1, line: 261, type: !21)
!389 = distinct !DILexicalBlock(scope: !384, file: !1, line: 260, column: 5)
!390 = !DILocalVariable(name: "current_ptr", scope: !389, file: !1, line: 262, type: !8)
!391 = !DILocalVariable(name: "next", scope: !392, file: !1, line: 276, type: !21)
!392 = distinct !DILexicalBlock(scope: !389, file: !1, line: 275, column: 2)
!393 = !DILocation(line: 0, scope: !373)
!394 = !DILocation(line: 199, column: 41, scope: !395)
!395 = distinct !DILexicalBlock(scope: !373, file: !1, line: 199, column: 3)
!396 = !DILocation(line: 199, column: 8, scope: !395)
!397 = !DILocation(line: 0, scope: !395)
!398 = !DILocation(line: 199, column: 3, scope: !395)
!399 = !DILocation(line: 201, column: 14, scope: !400)
!400 = distinct !DILexicalBlock(scope: !401, file: !1, line: 201, column: 11)
!401 = distinct !DILexicalBlock(scope: !402, file: !1, line: 200, column: 5)
!402 = distinct !DILexicalBlock(scope: !395, file: !1, line: 199, column: 3)
!403 = !DILocation(line: 201, column: 26, scope: !400)
!404 = !DILocation(line: 201, column: 11, scope: !401)
!405 = !DILocation(line: 0, scope: !400)
!406 = !DILocation(line: 203, column: 10, scope: !407)
!407 = distinct !DILexicalBlock(scope: !408, file: !1, line: 203, column: 8)
!408 = distinct !DILexicalBlock(scope: !400, file: !1, line: 202, column: 2)
!409 = !DILocation(line: 203, column: 23, scope: !407)
!410 = !DILocation(line: 203, column: 41, scope: !407)
!411 = !DILocation(line: 203, column: 28, scope: !407)
!412 = !DILocation(line: 203, column: 8, scope: !408)
!413 = !DILocation(line: 209, column: 24, scope: !414)
!414 = distinct !DILexicalBlock(scope: !415, file: !1, line: 209, column: 8)
!415 = distinct !DILexicalBlock(scope: !400, file: !1, line: 208, column: 2)
!416 = !DILocation(line: 209, column: 10, scope: !414)
!417 = !DILocation(line: 209, column: 8, scope: !415)
!418 = !DILocation(line: 199, column: 67, scope: !402)
!419 = !DILocation(line: 199, column: 3, scope: !402)
!420 = distinct !{!420, !398, !421}
!421 = !DILocation(line: 212, column: 5, scope: !395)
!422 = !DILocation(line: 215, column: 7, scope: !373)
!423 = !DILocation(line: 216, column: 5, scope: !424)
!424 = distinct !DILexicalBlock(scope: !373, file: !1, line: 215, column: 7)
!425 = !DILocation(line: 218, column: 10, scope: !384)
!426 = !DILocation(line: 218, column: 22, scope: !384)
!427 = !DILocation(line: 218, column: 7, scope: !373)
!428 = !DILocation(line: 0, scope: !383)
!429 = !DILocation(line: 231, column: 40, scope: !383)
!430 = !DILocation(line: 232, column: 7, scope: !383)
!431 = !DILocation(line: 230, column: 13, scope: !383)
!432 = !DILocation(line: 232, column: 16, scope: !383)
!433 = !DILocation(line: 236, column: 14, scope: !387)
!434 = !DILocation(line: 0, scope: !387)
!435 = !DILocation(line: 237, column: 14, scope: !436)
!436 = distinct !DILexicalBlock(scope: !387, file: !1, line: 237, column: 8)
!437 = !DILocation(line: 237, column: 8, scope: !387)
!438 = !DILocation(line: 239, column: 18, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !1, line: 239, column: 12)
!440 = distinct !DILexicalBlock(scope: !436, file: !1, line: 238, column: 6)
!441 = !DILocation(line: 239, column: 12, scope: !440)
!442 = !DILocation(line: 241, column: 8, scope: !440)
!443 = !DILocation(line: 242, column: 6, scope: !440)
!444 = !DILocation(line: 243, column: 16, scope: !445)
!445 = distinct !DILexicalBlock(scope: !436, file: !1, line: 243, column: 13)
!446 = !DILocation(line: 243, column: 28, scope: !445)
!447 = !DILocation(line: 243, column: 13, scope: !436)
!448 = !DILocation(line: 244, column: 6, scope: !445)
!449 = !DILocation(line: 245, column: 19, scope: !450)
!450 = distinct !DILexicalBlock(scope: !445, file: !1, line: 245, column: 13)
!451 = !DILocation(line: 245, column: 13, scope: !445)
!452 = distinct !{!452, !430, !453}
!453 = !DILocation(line: 249, column: 2, scope: !383)
!454 = !DILocation(line: 251, column: 17, scope: !455)
!455 = distinct !DILexicalBlock(scope: !383, file: !1, line: 251, column: 11)
!456 = !DILocation(line: 251, column: 11, scope: !383)
!457 = !DILocation(line: 253, column: 17, scope: !383)
!458 = !DILocation(line: 256, column: 10, scope: !383)
!459 = !DILocation(line: 256, column: 22, scope: !383)
!460 = !DILocation(line: 257, column: 38, scope: !383)
!461 = !DILocation(line: 257, column: 52, scope: !383)
!462 = !DILocation(line: 257, column: 26, scope: !383)
!463 = !DILocation(line: 257, column: 10, scope: !383)
!464 = !DILocation(line: 257, column: 24, scope: !383)
!465 = !DILocation(line: 258, column: 5, scope: !383)
!466 = !DILocation(line: 0, scope: !389)
!467 = !DILocation(line: 271, column: 14, scope: !389)
!468 = !DILocation(line: 273, column: 40, scope: !389)
!469 = !DILocation(line: 274, column: 7, scope: !389)
!470 = !DILocation(line: 274, column: 16, scope: !389)
!471 = !DILocation(line: 278, column: 14, scope: !392)
!472 = !DILocation(line: 0, scope: !392)
!473 = !DILocation(line: 279, column: 4, scope: !392)
!474 = distinct !{!474, !469, !475}
!475 = !DILocation(line: 281, column: 2, scope: !389)
!476 = !DILocation(line: 283, column: 17, scope: !389)
!477 = !DILocation(line: 285, column: 7, scope: !389)
!478 = !DILocation(line: 285, column: 17, scope: !389)
!479 = !DILocation(line: 285, column: 29, scope: !389)
!480 = !DILocation(line: 286, column: 9, scope: !389)
!481 = distinct !{!481, !477, !480}
!482 = !DILocation(line: 288, column: 10, scope: !389)
!483 = !DILocation(line: 288, column: 22, scope: !389)
!484 = !DILocation(line: 289, column: 38, scope: !389)
!485 = !DILocation(line: 289, column: 52, scope: !389)
!486 = !DILocation(line: 289, column: 26, scope: !389)
!487 = !DILocation(line: 289, column: 10, scope: !389)
!488 = !DILocation(line: 289, column: 24, scope: !389)
!489 = !DILocation(line: 291, column: 1, scope: !373)
