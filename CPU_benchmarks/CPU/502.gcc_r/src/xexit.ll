; ModuleID = 'xexit.bc'
source_filename = "xexit.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@_xexit_cleanup = common dso_local local_unnamed_addr global void ()* null, align 8, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !23 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !38, metadata !DIExpression()), !dbg !39
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !40
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !41
  ret i32 %call, !dbg !42
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !43 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !46
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !47
  ret i32 %call, !dbg !48
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !49 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !112, metadata !DIExpression()), !dbg !113
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !114
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !114
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !114
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !114
  %cmp = icmp uge i8* %0, %1, !dbg !114
  %conv1 = zext i1 %cmp to i64, !dbg !114
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !114
  %tobool = icmp eq i64 %expval, 0, !dbg !114
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !114

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !114
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !114
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !114
  %2 = load i8, i8* %0, align 1, !dbg !114
  %conv3 = zext i8 %2 to i32, !dbg !114
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !114
  ret i32 %cond, !dbg !115
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !116 {
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !122 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !123
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !123
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !123
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !123
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !123
  %cmp = icmp uge i8* %1, %2, !dbg !123
  %conv1 = zext i1 %cmp to i64, !dbg !123
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !123
  %tobool = icmp eq i64 %expval, 0, !dbg !123
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !123

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !123
  br label %cond.end, !dbg !123

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !123
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !123
  %3 = load i8, i8* %1, align 1, !dbg !123
  %conv3 = zext i8 %3 to i32, !dbg !123
  br label %cond.end, !dbg !123

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !123
  ret i32 %cond, !dbg !124
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !131
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !132
  ret i32 %call, !dbg !133
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !134 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !139, metadata !DIExpression()), !dbg !140
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !141
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !141
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !141
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !141
  %cmp = icmp uge i8* %0, %1, !dbg !141
  %conv1 = zext i1 %cmp to i64, !dbg !141
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !141
  %tobool = icmp eq i64 %expval, 0, !dbg !141
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !141

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !141
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !141
  br label %cond.end, !dbg !141

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !141
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !141
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !141
  store i8 %conv2, i8* %0, align 1, !dbg !141
  %conv6 = and i32 %__c, 255, !dbg !141
  br label %cond.end, !dbg !141

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !141
  ret i32 %cond, !dbg !142
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !145, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !146, metadata !DIExpression()), !dbg !147
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !148
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !148
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !148
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !148
  %cmp = icmp uge i8* %0, %1, !dbg !148
  %conv1 = zext i1 %cmp to i64, !dbg !148
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !148
  %tobool = icmp eq i64 %expval, 0, !dbg !148
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !148

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !148
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !148
  br label %cond.end, !dbg !148

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !148
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !148
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !148
  store i8 %conv2, i8* %0, align 1, !dbg !148
  %conv6 = and i32 %__c, 255, !dbg !148
  br label %cond.end, !dbg !148

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !148
  ret i32 %cond, !dbg !149
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !154
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !154
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !154
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !154
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !154
  %cmp = icmp uge i8* %1, %2, !dbg !154
  %conv1 = zext i1 %cmp to i64, !dbg !154
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !154
  %tobool = icmp eq i64 %expval, 0, !dbg !154
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !154

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !154
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !154
  br label %cond.end, !dbg !154

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !154
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !154
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !154
  store i8 %conv4, i8* %1, align 1, !dbg !154
  %conv6 = and i32 %__c, 255, !dbg !154
  br label %cond.end, !dbg !154

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !154
  ret i32 %cond, !dbg !155
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !156 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !162, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata i64* %__n, metadata !163, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !164, metadata !DIExpression()), !dbg !165
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !166
  ret i64 %call, !dbg !167
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !172
  %0 = load i32, i32* %_flags, align 8, !dbg !172
  %and = lshr i32 %0, 4, !dbg !172
  %and.lobit = and i32 %and, 1, !dbg !172
  ret i32 %and.lobit, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !176, metadata !DIExpression()), !dbg !177
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !178
  %0 = load i32, i32* %_flags, align 8, !dbg !178
  %and = lshr i32 %0, 5, !dbg !178
  %and.lobit = and i32 %and, 1, !dbg !178
  ret i32 %and.lobit, !dbg !179
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !180 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !185, metadata !DIExpression()), !dbg !186
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !187
  %conv = trunc i64 %call to i32, !dbg !188
  ret i32 %conv, !dbg !189
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !190 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !194, metadata !DIExpression()), !dbg !195
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !196
  ret i64 %call, !dbg !197
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !198 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !203, metadata !DIExpression()), !dbg !204
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !205
  ret i64 %call, !dbg !206
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !207 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !218, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i8* %__base, metadata !219, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !220, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %__size, metadata !221, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !222, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 0, metadata !223, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !224, metadata !DIExpression()), !dbg !228
  br label %while.cond, !dbg !229

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !230
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !228
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !224, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !223, metadata !DIExpression()), !dbg !228
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !231
  br i1 %cmp, label %while.body, label %cleanup, !dbg !229

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !232
  %div = lshr i64 %add, 1, !dbg !234
  call void @llvm.dbg.value(metadata i64 %div, metadata !225, metadata !DIExpression()), !dbg !228
  %mul = mul i64 %div, %__size, !dbg !235
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !236
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !226, metadata !DIExpression()), !dbg !228
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !237
  call void @llvm.dbg.value(metadata i32 %call, metadata !227, metadata !DIExpression()), !dbg !228
  %cmp1 = icmp slt i32 %call, 0, !dbg !238
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !240

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !241
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !243

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !244
  call void @llvm.dbg.value(metadata i64 %add4, metadata !223, metadata !DIExpression()), !dbg !228
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !228
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !228
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !224, metadata !DIExpression()), !dbg !228
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !223, metadata !DIExpression()), !dbg !228
  br label %while.cond, !dbg !229, !llvm.loop !245

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !228
  ret i8* %retval.0, !dbg !247
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !248 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !254, metadata !DIExpression()), !dbg !255
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !256
  ret double %call, !dbg !257
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @xexit(i32 %code) local_unnamed_addr #3 !dbg !258 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !262, metadata !DIExpression()), !dbg !263
  %0 = load void ()*, void ()** @_xexit_cleanup, align 8, !dbg !264
  %cmp = icmp eq void ()* %0, null, !dbg !266
  br i1 %cmp, label %if.end, label %if.then, !dbg !267

