; ModuleID = 'make-relative-prefix.bc'
source_filename = "make-relative-prefix.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [5 x i8] c"PATH\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"..\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !17 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !22, metadata !DIExpression()), !dbg !23
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !24
  %conv = trunc i64 %call to i32, !dbg !25
  ret i32 %conv, !dbg !26
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !27 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !32, metadata !DIExpression()), !dbg !33
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !34
  ret i64 %call, !dbg !35
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !36 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !41, metadata !DIExpression()), !dbg !42
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !43
  ret i64 %call, !dbg !44
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !45 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !59, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i8* %__base, metadata !60, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !61, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %__size, metadata !62, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !63, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 0, metadata !64, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !65, metadata !DIExpression()), !dbg !69
  br label %while.cond, !dbg !70

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !71
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !69
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !64, metadata !DIExpression()), !dbg !69
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !72
  br i1 %cmp, label %while.body, label %cleanup, !dbg !70

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !73
  %div = lshr i64 %add, 1, !dbg !75
  call void @llvm.dbg.value(metadata i64 %div, metadata !66, metadata !DIExpression()), !dbg !69
  %mul = mul i64 %div, %__size, !dbg !76
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !77
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !67, metadata !DIExpression()), !dbg !69
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !78
  call void @llvm.dbg.value(metadata i32 %call, metadata !68, metadata !DIExpression()), !dbg !69
  %cmp1 = icmp slt i32 %call, 0, !dbg !79
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !81

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !82
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !84

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !85
  call void @llvm.dbg.value(metadata i64 %add4, metadata !64, metadata !DIExpression()), !dbg !69
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !69
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !69
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !65, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !64, metadata !DIExpression()), !dbg !69
  br label %while.cond, !dbg !70, !llvm.loop !86

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !69
  ret i8* %retval.0, !dbg !88
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !89 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !95, metadata !DIExpression()), !dbg !96
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !97
  ret double %call, !dbg !98
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !99 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !113, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !116
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !117
  ret i32 %call, !dbg !118
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !119 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !122
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !123
  ret i32 %call, !dbg !124
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !125 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !184, metadata !DIExpression()), !dbg !185
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !186
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !186
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !186
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !186
  %cmp = icmp uge i8* %0, %1, !dbg !186
  %conv1 = zext i1 %cmp to i64, !dbg !186
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !186
  %tobool = icmp eq i64 %expval, 0, !dbg !186
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !186

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !186
  br label %cond.end, !dbg !186

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !186
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !186
  %2 = load i8, i8* %0, align 1, !dbg !186
  %conv3 = zext i8 %2 to i32, !dbg !186
  br label %cond.end, !dbg !186

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !186
  ret i32 %cond, !dbg !187
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !188 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !190, metadata !DIExpression()), !dbg !191
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !192
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !192
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !192
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !192
  %cmp = icmp uge i8* %0, %1, !dbg !192
  %conv1 = zext i1 %cmp to i64, !dbg !192
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !192
  %tobool = icmp eq i64 %expval, 0, !dbg !192
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !192

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !192
  br label %cond.end, !dbg !192

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !192
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !192
  %2 = load i8, i8* %0, align 1, !dbg !192
  %conv3 = zext i8 %2 to i32, !dbg !192
  br label %cond.end, !dbg !192

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !192
  ret i32 %cond, !dbg !193
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !194 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !195
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !195
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !195
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !195
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !195
  %cmp = icmp uge i8* %1, %2, !dbg !195
  %conv1 = zext i1 %cmp to i64, !dbg !195
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !195
  %tobool = icmp eq i64 %expval, 0, !dbg !195
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !195

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !195
  br label %cond.end, !dbg !195

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !195
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !195
  %3 = load i8, i8* %1, align 1, !dbg !195
  %conv3 = zext i8 %3 to i32, !dbg !195
  br label %cond.end, !dbg !195

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !195
  ret i32 %cond, !dbg !196
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !201, metadata !DIExpression()), !dbg !202
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !203
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !204
  ret i32 %call, !dbg !205
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !206 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !210, metadata !DIExpression()), !dbg !212
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !211, metadata !DIExpression()), !dbg !212
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !213
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !213
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !213
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !213
  %cmp = icmp uge i8* %0, %1, !dbg !213
  %conv1 = zext i1 %cmp to i64, !dbg !213
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !213
  %tobool = icmp eq i64 %expval, 0, !dbg !213
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !213

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !213
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !213
  br label %cond.end, !dbg !213

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !213
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !213
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !213
  store i8 %conv2, i8* %0, align 1, !dbg !213
  %conv6 = and i32 %__c, 255, !dbg !213
  br label %cond.end, !dbg !213

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !213
  ret i32 %cond, !dbg !214
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !215 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !217, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !218, metadata !DIExpression()), !dbg !219
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !220
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !220
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !220
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !220
  %cmp = icmp uge i8* %0, %1, !dbg !220
  %conv1 = zext i1 %cmp to i64, !dbg !220
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !220
  %tobool = icmp eq i64 %expval, 0, !dbg !220
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !220

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !220
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !220
  br label %cond.end, !dbg !220

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !220
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !220
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !220
  store i8 %conv2, i8* %0, align 1, !dbg !220
  %conv6 = and i32 %__c, 255, !dbg !220
  br label %cond.end, !dbg !220

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !220
  ret i32 %cond, !dbg !221
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !222 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !224, metadata !DIExpression()), !dbg !225
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !226
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !226
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !226
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !226
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !226
  %cmp = icmp uge i8* %1, %2, !dbg !226
  %conv1 = zext i1 %cmp to i64, !dbg !226
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !226
  %tobool = icmp eq i64 %expval, 0, !dbg !226
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !226

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !226
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !226
  br label %cond.end, !dbg !226

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !226
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !226
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !226
  store i8 %conv4, i8* %1, align 1, !dbg !226
  %conv6 = and i32 %__c, 255, !dbg !226
  br label %cond.end, !dbg !226

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !226
  ret i32 %cond, !dbg !227
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !234, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata i64* %__n, metadata !235, metadata !DIExpression()), !dbg !237
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !236, metadata !DIExpression()), !dbg !237
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !238
  ret i64 %call, !dbg !239
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !240 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !242, metadata !DIExpression()), !dbg !243
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !244
  %0 = load i32, i32* %_flags, align 8, !dbg !244
  %and = lshr i32 %0, 4, !dbg !244
  %and.lobit = and i32 %and, 1, !dbg !244
  ret i32 %and.lobit, !dbg !245
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !246 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !248, metadata !DIExpression()), !dbg !249
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !250
  %0 = load i32, i32* %_flags, align 8, !dbg !250
  %and = lshr i32 %0, 5, !dbg !250
  %and.lobit = and i32 %and, 1, !dbg !250
  ret i32 %and.lobit, !dbg !251
}

; Function Attrs: nounwind uwtable
define dso_local i8* @make_relative_prefix(i8* %progname, i8* %bin_prefix, i8* %prefix) local_unnamed_addr #4 !dbg !252 {
entry:
  call void @llvm.dbg.value(metadata i8* %progname, metadata !256, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %bin_prefix, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call fastcc i8* @make_relative_prefix_1(i8* %progname, i8* %bin_prefix, i8* %prefix, i32 1) #7, !dbg !260
  ret i8* %call, !dbg !261
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @make_relative_prefix_1(i8* %progname, i8* %bin_prefix, i8* %prefix, i32 %resolve_links) unnamed_addr #4 !dbg !262 {
entry:
  %prog_num = alloca i32, align 4
  %bin_num = alloca i32, align 4
  %prefix_num = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %progname, metadata !267, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %bin_prefix, metadata !268, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !269, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %resolve_links, metadata !270, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8** null, metadata !271, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8** null, metadata !272, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8** null, metadata !273, metadata !DIExpression()), !dbg !294
  %0 = bitcast i32* %prog_num to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !295
  %1 = bitcast i32* %bin_num to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !295
  %2 = bitcast i32* %prefix_num to i8*, !dbg !295
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #8, !dbg !295
  call void @llvm.dbg.value(metadata i8* null, metadata !281, metadata !DIExpression()), !dbg !294
  %cmp = icmp eq i8* %progname, null, !dbg !296
  %cmp1 = icmp eq i8* %bin_prefix, null, !dbg !298
  %or.cond = or i1 %cmp, %cmp1, !dbg !299
  %cmp3 = icmp eq i8* %prefix, null, !dbg !300
  %or.cond1 = or i1 %or.cond, %cmp3, !dbg !299
  br i1 %or.cond1, label %cleanup, label %if.end, !dbg !299

if.end:                                           ; preds = %entry
  %call = tail call i8* @lbasename(i8* %progname) #6, !dbg !301
  %cmp4 = icmp eq i8* %call, %progname, !dbg !302
  br i1 %cmp4, label %if.then5, label %if.end62, !dbg !303

if.then5:                                         ; preds = %if.end
  %call6 = tail call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #6, !dbg !304
  call void @llvm.dbg.value(metadata i8* %call6, metadata !284, metadata !DIExpression()), !dbg !305
  %tobool = icmp eq i8* %call6, null, !dbg !306
  br i1 %tobool, label %if.end62, label %if.then7, !dbg !307

if.then7:                                         ; preds = %if.then5
  %call8 = tail call i64 @strlen(i8* nonnull %call6) #6, !dbg !308
  %add = add i64 %call8, 1, !dbg !309
  call void @llvm.dbg.value(metadata i64 %add, metadata !292, metadata !DIExpression()), !dbg !310
  %3 = icmp ugt i64 %add, 2, !dbg !311
  %spec.select = select i1 %3, i64 %add, i64 2, !dbg !311
  call void @llvm.dbg.value(metadata i64 %spec.select, metadata !292, metadata !DIExpression()), !dbg !310
  %call12 = tail call i64 @strlen(i8* %progname) #6, !dbg !312
  %add13 = add i64 %spec.select, %call12, !dbg !312
  %add14 = add i64 %add13, 1, !dbg !312
  %4 = alloca i8, i64 %add14, align 16, !dbg !312
  call void @llvm.dbg.value(metadata i8* %4, metadata !291, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %call6, metadata !290, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %call6, metadata !287, metadata !DIExpression()), !dbg !310
  %arrayidx25 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !313
  %arrayidx26 = getelementptr inbounds i8, i8* %4, i64 2, !dbg !313
  br label %while.cond, !dbg !319

while.cond:                                       ; preds = %if.end60, %if.then7
  %startp.0 = phi i8* [ %call6, %if.then7 ], [ %startp.1, %if.end60 ], !dbg !310
  %endp.0 = phi i8* [ %call6, %if.then7 ], [ %endp.1, %if.end60 ], !dbg !310
  call void @llvm.dbg.value(metadata i8* %endp.0, metadata !290, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %startp.0, metadata !287, metadata !DIExpression()), !dbg !310
  %5 = load i8, i8* %endp.0, align 1, !dbg !320
  %cmp15 = icmp eq i8 %5, 58, !dbg !321
  br i1 %cmp15, label %if.then21, label %lor.lhs.false17, !dbg !322

lor.lhs.false17:                                  ; preds = %while.cond
  %cmp19 = icmp eq i8 %5, 0, !dbg !323
  br i1 %cmp19, label %if.then21, label %if.else59, !dbg !324

if.then21:                                        ; preds = %lor.lhs.false17, %while.cond
  %cmp22 = icmp eq i8* %endp.0, %startp.0, !dbg !325
  br i1 %cmp22, label %if.then24, label %if.else, !dbg !326

if.then24:                                        ; preds = %if.then21
  store i8 46, i8* %4, align 16, !dbg !327
  store i8 47, i8* %arrayidx25, align 1, !dbg !328
  store i8 0, i8* %arrayidx26, align 2, !dbg !329
  br label %if.end48, !dbg !330

