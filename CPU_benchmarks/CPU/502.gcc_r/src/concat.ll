; ModuleID = 'concat.bc'
source_filename = "concat.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@libiberty_concat_ptr = common dso_local local_unnamed_addr global i8* null, align 8, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !20 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !35, metadata !DIExpression()), !dbg !36
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !37
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !38
  ret i32 %call, !dbg !39
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !40 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !43
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !44
  ret i32 %call, !dbg !45
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !46 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !109, metadata !DIExpression()), !dbg !110
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !111
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !111
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !111
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !111
  %cmp = icmp uge i8* %0, %1, !dbg !111
  %conv1 = zext i1 %cmp to i64, !dbg !111
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !111
  %tobool = icmp eq i64 %expval, 0, !dbg !111
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !111

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !111
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !111
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !111
  %2 = load i8, i8* %0, align 1, !dbg !111
  %conv3 = zext i8 %2 to i32, !dbg !111
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !111
  ret i32 %cond, !dbg !112
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !113 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !115, metadata !DIExpression()), !dbg !116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !117
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !117
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !117
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !117
  %cmp = icmp uge i8* %0, %1, !dbg !117
  %conv1 = zext i1 %cmp to i64, !dbg !117
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !117
  %tobool = icmp eq i64 %expval, 0, !dbg !117
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !117

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !117
  br label %cond.end, !dbg !117

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !117
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !117
  %2 = load i8, i8* %0, align 1, !dbg !117
  %conv3 = zext i8 %2 to i32, !dbg !117
  br label %cond.end, !dbg !117

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !117
  ret i32 %cond, !dbg !118
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !119 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !120
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !120
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !120
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !120
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !120
  %cmp = icmp uge i8* %1, %2, !dbg !120
  %conv1 = zext i1 %cmp to i64, !dbg !120
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !120
  %tobool = icmp eq i64 %expval, 0, !dbg !120
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !120

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !120
  br label %cond.end, !dbg !120

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !120
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !120
  %3 = load i8, i8* %1, align 1, !dbg !120
  %conv3 = zext i8 %3 to i32, !dbg !120
  br label %cond.end, !dbg !120

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !120
  ret i32 %cond, !dbg !121
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !128
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !129
  ret i32 %call, !dbg !130
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !131 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !135, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !136, metadata !DIExpression()), !dbg !137
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !138
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !138
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !138
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !138
  %cmp = icmp uge i8* %0, %1, !dbg !138
  %conv1 = zext i1 %cmp to i64, !dbg !138
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !138
  %tobool = icmp eq i64 %expval, 0, !dbg !138
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !138

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !138
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !138
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !138
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !138
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !138
  store i8 %conv2, i8* %0, align 1, !dbg !138
  %conv6 = and i32 %__c, 255, !dbg !138
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !138
  ret i32 %cond, !dbg !139
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !140 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !142, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !143, metadata !DIExpression()), !dbg !144
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !145
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !145
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !145
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !145
  %cmp = icmp uge i8* %0, %1, !dbg !145
  %conv1 = zext i1 %cmp to i64, !dbg !145
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !145
  %tobool = icmp eq i64 %expval, 0, !dbg !145
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !145

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !145
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !145
  br label %cond.end, !dbg !145

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !145
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !145
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !145
  store i8 %conv2, i8* %0, align 1, !dbg !145
  %conv6 = and i32 %__c, 255, !dbg !145
  br label %cond.end, !dbg !145

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !145
  ret i32 %cond, !dbg !146
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !147 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !151
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !151
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !151
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !151
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !151
  %cmp = icmp uge i8* %1, %2, !dbg !151
  %conv1 = zext i1 %cmp to i64, !dbg !151
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !151
  %tobool = icmp eq i64 %expval, 0, !dbg !151
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !151

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !151
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !151
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !151
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !151
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !151
  store i8 %conv4, i8* %1, align 1, !dbg !151
  %conv6 = and i32 %__c, 255, !dbg !151
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !151
  ret i32 %cond, !dbg !152
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !153 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !159, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata i64* %__n, metadata !160, metadata !DIExpression()), !dbg !162
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !161, metadata !DIExpression()), !dbg !162
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !163
  ret i64 %call, !dbg !164
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !165 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !167, metadata !DIExpression()), !dbg !168
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !169
  %0 = load i32, i32* %_flags, align 8, !dbg !169
  %and = lshr i32 %0, 4, !dbg !169
  %and.lobit = and i32 %and, 1, !dbg !169
  ret i32 %and.lobit, !dbg !170
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !171 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !173, metadata !DIExpression()), !dbg !174
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !175
  %0 = load i32, i32* %_flags, align 8, !dbg !175
  %and = lshr i32 %0, 5, !dbg !175
  %and.lobit = and i32 %and, 1, !dbg !175
  ret i32 %and.lobit, !dbg !176
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !182, metadata !DIExpression()), !dbg !183
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !184
  %conv = trunc i64 %call to i32, !dbg !185
  ret i32 %conv, !dbg !186
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !187 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !191, metadata !DIExpression()), !dbg !192
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !193
  ret i64 %call, !dbg !194
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !195 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !200, metadata !DIExpression()), !dbg !201
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !202
  ret i64 %call, !dbg !203
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !204 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !215, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i8* %__base, metadata !216, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !217, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__size, metadata !218, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !219, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 0, metadata !220, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !221, metadata !DIExpression()), !dbg !225
  br label %while.cond, !dbg !226

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !227
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !220, metadata !DIExpression()), !dbg !225
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !228
  br i1 %cmp, label %while.body, label %cleanup, !dbg !226

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !229
  %div = lshr i64 %add, 1, !dbg !231
  call void @llvm.dbg.value(metadata i64 %div, metadata !222, metadata !DIExpression()), !dbg !225
  %mul = mul i64 %div, %__size, !dbg !232
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !233
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !223, metadata !DIExpression()), !dbg !225
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !234
  call void @llvm.dbg.value(metadata i32 %call, metadata !224, metadata !DIExpression()), !dbg !225
  %cmp1 = icmp slt i32 %call, 0, !dbg !235
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !237

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !238
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !240

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !241
  call void @llvm.dbg.value(metadata i64 %add4, metadata !220, metadata !DIExpression()), !dbg !225
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !225
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !225
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !221, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !220, metadata !DIExpression()), !dbg !225
  br label %while.cond, !dbg !226, !llvm.loop !242

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !225
  ret i8* %retval.0, !dbg !244
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !251, metadata !DIExpression()), !dbg !252
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !253
  ret double %call, !dbg !254
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i64 @concat_length(i8* %first, ...) local_unnamed_addr #5 !dbg !255 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %first, metadata !259, metadata !DIExpression()), !dbg !269
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !270
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !261, metadata !DIExpression()), !dbg !270
  call void @llvm.va_start(i8* %0), !dbg !270
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !271
  %call = call fastcc i64 @vconcat_length(i8* %first, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !273
  call void @llvm.dbg.value(metadata i64 %call, metadata !260, metadata !DIExpression()), !dbg !269
  call void @llvm.va_end(i8* nonnull %0), !dbg !274
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !275
  ret i64 %call, !dbg !276
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @vconcat_length(i8* %first, %struct.__va_list_tag* %args) unnamed_addr #0 !dbg !277 {
entry:
  call void @llvm.dbg.value(metadata i8* %first, metadata !281, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %args, metadata !282, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 0, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i8* %first, metadata !284, metadata !DIExpression()), !dbg !285
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0, !dbg !286
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2, !dbg !286
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3, !dbg !286
  br label %for.cond, !dbg !289

for.cond:                                         ; preds = %vaarg.end, %entry
  %length.0 = phi i64 [ 0, %entry ], [ %add, %vaarg.end ], !dbg !285
  %arg.0 = phi i8* [ %first, %entry ], [ %4, %vaarg.end ], !dbg !290
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !284, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %length.0, metadata !283, metadata !DIExpression()), !dbg !285
  %tobool = icmp eq i8* %arg.0, null, !dbg !291
  br i1 %tobool, label %for.end, label %for.body, !dbg !291

