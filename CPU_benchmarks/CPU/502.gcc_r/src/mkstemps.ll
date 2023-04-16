; ModuleID = 'mkstemps.bc'
source_filename = "mkstemps.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.timeval = type { i64, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@mkstemps.letters = internal unnamed_addr constant [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", align 16, !dbg !0
@mkstemps.value = internal unnamed_addr global i64 0, align 8, !dbg !21
@.str = private unnamed_addr constant [7 x i8] c"XXXXXX\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !54 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !59, metadata !DIExpression()), !dbg !60
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !61
  %conv = trunc i64 %call to i32, !dbg !62
  ret i32 %conv, !dbg !63
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !64 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !68, metadata !DIExpression()), !dbg !69
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !70
  ret i64 %call, !dbg !71
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !72 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !77, metadata !DIExpression()), !dbg !78
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !79
  ret i64 %call, !dbg !80
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !81 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !92, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i8* %__base, metadata !93, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !94, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %__size, metadata !95, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !96, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 0, metadata !97, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !98, metadata !DIExpression()), !dbg !102
  br label %while.cond, !dbg !103

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !104
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !102
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !98, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !97, metadata !DIExpression()), !dbg !102
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !105
  br i1 %cmp, label %while.body, label %cleanup, !dbg !103

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !106
  %div = lshr i64 %add, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %div, metadata !99, metadata !DIExpression()), !dbg !102
  %mul = mul i64 %div, %__size, !dbg !109
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !110
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !100, metadata !DIExpression()), !dbg !102
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !111
  call void @llvm.dbg.value(metadata i32 %call, metadata !101, metadata !DIExpression()), !dbg !102
  %cmp1 = icmp slt i32 %call, 0, !dbg !112
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !114

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !115
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !117

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %add4, metadata !97, metadata !DIExpression()), !dbg !102
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !102
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !102
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !98, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !97, metadata !DIExpression()), !dbg !102
  br label %while.cond, !dbg !103, !llvm.loop !119

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !102
  ret i8* %retval.0, !dbg !121
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !122 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !128, metadata !DIExpression()), !dbg !129
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !130
  ret double %call, !dbg !131
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !132 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !146, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !147, metadata !DIExpression()), !dbg !148
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !149
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !150
  ret i32 %call, !dbg !151
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !152 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !155
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !156
  ret i32 %call, !dbg !157
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !216, metadata !DIExpression()), !dbg !217
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !218
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !218
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !218
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !218
  %cmp = icmp uge i8* %0, %1, !dbg !218
  %conv1 = zext i1 %cmp to i64, !dbg !218
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !218
  %tobool = icmp eq i64 %expval, 0, !dbg !218
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !218

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !218
  br label %cond.end, !dbg !218

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !218
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !218
  %2 = load i8, i8* %0, align 1, !dbg !218
  %conv3 = zext i8 %2 to i32, !dbg !218
  br label %cond.end, !dbg !218

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !218
  ret i32 %cond, !dbg !219
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !220 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !222, metadata !DIExpression()), !dbg !223
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !224
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !224
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !224
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !224
  %cmp = icmp uge i8* %0, %1, !dbg !224
  %conv1 = zext i1 %cmp to i64, !dbg !224
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !224
  %tobool = icmp eq i64 %expval, 0, !dbg !224
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !224

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !224
  br label %cond.end, !dbg !224

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !224
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !224
  %2 = load i8, i8* %0, align 1, !dbg !224
  %conv3 = zext i8 %2 to i32, !dbg !224
  br label %cond.end, !dbg !224

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !224
  ret i32 %cond, !dbg !225
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !226 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !227
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !227
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !227
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !227
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !227
  %cmp = icmp uge i8* %1, %2, !dbg !227
  %conv1 = zext i1 %cmp to i64, !dbg !227
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !227
  %tobool = icmp eq i64 %expval, 0, !dbg !227
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !227

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !227
  br label %cond.end, !dbg !227

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !227
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !227
  %3 = load i8, i8* %1, align 1, !dbg !227
  %conv3 = zext i8 %3 to i32, !dbg !227
  br label %cond.end, !dbg !227

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !227
  ret i32 %cond, !dbg !228
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !229 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !233, metadata !DIExpression()), !dbg !234
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !235
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !236
  ret i32 %call, !dbg !237
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !238 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !242, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !243, metadata !DIExpression()), !dbg !244
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !245
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !245
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !245
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !245
  %cmp = icmp uge i8* %0, %1, !dbg !245
  %conv1 = zext i1 %cmp to i64, !dbg !245
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !245
  %tobool = icmp eq i64 %expval, 0, !dbg !245
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !245

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !245
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !245
  br label %cond.end, !dbg !245

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !245
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !245
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !245
  store i8 %conv2, i8* %0, align 1, !dbg !245
  %conv6 = and i32 %__c, 255, !dbg !245
  br label %cond.end, !dbg !245

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !245
  ret i32 %cond, !dbg !246
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !247 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !249, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !250, metadata !DIExpression()), !dbg !251
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !252
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !252
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !252
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !252
  %cmp = icmp uge i8* %0, %1, !dbg !252
  %conv1 = zext i1 %cmp to i64, !dbg !252
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !252
  %tobool = icmp eq i64 %expval, 0, !dbg !252
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !252

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !252
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !252
  br label %cond.end, !dbg !252

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !252
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !252
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !252
  store i8 %conv2, i8* %0, align 1, !dbg !252
  %conv6 = and i32 %__c, 255, !dbg !252
  br label %cond.end, !dbg !252

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !252
  ret i32 %cond, !dbg !253
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !256, metadata !DIExpression()), !dbg !257
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !258
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !258
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !258
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !258
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !258
  %cmp = icmp uge i8* %1, %2, !dbg !258
  %conv1 = zext i1 %cmp to i64, !dbg !258
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !258
  %tobool = icmp eq i64 %expval, 0, !dbg !258
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !258

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !258
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !258
  br label %cond.end, !dbg !258

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !258
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !258
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !258
  store i8 %conv4, i8* %1, align 1, !dbg !258
  %conv6 = and i32 %__c, 255, !dbg !258
  br label %cond.end, !dbg !258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !258
  ret i32 %cond, !dbg !259
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !266, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata i64* %__n, metadata !267, metadata !DIExpression()), !dbg !269
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !268, metadata !DIExpression()), !dbg !269
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !270
  ret i64 %call, !dbg !271
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !272 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !274, metadata !DIExpression()), !dbg !275
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !276
  %0 = load i32, i32* %_flags, align 8, !dbg !276
  %and = lshr i32 %0, 4, !dbg !276
  %and.lobit = and i32 %and, 1, !dbg !276
  ret i32 %and.lobit, !dbg !277
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !280, metadata !DIExpression()), !dbg !281
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !282
  %0 = load i32, i32* %_flags, align 8, !dbg !282
  %and = lshr i32 %0, 5, !dbg !282
  %and.lobit = and i32 %and, 1, !dbg !282
  ret i32 %and.lobit, !dbg !283
}