if.else:                                          ; preds = %if.then21
  %sub.ptr.lhs.cast = ptrtoint i8* %endp.0 to i64, !dbg !331
  %sub.ptr.rhs.cast = ptrtoint i8* %startp.0 to i64, !dbg !331
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !331
  %call27 = call i8* @strncpy(i8* nonnull %4, i8* %startp.0, i64 %sub.ptr.sub) #6, !dbg !333
  %arrayidx28 = getelementptr inbounds i8, i8* %endp.0, i64 -1, !dbg !334
  %6 = load i8, i8* %arrayidx28, align 1, !dbg !334
  %cmp30 = icmp eq i8 %6, 47, !dbg !334
  %arrayidx46 = getelementptr inbounds i8, i8* %4, i64 %sub.ptr.sub, !dbg !336
  br i1 %cmp30, label %if.else42, label %if.then32, !dbg !337

if.then32:                                        ; preds = %if.else
  store i8 47, i8* %arrayidx46, align 1, !dbg !338
  %add40 = add nsw i64 %sub.ptr.sub, 1, !dbg !340
  %arrayidx41 = getelementptr inbounds i8, i8* %4, i64 %add40, !dbg !341
  store i8 0, i8* %arrayidx41, align 1, !dbg !342
  br label %if.end48, !dbg !343

if.else42:                                        ; preds = %if.else
  store i8 0, i8* %arrayidx46, align 1, !dbg !344
  br label %if.end48

if.end48:                                         ; preds = %if.then32, %if.else42, %if.then24
  %call49 = call i8* @strcat(i8* nonnull %4, i8* %progname) #6, !dbg !345
  %call50 = call i32 @access(i8* nonnull %4, i32 1) #6, !dbg !346
  %tobool51 = icmp eq i32 %call50, 0, !dbg !346
  br i1 %tobool51, label %if.end62.loopexit, label %if.end53, !dbg !348

if.end53:                                         ; preds = %if.end48
  %7 = load i8, i8* %endp.0, align 1, !dbg !349
  %cmp55 = icmp eq i8 %7, 0, !dbg !351
  br i1 %cmp55, label %if.end62.loopexit, label %if.end58, !dbg !352

if.end58:                                         ; preds = %if.end53
  %add.ptr = getelementptr inbounds i8, i8* %endp.0, i64 1, !dbg !353
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !287, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !290, metadata !DIExpression()), !dbg !310
  br label %if.end60, !dbg !354

if.else59:                                        ; preds = %lor.lhs.false17
  %incdec.ptr = getelementptr inbounds i8, i8* %endp.0, i64 1, !dbg !355
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !290, metadata !DIExpression()), !dbg !310
  br label %if.end60

if.end60:                                         ; preds = %if.else59, %if.end58
  %startp.1 = phi i8* [ %add.ptr, %if.end58 ], [ %startp.0, %if.else59 ], !dbg !310
  %endp.1 = phi i8* [ %add.ptr, %if.end58 ], [ %incdec.ptr, %if.else59 ], !dbg !356
  call void @llvm.dbg.value(metadata i8* %endp.1, metadata !290, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i8* %startp.1, metadata !287, metadata !DIExpression()), !dbg !310
  br label %while.cond, !dbg !319, !llvm.loop !357

if.end62.loopexit:                                ; preds = %if.end53, %if.end48
  %progname.addr.2.ph = phi i8* [ %progname, %if.end53 ], [ %4, %if.end48 ]
  br label %if.end62, !dbg !359

if.end62:                                         ; preds = %if.end62.loopexit, %if.then5, %if.end
  %progname.addr.2 = phi i8* [ %progname, %if.end ], [ %progname, %if.then5 ], [ %progname.addr.2.ph, %if.end62.loopexit ]
  call void @llvm.dbg.value(metadata i8* %progname.addr.2, metadata !267, metadata !DIExpression()), !dbg !294
  %tobool63 = icmp eq i32 %resolve_links, 0, !dbg !359
  br i1 %tobool63, label %if.else66, label %if.then64, !dbg !361

if.then64:                                        ; preds = %if.end62
  %call65 = call i8* @lrealpath(i8* %progname.addr.2) #6, !dbg !362
  call void @llvm.dbg.value(metadata i8* %call65, metadata !283, metadata !DIExpression()), !dbg !294
  br label %if.end68, !dbg !363

if.else66:                                        ; preds = %if.end62
  %call67 = call i8* @strdup(i8* %progname.addr.2) #6, !dbg !364
  call void @llvm.dbg.value(metadata i8* %call67, metadata !283, metadata !DIExpression()), !dbg !294
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  %full_progname.0 = phi i8* [ %call65, %if.then64 ], [ %call67, %if.else66 ], !dbg !365
  call void @llvm.dbg.value(metadata i8* %full_progname.0, metadata !283, metadata !DIExpression()), !dbg !294
  %cmp69 = icmp eq i8* %full_progname.0, null, !dbg !366
  br i1 %cmp69, label %cleanup, label %if.end72, !dbg !368

if.end72:                                         ; preds = %if.end68
  call void @llvm.dbg.value(metadata i32* %prog_num, metadata !274, metadata !DIExpression(DW_OP_deref)), !dbg !294
  %call73 = call fastcc i8** @split_directories(i8* nonnull %full_progname.0, i32* nonnull %prog_num) #7, !dbg !369
  call void @llvm.dbg.value(metadata i8** %call73, metadata !271, metadata !DIExpression()), !dbg !294
  call void @free(i8* nonnull %full_progname.0) #6, !dbg !370
  %cmp74 = icmp eq i8** %call73, null, !dbg !371
  br i1 %cmp74, label %cleanup, label %if.end77, !dbg !373

if.end77:                                         ; preds = %if.end72
  call void @llvm.dbg.value(metadata i32* %bin_num, metadata !275, metadata !DIExpression(DW_OP_deref)), !dbg !294
  %call78 = call fastcc i8** @split_directories(i8* %bin_prefix, i32* nonnull %bin_num) #7, !dbg !374
  call void @llvm.dbg.value(metadata i8** %call78, metadata !272, metadata !DIExpression()), !dbg !294
  %cmp79 = icmp eq i8** %call78, null, !dbg !375
  br i1 %cmp79, label %bailout, label %if.end82, !dbg !377

if.end82:                                         ; preds = %if.end77
  %8 = load i32, i32* %prog_num, align 4, !dbg !378
  call void @llvm.dbg.value(metadata i32 %8, metadata !274, metadata !DIExpression()), !dbg !294
  %dec = add nsw i32 %8, -1, !dbg !378
  call void @llvm.dbg.value(metadata i32 %dec, metadata !274, metadata !DIExpression()), !dbg !294
  store i32 %dec, i32* %prog_num, align 4, !dbg !378
  call void @llvm.dbg.value(metadata i32 %dec, metadata !274, metadata !DIExpression()), !dbg !294
  %9 = load i32, i32* %bin_num, align 4, !dbg !379
  call void @llvm.dbg.value(metadata i32 %9, metadata !275, metadata !DIExpression()), !dbg !294
  %cmp83 = icmp eq i32 %dec, %9, !dbg !381
  br i1 %cmp83, label %for.cond.preheader, label %if.end103, !dbg !382

for.cond.preheader:                               ; preds = %if.end82
  br label %for.cond, !dbg !383

for.cond:                                         ; preds = %for.cond.preheader, %for.inc
  %indvars.iv17 = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next18, %for.inc ], !dbg !386
  %10 = phi i32 [ %dec, %for.cond.preheader ], [ %.pre, %for.inc ], !dbg !386
  call void @llvm.dbg.value(metadata i64 %indvars.iv17, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %10, metadata !275, metadata !DIExpression()), !dbg !294
  %11 = sext i32 %10 to i64, !dbg !388
  %cmp86 = icmp slt i64 %indvars.iv17, %11, !dbg !388
  br i1 %cmp86, label %for.body, label %for.end.loopexit, !dbg !383

for.body:                                         ; preds = %for.cond
  %arrayidx88 = getelementptr inbounds i8*, i8** %call73, i64 %indvars.iv17, !dbg !389
  %12 = load i8*, i8** %arrayidx88, align 8, !dbg !389
  %arrayidx90 = getelementptr inbounds i8*, i8** %call78, i64 %indvars.iv17, !dbg !392
  %13 = load i8*, i8** %arrayidx90, align 8, !dbg !392
  %call91 = call i32 @strcmp(i8* %12, i8* %13) #6, !dbg !393
  %cmp92 = icmp eq i32 %call91, 0, !dbg !394
  br i1 %cmp92, label %for.inc, label %for.body.for.end_crit_edge, !dbg !395

for.body.for.end_crit_edge:                       ; preds = %for.body
  %indvars.iv17.lcssa21 = phi i64 [ %indvars.iv17, %for.body ], !dbg !386
  call void @llvm.dbg.value(metadata i64 %indvars.iv17.lcssa21, metadata !277, metadata !DIExpression()), !dbg !294
  %.pre5 = load i32, i32* %bin_num, align 4, !dbg !396
  br label %for.end, !dbg !395