for.body:                                         ; preds = %for.cond
  %call = tail call i64 @strlen(i8* nonnull %arg.0) #7, !dbg !292
  %add = add i64 %length.0, %call, !dbg !293
  call void @llvm.dbg.value(metadata i64 %add, metadata !283, metadata !DIExpression()), !dbg !285
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !294
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !294
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !294

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !294
  %1 = sext i32 %gp_offset to i64, !dbg !294
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !294
  %3 = add i32 %gp_offset, 8, !dbg !294
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !294
  br label %vaarg.end, !dbg !294

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !294
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !294
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !294
  br label %vaarg.end, !dbg !294

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !294
  %4 = load i8*, i8** %vaarg.addr, align 8, !dbg !294
  call void @llvm.dbg.value(metadata i8* %4, metadata !284, metadata !DIExpression()), !dbg !285
  br label %for.cond, !dbg !295, !llvm.loop !296

for.end:                                          ; preds = %for.cond
  %length.0.lcssa = phi i64 [ %length.0, %for.cond ], !dbg !285
  call void @llvm.dbg.value(metadata i64 %length.0.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %length.0.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  call void @llvm.dbg.value(metadata i64 %length.0.lcssa, metadata !283, metadata !DIExpression()), !dbg !285
  ret i64 %length.0.lcssa, !dbg !298
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local i8* @concat_copy(i8* %dst, i8* %first, ...) local_unnamed_addr #5 !dbg !299 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %dst, metadata !303, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8* %first, metadata !304, metadata !DIExpression()), !dbg !308
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !309
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !309
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !306, metadata !DIExpression()), !dbg !309
  call void @llvm.va_start(i8* %0), !dbg !309
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !310
  %call = call fastcc i8* @vconcat_copy(i8* %dst, i8* %first, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !312
  call void @llvm.dbg.value(metadata i8* %dst, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.va_end(i8* nonnull %0), !dbg !313
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !314
  ret i8* %dst, !dbg !315
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @vconcat_copy(i8* %dst, i8* %first, %struct.__va_list_tag* %args) unnamed_addr #0 !dbg !316 {
entry:
  call void @llvm.dbg.value(metadata i8* %dst, metadata !320, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %first, metadata !321, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %args, metadata !322, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %dst, metadata !323, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %first, metadata !324, metadata !DIExpression()), !dbg !329
  %gp_offset_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 0, !dbg !330
  %overflow_arg_area_p = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 2, !dbg !330
  %0 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %args, i64 0, i32 3, !dbg !330
  br label %for.cond, !dbg !331

for.cond:                                         ; preds = %vaarg.end, %entry
  %end.0 = phi i8* [ %dst, %entry ], [ %add.ptr, %vaarg.end ], !dbg !329
  %arg.0 = phi i8* [ %first, %entry ], [ %4, %vaarg.end ], !dbg !332
  call void @llvm.dbg.value(metadata i8* %arg.0, metadata !324, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %end.0, metadata !323, metadata !DIExpression()), !dbg !329
  %tobool = icmp eq i8* %arg.0, null, !dbg !333
  br i1 %tobool, label %for.end, label %for.body, !dbg !333

for.body:                                         ; preds = %for.cond
  %call = tail call i64 @strlen(i8* nonnull %arg.0) #7, !dbg !334
  call void @llvm.dbg.value(metadata i64 %call, metadata !325, metadata !DIExpression()), !dbg !335
  %call1 = tail call i8* @memcpy(i8* %end.0, i8* nonnull %arg.0, i64 %call) #7, !dbg !336
  %add.ptr = getelementptr inbounds i8, i8* %end.0, i64 %call, !dbg !337
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !323, metadata !DIExpression()), !dbg !329
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !338
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !338
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !338

vaarg.in_reg:                                     ; preds = %for.body
  %reg_save_area = load i8*, i8** %0, align 8, !dbg !338
  %1 = sext i32 %gp_offset to i64, !dbg !338
  %2 = getelementptr i8, i8* %reg_save_area, i64 %1, !dbg !338
  %3 = add i32 %gp_offset, 8, !dbg !338
  store i32 %3, i32* %gp_offset_p, align 8, !dbg !338
  br label %vaarg.end, !dbg !338

vaarg.in_mem:                                     ; preds = %for.body
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !338
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !338
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !338
  br label %vaarg.end, !dbg !338

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %2, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i8**, !dbg !338
  %4 = load i8*, i8** %vaarg.addr, align 8, !dbg !338
  call void @llvm.dbg.value(metadata i8* %4, metadata !324, metadata !DIExpression()), !dbg !329
  br label %for.cond, !dbg !339, !llvm.loop !340

for.end:                                          ; preds = %for.cond
  %end.0.lcssa = phi i8* [ %end.0, %for.cond ], !dbg !329
  call void @llvm.dbg.value(metadata i8* %end.0.lcssa, metadata !323, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %end.0.lcssa, metadata !323, metadata !DIExpression()), !dbg !329
  call void @llvm.dbg.value(metadata i8* %end.0.lcssa, metadata !323, metadata !DIExpression()), !dbg !329
  store i8 0, i8* %end.0.lcssa, align 1, !dbg !342
  ret i8* %dst, !dbg !343
}