; Function Attrs: nounwind uwtable
define dso_local i32 @mkstemps(i8* %pattern, i32 %suffix_len) local_unnamed_addr #4 !dbg !2 {
entry:
  %tv = alloca %struct.timeval, align 8
  call void @llvm.dbg.value(metadata i8* %pattern, metadata !24, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata i32 %suffix_len, metadata !25, metadata !DIExpression()), !dbg !284
  %0 = bitcast %struct.timeval* %tv to i8*, !dbg !285
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #7, !dbg !285
  %call = tail call i64 @strlen(i8* %pattern) #6, !dbg !286
  call void @llvm.dbg.value(metadata i64 %call, metadata !37, metadata !DIExpression()), !dbg !284
  %conv = trunc i64 %call to i32, !dbg !287
  %add = add nsw i32 %suffix_len, 6, !dbg !289
  %cmp = icmp sgt i32 %add, %conv, !dbg !290
  br i1 %cmp, label %cleanup53, label %lor.lhs.false, !dbg !291

lor.lhs.false:                                    ; preds = %entry
  %sub = add i64 %call, -6, !dbg !292
  %conv2 = sext i32 %suffix_len to i64, !dbg !293
  %sub3 = sub i64 %sub, %conv2, !dbg !294
  %arrayidx = getelementptr inbounds i8, i8* %pattern, i64 %sub3, !dbg !295
  %call4 = tail call i32 @strncmp(i8* %arrayidx, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i64 6) #6, !dbg !296
  %tobool = icmp eq i32 %call4, 0, !dbg !296
  br i1 %tobool, label %if.end, label %cleanup53, !dbg !297

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.dbg.value(metadata i8* %arrayidx, metadata !36, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata %struct.timeval* %tv, metadata !26, metadata !DIExpression(DW_OP_deref)), !dbg !284
  %call9 = call i32 @gettimeofday(%struct.timeval* nonnull %tv, i8* null) #6, !dbg !298
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 1, !dbg !299
  %1 = load i64, i64* %tv_usec, align 8, !dbg !299
  %shl = shl i64 %1, 16, !dbg !300
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %tv, i64 0, i32 0, !dbg !301
  %2 = load i64, i64* %tv_sec, align 8, !dbg !301
  %xor = xor i64 %shl, %2, !dbg !302
  %call10 = call i32 @getpid() #6, !dbg !303
  %conv11 = sext i32 %call10 to i64, !dbg !303
  %xor12 = xor i64 %xor, %conv11, !dbg !304
  %3 = load i64, i64* @mkstemps.value, align 8, !dbg !305
  %add13 = add i64 %3, %xor12, !dbg !305
  store i64 %add13, i64* @mkstemps.value, align 8, !dbg !305
  call void @llvm.dbg.value(metadata i32 0, metadata !41, metadata !DIExpression()), !dbg !284
  %arrayidx20 = getelementptr inbounds i8, i8* %arrayidx, i64 1, !dbg !306
  %arrayidx24 = getelementptr inbounds i8, i8* %arrayidx, i64 2, !dbg !306
  %arrayidx28 = getelementptr inbounds i8, i8* %arrayidx, i64 3, !dbg !306
  %arrayidx32 = getelementptr inbounds i8, i8* %arrayidx, i64 4, !dbg !306
  %arrayidx36 = getelementptr inbounds i8, i8* %arrayidx, i64 5, !dbg !306
  br label %for.cond, !dbg !307