for.inc:                                          ; preds = %for.body
  %indvars.iv.next18 = add nuw nsw i64 %indvars.iv17, 1, !dbg !398
  call void @llvm.dbg.value(metadata i32 undef, metadata !277, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  %.pre = load i32, i32* %bin_num, align 4, !dbg !386
  br label %for.cond, !dbg !399, !llvm.loop !400

for.end.loopexit:                                 ; preds = %for.cond
  %indvars.iv17.lcssa = phi i64 [ %indvars.iv17, %for.cond ], !dbg !386
  %.lcssa19 = phi i32 [ %10, %for.cond ], !dbg !386
  call void @llvm.dbg.value(metadata i64 %indvars.iv17.lcssa, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa19, metadata !275, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa19, metadata !275, metadata !DIExpression()), !dbg !294
  br label %for.end, !dbg !402

for.end:                                          ; preds = %for.end.loopexit, %for.body.for.end_crit_edge
  %indvars.iv1722 = phi i64 [ %indvars.iv17.lcssa21, %for.body.for.end_crit_edge ], [ %indvars.iv17.lcssa, %for.end.loopexit ]
  %14 = phi i32 [ %.pre5, %for.body.for.end_crit_edge ], [ %.lcssa19, %for.end.loopexit ], !dbg !396
  %i.07 = trunc i64 %indvars.iv1722 to i32, !dbg !294
  call void @llvm.dbg.value(metadata i32 %i.07, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %i.07, metadata !277, metadata !DIExpression()), !dbg !294
  %15 = load i32, i32* %prog_num, align 4, !dbg !402
  call void @llvm.dbg.value(metadata i32 %15, metadata !274, metadata !DIExpression()), !dbg !294
  %cmp96 = icmp slt i32 %15, 1, !dbg !403
  call void @llvm.dbg.value(metadata i32 %14, metadata !275, metadata !DIExpression()), !dbg !294
  %cmp99 = icmp eq i32 %14, %i.07, !dbg !404
  %or.cond2 = or i1 %cmp96, %cmp99, !dbg !405
  br i1 %or.cond2, label %bailout, label %if.end103, !dbg !405

if.end103:                                        ; preds = %for.end, %if.end82
  call void @llvm.dbg.value(metadata i32* %prefix_num, metadata !276, metadata !DIExpression(DW_OP_deref)), !dbg !294
  %call104 = call fastcc i8** @split_directories(i8* %prefix, i32* nonnull %prefix_num) #7, !dbg !406
  call void @llvm.dbg.value(metadata i8** %call104, metadata !273, metadata !DIExpression()), !dbg !294
  %cmp105 = icmp eq i8** %call104, null, !dbg !407
  br i1 %cmp105, label %bailout, label %if.end108, !dbg !409

if.end108:                                        ; preds = %if.end103
  %16 = load i32, i32* %prefix_num, align 4, !dbg !410
  call void @llvm.dbg.value(metadata i32 %16, metadata !276, metadata !DIExpression()), !dbg !294
  %17 = load i32, i32* %bin_num, align 4, !dbg !411
  call void @llvm.dbg.value(metadata i32 %17, metadata !275, metadata !DIExpression()), !dbg !294
  %cmp109 = icmp slt i32 %16, %17, !dbg !412
  call void @llvm.dbg.value(metadata i32 %16, metadata !276, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %17, metadata !275, metadata !DIExpression()), !dbg !294
  %cond = select i1 %cmp109, i32 %16, i32 %17, !dbg !413
  call void @llvm.dbg.value(metadata i32 %cond, metadata !278, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 0, metadata !279, metadata !DIExpression()), !dbg !294
  %18 = sext i32 %cond to i64, !dbg !414
  br label %for.cond111, !dbg !414

for.cond111:                                      ; preds = %for.inc124, %if.end108
  %indvars.iv15 = phi i64 [ %indvars.iv.next16, %for.inc124 ], [ 0, %if.end108 ], !dbg !416
  call void @llvm.dbg.value(metadata i64 %indvars.iv15, metadata !279, metadata !DIExpression()), !dbg !294
  %cmp112 = icmp slt i64 %indvars.iv15, %18, !dbg !417
  %19 = trunc i64 %indvars.iv15 to i32, !dbg !419
  br i1 %cmp112, label %for.body114, label %for.end126, !dbg !419

for.body114:                                      ; preds = %for.cond111
  %arrayidx116 = getelementptr inbounds i8*, i8** %call78, i64 %indvars.iv15, !dbg !420
  %20 = load i8*, i8** %arrayidx116, align 8, !dbg !420
  %arrayidx118 = getelementptr inbounds i8*, i8** %call104, i64 %indvars.iv15, !dbg !423
  %21 = load i8*, i8** %arrayidx118, align 8, !dbg !423
  %call119 = call i32 @strcmp(i8* %20, i8* %21) #6, !dbg !424
  %cmp120 = icmp eq i32 %call119, 0, !dbg !425
  br i1 %cmp120, label %for.inc124, label %for.end126, !dbg !426

for.inc124:                                       ; preds = %for.body114
  %indvars.iv.next16 = add nuw nsw i64 %indvars.iv15, 1, !dbg !427
  call void @llvm.dbg.value(metadata i32 undef, metadata !279, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  br label %for.cond111, !dbg !428, !llvm.loop !429

for.end126:                                       ; preds = %for.body114, %for.cond111
  %indvars.iv15.lcssa = phi i64 [ %indvars.iv15, %for.body114 ], [ %indvars.iv15, %for.cond111 ], !dbg !416
  %.lcssa = phi i32 [ %19, %for.body114 ], [ %19, %for.cond111 ], !dbg !419
  call void @llvm.dbg.value(metadata i64 %indvars.iv15.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i64 %indvars.iv15.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !279, metadata !DIExpression()), !dbg !294
  %cmp127 = icmp eq i32 %.lcssa, 0, !dbg !431
  br i1 %cmp127, label %bailout, label %for.cond131.preheader, !dbg !433

for.cond131.preheader:                            ; preds = %for.end126
  br label %for.cond131, !dbg !434

for.cond131:                                      ; preds = %for.cond131.preheader, %for.body134
  %indvars.iv13 = phi i64 [ 0, %for.cond131.preheader ], [ %indvars.iv.next14, %for.body134 ]
  %needed_len.0 = phi i64 [ 0, %for.cond131.preheader ], [ %phitmp, %for.body134 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv13, metadata !277, metadata !DIExpression()), !dbg !294
  %22 = load i32, i32* %prog_num, align 4, !dbg !436
  call void @llvm.dbg.value(metadata i32 %22, metadata !274, metadata !DIExpression()), !dbg !294
  %23 = sext i32 %22 to i64, !dbg !438
  %cmp132 = icmp slt i64 %indvars.iv13, %23, !dbg !438
  br i1 %cmp132, label %for.body134, label %for.end143, !dbg !434

for.body134:                                      ; preds = %for.cond131
  %arrayidx136 = getelementptr inbounds i8*, i8** %call73, i64 %indvars.iv13, !dbg !439
  %24 = load i8*, i8** %arrayidx136, align 8, !dbg !439
  %call137 = call i64 @strlen(i8* %24) #6, !dbg !440
  %add139 = add i64 %needed_len.0, %call137, !dbg !441
  %indvars.iv.next14 = add nuw nsw i64 %indvars.iv13, 1, !dbg !442
  call void @llvm.dbg.value(metadata i32 undef, metadata !277, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  %sext = shl i64 %add139, 32, !dbg !443
  %phitmp = ashr exact i64 %sext, 32, !dbg !443
  br label %for.cond131, !dbg !443, !llvm.loop !444

for.end143:                                       ; preds = %for.cond131
  %needed_len.0.lcssa = phi i64 [ %needed_len.0, %for.cond131 ]
  %25 = load i32, i32* %bin_num, align 4, !dbg !446
  call void @llvm.dbg.value(metadata i32 %25, metadata !275, metadata !DIExpression()), !dbg !294
  %sub = sub nsw i32 %25, %.lcssa, !dbg !447
  %conv144 = sext i32 %sub to i64, !dbg !448
  %mul = mul nsw i64 %conv144, 3, !dbg !449
  %add146 = add nsw i64 %needed_len.0.lcssa, %mul, !dbg !450
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !277, metadata !DIExpression()), !dbg !294
  %26 = and i64 %indvars.iv15.lcssa, 4294967295, !dbg !451
  br label %for.cond148, !dbg !451

for.cond148:                                      ; preds = %for.body151, %for.end143
  %indvars.iv11 = phi i64 [ %indvars.iv.next12, %for.body151 ], [ %26, %for.end143 ]
  %needed_len.1.in = phi i64 [ %add156, %for.body151 ], [ %add146, %for.end143 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv11, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 undef, metadata !280, metadata !DIExpression()), !dbg !294
  %27 = load i32, i32* %prefix_num, align 4, !dbg !453
  call void @llvm.dbg.value(metadata i32 %27, metadata !276, metadata !DIExpression()), !dbg !294
  %28 = sext i32 %27 to i64, !dbg !455
  %cmp149 = icmp slt i64 %indvars.iv11, %28, !dbg !455
  br i1 %cmp149, label %for.body151, label %for.end160, !dbg !456

for.body151:                                      ; preds = %for.cond148
  %arrayidx153 = getelementptr inbounds i8*, i8** %call104, i64 %indvars.iv11, !dbg !457
  %29 = load i8*, i8** %arrayidx153, align 8, !dbg !457
  %call154 = call i64 @strlen(i8* %29) #6, !dbg !458
  %sext4 = shl i64 %needed_len.1.in, 32, !dbg !459
  %conv155 = ashr exact i64 %sext4, 32, !dbg !459
  %add156 = add i64 %conv155, %call154, !dbg !459
  %indvars.iv.next12 = add nuw nsw i64 %indvars.iv11, 1, !dbg !460
  call void @llvm.dbg.value(metadata i32 undef, metadata !277, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  br label %for.cond148, !dbg !461, !llvm.loop !462

for.end160:                                       ; preds = %for.cond148
  %needed_len.1.in.lcssa = phi i64 [ %needed_len.1.in, %for.cond148 ]
  %add161 = shl i64 %needed_len.1.in.lcssa, 32, !dbg !464
  %sext3 = add i64 %add161, 4294967296, !dbg !464
  %conv162 = ashr exact i64 %sext3, 32, !dbg !464
  %call163 = call i8* @malloc(i64 %conv162) #6, !dbg !465
  call void @llvm.dbg.value(metadata i8* %call163, metadata !281, metadata !DIExpression()), !dbg !294
  %cmp164 = icmp eq i8* %call163, null, !dbg !466
  br i1 %cmp164, label %bailout, label %if.end167, !dbg !468

if.end167:                                        ; preds = %for.end160
  store i8 0, i8* %call163, align 1, !dbg !469
  call void @llvm.dbg.value(metadata i32 0, metadata !277, metadata !DIExpression()), !dbg !294
  br label %for.cond168, !dbg !470

for.cond168:                                      ; preds = %for.body171, %if.end167
  %indvars.iv9 = phi i64 [ %indvars.iv.next10, %for.body171 ], [ 0, %if.end167 ], !dbg !472
  call void @llvm.dbg.value(metadata i64 %indvars.iv9, metadata !277, metadata !DIExpression()), !dbg !294
  %30 = load i32, i32* %prog_num, align 4, !dbg !473
  call void @llvm.dbg.value(metadata i32 %30, metadata !274, metadata !DIExpression()), !dbg !294
  %31 = sext i32 %30 to i64, !dbg !475
  %cmp169 = icmp slt i64 %indvars.iv9, %31, !dbg !475
  br i1 %cmp169, label %for.body171, label %for.end177, !dbg !476

for.body171:                                      ; preds = %for.cond168
  %arrayidx173 = getelementptr inbounds i8*, i8** %call73, i64 %indvars.iv9, !dbg !477
  %32 = load i8*, i8** %arrayidx173, align 8, !dbg !477
  %call174 = call i8* @strcat(i8* nonnull %call163, i8* %32) #6, !dbg !478
  %indvars.iv.next10 = add nuw nsw i64 %indvars.iv9, 1, !dbg !479
  call void @llvm.dbg.value(metadata i32 undef, metadata !277, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  br label %for.cond168, !dbg !480, !llvm.loop !481

for.end177:                                       ; preds = %for.cond168
  %call178 = call i64 @strlen(i8* nonnull %call163) #6, !dbg !483
  %add.ptr179 = getelementptr inbounds i8, i8* %call163, i64 %call178, !dbg !484
  call void @llvm.dbg.value(metadata i8* %add.ptr179, metadata !282, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !277, metadata !DIExpression()), !dbg !294
  br label %for.cond180, !dbg !485

for.cond180:                                      ; preds = %for.body183, %for.end177
  %ptr.0 = phi i8* [ %add.ptr179, %for.end177 ], [ %incdec.ptr186, %for.body183 ], !dbg !294
  %i.4 = phi i32 [ %.lcssa, %for.end177 ], [ %inc188, %for.body183 ], !dbg !487
  call void @llvm.dbg.value(metadata i32 %i.4, metadata !277, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %ptr.0, metadata !282, metadata !DIExpression()), !dbg !294
  %33 = load i32, i32* %bin_num, align 4, !dbg !488
  call void @llvm.dbg.value(metadata i32 %33, metadata !275, metadata !DIExpression()), !dbg !294
  %cmp181 = icmp slt i32 %i.4, %33, !dbg !490
  br i1 %cmp181, label %for.body183, label %for.end189, !dbg !491

for.body183:                                      ; preds = %for.cond180
  %call184 = call i8* @strcpy(i8* %ptr.0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !492
  %add.ptr185 = getelementptr inbounds i8, i8* %ptr.0, i64 2, !dbg !494
  call void @llvm.dbg.value(metadata i8* %add.ptr185, metadata !282, metadata !DIExpression()), !dbg !294
  %incdec.ptr186 = getelementptr inbounds i8, i8* %ptr.0, i64 3, !dbg !495
  call void @llvm.dbg.value(metadata i8* %incdec.ptr186, metadata !282, metadata !DIExpression()), !dbg !294
  store i8 47, i8* %add.ptr185, align 1, !dbg !496
  %inc188 = add nuw nsw i32 %i.4, 1, !dbg !497
  call void @llvm.dbg.value(metadata i32 %inc188, metadata !277, metadata !DIExpression()), !dbg !294
  br label %for.cond180, !dbg !498, !llvm.loop !499

for.end189:                                       ; preds = %for.cond180
  %ptr.0.lcssa = phi i8* [ %ptr.0, %for.cond180 ], !dbg !294
  call void @llvm.dbg.value(metadata i8* %ptr.0.lcssa, metadata !282, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %ptr.0.lcssa, metadata !282, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %ptr.0.lcssa, metadata !282, metadata !DIExpression()), !dbg !294
  store i8 0, i8* %ptr.0.lcssa, align 1, !dbg !501
  call void @llvm.dbg.value(metadata i32 %.lcssa, metadata !277, metadata !DIExpression()), !dbg !294
  %34 = and i64 %indvars.iv15.lcssa, 4294967295, !dbg !502
  br label %for.cond190, !dbg !502

for.cond190:                                      ; preds = %for.body193, %for.end189
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body193 ], [ %34, %for.end189 ], !dbg !504
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !277, metadata !DIExpression()), !dbg !294
  %35 = load i32, i32* %prefix_num, align 4, !dbg !505
  call void @llvm.dbg.value(metadata i32 %35, metadata !276, metadata !DIExpression()), !dbg !294
  %36 = sext i32 %35 to i64, !dbg !507
  %cmp191 = icmp slt i64 %indvars.iv, %36, !dbg !507
  br i1 %cmp191, label %for.body193, label %bailout.loopexit, !dbg !508

for.body193:                                      ; preds = %for.cond190
  %arrayidx195 = getelementptr inbounds i8*, i8** %call104, i64 %indvars.iv, !dbg !509
  %37 = load i8*, i8** %arrayidx195, align 8, !dbg !509
  %call196 = call i8* @strcat(i8* nonnull %call163, i8* %37) #6, !dbg !510
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !511
  call void @llvm.dbg.value(metadata i32 undef, metadata !277, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !294
  br label %for.cond190, !dbg !512, !llvm.loop !513

bailout.loopexit:                                 ; preds = %for.cond190
  br label %bailout, !dbg !515

bailout:                                          ; preds = %bailout.loopexit, %for.end160, %for.end126, %if.end103, %for.end, %if.end77
  %ret.0 = phi i8* [ null, %if.end77 ], [ null, %for.end ], [ null, %if.end103 ], [ null, %for.end126 ], [ null, %for.end160 ], [ %call163, %bailout.loopexit ], !dbg !294
  %prefix_dirs.0 = phi i8** [ null, %if.end77 ], [ null, %for.end ], [ null, %if.end103 ], [ %call104, %for.end126 ], [ %call104, %for.end160 ], [ %call104, %bailout.loopexit ], !dbg !294
  call void @llvm.dbg.value(metadata i8** %prefix_dirs.0, metadata !273, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.value(metadata i8* %ret.0, metadata !281, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.label(metadata !293), !dbg !516
  call fastcc void @free_split_directories(i8** nonnull %call73) #7, !dbg !515
  call fastcc void @free_split_directories(i8** %call78) #7, !dbg !517
  call fastcc void @free_split_directories(i8** %prefix_dirs.0) #7, !dbg !518
  br label %cleanup, !dbg !519

cleanup:                                          ; preds = %if.end72, %if.end68, %entry, %bailout
  %retval.0 = phi i8* [ %ret.0, %bailout ], [ null, %entry ], [ null, %if.end68 ], [ null, %if.end72 ], !dbg !294
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #8, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !520
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !520
  ret i8* %retval.0, !dbg !520
}

; Function Attrs: nounwind uwtable
define dso_local i8* @make_relative_prefix_ignore_links(i8* %progname, i8* %bin_prefix, i8* %prefix) local_unnamed_addr #4 !dbg !521 {
entry:
  call void @llvm.dbg.value(metadata i8* %progname, metadata !523, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8* %bin_prefix, metadata !524, metadata !DIExpression()), !dbg !526
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !525, metadata !DIExpression()), !dbg !526
  %call = tail call fastcc i8* @make_relative_prefix_1(i8* %progname, i8* %bin_prefix, i8* %prefix, i32 0) #7, !dbg !527
  ret i8* %call, !dbg !528
}

declare dso_local i8* @lbasename(i8*) local_unnamed_addr #1

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i8* @strncpy(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @strcat(i8*, i8*) local_unnamed_addr #1

declare dso_local i32 @access(i8*, i32) local_unnamed_addr #1

declare dso_local i8* @lrealpath(i8*) local_unnamed_addr #1

declare dso_local i8* @strdup(i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i8** @split_directories(i8* %name, i32* %ptr_num_dirs) unnamed_addr #4 !dbg !529 {
entry:
  call void @llvm.dbg.value(metadata i8* %name, metadata !534, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32* %ptr_num_dirs, metadata !535, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 0, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %name, metadata !538, metadata !DIExpression()), !dbg !541
  br label %while.cond, !dbg !542

while.cond:                                       ; preds = %if.end, %entry
  %p.0 = phi i8* [ %name, %entry ], [ %p.2, %if.end ], !dbg !541
  %num_dirs.0 = phi i32 [ 0, %entry ], [ %num_dirs.1, %if.end ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.0, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !538, metadata !DIExpression()), !dbg !541
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !543
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !538, metadata !DIExpression()), !dbg !541
  %0 = load i8, i8* %p.0, align 1, !dbg !544
  %conv = sext i8 %0 to i32, !dbg !544
  call void @llvm.dbg.value(metadata i32 %conv, metadata !540, metadata !DIExpression()), !dbg !541
  switch i32 %conv, label %if.end [
    i32 0, label %while.end10
    i32 47, label %if.then
  ], !dbg !542

if.then:                                          ; preds = %while.cond
  call void @llvm.dbg.value(metadata i32 %inc, metadata !536, metadata !DIExpression()), !dbg !541
  br label %while.cond4, !dbg !545

while.cond4:                                      ; preds = %while.body8, %if.then
  %p.1 = phi i8* [ %incdec.ptr, %if.then ], [ %incdec.ptr9, %while.body8 ], !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !538, metadata !DIExpression()), !dbg !541
  %1 = load i8, i8* %p.1, align 1, !dbg !549
  %cmp6 = icmp eq i8 %1, 47, !dbg !549
  br i1 %cmp6, label %while.body8, label %if.end.loopexit, !dbg !545

while.body8:                                      ; preds = %while.cond4
  %incdec.ptr9 = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !550
  call void @llvm.dbg.value(metadata i8* %incdec.ptr9, metadata !538, metadata !DIExpression()), !dbg !541
  br label %while.cond4, !dbg !545, !llvm.loop !551

if.end.loopexit:                                  ; preds = %while.cond4
  %p.1.lcssa = phi i8* [ %p.1, %while.cond4 ], !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  %inc = add nsw i32 %num_dirs.0, 1, !dbg !552
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  br label %if.end, !dbg !542

if.end:                                           ; preds = %if.end.loopexit, %while.cond
  %p.2 = phi i8* [ %incdec.ptr, %while.cond ], [ %p.1.lcssa, %if.end.loopexit ], !dbg !543
  %num_dirs.1 = phi i32 [ %num_dirs.0, %while.cond ], [ %inc, %if.end.loopexit ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.1, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !538, metadata !DIExpression()), !dbg !541
  br label %while.cond, !dbg !542, !llvm.loop !553

while.end10:                                      ; preds = %while.cond
  %num_dirs.0.lcssa = phi i32 [ %num_dirs.0, %while.cond ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.0.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.0.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.0.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  %add = add nsw i32 %num_dirs.0.lcssa, 2, !dbg !555
  %conv11 = sext i32 %add to i64, !dbg !556
  %mul = shl nsw i64 %conv11, 3, !dbg !557
  %call = tail call i8* @malloc(i64 %mul) #6, !dbg !558
  %2 = bitcast i8* %call to i8**, !dbg !559
  call void @llvm.dbg.value(metadata i8** %2, metadata !537, metadata !DIExpression()), !dbg !541
  %cmp12 = icmp eq i8* %call, null, !dbg !560
  br i1 %cmp12, label %cleanup, label %while.cond16.preheader, !dbg !562

while.cond16.preheader:                           ; preds = %while.end10
  br label %while.cond16, !dbg !563

while.cond16:                                     ; preds = %while.cond16.preheader, %if.end43
  %p.3 = phi i8* [ %p.5, %if.end43 ], [ %name, %while.cond16.preheader ], !dbg !541
  %q.0 = phi i8* [ %q.1, %if.end43 ], [ %name, %while.cond16.preheader ], !dbg !541
  %num_dirs.2 = phi i32 [ %num_dirs.3, %if.end43 ], [ 0, %while.cond16.preheader ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.2, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %q.0, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !538, metadata !DIExpression()), !dbg !541
  %incdec.ptr17 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !564
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !538, metadata !DIExpression()), !dbg !541
  %3 = load i8, i8* %p.3, align 1, !dbg !565
  %conv18 = sext i8 %3 to i32, !dbg !565
  call void @llvm.dbg.value(metadata i32 %conv18, metadata !540, metadata !DIExpression()), !dbg !541
  switch i32 %conv18, label %if.end43 [
    i32 0, label %while.end44
    i32 47, label %while.cond25.preheader
  ], !dbg !563

while.cond25.preheader:                           ; preds = %while.cond16
  br label %while.cond25, !dbg !566

while.cond25:                                     ; preds = %while.cond25.preheader, %while.body29
  %p.4 = phi i8* [ %incdec.ptr30, %while.body29 ], [ %incdec.ptr17, %while.cond25.preheader ], !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !538, metadata !DIExpression()), !dbg !541
  %4 = load i8, i8* %p.4, align 1, !dbg !570
  %cmp27 = icmp eq i8 %4, 47, !dbg !570
  br i1 %cmp27, label %while.body29, label %while.end31, !dbg !566

while.body29:                                     ; preds = %while.cond25
  %incdec.ptr30 = getelementptr inbounds i8, i8* %p.4, i64 1, !dbg !571
  call void @llvm.dbg.value(metadata i8* %incdec.ptr30, metadata !538, metadata !DIExpression()), !dbg !541
  br label %while.cond25, !dbg !566, !llvm.loop !572

while.end31:                                      ; preds = %while.cond25
  %p.4.lcssa = phi i8* [ %p.4, %while.cond25 ], !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.4.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  %sub.ptr.lhs.cast = ptrtoint i8* %p.4.lcssa to i64, !dbg !573
  %sub.ptr.rhs.cast = ptrtoint i8* %q.0 to i64, !dbg !573
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !573
  %conv32 = trunc i64 %sub.ptr.sub to i32, !dbg !574
  %call33 = tail call fastcc i8* @save_string(i8* %q.0, i32 %conv32) #7, !dbg !575
  %inc34 = add nsw i32 %num_dirs.2, 1, !dbg !576
  call void @llvm.dbg.value(metadata i32 %inc34, metadata !536, metadata !DIExpression()), !dbg !541
  %idxprom = sext i32 %num_dirs.2 to i64, !dbg !577
  %arrayidx = getelementptr inbounds i8*, i8** %2, i64 %idxprom, !dbg !577
  store i8* %call33, i8** %arrayidx, align 8, !dbg !578
  %cmp37 = icmp eq i8* %call33, null, !dbg !579
  br i1 %cmp37, label %if.then39, label %if.end43, !dbg !581

if.then39:                                        ; preds = %while.end31
  %inc34.lcssa = phi i32 [ %inc34, %while.end31 ], !dbg !576
  %idxprom40 = sext i32 %inc34.lcssa to i64, !dbg !582
  %arrayidx41 = getelementptr inbounds i8*, i8** %2, i64 %idxprom40, !dbg !582
  store i8* null, i8** %arrayidx41, align 8, !dbg !584
  tail call fastcc void @free_split_directories(i8** nonnull %2) #7, !dbg !585
  br label %cleanup, !dbg !586

if.end43:                                         ; preds = %while.end31, %while.cond16
  %p.5 = phi i8* [ %incdec.ptr17, %while.cond16 ], [ %p.4.lcssa, %while.end31 ], !dbg !564
  %q.1 = phi i8* [ %q.0, %while.cond16 ], [ %p.4.lcssa, %while.end31 ], !dbg !541
  %num_dirs.3 = phi i32 [ %num_dirs.2, %while.cond16 ], [ %inc34, %while.end31 ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.3, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %q.1, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !538, metadata !DIExpression()), !dbg !541
  br label %while.cond16, !dbg !563, !llvm.loop !587

while.end44:                                      ; preds = %while.cond16
  %p.3.lcssa = phi i8* [ %p.3, %while.cond16 ], !dbg !541
  %q.0.lcssa = phi i8* [ %q.0, %while.cond16 ], !dbg !541
  %num_dirs.2.lcssa = phi i32 [ %num_dirs.2, %while.cond16 ], !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.2.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.2.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8* %q.0.lcssa, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.2.lcssa, metadata !536, metadata !DIExpression()), !dbg !541
  %sub.ptr.lhs.cast45 = ptrtoint i8* %p.3.lcssa to i64, !dbg !589
  %sub.ptr.rhs.cast46 = ptrtoint i8* %q.0.lcssa to i64, !dbg !589
  %sub.ptr.sub47 = sub i64 %sub.ptr.lhs.cast45, %sub.ptr.rhs.cast46, !dbg !589
  %cmp48 = icmp sgt i64 %sub.ptr.sub47, 0, !dbg !591
  br i1 %cmp48, label %if.then50, label %while.end44.if.end60_crit_edge, !dbg !592

while.end44.if.end60_crit_edge:                   ; preds = %while.end44
  br label %if.end60, !dbg !592

if.then50:                                        ; preds = %while.end44
  %conv55 = trunc i64 %sub.ptr.sub47 to i32, !dbg !593
  %call56 = tail call fastcc i8* @save_string(i8* %q.0.lcssa, i32 %conv55) #7, !dbg !594
  %inc57 = add nsw i32 %num_dirs.2.lcssa, 1, !dbg !595
  call void @llvm.dbg.value(metadata i32 %inc57, metadata !536, metadata !DIExpression()), !dbg !541
  %idxprom58 = sext i32 %num_dirs.2.lcssa to i64, !dbg !596
  %arrayidx59 = getelementptr inbounds i8*, i8** %2, i64 %idxprom58, !dbg !596
  store i8* %call56, i8** %arrayidx59, align 8, !dbg !597
  br label %if.end60, !dbg !596

if.end60:                                         ; preds = %while.end44.if.end60_crit_edge, %if.then50
  %num_dirs.4 = phi i32 [ %inc57, %if.then50 ], [ %num_dirs.2.lcssa, %while.end44.if.end60_crit_edge ], !dbg !541
  call void @llvm.dbg.value(metadata i32 %num_dirs.4, metadata !536, metadata !DIExpression()), !dbg !541
  %idxprom61 = sext i32 %num_dirs.4 to i64, !dbg !598
  %arrayidx62 = getelementptr inbounds i8*, i8** %2, i64 %idxprom61, !dbg !598
  store i8* null, i8** %arrayidx62, align 8, !dbg !599
  %sub63 = add nsw i32 %num_dirs.4, -1, !dbg !600
  %idxprom64 = sext i32 %sub63 to i64, !dbg !602
  %arrayidx65 = getelementptr inbounds i8*, i8** %2, i64 %idxprom64, !dbg !602
  %5 = load i8*, i8** %arrayidx65, align 8, !dbg !602
  %cmp66 = icmp eq i8* %5, null, !dbg !603
  br i1 %cmp66, label %if.then68, label %if.end69, !dbg !604

if.then68:                                        ; preds = %if.end60
  tail call fastcc void @free_split_directories(i8** nonnull %2) #7, !dbg !605
  br label %cleanup, !dbg !607

if.end69:                                         ; preds = %if.end60
  %tobool = icmp eq i32* %ptr_num_dirs, null, !dbg !608
  br i1 %tobool, label %cleanup, label %if.then70, !dbg !610

if.then70:                                        ; preds = %if.end69
  store i32 %num_dirs.4, i32* %ptr_num_dirs, align 4, !dbg !611
  br label %cleanup, !dbg !612

cleanup:                                          ; preds = %if.end69, %if.then70, %while.end10, %if.then68, %if.then39
  %retval.0 = phi i8** [ null, %if.then39 ], [ null, %if.then68 ], [ null, %while.end10 ], [ %2, %if.then70 ], [ %2, %if.end69 ], !dbg !541
  ret i8** %retval.0, !dbg !613
}