; Function Attrs: nounwind uwtable
define dso_local i8* @concat_copy2(i8* %first, ...) local_unnamed_addr #5 !dbg !344 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %first, metadata !348, metadata !DIExpression()), !dbg !351
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !352
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !352
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !349, metadata !DIExpression()), !dbg !352
  call void @llvm.va_start(i8* %0), !dbg !352
  %1 = load i8*, i8** @libiberty_concat_ptr, align 8, !dbg !353
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !355
  %call = call fastcc i8* @vconcat_copy(i8* %1, i8* %first, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !356
  call void @llvm.va_end(i8* nonnull %0), !dbg !357
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !358
  %2 = load i8*, i8** @libiberty_concat_ptr, align 8, !dbg !359
  ret i8* %2, !dbg !360
}

; Function Attrs: nounwind uwtable
define dso_local i8* @concat(i8* %first, ...) local_unnamed_addr #5 !dbg !361 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %first, metadata !363, metadata !DIExpression()), !dbg !369
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !370
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !370
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !365, metadata !DIExpression()), !dbg !370
  call void @llvm.va_start(i8* %0), !dbg !370
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !371
  %call = call fastcc i64 @vconcat_length(i8* %first, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !371
  %add = add i64 %call, 1, !dbg !371
  %call3 = call i8* @xmalloc(i64 %add) #7, !dbg !371
  call void @llvm.dbg.value(metadata i8* %call3, metadata !364, metadata !DIExpression()), !dbg !369
  call void @llvm.va_end(i8* nonnull %0), !dbg !373
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !374
  %1 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*, !dbg !375
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !375
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args6, metadata !367, metadata !DIExpression()), !dbg !375
  call void @llvm.va_start(i8* %1), !dbg !375
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, !dbg !376
  %call10 = call fastcc i8* @vconcat_copy(i8* %call3, i8* %first, %struct.__va_list_tag* nonnull %arraydecay9) #8, !dbg !378
  call void @llvm.va_end(i8* nonnull %1), !dbg !379
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !380
  ret i8* %call3, !dbg !381
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i8* @reconcat(i8* %optr, i8* %first, ...) local_unnamed_addr #5 !dbg !382 {
entry:
  %args = alloca [1 x %struct.__va_list_tag], align 16
  %args6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i8* %optr, metadata !384, metadata !DIExpression()), !dbg !391
  call void @llvm.dbg.value(metadata i8* %first, metadata !385, metadata !DIExpression()), !dbg !391
  %0 = bitcast [1 x %struct.__va_list_tag]* %args to i8*, !dbg !392
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !392
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !387, metadata !DIExpression()), !dbg !392
  call void @llvm.va_start(i8* %0), !dbg !392
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !393
  %call = call fastcc i64 @vconcat_length(i8* %first, %struct.__va_list_tag* nonnull %arraydecay2) #8, !dbg !393
  %add = add i64 %call, 1, !dbg !393
  %call3 = call i8* @xmalloc(i64 %add) #7, !dbg !393
  call void @llvm.dbg.value(metadata i8* %call3, metadata !386, metadata !DIExpression()), !dbg !391
  call void @llvm.va_end(i8* nonnull %0), !dbg !395
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !396
  %1 = bitcast [1 x %struct.__va_list_tag]* %args6 to i8*, !dbg !397
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !397
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args6, metadata !389, metadata !DIExpression()), !dbg !397
  call void @llvm.va_start(i8* %1), !dbg !397
  %arraydecay9 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args6, i64 0, i64 0, !dbg !398
  %call10 = call fastcc i8* @vconcat_copy(i8* %call3, i8* %first, %struct.__va_list_tag* nonnull %arraydecay9) #8, !dbg !400
  %tobool = icmp eq i8* %optr, null, !dbg !401
  br i1 %tobool, label %if.end, label %if.then, !dbg !403