for.cond:                                         ; preds = %for.inc, %if.end
  %count.0 = phi i32 [ 0, %if.end ], [ %inc, %for.inc ], !dbg !308
  %retval.0 = phi i32 [ undef, %if.end ], [ %retval.1, %for.inc ]
  call void @llvm.dbg.value(metadata i32 %count.0, metadata !41, metadata !DIExpression()), !dbg !284
  %exitcond = icmp eq i32 %count.0, 238328, !dbg !309
  br i1 %exitcond, label %for.end, label %for.body, !dbg !310

for.body:                                         ; preds = %for.cond
  %4 = load i64, i64* @mkstemps.value, align 8, !dbg !311
  call void @llvm.dbg.value(metadata i64 %4, metadata !42, metadata !DIExpression()), !dbg !306
  %rem = urem i64 %4, 62, !dbg !312
  %arrayidx16 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem, !dbg !313
  %5 = load i8, i8* %arrayidx16, align 1, !dbg !313
  store i8 %5, i8* %arrayidx, align 1, !dbg !314
  %div = udiv i64 %4, 62, !dbg !315
  call void @llvm.dbg.value(metadata i64 %div, metadata !42, metadata !DIExpression()), !dbg !306
  %rem18 = urem i64 %div, 62, !dbg !316
  %arrayidx19 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem18, !dbg !317
  %6 = load i8, i8* %arrayidx19, align 1, !dbg !317
  store i8 %6, i8* %arrayidx20, align 1, !dbg !318
  %div21 = udiv i64 %4, 3844, !dbg !319
  call void @llvm.dbg.value(metadata i64 %div21, metadata !42, metadata !DIExpression()), !dbg !306
  %rem22 = urem i64 %div21, 62, !dbg !320
  %arrayidx23 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem22, !dbg !321
  %7 = load i8, i8* %arrayidx23, align 1, !dbg !321
  store i8 %7, i8* %arrayidx24, align 1, !dbg !322
  %div25 = udiv i64 %4, 238328, !dbg !323
  call void @llvm.dbg.value(metadata i64 %div25, metadata !42, metadata !DIExpression()), !dbg !306
  %rem26 = urem i64 %div25, 62, !dbg !324
  %arrayidx27 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem26, !dbg !325
  %8 = load i8, i8* %arrayidx27, align 1, !dbg !325
  store i8 %8, i8* %arrayidx28, align 1, !dbg !326
  %div29 = udiv i64 %4, 14776336, !dbg !327
  call void @llvm.dbg.value(metadata i64 %div29, metadata !42, metadata !DIExpression()), !dbg !306
  %rem30 = urem i64 %div29, 62, !dbg !328
  %arrayidx31 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem30, !dbg !329
  %9 = load i8, i8* %arrayidx31, align 1, !dbg !329
  store i8 %9, i8* %arrayidx32, align 1, !dbg !330
  %div33 = udiv i64 %4, 916132832, !dbg !331
  call void @llvm.dbg.value(metadata i64 %div33, metadata !42, metadata !DIExpression()), !dbg !306
  %rem34 = urem i64 %div33, 62, !dbg !332
  %arrayidx35 = getelementptr inbounds [63 x i8], [63 x i8]* @mkstemps.letters, i64 0, i64 %rem34, !dbg !333
  %10 = load i8, i8* %arrayidx35, align 1, !dbg !333
  store i8 %10, i8* %arrayidx36, align 1, !dbg !334
  %call37 = call i32 (i8*, i32, ...) @open(i8* %pattern, i32 194, i32 384) #6, !dbg !335
  call void @llvm.dbg.value(metadata i32 %call37, metadata !46, metadata !DIExpression()), !dbg !306
  %cmp38 = icmp sgt i32 %call37, -1, !dbg !336
  br i1 %cmp38, label %cleanup, label %if.end41, !dbg !338

if.end41:                                         ; preds = %for.body
  %call42 = call i32* @__errno_location() #6, !dbg !339
  %11 = load i32, i32* %call42, align 4, !dbg !339
  %cmp43 = icmp eq i32 %11, 17, !dbg !341
  br i1 %cmp43, label %if.end49, label %land.lhs.true, !dbg !342