declare dso_local void @free(i8*) local_unnamed_addr #1

declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

declare dso_local i8* @malloc(i64) local_unnamed_addr #1

declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #5

; Function Attrs: nounwind uwtable
define internal fastcc void @free_split_directories(i8** %dirs) unnamed_addr #4 !dbg !614 {
entry:
  call void @llvm.dbg.value(metadata i8** %dirs, metadata !618, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.value(metadata i32 0, metadata !619, metadata !DIExpression()), !dbg !620
  %cmp = icmp eq i8** %dirs, null, !dbg !621
  br i1 %cmp, label %if.end, label %while.cond.preheader, !dbg !623

while.cond.preheader:                             ; preds = %entry
  br label %while.cond, !dbg !624

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %indvars.iv = phi i64 [ 0, %while.cond.preheader ], [ %indvars.iv.next, %while.body ], !dbg !620
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !619, metadata !DIExpression()), !dbg !620
  %arrayidx = getelementptr inbounds i8*, i8** %dirs, i64 %indvars.iv, !dbg !626
  %0 = load i8*, i8** %arrayidx, align 8, !dbg !626
  %cmp1 = icmp eq i8* %0, null, !dbg !627
  br i1 %cmp1, label %while.end, label %while.body, !dbg !624

while.body:                                       ; preds = %while.cond
  %indvars.iv.next = add nuw i64 %indvars.iv, 1, !dbg !628
  call void @llvm.dbg.value(metadata i32 undef, metadata !619, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !620
  tail call void @free(i8* nonnull %0) #6, !dbg !629
  br label %while.cond, !dbg !624, !llvm.loop !630

while.end:                                        ; preds = %while.cond
  %1 = bitcast i8** %dirs to i8*, !dbg !632
  tail call void @free(i8* nonnull %1) #6, !dbg !633
  br label %if.end, !dbg !634

if.end:                                           ; preds = %entry, %while.end
  ret void, !dbg !635
}