if.then:                                          ; preds = %entry
  call void @free(i8* nonnull %optr) #7, !dbg !404
  br label %if.end, !dbg !404

if.end:                                           ; preds = %entry, %if.then
  call void @llvm.va_end(i8* nonnull %1), !dbg !405
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !406
  ret i8* %call3, !dbg !407
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "libiberty_concat_ptr", scope: !2, file: !3, line: 133, type: !10, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "concat.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !10}
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
!16 = !{i32 2, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!20 = distinct !DISubprogram(name: "vprintf", scope: !21, file: !21, line: 39, type: !22, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!21 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!22 = !DISubroutineType(types: !23)
!23 = !{!8, !24, !25}
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !27)
!27 = !{!28, !30, !31, !32}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !26, file: !3, baseType: !29, size: 32)
!29 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !26, file: !3, baseType: !29, size: 32, offset: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !26, file: !3, baseType: !12, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !26, file: !3, baseType: !12, size: 64, offset: 128)
!33 = !{!34, !35}
!34 = !DILocalVariable(name: "__fmt", arg: 1, scope: !20, file: !21, line: 39, type: !24)
!35 = !DILocalVariable(name: "__arg", arg: 2, scope: !20, file: !21, line: 39, type: !25)
!36 = !DILocation(line: 0, scope: !20)
!37 = !DILocation(line: 41, column: 20, scope: !20)
!38 = !DILocation(line: 41, column: 10, scope: !20)
!39 = !DILocation(line: 41, column: 3, scope: !20)
!40 = distinct !DISubprogram(name: "getchar", scope: !21, file: !21, line: 47, type: !41, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !42)
!42 = !{!8}
!43 = !DILocation(line: 49, column: 16, scope: !40)
!44 = !DILocation(line: 49, column: 10, scope: !40)
!45 = !DILocation(line: 49, column: 3, scope: !40)
!46 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !21, file: !21, line: 56, type: !47, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !108)
!47 = !DISubroutineType(types: !48)
!48 = !{!8, !49}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !51, line: 7, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !53, line: 49, size: 1728, elements: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!54 = !{!55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !70, !72, !73, !74, !78, !80, !82, !86, !89, !91, !94, !97, !98, !99, !103, !104}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !52, file: !53, line: 51, baseType: !8, size: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !52, file: !53, line: 54, baseType: !10, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !52, file: !53, line: 55, baseType: !10, size: 64, offset: 128)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !52, file: !53, line: 56, baseType: !10, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !52, file: !53, line: 57, baseType: !10, size: 64, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !52, file: !53, line: 58, baseType: !10, size: 64, offset: 320)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !52, file: !53, line: 59, baseType: !10, size: 64, offset: 384)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !52, file: !53, line: 60, baseType: !10, size: 64, offset: 448)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !52, file: !53, line: 61, baseType: !10, size: 64, offset: 512)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !52, file: !53, line: 64, baseType: !10, size: 64, offset: 576)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !52, file: !53, line: 65, baseType: !10, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !52, file: !53, line: 66, baseType: !10, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !52, file: !53, line: 68, baseType: !68, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !53, line: 36, flags: DIFlagFwdDecl)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !52, file: !53, line: 70, baseType: !71, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !52, file: !53, line: 72, baseType: !8, size: 32, offset: 896)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !52, file: !53, line: 73, baseType: !8, size: 32, offset: 928)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !52, file: !53, line: 74, baseType: !75, size: 64, offset: 960)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !76, line: 152, baseType: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !52, file: !53, line: 77, baseType: !79, size: 16, offset: 1024)
!79 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !52, file: !53, line: 78, baseType: !81, size: 8, offset: 1040)
!81 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !52, file: !53, line: 79, baseType: !83, size: 8, offset: 1048)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 1)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !52, file: !53, line: 81, baseType: !87, size: 64, offset: 1088)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !53, line: 43, baseType: null)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !52, file: !53, line: 89, baseType: !90, size: 64, offset: 1152)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !76, line: 153, baseType: !77)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !52, file: !53, line: 91, baseType: !92, size: 64, offset: 1216)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !53, line: 37, flags: DIFlagFwdDecl)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !52, file: !53, line: 92, baseType: !95, size: 64, offset: 1280)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !53, line: 38, flags: DIFlagFwdDecl)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !52, file: !53, line: 93, baseType: !71, size: 64, offset: 1344)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !52, file: !53, line: 94, baseType: !12, size: 64, offset: 1408)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !52, file: !53, line: 95, baseType: !100, size: 64, offset: 1472)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !101, line: 46, baseType: !102)
!101 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!102 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !52, file: !53, line: 96, baseType: !8, size: 32, offset: 1536)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !52, file: !53, line: 98, baseType: !105, size: 160, offset: 1568)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !{!109}
!109 = !DILocalVariable(name: "__fp", arg: 1, scope: !46, file: !21, line: 56, type: !49)
!110 = !DILocation(line: 0, scope: !46)
!111 = !DILocation(line: 58, column: 10, scope: !46)
!112 = !DILocation(line: 58, column: 3, scope: !46)
!113 = distinct !DISubprogram(name: "getc_unlocked", scope: !21, file: !21, line: 66, type: !47, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !114)
!114 = !{!115}
!115 = !DILocalVariable(name: "__fp", arg: 1, scope: !113, file: !21, line: 66, type: !49)
!116 = !DILocation(line: 0, scope: !113)
!117 = !DILocation(line: 68, column: 10, scope: !113)
!118 = !DILocation(line: 68, column: 3, scope: !113)
!119 = distinct !DISubprogram(name: "getchar_unlocked", scope: !21, file: !21, line: 73, type: !41, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!120 = !DILocation(line: 75, column: 10, scope: !119)
!121 = !DILocation(line: 75, column: 3, scope: !119)
!122 = distinct !DISubprogram(name: "putchar", scope: !21, file: !21, line: 82, type: !123, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !125)
!123 = !DISubroutineType(types: !124)
!124 = !{!8, !8}
!125 = !{!126}
!126 = !DILocalVariable(name: "__c", arg: 1, scope: !122, file: !21, line: 82, type: !8)
!127 = !DILocation(line: 0, scope: !122)
!128 = !DILocation(line: 84, column: 21, scope: !122)
!129 = !DILocation(line: 84, column: 10, scope: !122)
!130 = !DILocation(line: 84, column: 3, scope: !122)
!131 = distinct !DISubprogram(name: "fputc_unlocked", scope: !21, file: !21, line: 91, type: !132, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!132 = !DISubroutineType(types: !133)
!133 = !{!8, !8, !49}
!134 = !{!135, !136}
!135 = !DILocalVariable(name: "__c", arg: 1, scope: !131, file: !21, line: 91, type: !8)
!136 = !DILocalVariable(name: "__stream", arg: 2, scope: !131, file: !21, line: 91, type: !49)
!137 = !DILocation(line: 0, scope: !131)
!138 = !DILocation(line: 93, column: 10, scope: !131)
!139 = !DILocation(line: 93, column: 3, scope: !131)
!140 = distinct !DISubprogram(name: "putc_unlocked", scope: !21, file: !21, line: 101, type: !132, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "__c", arg: 1, scope: !140, file: !21, line: 101, type: !8)
!143 = !DILocalVariable(name: "__stream", arg: 2, scope: !140, file: !21, line: 101, type: !49)
!144 = !DILocation(line: 0, scope: !140)
!145 = !DILocation(line: 103, column: 10, scope: !140)
!146 = !DILocation(line: 103, column: 3, scope: !140)
!147 = distinct !DISubprogram(name: "putchar_unlocked", scope: !21, file: !21, line: 108, type: !123, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !148)
!148 = !{!149}
!149 = !DILocalVariable(name: "__c", arg: 1, scope: !147, file: !21, line: 108, type: !8)
!150 = !DILocation(line: 0, scope: !147)
!151 = !DILocation(line: 110, column: 10, scope: !147)
!152 = !DILocation(line: 110, column: 3, scope: !147)
!153 = distinct !DISubprogram(name: "getline", scope: !21, file: !21, line: 118, type: !154, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !9, !157, !49}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !76, line: 193, baseType: !77)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!158 = !{!159, !160, !161}
!159 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !153, file: !21, line: 118, type: !9)
!160 = !DILocalVariable(name: "__n", arg: 2, scope: !153, file: !21, line: 118, type: !157)
!161 = !DILocalVariable(name: "__stream", arg: 3, scope: !153, file: !21, line: 118, type: !49)
!162 = !DILocation(line: 0, scope: !153)
!163 = !DILocation(line: 120, column: 10, scope: !153)
!164 = !DILocation(line: 120, column: 3, scope: !153)
!165 = distinct !DISubprogram(name: "feof_unlocked", scope: !21, file: !21, line: 128, type: !47, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !166)
!166 = !{!167}
!167 = !DILocalVariable(name: "__stream", arg: 1, scope: !165, file: !21, line: 128, type: !49)
!168 = !DILocation(line: 0, scope: !165)
!169 = !DILocation(line: 130, column: 10, scope: !165)
!170 = !DILocation(line: 130, column: 3, scope: !165)
!171 = distinct !DISubprogram(name: "ferror_unlocked", scope: !21, file: !21, line: 135, type: !47, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !172)
!172 = !{!173}
!173 = !DILocalVariable(name: "__stream", arg: 1, scope: !171, file: !21, line: 135, type: !49)
!174 = !DILocation(line: 0, scope: !171)
!175 = !DILocation(line: 137, column: 10, scope: !171)
!176 = !DILocation(line: 137, column: 3, scope: !171)
!177 = distinct !DISubprogram(name: "atoi", scope: !178, file: !178, line: 361, type: !179, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !181)
!178 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!179 = !DISubroutineType(types: !180)
!180 = !{!8, !13}
!181 = !{!182}
!182 = !DILocalVariable(name: "__nptr", arg: 1, scope: !177, file: !178, line: 361, type: !13)
!183 = !DILocation(line: 0, scope: !177)
!184 = !DILocation(line: 363, column: 16, scope: !177)
!185 = !DILocation(line: 363, column: 10, scope: !177)
!186 = !DILocation(line: 363, column: 3, scope: !177)
!187 = distinct !DISubprogram(name: "atol", scope: !178, file: !178, line: 366, type: !188, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !190)
!188 = !DISubroutineType(types: !189)
!189 = !{!77, !13}
!190 = !{!191}
!191 = !DILocalVariable(name: "__nptr", arg: 1, scope: !187, file: !178, line: 366, type: !13)
!192 = !DILocation(line: 0, scope: !187)
!193 = !DILocation(line: 368, column: 10, scope: !187)
!194 = !DILocation(line: 368, column: 3, scope: !187)
!195 = distinct !DISubprogram(name: "atoll", scope: !178, file: !178, line: 373, type: !196, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !13}
!198 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!199 = !{!200}
!200 = !DILocalVariable(name: "__nptr", arg: 1, scope: !195, file: !178, line: 373, type: !13)
!201 = !DILocation(line: 0, scope: !195)
!202 = !DILocation(line: 375, column: 10, scope: !195)
!203 = !DILocation(line: 375, column: 3, scope: !195)
!204 = distinct !DISubprogram(name: "bsearch", scope: !205, file: !205, line: 20, type: !206, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !214)
!205 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!206 = !DISubroutineType(types: !207)
!207 = !{!12, !208, !208, !100, !100, !210}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !178, line: 808, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!8, !208, !208}
!214 = !{!215, !216, !217, !218, !219, !220, !221, !222, !223, !224}
!215 = !DILocalVariable(name: "__key", arg: 1, scope: !204, file: !205, line: 20, type: !208)
!216 = !DILocalVariable(name: "__base", arg: 2, scope: !204, file: !205, line: 20, type: !208)
!217 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !204, file: !205, line: 20, type: !100)
!218 = !DILocalVariable(name: "__size", arg: 4, scope: !204, file: !205, line: 20, type: !100)
!219 = !DILocalVariable(name: "__compar", arg: 5, scope: !204, file: !205, line: 21, type: !210)
!220 = !DILocalVariable(name: "__l", scope: !204, file: !205, line: 23, type: !100)
!221 = !DILocalVariable(name: "__u", scope: !204, file: !205, line: 23, type: !100)
!222 = !DILocalVariable(name: "__idx", scope: !204, file: !205, line: 23, type: !100)
!223 = !DILocalVariable(name: "__p", scope: !204, file: !205, line: 24, type: !208)
!224 = !DILocalVariable(name: "__comparison", scope: !204, file: !205, line: 25, type: !8)
!225 = !DILocation(line: 0, scope: !204)
!226 = !DILocation(line: 29, column: 3, scope: !204)
!227 = !DILocation(line: 27, column: 7, scope: !204)
!228 = !DILocation(line: 29, column: 14, scope: !204)
!229 = !DILocation(line: 31, column: 20, scope: !230)
!230 = distinct !DILexicalBlock(scope: !204, file: !205, line: 30, column: 5)
!231 = !DILocation(line: 31, column: 27, scope: !230)
!232 = !DILocation(line: 32, column: 56, scope: !230)
!233 = !DILocation(line: 32, column: 47, scope: !230)
!234 = !DILocation(line: 33, column: 22, scope: !230)
!235 = !DILocation(line: 34, column: 24, scope: !236)
!236 = distinct !DILexicalBlock(scope: !230, file: !205, line: 34, column: 11)
!237 = !DILocation(line: 34, column: 11, scope: !230)
!238 = !DILocation(line: 36, column: 29, scope: !239)
!239 = distinct !DILexicalBlock(scope: !236, file: !205, line: 36, column: 16)
!240 = !DILocation(line: 36, column: 16, scope: !236)
!241 = !DILocation(line: 37, column: 14, scope: !239)
!242 = distinct !{!242, !226, !243}
!243 = !DILocation(line: 40, column: 5, scope: !204)
!244 = !DILocation(line: 43, column: 1, scope: !204)
!245 = distinct !DISubprogram(name: "atof", scope: !246, file: !246, line: 25, type: !247, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !250)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!247 = !DISubroutineType(types: !248)
!248 = !{!249, !13}
!249 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!250 = !{!251}
!251 = !DILocalVariable(name: "__nptr", arg: 1, scope: !245, file: !246, line: 25, type: !13)
!252 = !DILocation(line: 0, scope: !245)
!253 = !DILocation(line: 27, column: 10, scope: !245)
!254 = !DILocation(line: 27, column: 3, scope: !245)
!255 = distinct !DISubprogram(name: "concat_length", scope: !3, file: !3, line: 101, type: !256, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !258)
!256 = !DISubroutineType(types: !257)
!257 = !{!102, !13, null}
!258 = !{!259, !260, !261}
!259 = !DILocalVariable(name: "first", arg: 1, scope: !255, file: !3, line: 101, type: !13)
!260 = !DILocalVariable(name: "length", scope: !255, file: !3, line: 103, type: !102)
!261 = !DILocalVariable(name: "args", scope: !262, file: !3, line: 105, type: !263)
!262 = distinct !DILexicalBlock(scope: !255, file: !3, line: 105, column: 3)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !264, line: 52, baseType: !265)
!264 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !266, line: 32, baseType: !267)
!266 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 105, baseType: !268)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 192, elements: !84)
!269 = !DILocation(line: 0, scope: !255)
!270 = !DILocation(line: 105, column: 3, scope: !262)
!271 = !DILocation(line: 107, column: 35, scope: !272)
!272 = distinct !DILexicalBlock(scope: !262, file: !3, line: 105, column: 3)
!273 = !DILocation(line: 107, column: 12, scope: !272)
!274 = !DILocation(line: 108, column: 3, scope: !262)
!275 = !DILocation(line: 108, column: 3, scope: !255)
!276 = !DILocation(line: 110, column: 3, scope: !255)
!277 = distinct !DISubprogram(name: "vconcat_length", scope: !3, file: !3, line: 70, type: !278, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{!102, !13, !25}
!280 = !{!281, !282, !283, !284}
!281 = !DILocalVariable(name: "first", arg: 1, scope: !277, file: !3, line: 70, type: !13)
!282 = !DILocalVariable(name: "args", arg: 2, scope: !277, file: !3, line: 70, type: !25)
!283 = !DILocalVariable(name: "length", scope: !277, file: !3, line: 72, type: !102)
!284 = !DILocalVariable(name: "arg", scope: !277, file: !3, line: 73, type: !13)
!285 = !DILocation(line: 0, scope: !277)
!286 = !DILocation(line: 0, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !3, line: 75, column: 3)
!288 = distinct !DILexicalBlock(scope: !277, file: !3, line: 75, column: 3)
!289 = !DILocation(line: 75, column: 8, scope: !288)
!290 = !DILocation(line: 0, scope: !288)
!291 = !DILocation(line: 75, column: 3, scope: !288)
!292 = !DILocation(line: 76, column: 15, scope: !287)
!293 = !DILocation(line: 76, column: 12, scope: !287)
!294 = !DILocation(line: 75, column: 33, scope: !287)
!295 = !DILocation(line: 75, column: 3, scope: !287)
!296 = distinct !{!296, !291, !297}
!297 = !DILocation(line: 76, column: 26, scope: !288)
!298 = !DILocation(line: 78, column: 3, scope: !277)
!299 = distinct !DISubprogram(name: "concat_copy", scope: !3, file: !3, line: 116, type: !300, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !302)
!300 = !DISubroutineType(types: !301)
!301 = !{!10, !10, !13, null}
!302 = !{!303, !304, !305, !306}
!303 = !DILocalVariable(name: "dst", arg: 1, scope: !299, file: !3, line: 116, type: !10)
!304 = !DILocalVariable(name: "first", arg: 2, scope: !299, file: !3, line: 116, type: !13)
!305 = !DILocalVariable(name: "save_dst", scope: !299, file: !3, line: 118, type: !10)
!306 = !DILocalVariable(name: "args", scope: !307, file: !3, line: 120, type: !263)
!307 = distinct !DILexicalBlock(scope: !299, file: !3, line: 120, column: 3)
!308 = !DILocation(line: 0, scope: !299)
!309 = !DILocation(line: 120, column: 3, scope: !307)
!310 = !DILocation(line: 123, column: 29, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 120, column: 3)
!312 = !DILocation(line: 123, column: 3, scope: !311)
!313 = !DILocation(line: 125, column: 3, scope: !307)
!314 = !DILocation(line: 125, column: 3, scope: !299)
!315 = !DILocation(line: 127, column: 3, scope: !299)
!316 = distinct !DISubprogram(name: "vconcat_copy", scope: !3, file: !3, line: 82, type: !317, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !319)
!317 = !DISubroutineType(types: !318)
!318 = !{!10, !10, !13, !25}
!319 = !{!320, !321, !322, !323, !324, !325}
!320 = !DILocalVariable(name: "dst", arg: 1, scope: !316, file: !3, line: 82, type: !10)
!321 = !DILocalVariable(name: "first", arg: 2, scope: !316, file: !3, line: 82, type: !13)
!322 = !DILocalVariable(name: "args", arg: 3, scope: !316, file: !3, line: 82, type: !25)
!323 = !DILocalVariable(name: "end", scope: !316, file: !3, line: 84, type: !10)
!324 = !DILocalVariable(name: "arg", scope: !316, file: !3, line: 85, type: !13)
!325 = !DILocalVariable(name: "length", scope: !326, file: !3, line: 89, type: !102)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 88, column: 5)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 87, column: 3)
!328 = distinct !DILexicalBlock(scope: !316, file: !3, line: 87, column: 3)
!329 = !DILocation(line: 0, scope: !316)
!330 = !DILocation(line: 0, scope: !327)
!331 = !DILocation(line: 87, column: 8, scope: !328)
!332 = !DILocation(line: 0, scope: !328)
!333 = !DILocation(line: 87, column: 3, scope: !328)
!334 = !DILocation(line: 89, column: 30, scope: !326)
!335 = !DILocation(line: 0, scope: !326)
!336 = !DILocation(line: 90, column: 7, scope: !326)
!337 = !DILocation(line: 91, column: 11, scope: !326)
!338 = !DILocation(line: 87, column: 33, scope: !327)
!339 = !DILocation(line: 87, column: 3, scope: !327)
!340 = distinct !{!340, !333, !341}
!341 = !DILocation(line: 92, column: 5, scope: !328)
!342 = !DILocation(line: 93, column: 8, scope: !316)
!343 = !DILocation(line: 95, column: 3, scope: !316)
!344 = distinct !DISubprogram(name: "concat_copy2", scope: !3, file: !3, line: 141, type: !345, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !347)
!345 = !DISubroutineType(types: !346)
!346 = !{!10, !13, null}
!347 = !{!348, !349}
!348 = !DILocalVariable(name: "first", arg: 1, scope: !344, file: !3, line: 141, type: !13)
!349 = !DILocalVariable(name: "args", scope: !350, file: !3, line: 143, type: !263)
!350 = distinct !DILexicalBlock(scope: !344, file: !3, line: 143, column: 3)
!351 = !DILocation(line: 0, scope: !344)
!352 = !DILocation(line: 143, column: 3, scope: !350)
!353 = !DILocation(line: 145, column: 17, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !3, line: 143, column: 3)
!355 = !DILocation(line: 145, column: 46, scope: !354)
!356 = !DILocation(line: 145, column: 3, scope: !354)
!357 = !DILocation(line: 146, column: 3, scope: !350)
!358 = !DILocation(line: 146, column: 3, scope: !344)
!359 = !DILocation(line: 148, column: 10, scope: !344)
!360 = !DILocation(line: 148, column: 3, scope: !344)
!361 = distinct !DISubprogram(name: "concat", scope: !3, file: !3, line: 152, type: !345, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !362)
!362 = !{!363, !364, !365, !367}
!363 = !DILocalVariable(name: "first", arg: 1, scope: !361, file: !3, line: 152, type: !13)
!364 = !DILocalVariable(name: "newstr", scope: !361, file: !3, line: 154, type: !10)
!365 = !DILocalVariable(name: "args", scope: !366, file: !3, line: 157, type: !263)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 157, column: 3)
!367 = !DILocalVariable(name: "args", scope: !368, file: !3, line: 163, type: !263)
!368 = distinct !DILexicalBlock(scope: !361, file: !3, line: 163, column: 3)
!369 = !DILocation(line: 0, scope: !361)
!370 = !DILocation(line: 157, column: 3, scope: !366)
!371 = !DILocation(line: 159, column: 12, scope: !372)
!372 = distinct !DILexicalBlock(scope: !366, file: !3, line: 157, column: 3)
!373 = !DILocation(line: 160, column: 3, scope: !366)
!374 = !DILocation(line: 160, column: 3, scope: !361)
!375 = !DILocation(line: 163, column: 3, scope: !368)
!376 = !DILocation(line: 165, column: 32, scope: !377)
!377 = distinct !DILexicalBlock(scope: !368, file: !3, line: 163, column: 3)
!378 = !DILocation(line: 165, column: 3, scope: !377)
!379 = !DILocation(line: 166, column: 3, scope: !368)
!380 = !DILocation(line: 166, column: 3, scope: !361)
!381 = !DILocation(line: 168, column: 3, scope: !361)
!382 = distinct !DISubprogram(name: "reconcat", scope: !3, file: !3, line: 189, type: !300, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !383)
!383 = !{!384, !385, !386, !387, !389}
!384 = !DILocalVariable(name: "optr", arg: 1, scope: !382, file: !3, line: 189, type: !10)
!385 = !DILocalVariable(name: "first", arg: 2, scope: !382, file: !3, line: 189, type: !13)
!386 = !DILocalVariable(name: "newstr", scope: !382, file: !3, line: 191, type: !10)
!387 = !DILocalVariable(name: "args", scope: !388, file: !3, line: 194, type: !263)
!388 = distinct !DILexicalBlock(scope: !382, file: !3, line: 194, column: 3)
!389 = !DILocalVariable(name: "args", scope: !390, file: !3, line: 201, type: !263)
!390 = distinct !DILexicalBlock(scope: !382, file: !3, line: 201, column: 3)
!391 = !DILocation(line: 0, scope: !382)
!392 = !DILocation(line: 194, column: 3, scope: !388)
!393 = !DILocation(line: 197, column: 12, scope: !394)
!394 = distinct !DILexicalBlock(scope: !388, file: !3, line: 194, column: 3)
!395 = !DILocation(line: 198, column: 3, scope: !388)
!396 = !DILocation(line: 198, column: 3, scope: !382)
!397 = !DILocation(line: 201, column: 3, scope: !390)
!398 = !DILocation(line: 204, column: 32, scope: !399)
!399 = distinct !DILexicalBlock(scope: !390, file: !3, line: 201, column: 3)
!400 = !DILocation(line: 204, column: 3, scope: !399)
!401 = !DILocation(line: 205, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !399, file: !3, line: 205, column: 7)
!403 = !DILocation(line: 205, column: 7, scope: !399)
!404 = !DILocation(line: 206, column: 5, scope: !402)
!405 = !DILocation(line: 207, column: 3, scope: !390)
!406 = !DILocation(line: 207, column: 3, scope: !382)
!407 = !DILocation(line: 209, column: 3, scope: !382)