land.lhs.true:                                    ; preds = %if.end41
  %call45 = call i32* @__errno_location() #6, !dbg !343
  %12 = load i32, i32* %call45, align 4, !dbg !343
  %cmp46 = icmp eq i32 %12, 21, !dbg !344
  br i1 %cmp46, label %if.end49, label %cleanup, !dbg !345

if.end49:                                         ; preds = %land.lhs.true, %if.end41
  %13 = load i64, i64* @mkstemps.value, align 8, !dbg !346
  %add50 = add i64 %13, 7777, !dbg !346
  store i64 %add50, i64* @mkstemps.value, align 8, !dbg !346
  br label %cleanup, !dbg !347

cleanup:                                          ; preds = %land.lhs.true, %for.body, %if.end49
  %cleanup.dest.slot.0 = phi i32 [ 0, %if.end49 ], [ 1, %for.body ], [ 2, %land.lhs.true ]
  %retval.1 = phi i32 [ %retval.0, %if.end49 ], [ %call37, %for.body ], [ %retval.0, %land.lhs.true ]
  switch i32 %cleanup.dest.slot.0, label %cleanup53.loopexit [
    i32 0, label %for.inc
    i32 2, label %for.end
  ]

for.inc:                                          ; preds = %cleanup
  %inc = add nuw nsw i32 %count.0, 1, !dbg !348
  call void @llvm.dbg.value(metadata i32 %inc, metadata !41, metadata !DIExpression()), !dbg !284
  br label %for.cond, !dbg !349, !llvm.loop !350

for.end:                                          ; preds = %for.cond, %cleanup
  store i8 0, i8* %pattern, align 1, !dbg !352
  br label %cleanup53, !dbg !353

cleanup53.loopexit:                               ; preds = %cleanup
  %retval.1.lcssa = phi i32 [ %retval.1, %cleanup ]
  br label %cleanup53, !dbg !354

cleanup53:                                        ; preds = %cleanup53.loopexit, %lor.lhs.false, %entry, %for.end
  %retval.2 = phi i32 [ -1, %for.end ], [ -1, %lor.lhs.false ], [ -1, %entry ], [ %retval.1.lcssa, %cleanup53.loopexit ], !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #7, !dbg !354
  ret i32 %retval.2, !dbg !354
}

declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

declare dso_local i32 @strncmp(i8*, i8*, i64) local_unnamed_addr #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i8*) local_unnamed_addr #1

declare dso_local i32 @getpid() local_unnamed_addr #1

declare dso_local i32 @open(i8*, i32, ...) local_unnamed_addr #1