; Function Attrs: nounwind uwtable
define internal fastcc i8* @save_string(i8* %s, i32 %len) unnamed_addr #4 !dbg !636 {
entry:
  call void @llvm.dbg.value(metadata i8* %s, metadata !640, metadata !DIExpression()), !dbg !643
  call void @llvm.dbg.value(metadata i32 %len, metadata !641, metadata !DIExpression()), !dbg !643
  %add = add nsw i32 %len, 1, !dbg !644
  %conv = sext i32 %add to i64, !dbg !645
  %call = tail call i8* @malloc(i64 %conv) #6, !dbg !646
  call void @llvm.dbg.value(metadata i8* %call, metadata !642, metadata !DIExpression()), !dbg !643
  %conv1 = sext i32 %len to i64, !dbg !647
  %call2 = tail call i8* @memcpy(i8* %call, i8* %s, i64 %conv1) #6, !dbg !648
  %arrayidx = getelementptr inbounds i8, i8* %call, i64 %conv1, !dbg !649
  store i8 0, i8* %arrayidx, align 1, !dbg !650
  ret i8* %call, !dbg !651
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "make-relative-prefix.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5, !8, !9, !11, !12, !6}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!17 = distinct !DISubprogram(name: "atoi", scope: !18, file: !18, line: 361, type: !19, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!18 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !9}
!21 = !{!22}
!22 = !DILocalVariable(name: "__nptr", arg: 1, scope: !17, file: !18, line: 361, type: !9)
!23 = !DILocation(line: 0, scope: !17)
!24 = !DILocation(line: 363, column: 16, scope: !17)
!25 = !DILocation(line: 363, column: 10, scope: !17)
!26 = !DILocation(line: 363, column: 3, scope: !17)
!27 = distinct !DISubprogram(name: "atol", scope: !18, file: !18, line: 366, type: !28, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !9}
!30 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!31 = !{!32}
!32 = !DILocalVariable(name: "__nptr", arg: 1, scope: !27, file: !18, line: 366, type: !9)
!33 = !DILocation(line: 0, scope: !27)
!34 = !DILocation(line: 368, column: 10, scope: !27)
!35 = !DILocation(line: 368, column: 3, scope: !27)
!36 = distinct !DISubprogram(name: "atoll", scope: !18, file: !18, line: 373, type: !37, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !40)
!37 = !DISubroutineType(types: !38)
!38 = !{!39, !9}
!39 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!40 = !{!41}
!41 = !DILocalVariable(name: "__nptr", arg: 1, scope: !36, file: !18, line: 373, type: !9)
!42 = !DILocation(line: 0, scope: !36)
!43 = !DILocation(line: 375, column: 10, scope: !36)
!44 = !DILocation(line: 375, column: 3, scope: !36)
!45 = distinct !DISubprogram(name: "bsearch", scope: !46, file: !46, line: 20, type: !47, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!47 = !DISubroutineType(types: !48)
!48 = !{!8, !49, !49, !51, !51, !54}
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!53 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !18, line: 808, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!4, !49, !49}
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!59 = !DILocalVariable(name: "__key", arg: 1, scope: !45, file: !46, line: 20, type: !49)
!60 = !DILocalVariable(name: "__base", arg: 2, scope: !45, file: !46, line: 20, type: !49)
!61 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !45, file: !46, line: 20, type: !51)
!62 = !DILocalVariable(name: "__size", arg: 4, scope: !45, file: !46, line: 20, type: !51)
!63 = !DILocalVariable(name: "__compar", arg: 5, scope: !45, file: !46, line: 21, type: !54)
!64 = !DILocalVariable(name: "__l", scope: !45, file: !46, line: 23, type: !51)
!65 = !DILocalVariable(name: "__u", scope: !45, file: !46, line: 23, type: !51)
!66 = !DILocalVariable(name: "__idx", scope: !45, file: !46, line: 23, type: !51)
!67 = !DILocalVariable(name: "__p", scope: !45, file: !46, line: 24, type: !49)
!68 = !DILocalVariable(name: "__comparison", scope: !45, file: !46, line: 25, type: !4)
!69 = !DILocation(line: 0, scope: !45)
!70 = !DILocation(line: 29, column: 3, scope: !45)
!71 = !DILocation(line: 27, column: 7, scope: !45)
!72 = !DILocation(line: 29, column: 14, scope: !45)
!73 = !DILocation(line: 31, column: 20, scope: !74)
!74 = distinct !DILexicalBlock(scope: !45, file: !46, line: 30, column: 5)
!75 = !DILocation(line: 31, column: 27, scope: !74)
!76 = !DILocation(line: 32, column: 56, scope: !74)
!77 = !DILocation(line: 32, column: 47, scope: !74)
!78 = !DILocation(line: 33, column: 22, scope: !74)
!79 = !DILocation(line: 34, column: 24, scope: !80)
!80 = distinct !DILexicalBlock(scope: !74, file: !46, line: 34, column: 11)
!81 = !DILocation(line: 34, column: 11, scope: !74)
!82 = !DILocation(line: 36, column: 29, scope: !83)
!83 = distinct !DILexicalBlock(scope: !80, file: !46, line: 36, column: 16)
!84 = !DILocation(line: 36, column: 16, scope: !80)
!85 = !DILocation(line: 37, column: 14, scope: !83)
!86 = distinct !{!86, !70, !87}
!87 = !DILocation(line: 40, column: 5, scope: !45)
!88 = !DILocation(line: 43, column: 1, scope: !45)
!89 = distinct !DISubprogram(name: "atof", scope: !90, file: !90, line: 25, type: !91, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!91 = !DISubroutineType(types: !92)
!92 = !{!93, !9}
!93 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!94 = !{!95}
!95 = !DILocalVariable(name: "__nptr", arg: 1, scope: !89, file: !90, line: 25, type: !9)
!96 = !DILocation(line: 0, scope: !89)
!97 = !DILocation(line: 27, column: 10, scope: !89)
!98 = !DILocation(line: 27, column: 3, scope: !89)
!99 = distinct !DISubprogram(name: "vprintf", scope: !100, file: !100, line: 39, type: !101, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !112)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!101 = !DISubroutineType(types: !102)
!102 = !{!4, !103, !104}
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 28, size: 192, elements: !106)
!106 = !{!107, !109, !110, !111}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !105, file: !1, line: 28, baseType: !108, size: 32)
!108 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !105, file: !1, line: 28, baseType: !108, size: 32, offset: 32)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !105, file: !1, line: 28, baseType: !8, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !105, file: !1, line: 28, baseType: !8, size: 64, offset: 128)
!112 = !{!113, !114}
!113 = !DILocalVariable(name: "__fmt", arg: 1, scope: !99, file: !100, line: 39, type: !103)
!114 = !DILocalVariable(name: "__arg", arg: 2, scope: !99, file: !100, line: 39, type: !104)
!115 = !DILocation(line: 0, scope: !99)
!116 = !DILocation(line: 41, column: 20, scope: !99)
!117 = !DILocation(line: 41, column: 10, scope: !99)
!118 = !DILocation(line: 41, column: 3, scope: !99)
!119 = distinct !DISubprogram(name: "getchar", scope: !100, file: !100, line: 47, type: !120, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!120 = !DISubroutineType(types: !121)
!121 = !{!4}
!122 = !DILocation(line: 49, column: 16, scope: !119)
!123 = !DILocation(line: 49, column: 10, scope: !119)
!124 = !DILocation(line: 49, column: 3, scope: !119)
!125 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !100, file: !100, line: 56, type: !126, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !183)
!126 = !DISubroutineType(types: !127)
!127 = !{!4, !128}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !130, line: 7, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !132, line: 49, size: 1728, elements: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!133 = !{!134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !151, !152, !153, !156, !158, !160, !164, !167, !169, !172, !175, !176, !177, !178, !179}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !131, file: !132, line: 51, baseType: !4, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !131, file: !132, line: 54, baseType: !6, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !131, file: !132, line: 55, baseType: !6, size: 64, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !131, file: !132, line: 56, baseType: !6, size: 64, offset: 192)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !131, file: !132, line: 57, baseType: !6, size: 64, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !131, file: !132, line: 58, baseType: !6, size: 64, offset: 320)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !131, file: !132, line: 59, baseType: !6, size: 64, offset: 384)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !131, file: !132, line: 60, baseType: !6, size: 64, offset: 448)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !131, file: !132, line: 61, baseType: !6, size: 64, offset: 512)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !131, file: !132, line: 64, baseType: !6, size: 64, offset: 576)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !131, file: !132, line: 65, baseType: !6, size: 64, offset: 640)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !131, file: !132, line: 66, baseType: !6, size: 64, offset: 704)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !131, file: !132, line: 68, baseType: !147, size: 64, offset: 768)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !132, line: 36, flags: DIFlagFwdDecl)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !131, file: !132, line: 70, baseType: !150, size: 64, offset: 832)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !131, file: !132, line: 72, baseType: !4, size: 32, offset: 896)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !131, file: !132, line: 73, baseType: !4, size: 32, offset: 928)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !131, file: !132, line: 74, baseType: !154, size: 64, offset: 960)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !155, line: 152, baseType: !30)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!156 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !131, file: !132, line: 77, baseType: !157, size: 16, offset: 1024)
!157 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !131, file: !132, line: 78, baseType: !159, size: 8, offset: 1040)
!159 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !131, file: !132, line: 79, baseType: !161, size: 8, offset: 1048)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 1)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !131, file: !132, line: 81, baseType: !165, size: 64, offset: 1088)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !132, line: 43, baseType: null)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !131, file: !132, line: 89, baseType: !168, size: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !155, line: 153, baseType: !30)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !131, file: !132, line: 91, baseType: !170, size: 64, offset: 1216)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !132, line: 37, flags: DIFlagFwdDecl)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !131, file: !132, line: 92, baseType: !173, size: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !132, line: 38, flags: DIFlagFwdDecl)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !131, file: !132, line: 93, baseType: !150, size: 64, offset: 1344)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !131, file: !132, line: 94, baseType: !8, size: 64, offset: 1408)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !131, file: !132, line: 95, baseType: !51, size: 64, offset: 1472)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !131, file: !132, line: 96, baseType: !4, size: 32, offset: 1536)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !131, file: !132, line: 98, baseType: !180, size: 160, offset: 1568)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 20)
!183 = !{!184}
!184 = !DILocalVariable(name: "__fp", arg: 1, scope: !125, file: !100, line: 56, type: !128)
!185 = !DILocation(line: 0, scope: !125)
!186 = !DILocation(line: 58, column: 10, scope: !125)
!187 = !DILocation(line: 58, column: 3, scope: !125)
!188 = distinct !DISubprogram(name: "getc_unlocked", scope: !100, file: !100, line: 66, type: !126, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "__fp", arg: 1, scope: !188, file: !100, line: 66, type: !128)
!191 = !DILocation(line: 0, scope: !188)
!192 = !DILocation(line: 68, column: 10, scope: !188)
!193 = !DILocation(line: 68, column: 3, scope: !188)
!194 = distinct !DISubprogram(name: "getchar_unlocked", scope: !100, file: !100, line: 73, type: !120, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!195 = !DILocation(line: 75, column: 10, scope: !194)
!196 = !DILocation(line: 75, column: 3, scope: !194)
!197 = distinct !DISubprogram(name: "putchar", scope: !100, file: !100, line: 82, type: !198, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!4, !4}
!200 = !{!201}
!201 = !DILocalVariable(name: "__c", arg: 1, scope: !197, file: !100, line: 82, type: !4)
!202 = !DILocation(line: 0, scope: !197)
!203 = !DILocation(line: 84, column: 21, scope: !197)
!204 = !DILocation(line: 84, column: 10, scope: !197)
!205 = !DILocation(line: 84, column: 3, scope: !197)
!206 = distinct !DISubprogram(name: "fputc_unlocked", scope: !100, file: !100, line: 91, type: !207, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!4, !4, !128}
!209 = !{!210, !211}
!210 = !DILocalVariable(name: "__c", arg: 1, scope: !206, file: !100, line: 91, type: !4)
!211 = !DILocalVariable(name: "__stream", arg: 2, scope: !206, file: !100, line: 91, type: !128)
!212 = !DILocation(line: 0, scope: !206)
!213 = !DILocation(line: 93, column: 10, scope: !206)
!214 = !DILocation(line: 93, column: 3, scope: !206)
!215 = distinct !DISubprogram(name: "putc_unlocked", scope: !100, file: !100, line: 101, type: !207, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !216)
!216 = !{!217, !218}
!217 = !DILocalVariable(name: "__c", arg: 1, scope: !215, file: !100, line: 101, type: !4)
!218 = !DILocalVariable(name: "__stream", arg: 2, scope: !215, file: !100, line: 101, type: !128)
!219 = !DILocation(line: 0, scope: !215)
!220 = !DILocation(line: 103, column: 10, scope: !215)
!221 = !DILocation(line: 103, column: 3, scope: !215)
!222 = distinct !DISubprogram(name: "putchar_unlocked", scope: !100, file: !100, line: 108, type: !198, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !223)
!223 = !{!224}
!224 = !DILocalVariable(name: "__c", arg: 1, scope: !222, file: !100, line: 108, type: !4)
!225 = !DILocation(line: 0, scope: !222)
!226 = !DILocation(line: 110, column: 10, scope: !222)
!227 = !DILocation(line: 110, column: 3, scope: !222)
!228 = distinct !DISubprogram(name: "getline", scope: !100, file: !100, line: 118, type: !229, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !233)
!229 = !DISubroutineType(types: !230)
!230 = !{!231, !5, !232, !128}
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !155, line: 193, baseType: !30)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!233 = !{!234, !235, !236}
!234 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !228, file: !100, line: 118, type: !5)
!235 = !DILocalVariable(name: "__n", arg: 2, scope: !228, file: !100, line: 118, type: !232)
!236 = !DILocalVariable(name: "__stream", arg: 3, scope: !228, file: !100, line: 118, type: !128)
!237 = !DILocation(line: 0, scope: !228)
!238 = !DILocation(line: 120, column: 10, scope: !228)
!239 = !DILocation(line: 120, column: 3, scope: !228)
!240 = distinct !DISubprogram(name: "feof_unlocked", scope: !100, file: !100, line: 128, type: !126, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !241)
!241 = !{!242}
!242 = !DILocalVariable(name: "__stream", arg: 1, scope: !240, file: !100, line: 128, type: !128)
!243 = !DILocation(line: 0, scope: !240)
!244 = !DILocation(line: 130, column: 10, scope: !240)
!245 = !DILocation(line: 130, column: 3, scope: !240)
!246 = distinct !DISubprogram(name: "ferror_unlocked", scope: !100, file: !100, line: 135, type: !126, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !247)
!247 = !{!248}
!248 = !DILocalVariable(name: "__stream", arg: 1, scope: !246, file: !100, line: 135, type: !128)
!249 = !DILocation(line: 0, scope: !246)
!250 = !DILocation(line: 137, column: 10, scope: !246)
!251 = !DILocation(line: 137, column: 3, scope: !246)
!252 = distinct !DISubprogram(name: "make_relative_prefix", scope: !1, file: !1, line: 394, type: !253, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!253 = !DISubroutineType(types: !254)
!254 = !{!6, !9, !9, !9}
!255 = !{!256, !257, !258}
!256 = !DILocalVariable(name: "progname", arg: 1, scope: !252, file: !1, line: 394, type: !9)
!257 = !DILocalVariable(name: "bin_prefix", arg: 2, scope: !252, file: !1, line: 394, type: !9)
!258 = !DILocalVariable(name: "prefix", arg: 3, scope: !252, file: !1, line: 395, type: !9)
!259 = !DILocation(line: 0, scope: !252)
!260 = !DILocation(line: 397, column: 10, scope: !252)
!261 = !DILocation(line: 397, column: 3, scope: !252)
!262 = distinct !DISubprogram(name: "make_relative_prefix_1", scope: !1, file: !1, line: 224, type: !263, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !266)
!263 = !DISubroutineType(types: !264)
!264 = !{!6, !9, !9, !9, !265}
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!266 = !{!267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !287, !290, !291, !292, !293}
!267 = !DILocalVariable(name: "progname", arg: 1, scope: !262, file: !1, line: 224, type: !9)
!268 = !DILocalVariable(name: "bin_prefix", arg: 2, scope: !262, file: !1, line: 224, type: !9)
!269 = !DILocalVariable(name: "prefix", arg: 3, scope: !262, file: !1, line: 225, type: !9)
!270 = !DILocalVariable(name: "resolve_links", arg: 4, scope: !262, file: !1, line: 225, type: !265)
!271 = !DILocalVariable(name: "prog_dirs", scope: !262, file: !1, line: 227, type: !5)
!272 = !DILocalVariable(name: "bin_dirs", scope: !262, file: !1, line: 227, type: !5)
!273 = !DILocalVariable(name: "prefix_dirs", scope: !262, file: !1, line: 227, type: !5)
!274 = !DILocalVariable(name: "prog_num", scope: !262, file: !1, line: 228, type: !4)
!275 = !DILocalVariable(name: "bin_num", scope: !262, file: !1, line: 228, type: !4)
!276 = !DILocalVariable(name: "prefix_num", scope: !262, file: !1, line: 228, type: !4)
!277 = !DILocalVariable(name: "i", scope: !262, file: !1, line: 229, type: !4)
!278 = !DILocalVariable(name: "n", scope: !262, file: !1, line: 229, type: !4)
!279 = !DILocalVariable(name: "common", scope: !262, file: !1, line: 229, type: !4)
!280 = !DILocalVariable(name: "needed_len", scope: !262, file: !1, line: 230, type: !4)
!281 = !DILocalVariable(name: "ret", scope: !262, file: !1, line: 231, type: !6)
!282 = !DILocalVariable(name: "ptr", scope: !262, file: !1, line: 231, type: !6)
!283 = !DILocalVariable(name: "full_progname", scope: !262, file: !1, line: 231, type: !6)
!284 = !DILocalVariable(name: "temp", scope: !285, file: !1, line: 240, type: !6)
!285 = distinct !DILexicalBlock(scope: !286, file: !1, line: 239, column: 5)
!286 = distinct !DILexicalBlock(scope: !262, file: !1, line: 238, column: 7)
!287 = !DILocalVariable(name: "startp", scope: !288, file: !1, line: 245, type: !6)
!288 = distinct !DILexicalBlock(scope: !289, file: !1, line: 244, column: 2)
!289 = distinct !DILexicalBlock(scope: !285, file: !1, line: 243, column: 11)
!290 = !DILocalVariable(name: "endp", scope: !288, file: !1, line: 245, type: !6)
!291 = !DILocalVariable(name: "nstore", scope: !288, file: !1, line: 245, type: !6)
!292 = !DILocalVariable(name: "prefixlen", scope: !288, file: !1, line: 246, type: !51)
!293 = !DILabel(scope: !262, name: "bailout", file: !1, line: 379)
!294 = !DILocation(line: 0, scope: !262)
!295 = !DILocation(line: 228, column: 3, scope: !262)
!296 = !DILocation(line: 233, column: 16, scope: !297)
!297 = distinct !DILexicalBlock(scope: !262, file: !1, line: 233, column: 7)
!298 = !DILocation(line: 233, column: 38, scope: !297)
!299 = !DILocation(line: 233, column: 24, scope: !297)
!300 = !DILocation(line: 233, column: 56, scope: !297)
!301 = !DILocation(line: 238, column: 7, scope: !286)
!302 = !DILocation(line: 238, column: 28, scope: !286)
!303 = !DILocation(line: 238, column: 7, scope: !262)
!304 = !DILocation(line: 242, column: 14, scope: !285)
!305 = !DILocation(line: 0, scope: !285)
!306 = !DILocation(line: 243, column: 11, scope: !289)
!307 = !DILocation(line: 243, column: 11, scope: !285)
!308 = !DILocation(line: 246, column: 23, scope: !288)
!309 = !DILocation(line: 246, column: 37, scope: !288)
!310 = !DILocation(line: 0, scope: !288)
!311 = !DILocation(line: 247, column: 8, scope: !288)
!312 = !DILocation(line: 250, column: 22, scope: !288)
!313 = !DILocation(line: 0, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !1, line: 258, column: 7)
!315 = distinct !DILexicalBlock(scope: !316, file: !1, line: 257, column: 9)
!316 = distinct !DILexicalBlock(scope: !317, file: !1, line: 256, column: 3)
!317 = distinct !DILexicalBlock(scope: !318, file: !1, line: 255, column: 12)
!318 = distinct !DILexicalBlock(scope: !288, file: !1, line: 254, column: 6)
!319 = !DILocation(line: 253, column: 4, scope: !288)
!320 = !DILocation(line: 255, column: 12, scope: !317)
!321 = !DILocation(line: 255, column: 18, scope: !317)
!322 = !DILocation(line: 255, column: 36, scope: !317)
!323 = !DILocation(line: 255, column: 45, scope: !317)
!324 = !DILocation(line: 255, column: 12, scope: !318)
!325 = !DILocation(line: 257, column: 14, scope: !315)
!326 = !DILocation(line: 257, column: 9, scope: !316)
!327 = !DILocation(line: 259, column: 19, scope: !314)
!328 = !DILocation(line: 260, column: 19, scope: !314)
!329 = !DILocation(line: 261, column: 19, scope: !314)
!330 = !DILocation(line: 262, column: 7, scope: !314)
!331 = !DILocation(line: 265, column: 39, scope: !332)
!332 = distinct !DILexicalBlock(scope: !315, file: !1, line: 264, column: 7)
!333 = !DILocation(line: 265, column: 9, scope: !332)
!334 = !DILocation(line: 266, column: 15, scope: !335)
!335 = distinct !DILexicalBlock(scope: !332, file: !1, line: 266, column: 13)
!336 = !DILocation(line: 0, scope: !335)
!337 = !DILocation(line: 266, column: 13, scope: !332)
!338 = !DILocation(line: 268, column: 28, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 267, column: 4)
!340 = !DILocation(line: 269, column: 27, scope: !339)
!341 = !DILocation(line: 269, column: 6, scope: !339)
!342 = !DILocation(line: 269, column: 32, scope: !339)
!343 = !DILocation(line: 270, column: 4, scope: !339)
!344 = !DILocation(line: 272, column: 26, scope: !335)
!345 = !DILocation(line: 274, column: 5, scope: !316)
!346 = !DILocation(line: 275, column: 11, scope: !347)
!347 = distinct !DILexicalBlock(scope: !316, file: !1, line: 275, column: 9)
!348 = !DILocation(line: 275, column: 9, scope: !316)
!349 = !DILocation(line: 285, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !316, file: !1, line: 285, column: 9)
!351 = !DILocation(line: 285, column: 15, scope: !350)
!352 = !DILocation(line: 285, column: 9, scope: !316)
!353 = !DILocation(line: 287, column: 26, scope: !316)
!354 = !DILocation(line: 288, column: 3, scope: !316)
!355 = !DILocation(line: 290, column: 7, scope: !317)
!356 = !DILocation(line: 0, scope: !317)
!357 = distinct !{!357, !319, !358}
!358 = !DILocation(line: 291, column: 6, scope: !288)
!359 = !DILocation(line: 295, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !262, file: !1, line: 295, column: 7)
!361 = !DILocation(line: 295, column: 7, scope: !262)
!362 = !DILocation(line: 296, column: 21, scope: !360)
!363 = !DILocation(line: 296, column: 5, scope: !360)
!364 = !DILocation(line: 298, column: 21, scope: !360)
!365 = !DILocation(line: 0, scope: !360)
!366 = !DILocation(line: 299, column: 21, scope: !367)
!367 = distinct !DILexicalBlock(scope: !262, file: !1, line: 299, column: 7)
!368 = !DILocation(line: 299, column: 7, scope: !262)
!369 = !DILocation(line: 302, column: 15, scope: !262)
!370 = !DILocation(line: 303, column: 3, scope: !262)
!371 = !DILocation(line: 304, column: 17, scope: !372)
!372 = distinct !DILexicalBlock(scope: !262, file: !1, line: 304, column: 7)
!373 = !DILocation(line: 304, column: 7, scope: !262)
!374 = !DILocation(line: 307, column: 14, scope: !262)
!375 = !DILocation(line: 308, column: 16, scope: !376)
!376 = distinct !DILexicalBlock(scope: !262, file: !1, line: 308, column: 7)
!377 = !DILocation(line: 308, column: 7, scope: !262)
!378 = !DILocation(line: 312, column: 11, scope: !262)
!379 = !DILocation(line: 318, column: 19, scope: !380)
!380 = distinct !DILexicalBlock(scope: !262, file: !1, line: 318, column: 7)
!381 = !DILocation(line: 318, column: 16, scope: !380)
!382 = !DILocation(line: 318, column: 7, scope: !262)
!383 = !DILocation(line: 320, column: 7, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 320, column: 7)
!385 = distinct !DILexicalBlock(scope: !380, file: !1, line: 319, column: 5)
!386 = !DILocation(line: 320, column: 23, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 320, column: 7)
!388 = !DILocation(line: 320, column: 21, scope: !387)
!389 = !DILocation(line: 322, column: 16, scope: !390)
!390 = distinct !DILexicalBlock(scope: !391, file: !1, line: 322, column: 8)
!391 = distinct !DILexicalBlock(scope: !387, file: !1, line: 321, column: 2)
!392 = !DILocation(line: 322, column: 30, scope: !390)
!393 = !DILocation(line: 322, column: 8, scope: !390)
!394 = !DILocation(line: 322, column: 43, scope: !390)
!395 = !DILocation(line: 322, column: 8, scope: !391)
!396 = !DILocation(line: 326, column: 33, scope: !397)
!397 = distinct !DILexicalBlock(scope: !385, file: !1, line: 326, column: 11)
!398 = !DILocation(line: 320, column: 33, scope: !387)
!399 = !DILocation(line: 320, column: 7, scope: !387)
!400 = distinct !{!400, !383, !401}
!401 = !DILocation(line: 324, column: 2, scope: !384)
!402 = !DILocation(line: 326, column: 11, scope: !397)
!403 = !DILocation(line: 326, column: 20, scope: !397)
!404 = !DILocation(line: 326, column: 30, scope: !397)
!405 = !DILocation(line: 326, column: 25, scope: !397)
!406 = !DILocation(line: 330, column: 17, scope: !262)
!407 = !DILocation(line: 331, column: 19, scope: !408)
!408 = distinct !DILexicalBlock(scope: !262, file: !1, line: 331, column: 7)
!409 = !DILocation(line: 331, column: 7, scope: !262)
!410 = !DILocation(line: 335, column: 8, scope: !262)
!411 = !DILocation(line: 335, column: 21, scope: !262)
!412 = !DILocation(line: 335, column: 19, scope: !262)
!413 = !DILocation(line: 335, column: 7, scope: !262)
!414 = !DILocation(line: 336, column: 8, scope: !415)
!415 = distinct !DILexicalBlock(scope: !262, file: !1, line: 336, column: 3)
!416 = !DILocation(line: 0, scope: !415)
!417 = !DILocation(line: 336, column: 27, scope: !418)
!418 = distinct !DILexicalBlock(scope: !415, file: !1, line: 336, column: 3)
!419 = !DILocation(line: 336, column: 3, scope: !415)
!420 = !DILocation(line: 338, column: 19, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !1, line: 338, column: 11)
!422 = distinct !DILexicalBlock(scope: !418, file: !1, line: 337, column: 5)
!423 = !DILocation(line: 338, column: 37, scope: !421)
!424 = !DILocation(line: 338, column: 11, scope: !421)
!425 = !DILocation(line: 338, column: 58, scope: !421)
!426 = !DILocation(line: 338, column: 11, scope: !422)
!427 = !DILocation(line: 336, column: 38, scope: !418)
!428 = !DILocation(line: 336, column: 3, scope: !418)
!429 = distinct !{!429, !419, !430}
!430 = !DILocation(line: 340, column: 5, scope: !415)
!431 = !DILocation(line: 343, column: 14, scope: !432)
!432 = distinct !DILexicalBlock(scope: !262, file: !1, line: 343, column: 7)
!433 = !DILocation(line: 343, column: 7, scope: !262)
!434 = !DILocation(line: 349, column: 3, scope: !435)
!435 = distinct !DILexicalBlock(scope: !262, file: !1, line: 349, column: 3)
!436 = !DILocation(line: 349, column: 19, scope: !437)
!437 = distinct !DILexicalBlock(scope: !435, file: !1, line: 349, column: 3)
!438 = !DILocation(line: 349, column: 17, scope: !437)
!439 = !DILocation(line: 350, column: 27, scope: !437)
!440 = !DILocation(line: 350, column: 19, scope: !437)
!441 = !DILocation(line: 350, column: 16, scope: !437)
!442 = !DILocation(line: 349, column: 30, scope: !437)
!443 = !DILocation(line: 349, column: 3, scope: !437)
!444 = distinct !{!444, !434, !445}
!445 = !DILocation(line: 350, column: 39, scope: !435)
!446 = !DILocation(line: 351, column: 36, scope: !262)
!447 = !DILocation(line: 351, column: 44, scope: !262)
!448 = !DILocation(line: 351, column: 35, scope: !262)
!449 = !DILocation(line: 351, column: 33, scope: !262)
!450 = !DILocation(line: 351, column: 14, scope: !262)
!451 = !DILocation(line: 352, column: 8, scope: !452)
!452 = distinct !DILexicalBlock(scope: !262, file: !1, line: 352, column: 3)
!453 = !DILocation(line: 352, column: 24, scope: !454)
!454 = distinct !DILexicalBlock(scope: !452, file: !1, line: 352, column: 3)
!455 = !DILocation(line: 352, column: 22, scope: !454)
!456 = !DILocation(line: 352, column: 3, scope: !452)
!457 = !DILocation(line: 353, column: 27, scope: !454)
!458 = !DILocation(line: 353, column: 19, scope: !454)
!459 = !DILocation(line: 353, column: 16, scope: !454)
!460 = !DILocation(line: 352, column: 37, scope: !454)
!461 = !DILocation(line: 352, column: 3, scope: !454)
!462 = distinct !{!462, !456, !463}
!463 = !DILocation(line: 353, column: 41, scope: !452)
!464 = !DILocation(line: 356, column: 26, scope: !262)
!465 = !DILocation(line: 356, column: 18, scope: !262)
!466 = !DILocation(line: 357, column: 11, scope: !467)
!467 = distinct !DILexicalBlock(scope: !262, file: !1, line: 357, column: 7)
!468 = !DILocation(line: 357, column: 7, scope: !262)
!469 = !DILocation(line: 361, column: 8, scope: !262)
!470 = !DILocation(line: 362, column: 8, scope: !471)
!471 = distinct !DILexicalBlock(scope: !262, file: !1, line: 362, column: 3)
!472 = !DILocation(line: 0, scope: !471)
!473 = !DILocation(line: 362, column: 19, scope: !474)
!474 = distinct !DILexicalBlock(scope: !471, file: !1, line: 362, column: 3)
!475 = !DILocation(line: 362, column: 17, scope: !474)
!476 = !DILocation(line: 362, column: 3, scope: !471)
!477 = !DILocation(line: 363, column: 18, scope: !474)
!478 = !DILocation(line: 363, column: 5, scope: !474)
!479 = !DILocation(line: 362, column: 30, scope: !474)
!480 = !DILocation(line: 362, column: 3, scope: !474)
!481 = distinct !{!481, !476, !482}
!482 = !DILocation(line: 363, column: 30, scope: !471)
!483 = !DILocation(line: 366, column: 15, scope: !262)
!484 = !DILocation(line: 366, column: 13, scope: !262)
!485 = !DILocation(line: 367, column: 8, scope: !486)
!486 = distinct !DILexicalBlock(scope: !262, file: !1, line: 367, column: 3)
!487 = !DILocation(line: 0, scope: !486)
!488 = !DILocation(line: 367, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !486, file: !1, line: 367, column: 3)
!490 = !DILocation(line: 367, column: 22, scope: !489)
!491 = !DILocation(line: 367, column: 3, scope: !486)
!492 = !DILocation(line: 369, column: 7, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !1, line: 368, column: 5)
!494 = !DILocation(line: 370, column: 11, scope: !493)
!495 = !DILocation(line: 371, column: 12, scope: !493)
!496 = !DILocation(line: 371, column: 16, scope: !493)
!497 = !DILocation(line: 367, column: 34, scope: !489)
!498 = !DILocation(line: 367, column: 3, scope: !489)
!499 = distinct !{!499, !491, !500}
!500 = !DILocation(line: 372, column: 5, scope: !486)
!501 = !DILocation(line: 373, column: 8, scope: !262)
!502 = !DILocation(line: 376, column: 8, scope: !503)
!503 = distinct !DILexicalBlock(scope: !262, file: !1, line: 376, column: 3)
!504 = !DILocation(line: 0, scope: !503)
!505 = !DILocation(line: 376, column: 24, scope: !506)
!506 = distinct !DILexicalBlock(scope: !503, file: !1, line: 376, column: 3)
!507 = !DILocation(line: 376, column: 22, scope: !506)
!508 = !DILocation(line: 376, column: 3, scope: !503)
!509 = !DILocation(line: 377, column: 18, scope: !506)
!510 = !DILocation(line: 377, column: 5, scope: !506)
!511 = !DILocation(line: 376, column: 37, scope: !506)
!512 = !DILocation(line: 376, column: 3, scope: !506)
!513 = distinct !{!513, !508, !514}
!514 = !DILocation(line: 377, column: 32, scope: !503)
!515 = !DILocation(line: 380, column: 3, scope: !262)
!516 = !DILocation(line: 379, column: 2, scope: !262)
!517 = !DILocation(line: 381, column: 3, scope: !262)
!518 = !DILocation(line: 382, column: 3, scope: !262)
!519 = !DILocation(line: 384, column: 3, scope: !262)
!520 = !DILocation(line: 385, column: 1, scope: !262)
!521 = distinct !DISubprogram(name: "make_relative_prefix_ignore_links", scope: !1, file: !1, line: 406, type: !253, scopeLine: 409, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !522)
!522 = !{!523, !524, !525}
!523 = !DILocalVariable(name: "progname", arg: 1, scope: !521, file: !1, line: 406, type: !9)
!524 = !DILocalVariable(name: "bin_prefix", arg: 2, scope: !521, file: !1, line: 407, type: !9)
!525 = !DILocalVariable(name: "prefix", arg: 3, scope: !521, file: !1, line: 408, type: !9)
!526 = !DILocation(line: 0, scope: !521)
!527 = !DILocation(line: 410, column: 10, scope: !521)
!528 = !DILocation(line: 410, column: 3, scope: !521)
!529 = distinct !DISubprogram(name: "split_directories", scope: !1, file: !1, line: 115, type: !530, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !533)
!530 = !DISubroutineType(types: !531)
!531 = !{!5, !9, !532}
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!533 = !{!534, !535, !536, !537, !538, !539, !540}
!534 = !DILocalVariable(name: "name", arg: 1, scope: !529, file: !1, line: 115, type: !9)
!535 = !DILocalVariable(name: "ptr_num_dirs", arg: 2, scope: !529, file: !1, line: 115, type: !532)
!536 = !DILocalVariable(name: "num_dirs", scope: !529, file: !1, line: 117, type: !4)
!537 = !DILocalVariable(name: "dirs", scope: !529, file: !1, line: 118, type: !5)
!538 = !DILocalVariable(name: "p", scope: !529, file: !1, line: 119, type: !9)
!539 = !DILocalVariable(name: "q", scope: !529, file: !1, line: 119, type: !9)
!540 = !DILocalVariable(name: "ch", scope: !529, file: !1, line: 120, type: !4)
!541 = !DILocation(line: 0, scope: !529)
!542 = !DILocation(line: 133, column: 3, scope: !529)
!543 = !DILocation(line: 133, column: 18, scope: !529)
!544 = !DILocation(line: 133, column: 16, scope: !529)
!545 = !DILocation(line: 138, column: 4, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 136, column: 2)
!547 = distinct !DILexicalBlock(scope: !548, file: !1, line: 135, column: 11)
!548 = distinct !DILexicalBlock(scope: !529, file: !1, line: 134, column: 5)
!549 = !DILocation(line: 138, column: 11, scope: !546)
!550 = !DILocation(line: 139, column: 7, scope: !546)
!551 = distinct !{!551, !545, !550}
!552 = !DILocation(line: 137, column: 12, scope: !546)
!553 = distinct !{!553, !542, !554}
!554 = !DILocation(line: 141, column: 5, scope: !529)
!555 = !DILocation(line: 143, column: 56, scope: !529)
!556 = !DILocation(line: 143, column: 46, scope: !529)
!557 = !DILocation(line: 143, column: 44, scope: !529)
!558 = !DILocation(line: 143, column: 20, scope: !529)
!559 = !DILocation(line: 143, column: 10, scope: !529)
!560 = !DILocation(line: 144, column: 12, scope: !561)
!561 = distinct !DILexicalBlock(scope: !529, file: !1, line: 144, column: 7)
!562 = !DILocation(line: 144, column: 7, scope: !529)
!563 = !DILocation(line: 164, column: 3, scope: !529)
!564 = !DILocation(line: 164, column: 18, scope: !529)
!565 = !DILocation(line: 164, column: 16, scope: !529)
!566 = !DILocation(line: 168, column: 4, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !1, line: 167, column: 2)
!568 = distinct !DILexicalBlock(scope: !569, file: !1, line: 166, column: 11)
!569 = distinct !DILexicalBlock(scope: !529, file: !1, line: 165, column: 5)
!570 = !DILocation(line: 168, column: 11, scope: !567)
!571 = !DILocation(line: 169, column: 7, scope: !567)
!572 = distinct !{!572, !566, !571}
!573 = !DILocation(line: 171, column: 41, scope: !567)
!574 = !DILocation(line: 171, column: 39, scope: !567)
!575 = !DILocation(line: 171, column: 23, scope: !567)
!576 = !DILocation(line: 171, column: 17, scope: !567)
!577 = !DILocation(line: 171, column: 4, scope: !567)
!578 = !DILocation(line: 171, column: 21, scope: !567)
!579 = !DILocation(line: 172, column: 27, scope: !580)
!580 = distinct !DILexicalBlock(scope: !567, file: !1, line: 172, column: 8)
!581 = !DILocation(line: 172, column: 8, scope: !567)
!582 = !DILocation(line: 174, column: 8, scope: !583)
!583 = distinct !DILexicalBlock(scope: !580, file: !1, line: 173, column: 6)
!584 = !DILocation(line: 174, column: 23, scope: !583)
!585 = !DILocation(line: 175, column: 8, scope: !583)
!586 = !DILocation(line: 176, column: 8, scope: !583)
!587 = distinct !{!587, !563, !588}
!588 = !DILocation(line: 180, column: 5, scope: !529)
!589 = !DILocation(line: 182, column: 13, scope: !590)
!590 = distinct !DILexicalBlock(scope: !529, file: !1, line: 182, column: 7)
!591 = !DILocation(line: 182, column: 17, scope: !590)
!592 = !DILocation(line: 182, column: 7, scope: !529)
!593 = !DILocation(line: 183, column: 40, scope: !590)
!594 = !DILocation(line: 183, column: 24, scope: !590)
!595 = !DILocation(line: 183, column: 18, scope: !590)
!596 = !DILocation(line: 183, column: 5, scope: !590)
!597 = !DILocation(line: 183, column: 22, scope: !590)
!598 = !DILocation(line: 184, column: 3, scope: !529)
!599 = !DILocation(line: 184, column: 18, scope: !529)
!600 = !DILocation(line: 186, column: 21, scope: !601)
!601 = distinct !DILexicalBlock(scope: !529, file: !1, line: 186, column: 7)
!602 = !DILocation(line: 186, column: 7, scope: !601)
!603 = !DILocation(line: 186, column: 26, scope: !601)
!604 = !DILocation(line: 186, column: 7, scope: !529)
!605 = !DILocation(line: 188, column: 7, scope: !606)
!606 = distinct !DILexicalBlock(scope: !601, file: !1, line: 187, column: 5)
!607 = !DILocation(line: 189, column: 7, scope: !606)
!608 = !DILocation(line: 192, column: 7, scope: !609)
!609 = distinct !DILexicalBlock(scope: !529, file: !1, line: 192, column: 7)
!610 = !DILocation(line: 192, column: 7, scope: !529)
!611 = !DILocation(line: 193, column: 19, scope: !609)
!612 = !DILocation(line: 193, column: 5, scope: !609)
!613 = !DILocation(line: 195, column: 1, scope: !529)
!614 = distinct !DISubprogram(name: "free_split_directories", scope: !1, file: !1, line: 200, type: !615, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !617)
!615 = !DISubroutineType(types: !616)
!616 = !{null, !5}
!617 = !{!618, !619}
!618 = !DILocalVariable(name: "dirs", arg: 1, scope: !614, file: !1, line: 200, type: !5)
!619 = !DILocalVariable(name: "i", scope: !614, file: !1, line: 202, type: !4)
!620 = !DILocation(line: 0, scope: !614)
!621 = !DILocation(line: 204, column: 12, scope: !622)
!622 = distinct !DILexicalBlock(scope: !614, file: !1, line: 204, column: 7)
!623 = !DILocation(line: 204, column: 7, scope: !614)
!624 = !DILocation(line: 206, column: 7, scope: !625)
!625 = distinct !DILexicalBlock(scope: !622, file: !1, line: 205, column: 5)
!626 = !DILocation(line: 206, column: 14, scope: !625)
!627 = !DILocation(line: 206, column: 22, scope: !625)
!628 = !DILocation(line: 207, column: 14, scope: !625)
!629 = !DILocation(line: 207, column: 2, scope: !625)
!630 = distinct !{!630, !624, !631}
!631 = !DILocation(line: 207, column: 17, scope: !625)
!632 = !DILocation(line: 209, column: 13, scope: !625)
!633 = !DILocation(line: 209, column: 7, scope: !625)
!634 = !DILocation(line: 210, column: 5, scope: !625)
!635 = !DILocation(line: 211, column: 1, scope: !614)
!636 = distinct !DISubprogram(name: "save_string", scope: !1, file: !1, line: 103, type: !637, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !639)
!637 = !DISubroutineType(types: !638)
!638 = !{!6, !9, !4}
!639 = !{!640, !641, !642}
!640 = !DILocalVariable(name: "s", arg: 1, scope: !636, file: !1, line: 103, type: !9)
!641 = !DILocalVariable(name: "len", arg: 2, scope: !636, file: !1, line: 103, type: !4)
!642 = !DILocalVariable(name: "result", scope: !636, file: !1, line: 105, type: !6)
!643 = !DILocation(line: 0, scope: !636)
!644 = !DILocation(line: 105, column: 39, scope: !636)
!645 = !DILocation(line: 105, column: 35, scope: !636)
!646 = !DILocation(line: 105, column: 27, scope: !636)
!647 = !DILocation(line: 107, column: 22, scope: !636)
!648 = !DILocation(line: 107, column: 3, scope: !636)
!649 = !DILocation(line: 108, column: 3, scope: !636)
!650 = !DILocation(line: 108, column: 15, scope: !636)
!651 = !DILocation(line: 109, column: 3, scope: !636)