if.then:                                          ; preds = %entry
  tail call void %0() #5, !dbg !268
  br label %if.end, !dbg !268

if.end:                                           ; preds = %entry, %if.then
  tail call void @exit(i32 %code) #5, !dbg !269
  ret void, !dbg !270
}

declare dso_local void @exit(i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_xexit_cleanup", scope: !2, file: !3, line: 44, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "xexit.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !{!0}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DISubroutineType(types: !18)
!18 = !{null}
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!23 = distinct !DISubprogram(name: "vprintf", scope: !24, file: !24, line: 39, type: !25, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !36)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!25 = !DISubroutineType(types: !26)
!26 = !{!8, !27, !28}
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !30)
!30 = !{!31, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !29, file: !3, baseType: !32, size: 32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !29, file: !3, baseType: !32, size: 32, offset: 32)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !29, file: !3, baseType: !12, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !29, file: !3, baseType: !12, size: 64, offset: 128)
!36 = !{!37, !38}
!37 = !DILocalVariable(name: "__fmt", arg: 1, scope: !23, file: !24, line: 39, type: !27)
!38 = !DILocalVariable(name: "__arg", arg: 2, scope: !23, file: !24, line: 39, type: !28)
!39 = !DILocation(line: 0, scope: !23)
!40 = !DILocation(line: 41, column: 20, scope: !23)
!41 = !DILocation(line: 41, column: 10, scope: !23)
!42 = !DILocation(line: 41, column: 3, scope: !23)
!43 = distinct !DISubprogram(name: "getchar", scope: !24, file: !24, line: 47, type: !44, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!44 = !DISubroutineType(types: !45)
!45 = !{!8}
!46 = !DILocation(line: 49, column: 16, scope: !43)
!47 = !DILocation(line: 49, column: 10, scope: !43)
!48 = !DILocation(line: 49, column: 3, scope: !43)
!49 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !24, file: !24, line: 56, type: !50, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!50 = !DISubroutineType(types: !51)
!51 = !{!8, !52}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !54, line: 7, baseType: !55)
!54 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !56, line: 49, size: 1728, elements: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !73, !75, !76, !77, !81, !83, !85, !89, !92, !94, !97, !100, !101, !102, !106, !107}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !55, file: !56, line: 51, baseType: !8, size: 32)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !55, file: !56, line: 54, baseType: !10, size: 64, offset: 64)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !55, file: !56, line: 55, baseType: !10, size: 64, offset: 128)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !55, file: !56, line: 56, baseType: !10, size: 64, offset: 192)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !55, file: !56, line: 57, baseType: !10, size: 64, offset: 256)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !55, file: !56, line: 58, baseType: !10, size: 64, offset: 320)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !55, file: !56, line: 59, baseType: !10, size: 64, offset: 384)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !55, file: !56, line: 60, baseType: !10, size: 64, offset: 448)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !55, file: !56, line: 61, baseType: !10, size: 64, offset: 512)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !55, file: !56, line: 64, baseType: !10, size: 64, offset: 576)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !55, file: !56, line: 65, baseType: !10, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !55, file: !56, line: 66, baseType: !10, size: 64, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !55, file: !56, line: 68, baseType: !71, size: 64, offset: 768)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !56, line: 36, flags: DIFlagFwdDecl)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !55, file: !56, line: 70, baseType: !74, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !55, file: !56, line: 72, baseType: !8, size: 32, offset: 896)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !55, file: !56, line: 73, baseType: !8, size: 32, offset: 928)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !55, file: !56, line: 74, baseType: !78, size: 64, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!80 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !55, file: !56, line: 77, baseType: !82, size: 16, offset: 1024)
!82 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !55, file: !56, line: 78, baseType: !84, size: 8, offset: 1040)
!84 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !55, file: !56, line: 79, baseType: !86, size: 8, offset: 1048)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 1)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !55, file: !56, line: 81, baseType: !90, size: 64, offset: 1088)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !56, line: 43, baseType: null)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !55, file: !56, line: 89, baseType: !93, size: 64, offset: 1152)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !79, line: 153, baseType: !80)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !55, file: !56, line: 91, baseType: !95, size: 64, offset: 1216)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !56, line: 37, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !55, file: !56, line: 92, baseType: !98, size: 64, offset: 1280)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !56, line: 38, flags: DIFlagFwdDecl)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !55, file: !56, line: 93, baseType: !74, size: 64, offset: 1344)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !55, file: !56, line: 94, baseType: !12, size: 64, offset: 1408)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !55, file: !56, line: 95, baseType: !103, size: 64, offset: 1472)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 46, baseType: !105)
!104 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!105 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !55, file: !56, line: 96, baseType: !8, size: 32, offset: 1536)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !55, file: !56, line: 98, baseType: !108, size: 160, offset: 1568)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 20)
!111 = !{!112}
!112 = !DILocalVariable(name: "__fp", arg: 1, scope: !49, file: !24, line: 56, type: !52)
!113 = !DILocation(line: 0, scope: !49)
!114 = !DILocation(line: 58, column: 10, scope: !49)
!115 = !DILocation(line: 58, column: 3, scope: !49)
!116 = distinct !DISubprogram(name: "getc_unlocked", scope: !24, file: !24, line: 66, type: !50, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "__fp", arg: 1, scope: !116, file: !24, line: 66, type: !52)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 68, column: 10, scope: !116)
!121 = !DILocation(line: 68, column: 3, scope: !116)
!122 = distinct !DISubprogram(name: "getchar_unlocked", scope: !24, file: !24, line: 73, type: !44, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!123 = !DILocation(line: 75, column: 10, scope: !122)
!124 = !DILocation(line: 75, column: 3, scope: !122)
!125 = distinct !DISubprogram(name: "putchar", scope: !24, file: !24, line: 82, type: !126, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{!8, !8}
!128 = !{!129}
!129 = !DILocalVariable(name: "__c", arg: 1, scope: !125, file: !24, line: 82, type: !8)
!130 = !DILocation(line: 0, scope: !125)
!131 = !DILocation(line: 84, column: 21, scope: !125)
!132 = !DILocation(line: 84, column: 10, scope: !125)
!133 = !DILocation(line: 84, column: 3, scope: !125)
!134 = distinct !DISubprogram(name: "fputc_unlocked", scope: !24, file: !24, line: 91, type: !135, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!135 = !DISubroutineType(types: !136)
!136 = !{!8, !8, !52}
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "__c", arg: 1, scope: !134, file: !24, line: 91, type: !8)
!139 = !DILocalVariable(name: "__stream", arg: 2, scope: !134, file: !24, line: 91, type: !52)
!140 = !DILocation(line: 0, scope: !134)
!141 = !DILocation(line: 93, column: 10, scope: !134)
!142 = !DILocation(line: 93, column: 3, scope: !134)
!143 = distinct !DISubprogram(name: "putc_unlocked", scope: !24, file: !24, line: 101, type: !135, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "__c", arg: 1, scope: !143, file: !24, line: 101, type: !8)
!146 = !DILocalVariable(name: "__stream", arg: 2, scope: !143, file: !24, line: 101, type: !52)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocation(line: 103, column: 10, scope: !143)
!149 = !DILocation(line: 103, column: 3, scope: !143)
!150 = distinct !DISubprogram(name: "putchar_unlocked", scope: !24, file: !24, line: 108, type: !126, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !151)
!151 = !{!152}
!152 = !DILocalVariable(name: "__c", arg: 1, scope: !150, file: !24, line: 108, type: !8)
!153 = !DILocation(line: 0, scope: !150)
!154 = !DILocation(line: 110, column: 10, scope: !150)
!155 = !DILocation(line: 110, column: 3, scope: !150)
!156 = distinct !DISubprogram(name: "getline", scope: !24, file: !24, line: 118, type: !157, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !9, !160, !52}
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !79, line: 193, baseType: !80)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!161 = !{!162, !163, !164}
!162 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !156, file: !24, line: 118, type: !9)
!163 = !DILocalVariable(name: "__n", arg: 2, scope: !156, file: !24, line: 118, type: !160)
!164 = !DILocalVariable(name: "__stream", arg: 3, scope: !156, file: !24, line: 118, type: !52)
!165 = !DILocation(line: 0, scope: !156)
!166 = !DILocation(line: 120, column: 10, scope: !156)
!167 = !DILocation(line: 120, column: 3, scope: !156)
!168 = distinct !DISubprogram(name: "feof_unlocked", scope: !24, file: !24, line: 128, type: !50, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !24, line: 128, type: !52)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 130, column: 10, scope: !168)
!173 = !DILocation(line: 130, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "ferror_unlocked", scope: !24, file: !24, line: 135, type: !50, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !175)
!175 = !{!176}
!176 = !DILocalVariable(name: "__stream", arg: 1, scope: !174, file: !24, line: 135, type: !52)
!177 = !DILocation(line: 0, scope: !174)
!178 = !DILocation(line: 137, column: 10, scope: !174)
!179 = !DILocation(line: 137, column: 3, scope: !174)
!180 = distinct !DISubprogram(name: "atoi", scope: !181, file: !181, line: 361, type: !182, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !184)
!181 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!182 = !DISubroutineType(types: !183)
!183 = !{!8, !13}
!184 = !{!185}
!185 = !DILocalVariable(name: "__nptr", arg: 1, scope: !180, file: !181, line: 361, type: !13)
!186 = !DILocation(line: 0, scope: !180)
!187 = !DILocation(line: 363, column: 16, scope: !180)
!188 = !DILocation(line: 363, column: 10, scope: !180)
!189 = !DILocation(line: 363, column: 3, scope: !180)
!190 = distinct !DISubprogram(name: "atol", scope: !181, file: !181, line: 366, type: !191, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !193)
!191 = !DISubroutineType(types: !192)
!192 = !{!80, !13}
!193 = !{!194}
!194 = !DILocalVariable(name: "__nptr", arg: 1, scope: !190, file: !181, line: 366, type: !13)
!195 = !DILocation(line: 0, scope: !190)
!196 = !DILocation(line: 368, column: 10, scope: !190)
!197 = !DILocation(line: 368, column: 3, scope: !190)
!198 = distinct !DISubprogram(name: "atoll", scope: !181, file: !181, line: 373, type: !199, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!199 = !DISubroutineType(types: !200)
!200 = !{!201, !13}
!201 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!202 = !{!203}
!203 = !DILocalVariable(name: "__nptr", arg: 1, scope: !198, file: !181, line: 373, type: !13)
!204 = !DILocation(line: 0, scope: !198)
!205 = !DILocation(line: 375, column: 10, scope: !198)
!206 = !DILocation(line: 375, column: 3, scope: !198)
!207 = distinct !DISubprogram(name: "bsearch", scope: !208, file: !208, line: 20, type: !209, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !217)
!208 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!209 = !DISubroutineType(types: !210)
!210 = !{!12, !211, !211, !103, !103, !213}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !181, line: 808, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!8, !211, !211}
!217 = !{!218, !219, !220, !221, !222, !223, !224, !225, !226, !227}
!218 = !DILocalVariable(name: "__key", arg: 1, scope: !207, file: !208, line: 20, type: !211)
!219 = !DILocalVariable(name: "__base", arg: 2, scope: !207, file: !208, line: 20, type: !211)
!220 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !207, file: !208, line: 20, type: !103)
!221 = !DILocalVariable(name: "__size", arg: 4, scope: !207, file: !208, line: 20, type: !103)
!222 = !DILocalVariable(name: "__compar", arg: 5, scope: !207, file: !208, line: 21, type: !213)
!223 = !DILocalVariable(name: "__l", scope: !207, file: !208, line: 23, type: !103)
!224 = !DILocalVariable(name: "__u", scope: !207, file: !208, line: 23, type: !103)
!225 = !DILocalVariable(name: "__idx", scope: !207, file: !208, line: 23, type: !103)
!226 = !DILocalVariable(name: "__p", scope: !207, file: !208, line: 24, type: !211)
!227 = !DILocalVariable(name: "__comparison", scope: !207, file: !208, line: 25, type: !8)
!228 = !DILocation(line: 0, scope: !207)
!229 = !DILocation(line: 29, column: 3, scope: !207)
!230 = !DILocation(line: 27, column: 7, scope: !207)
!231 = !DILocation(line: 29, column: 14, scope: !207)
!232 = !DILocation(line: 31, column: 20, scope: !233)
!233 = distinct !DILexicalBlock(scope: !207, file: !208, line: 30, column: 5)
!234 = !DILocation(line: 31, column: 27, scope: !233)
!235 = !DILocation(line: 32, column: 56, scope: !233)
!236 = !DILocation(line: 32, column: 47, scope: !233)
!237 = !DILocation(line: 33, column: 22, scope: !233)
!238 = !DILocation(line: 34, column: 24, scope: !239)
!239 = distinct !DILexicalBlock(scope: !233, file: !208, line: 34, column: 11)
!240 = !DILocation(line: 34, column: 11, scope: !233)
!241 = !DILocation(line: 36, column: 29, scope: !242)
!242 = distinct !DILexicalBlock(scope: !239, file: !208, line: 36, column: 16)
!243 = !DILocation(line: 36, column: 16, scope: !239)
!244 = !DILocation(line: 37, column: 14, scope: !242)
!245 = distinct !{!245, !229, !246}
!246 = !DILocation(line: 40, column: 5, scope: !207)
!247 = !DILocation(line: 43, column: 1, scope: !207)
!248 = distinct !DISubprogram(name: "atof", scope: !249, file: !249, line: 25, type: !250, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !253)
!249 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!250 = !DISubroutineType(types: !251)
!251 = !{!252, !13}
!252 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!253 = !{!254}
!254 = !DILocalVariable(name: "__nptr", arg: 1, scope: !248, file: !249, line: 25, type: !13)
!255 = !DILocation(line: 0, scope: !248)
!256 = !DILocation(line: 27, column: 10, scope: !248)
!257 = !DILocation(line: 27, column: 3, scope: !248)
!258 = distinct !DISubprogram(name: "xexit", scope: !3, file: !3, line: 47, type: !259, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{null, !8}
!261 = !{!262}
!262 = !DILocalVariable(name: "code", arg: 1, scope: !258, file: !3, line: 47, type: !8)
!263 = !DILocation(line: 0, scope: !258)
!264 = !DILocation(line: 49, column: 7, scope: !265)
!265 = distinct !DILexicalBlock(scope: !258, file: !3, line: 49, column: 7)
!266 = !DILocation(line: 49, column: 22, scope: !265)
!267 = !DILocation(line: 49, column: 7, scope: !258)
!268 = !DILocation(line: 50, column: 5, scope: !265)
!269 = !DILocation(line: 51, column: 3, scope: !258)
!270 = !DILocation(line: 52, column: 1, scope: !258)