declare dso_local i32* @__errno_location() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind readnone }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!50, !51, !52}
!llvm.ident = !{!53}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "letters", scope: !2, file: !3, line: 80, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "mkstemps", scope: !3, file: !3, line: 78, type: !4, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !23)
!3 = !DIFile(filename: "mkstemps.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !11, globals: !20, nameTableKind: None)
!10 = !{}
!11 = !{!6, !12, !13, !14, !16, !17, !18}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcc_uint64_t", file: !3, line: 43, baseType: !19)
!19 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !{!0, !21}
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(name: "value", scope: !2, file: !3, line: 82, type: !18, isLocal: true, isDefinition: true)
!23 = !{!24, !25, !26, !36, !37, !41, !42, !46}
!24 = !DILocalVariable(name: "pattern", arg: 1, scope: !2, file: !3, line: 78, type: !7)
!25 = !DILocalVariable(name: "suffix_len", arg: 2, scope: !2, file: !3, line: 78, type: !6)
!26 = !DILocalVariable(name: "tv", scope: !2, file: !3, line: 84, type: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !28, line: 8, size: 128, elements: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "")
!29 = !{!30, !34}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !27, file: !28, line: 10, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !32, line: 160, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!33 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !27, file: !28, line: 11, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !32, line: 162, baseType: !33)
!36 = !DILocalVariable(name: "XXXXXX", scope: !2, file: !3, line: 86, type: !7)
!37 = !DILocalVariable(name: "len", scope: !2, file: !3, line: 87, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !39, line: 46, baseType: !40)
!39 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!40 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!41 = !DILocalVariable(name: "count", scope: !2, file: !3, line: 88, type: !6)
!42 = !DILocalVariable(name: "v", scope: !43, file: !3, line: 110, type: !18)
!43 = distinct !DILexicalBlock(scope: !44, file: !3, line: 109, column: 5)
!44 = distinct !DILexicalBlock(scope: !45, file: !3, line: 108, column: 3)
!45 = distinct !DILexicalBlock(scope: !2, file: !3, line: 108, column: 3)
!46 = !DILocalVariable(name: "fd", scope: !43, file: !3, line: 111, type: !6)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 504, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 63)
!50 = !{i32 2, !"Dwarf Version", i32 4}
!51 = !{i32 2, !"Debug Info Version", i32 3}
!52 = !{i32 1, !"wchar_size", i32 4}
!53 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!54 = distinct !DISubprogram(name: "atoi", scope: !55, file: !55, line: 361, type: !56, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !58)
!55 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!56 = !DISubroutineType(types: !57)
!57 = !{!6, !14}
!58 = !{!59}
!59 = !DILocalVariable(name: "__nptr", arg: 1, scope: !54, file: !55, line: 361, type: !14)
!60 = !DILocation(line: 0, scope: !54)
!61 = !DILocation(line: 363, column: 16, scope: !54)
!62 = !DILocation(line: 363, column: 10, scope: !54)
!63 = !DILocation(line: 363, column: 3, scope: !54)
!64 = distinct !DISubprogram(name: "atol", scope: !55, file: !55, line: 366, type: !65, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !67)
!65 = !DISubroutineType(types: !66)
!66 = !{!33, !14}
!67 = !{!68}
!68 = !DILocalVariable(name: "__nptr", arg: 1, scope: !64, file: !55, line: 366, type: !14)
!69 = !DILocation(line: 0, scope: !64)
!70 = !DILocation(line: 368, column: 10, scope: !64)
!71 = !DILocation(line: 368, column: 3, scope: !64)
!72 = distinct !DISubprogram(name: "atoll", scope: !55, file: !55, line: 373, type: !73, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !76)
!73 = !DISubroutineType(types: !74)
!74 = !{!75, !14}
!75 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!76 = !{!77}
!77 = !DILocalVariable(name: "__nptr", arg: 1, scope: !72, file: !55, line: 373, type: !14)
!78 = !DILocation(line: 0, scope: !72)
!79 = !DILocation(line: 375, column: 10, scope: !72)
!80 = !DILocation(line: 375, column: 3, scope: !72)
!81 = distinct !DISubprogram(name: "bsearch", scope: !82, file: !82, line: 20, type: !83, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !91)
!82 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!83 = !DISubroutineType(types: !84)
!84 = !{!13, !85, !85, !38, !38, !87}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !55, line: 808, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{!6, !85, !85}
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!92 = !DILocalVariable(name: "__key", arg: 1, scope: !81, file: !82, line: 20, type: !85)
!93 = !DILocalVariable(name: "__base", arg: 2, scope: !81, file: !82, line: 20, type: !85)
!94 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !81, file: !82, line: 20, type: !38)
!95 = !DILocalVariable(name: "__size", arg: 4, scope: !81, file: !82, line: 20, type: !38)
!96 = !DILocalVariable(name: "__compar", arg: 5, scope: !81, file: !82, line: 21, type: !87)
!97 = !DILocalVariable(name: "__l", scope: !81, file: !82, line: 23, type: !38)
!98 = !DILocalVariable(name: "__u", scope: !81, file: !82, line: 23, type: !38)
!99 = !DILocalVariable(name: "__idx", scope: !81, file: !82, line: 23, type: !38)
!100 = !DILocalVariable(name: "__p", scope: !81, file: !82, line: 24, type: !85)
!101 = !DILocalVariable(name: "__comparison", scope: !81, file: !82, line: 25, type: !6)
!102 = !DILocation(line: 0, scope: !81)
!103 = !DILocation(line: 29, column: 3, scope: !81)
!104 = !DILocation(line: 27, column: 7, scope: !81)
!105 = !DILocation(line: 29, column: 14, scope: !81)
!106 = !DILocation(line: 31, column: 20, scope: !107)
!107 = distinct !DILexicalBlock(scope: !81, file: !82, line: 30, column: 5)
!108 = !DILocation(line: 31, column: 27, scope: !107)
!109 = !DILocation(line: 32, column: 56, scope: !107)
!110 = !DILocation(line: 32, column: 47, scope: !107)
!111 = !DILocation(line: 33, column: 22, scope: !107)
!112 = !DILocation(line: 34, column: 24, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !82, line: 34, column: 11)
!114 = !DILocation(line: 34, column: 11, scope: !107)
!115 = !DILocation(line: 36, column: 29, scope: !116)
!116 = distinct !DILexicalBlock(scope: !113, file: !82, line: 36, column: 16)
!117 = !DILocation(line: 36, column: 16, scope: !113)
!118 = !DILocation(line: 37, column: 14, scope: !116)
!119 = distinct !{!119, !103, !120}
!120 = !DILocation(line: 40, column: 5, scope: !81)
!121 = !DILocation(line: 43, column: 1, scope: !81)
!122 = distinct !DISubprogram(name: "atof", scope: !123, file: !123, line: 25, type: !124, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !127)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !14}
!126 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!127 = !{!128}
!128 = !DILocalVariable(name: "__nptr", arg: 1, scope: !122, file: !123, line: 25, type: !14)
!129 = !DILocation(line: 0, scope: !122)
!130 = !DILocation(line: 27, column: 10, scope: !122)
!131 = !DILocation(line: 27, column: 3, scope: !122)
!132 = distinct !DISubprogram(name: "vprintf", scope: !133, file: !133, line: 39, type: !134, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !145)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!134 = !DISubroutineType(types: !135)
!135 = !{!6, !136, !137}
!136 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 28, size: 192, elements: !139)
!139 = !{!140, !142, !143, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !138, file: !3, line: 28, baseType: !141, size: 32)
!141 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !138, file: !3, line: 28, baseType: !141, size: 32, offset: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !138, file: !3, line: 28, baseType: !13, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !138, file: !3, line: 28, baseType: !13, size: 64, offset: 128)
!145 = !{!146, !147}
!146 = !DILocalVariable(name: "__fmt", arg: 1, scope: !132, file: !133, line: 39, type: !136)
!147 = !DILocalVariable(name: "__arg", arg: 2, scope: !132, file: !133, line: 39, type: !137)
!148 = !DILocation(line: 0, scope: !132)
!149 = !DILocation(line: 41, column: 20, scope: !132)
!150 = !DILocation(line: 41, column: 10, scope: !132)
!151 = !DILocation(line: 41, column: 3, scope: !132)
!152 = distinct !DISubprogram(name: "getchar", scope: !133, file: !133, line: 47, type: !153, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !10)
!153 = !DISubroutineType(types: !154)
!154 = !{!6}
!155 = !DILocation(line: 49, column: 16, scope: !152)
!156 = !DILocation(line: 49, column: 10, scope: !152)
!157 = !DILocation(line: 49, column: 3, scope: !152)
!158 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !133, file: !133, line: 56, type: !159, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !215)
!159 = !DISubroutineType(types: !160)
!160 = !{!6, !161}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !163, line: 7, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !165, line: 49, size: 1728, elements: !166)
!165 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!166 = !{!167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !182, !184, !185, !186, !188, !190, !192, !196, !199, !201, !204, !207, !208, !209, !210, !211}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !164, file: !165, line: 51, baseType: !6, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !164, file: !165, line: 54, baseType: !7, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !164, file: !165, line: 55, baseType: !7, size: 64, offset: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !164, file: !165, line: 56, baseType: !7, size: 64, offset: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !164, file: !165, line: 57, baseType: !7, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !164, file: !165, line: 58, baseType: !7, size: 64, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !164, file: !165, line: 59, baseType: !7, size: 64, offset: 384)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !164, file: !165, line: 60, baseType: !7, size: 64, offset: 448)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !164, file: !165, line: 61, baseType: !7, size: 64, offset: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !164, file: !165, line: 64, baseType: !7, size: 64, offset: 576)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !164, file: !165, line: 65, baseType: !7, size: 64, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !164, file: !165, line: 66, baseType: !7, size: 64, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !164, file: !165, line: 68, baseType: !180, size: 64, offset: 768)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !165, line: 36, flags: DIFlagFwdDecl)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !164, file: !165, line: 70, baseType: !183, size: 64, offset: 832)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !164, file: !165, line: 72, baseType: !6, size: 32, offset: 896)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !164, file: !165, line: 73, baseType: !6, size: 32, offset: 928)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !164, file: !165, line: 74, baseType: !187, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !32, line: 152, baseType: !33)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !164, file: !165, line: 77, baseType: !189, size: 16, offset: 1024)
!189 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !164, file: !165, line: 78, baseType: !191, size: 8, offset: 1040)
!191 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !164, file: !165, line: 79, baseType: !193, size: 8, offset: 1048)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 8, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 1)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !164, file: !165, line: 81, baseType: !197, size: 64, offset: 1088)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !165, line: 43, baseType: null)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !164, file: !165, line: 89, baseType: !200, size: 64, offset: 1152)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !32, line: 153, baseType: !33)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !164, file: !165, line: 91, baseType: !202, size: 64, offset: 1216)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !165, line: 37, flags: DIFlagFwdDecl)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !164, file: !165, line: 92, baseType: !205, size: 64, offset: 1280)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !165, line: 38, flags: DIFlagFwdDecl)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !164, file: !165, line: 93, baseType: !183, size: 64, offset: 1344)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !164, file: !165, line: 94, baseType: !13, size: 64, offset: 1408)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !164, file: !165, line: 95, baseType: !38, size: 64, offset: 1472)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !164, file: !165, line: 96, baseType: !6, size: 32, offset: 1536)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !164, file: !165, line: 98, baseType: !212, size: 160, offset: 1568)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 160, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 20)
!215 = !{!216}
!216 = !DILocalVariable(name: "__fp", arg: 1, scope: !158, file: !133, line: 56, type: !161)
!217 = !DILocation(line: 0, scope: !158)
!218 = !DILocation(line: 58, column: 10, scope: !158)
!219 = !DILocation(line: 58, column: 3, scope: !158)
!220 = distinct !DISubprogram(name: "getc_unlocked", scope: !133, file: !133, line: 66, type: !159, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !221)
!221 = !{!222}
!222 = !DILocalVariable(name: "__fp", arg: 1, scope: !220, file: !133, line: 66, type: !161)
!223 = !DILocation(line: 0, scope: !220)
!224 = !DILocation(line: 68, column: 10, scope: !220)
!225 = !DILocation(line: 68, column: 3, scope: !220)
!226 = distinct !DISubprogram(name: "getchar_unlocked", scope: !133, file: !133, line: 73, type: !153, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !10)
!227 = !DILocation(line: 75, column: 10, scope: !226)
!228 = !DILocation(line: 75, column: 3, scope: !226)
!229 = distinct !DISubprogram(name: "putchar", scope: !133, file: !133, line: 82, type: !230, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !232)
!230 = !DISubroutineType(types: !231)
!231 = !{!6, !6}
!232 = !{!233}
!233 = !DILocalVariable(name: "__c", arg: 1, scope: !229, file: !133, line: 82, type: !6)
!234 = !DILocation(line: 0, scope: !229)
!235 = !DILocation(line: 84, column: 21, scope: !229)
!236 = !DILocation(line: 84, column: 10, scope: !229)
!237 = !DILocation(line: 84, column: 3, scope: !229)
!238 = distinct !DISubprogram(name: "fputc_unlocked", scope: !133, file: !133, line: 91, type: !239, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !241)
!239 = !DISubroutineType(types: !240)
!240 = !{!6, !6, !161}
!241 = !{!242, !243}
!242 = !DILocalVariable(name: "__c", arg: 1, scope: !238, file: !133, line: 91, type: !6)
!243 = !DILocalVariable(name: "__stream", arg: 2, scope: !238, file: !133, line: 91, type: !161)
!244 = !DILocation(line: 0, scope: !238)
!245 = !DILocation(line: 93, column: 10, scope: !238)
!246 = !DILocation(line: 93, column: 3, scope: !238)
!247 = distinct !DISubprogram(name: "putc_unlocked", scope: !133, file: !133, line: 101, type: !239, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !248)
!248 = !{!249, !250}
!249 = !DILocalVariable(name: "__c", arg: 1, scope: !247, file: !133, line: 101, type: !6)
!250 = !DILocalVariable(name: "__stream", arg: 2, scope: !247, file: !133, line: 101, type: !161)
!251 = !DILocation(line: 0, scope: !247)
!252 = !DILocation(line: 103, column: 10, scope: !247)
!253 = !DILocation(line: 103, column: 3, scope: !247)
!254 = distinct !DISubprogram(name: "putchar_unlocked", scope: !133, file: !133, line: 108, type: !230, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !255)
!255 = !{!256}
!256 = !DILocalVariable(name: "__c", arg: 1, scope: !254, file: !133, line: 108, type: !6)
!257 = !DILocation(line: 0, scope: !254)
!258 = !DILocation(line: 110, column: 10, scope: !254)
!259 = !DILocation(line: 110, column: 3, scope: !254)
!260 = distinct !DISubprogram(name: "getline", scope: !133, file: !133, line: 118, type: !261, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !265)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !12, !264, !161}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !32, line: 193, baseType: !33)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!265 = !{!266, !267, !268}
!266 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !260, file: !133, line: 118, type: !12)
!267 = !DILocalVariable(name: "__n", arg: 2, scope: !260, file: !133, line: 118, type: !264)
!268 = !DILocalVariable(name: "__stream", arg: 3, scope: !260, file: !133, line: 118, type: !161)
!269 = !DILocation(line: 0, scope: !260)
!270 = !DILocation(line: 120, column: 10, scope: !260)
!271 = !DILocation(line: 120, column: 3, scope: !260)
!272 = distinct !DISubprogram(name: "feof_unlocked", scope: !133, file: !133, line: 128, type: !159, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !273)
!273 = !{!274}
!274 = !DILocalVariable(name: "__stream", arg: 1, scope: !272, file: !133, line: 128, type: !161)
!275 = !DILocation(line: 0, scope: !272)
!276 = !DILocation(line: 130, column: 10, scope: !272)
!277 = !DILocation(line: 130, column: 3, scope: !272)
!278 = distinct !DISubprogram(name: "ferror_unlocked", scope: !133, file: !133, line: 135, type: !159, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !279)
!279 = !{!280}
!280 = !DILocalVariable(name: "__stream", arg: 1, scope: !278, file: !133, line: 135, type: !161)
!281 = !DILocation(line: 0, scope: !278)
!282 = !DILocation(line: 137, column: 10, scope: !278)
!283 = !DILocation(line: 137, column: 3, scope: !278)
!284 = !DILocation(line: 0, scope: !2)
!285 = !DILocation(line: 84, column: 3, scope: !2)
!286 = !DILocation(line: 90, column: 9, scope: !2)
!287 = !DILocation(line: 92, column: 7, scope: !288)
!288 = distinct !DILexicalBlock(scope: !2, file: !3, line: 92, column: 7)
!289 = !DILocation(line: 92, column: 21, scope: !288)
!290 = !DILocation(line: 92, column: 17, scope: !288)
!291 = !DILocation(line: 93, column: 7, scope: !288)
!292 = !DILocation(line: 93, column: 32, scope: !288)
!293 = !DILocation(line: 93, column: 38, scope: !288)
!294 = !DILocation(line: 93, column: 36, scope: !288)
!295 = !DILocation(line: 93, column: 20, scope: !288)
!296 = !DILocation(line: 93, column: 10, scope: !288)
!297 = !DILocation(line: 92, column: 7, scope: !2)
!298 = !DILocation(line: 102, column: 3, scope: !2)
!299 = !DILocation(line: 103, column: 31, scope: !2)
!300 = !DILocation(line: 103, column: 39, scope: !2)
!301 = !DILocation(line: 103, column: 51, scope: !2)
!302 = !DILocation(line: 103, column: 46, scope: !2)
!303 = !DILocation(line: 103, column: 60, scope: !2)
!304 = !DILocation(line: 103, column: 58, scope: !2)
!305 = !DILocation(line: 103, column: 9, scope: !2)
!306 = !DILocation(line: 0, scope: !43)
!307 = !DILocation(line: 108, column: 8, scope: !45)
!308 = !DILocation(line: 0, scope: !45)
!309 = !DILocation(line: 108, column: 25, scope: !44)
!310 = !DILocation(line: 108, column: 3, scope: !45)
!311 = !DILocation(line: 110, column: 24, scope: !43)
!312 = !DILocation(line: 114, column: 29, scope: !43)
!313 = !DILocation(line: 114, column: 19, scope: !43)
!314 = !DILocation(line: 114, column: 17, scope: !43)
!315 = !DILocation(line: 115, column: 9, scope: !43)
!316 = !DILocation(line: 116, column: 29, scope: !43)
!317 = !DILocation(line: 116, column: 19, scope: !43)
!318 = !DILocation(line: 116, column: 17, scope: !43)
!319 = !DILocation(line: 117, column: 9, scope: !43)
!320 = !DILocation(line: 118, column: 29, scope: !43)
!321 = !DILocation(line: 118, column: 19, scope: !43)
!322 = !DILocation(line: 118, column: 17, scope: !43)
!323 = !DILocation(line: 119, column: 9, scope: !43)
!324 = !DILocation(line: 120, column: 29, scope: !43)
!325 = !DILocation(line: 120, column: 19, scope: !43)
!326 = !DILocation(line: 120, column: 17, scope: !43)
!327 = !DILocation(line: 121, column: 9, scope: !43)
!328 = !DILocation(line: 122, column: 29, scope: !43)
!329 = !DILocation(line: 122, column: 19, scope: !43)
!330 = !DILocation(line: 122, column: 17, scope: !43)
!331 = !DILocation(line: 123, column: 9, scope: !43)
!332 = !DILocation(line: 124, column: 29, scope: !43)
!333 = !DILocation(line: 124, column: 19, scope: !43)
!334 = !DILocation(line: 124, column: 17, scope: !43)
!335 = !DILocation(line: 126, column: 12, scope: !43)
!336 = !DILocation(line: 127, column: 14, scope: !337)
!337 = distinct !DILexicalBlock(scope: !43, file: !3, line: 127, column: 11)
!338 = !DILocation(line: 127, column: 11, scope: !43)
!339 = !DILocation(line: 130, column: 11, scope: !340)
!340 = distinct !DILexicalBlock(scope: !43, file: !3, line: 130, column: 11)
!341 = !DILocation(line: 130, column: 17, scope: !340)
!342 = !DILocation(line: 132, column: 4, scope: !340)
!343 = !DILocation(line: 132, column: 7, scope: !340)
!344 = !DILocation(line: 132, column: 13, scope: !340)
!345 = !DILocation(line: 130, column: 11, scope: !43)
!346 = !DILocation(line: 141, column: 13, scope: !43)
!347 = !DILocation(line: 142, column: 5, scope: !44)
!348 = !DILocation(line: 108, column: 36, scope: !44)
!349 = !DILocation(line: 108, column: 3, scope: !44)
!350 = distinct !{!350, !310, !351}
!351 = !DILocation(line: 142, column: 5, scope: !45)
!352 = !DILocation(line: 145, column: 14, scope: !2)
!353 = !DILocation(line: 146, column: 3, scope: !2)
!354 = !DILocation(line: 147, column: 1, scope: !2)
