; ModuleID = 'getpwd.bc'
source_filename = "getpwd.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@getpwd.pwd = internal unnamed_addr global i8* null, align 8, !dbg !0
@getpwd.failure_errno = internal unnamed_addr global i32 0, align 4, !dbg !19
@.str = private unnamed_addr constant [4 x i8] c"PWD\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !85, metadata !DIExpression()), !dbg !86
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !87
  %conv = trunc i64 %call to i32, !dbg !88
  ret i32 %conv, !dbg !89
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !90 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !94, metadata !DIExpression()), !dbg !95
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !96
  ret i64 %call, !dbg !97
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !98 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !103, metadata !DIExpression()), !dbg !104
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !105
  ret i64 %call, !dbg !106
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !107 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !118, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i8* %__base, metadata !119, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !120, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %__size, metadata !121, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !122, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 0, metadata !123, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !124, metadata !DIExpression()), !dbg !128
  br label %while.cond, !dbg !129

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !130
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !128
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !124, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !123, metadata !DIExpression()), !dbg !128
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !131
  br i1 %cmp, label %while.body, label %cleanup, !dbg !129

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !132
  %div = lshr i64 %add, 1, !dbg !134
  call void @llvm.dbg.value(metadata i64 %div, metadata !125, metadata !DIExpression()), !dbg !128
  %mul = mul i64 %div, %__size, !dbg !135
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !136
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !126, metadata !DIExpression()), !dbg !128
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !137
  call void @llvm.dbg.value(metadata i32 %call, metadata !127, metadata !DIExpression()), !dbg !128
  %cmp1 = icmp slt i32 %call, 0, !dbg !138
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !140

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !141
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !143

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !144
  call void @llvm.dbg.value(metadata i64 %add4, metadata !123, metadata !DIExpression()), !dbg !128
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !128
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !128
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !124, metadata !DIExpression()), !dbg !128
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !123, metadata !DIExpression()), !dbg !128
  br label %while.cond, !dbg !129, !llvm.loop !145

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !128
  ret i8* %retval.0, !dbg !147
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !148 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !154, metadata !DIExpression()), !dbg !155
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !156
  ret double %call, !dbg !157
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !158 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !164, metadata !DIExpression()), !dbg !166
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !165, metadata !DIExpression()), !dbg !166
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !167
  ret i32 %call, !dbg !168
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !169 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !171, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !172, metadata !DIExpression()), !dbg !173
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !174
  ret i32 %call, !dbg !175
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !176 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !181, metadata !DIExpression()), !dbg !182
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !183
  ret i32 %call, !dbg !184
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !189, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !190, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !191, metadata !DIExpression()), !dbg !193
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !192, metadata !DIExpression()), !dbg !193
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !194
  ret i32 %call, !dbg !195
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !196 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !200, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !201, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !202, metadata !DIExpression()), !dbg !203
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !202, metadata !DIExpression(DW_OP_deref)), !dbg !203
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !204
  ret i32 %call, !dbg !205
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !206 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i8* %__path, metadata !211, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !212, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !213, metadata !DIExpression()), !dbg !214
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !213, metadata !DIExpression(DW_OP_deref)), !dbg !214
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !215
  ret i32 %call, !dbg !216
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !217 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !241, metadata !DIExpression()), !dbg !243
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !242, metadata !DIExpression()), !dbg !243
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !244
  ret i32 %call, !dbg !245
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !246 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !248, metadata !DIExpression()), !dbg !250
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !249, metadata !DIExpression()), !dbg !250
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !251
  ret i32 %call, !dbg !252
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !253 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !257, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !260
  ret i32 %call, !dbg !261
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !262 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !266, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !267, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !268, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !269, metadata !DIExpression()), !dbg !270
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !271
  ret i32 %call, !dbg !272
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !273 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !286, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !287, metadata !DIExpression()), !dbg !288
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !289
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !290
  ret i32 %call, !dbg !291
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !292 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !295
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !296
  ret i32 %call, !dbg !297
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !298 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !355, metadata !DIExpression()), !dbg !356
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !357
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !357
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !357
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !357
  %cmp = icmp uge i8* %0, %1, !dbg !357
  %conv1 = zext i1 %cmp to i64, !dbg !357
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !357
  %tobool = icmp eq i64 %expval, 0, !dbg !357
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !357

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !357
  br label %cond.end, !dbg !357

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !357
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !357
  %2 = load i8, i8* %0, align 1, !dbg !357
  %conv3 = zext i8 %2 to i32, !dbg !357
  br label %cond.end, !dbg !357

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !357
  ret i32 %cond, !dbg !358
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !359 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !361, metadata !DIExpression()), !dbg !362
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !363
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !363
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !363
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !363
  %cmp = icmp uge i8* %0, %1, !dbg !363
  %conv1 = zext i1 %cmp to i64, !dbg !363
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !363
  %tobool = icmp eq i64 %expval, 0, !dbg !363
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !363

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !363
  br label %cond.end, !dbg !363

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !363
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !363
  %2 = load i8, i8* %0, align 1, !dbg !363
  %conv3 = zext i8 %2 to i32, !dbg !363
  br label %cond.end, !dbg !363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !363
  ret i32 %cond, !dbg !364
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !365 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !366
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !366
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !366
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !366
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !366
  %cmp = icmp uge i8* %1, %2, !dbg !366
  %conv1 = zext i1 %cmp to i64, !dbg !366
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !366
  %tobool = icmp eq i64 %expval, 0, !dbg !366
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !366

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !366
  br label %cond.end, !dbg !366

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !366
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !366
  %3 = load i8, i8* %1, align 1, !dbg !366
  %conv3 = zext i8 %3 to i32, !dbg !366
  br label %cond.end, !dbg !366

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !366
  ret i32 %cond, !dbg !367
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !368 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !372, metadata !DIExpression()), !dbg !373
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !374
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !375
  ret i32 %call, !dbg !376
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !377 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !381, metadata !DIExpression()), !dbg !383
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !382, metadata !DIExpression()), !dbg !383
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !384
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !384
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !384
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !384
  %cmp = icmp uge i8* %0, %1, !dbg !384
  %conv1 = zext i1 %cmp to i64, !dbg !384
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !384
  %tobool = icmp eq i64 %expval, 0, !dbg !384
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !384

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !384
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !384
  br label %cond.end, !dbg !384

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !384
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !384
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !384
  store i8 %conv2, i8* %0, align 1, !dbg !384
  %conv6 = and i32 %__c, 255, !dbg !384
  br label %cond.end, !dbg !384

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !384
  ret i32 %cond, !dbg !385
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !386 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !388, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !389, metadata !DIExpression()), !dbg !390
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !391
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !391
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !391
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !391
  %cmp = icmp uge i8* %0, %1, !dbg !391
  %conv1 = zext i1 %cmp to i64, !dbg !391
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !391
  %tobool = icmp eq i64 %expval, 0, !dbg !391
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !391

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !391
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !391
  br label %cond.end, !dbg !391

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !391
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !391
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !391
  store i8 %conv2, i8* %0, align 1, !dbg !391
  %conv6 = and i32 %__c, 255, !dbg !391
  br label %cond.end, !dbg !391

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !391
  ret i32 %cond, !dbg !392
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !393 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !395, metadata !DIExpression()), !dbg !396
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !397
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !397
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !397
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !397
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !397
  %cmp = icmp uge i8* %1, %2, !dbg !397
  %conv1 = zext i1 %cmp to i64, !dbg !397
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !397
  %tobool = icmp eq i64 %expval, 0, !dbg !397
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !397

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !397
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !397
  br label %cond.end, !dbg !397

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !397
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !397
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !397
  store i8 %conv4, i8* %1, align 1, !dbg !397
  %conv6 = and i32 %__c, 255, !dbg !397
  br label %cond.end, !dbg !397

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !397
  ret i32 %cond, !dbg !398
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !399 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !405, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata i64* %__n, metadata !406, metadata !DIExpression()), !dbg !408
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !407, metadata !DIExpression()), !dbg !408
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !409
  ret i64 %call, !dbg !410
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !411 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !413, metadata !DIExpression()), !dbg !414
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !415
  %0 = load i32, i32* %_flags, align 8, !dbg !415
  %and = lshr i32 %0, 4, !dbg !415
  %and.lobit = and i32 %and, 1, !dbg !415
  ret i32 %and.lobit, !dbg !416
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !417 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !419, metadata !DIExpression()), !dbg !420
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !421
  %0 = load i32, i32* %_flags, align 8, !dbg !421
  %and = lshr i32 %0, 5, !dbg !421
  %and.lobit = and i32 %and, 1, !dbg !421
  ret i32 %and.lobit, !dbg !422
}

; Function Attrs: nounwind uwtable
define dso_local i8* @getpwd() local_unnamed_addr #4 !dbg !2 {
entry:
  %dotstat = alloca %struct.stat, align 8
  %pwdstat = alloca %struct.stat, align 8
  %0 = load i8*, i8** @getpwd.pwd, align 8, !dbg !423
  call void @llvm.dbg.value(metadata i8* %0, metadata !22, metadata !DIExpression()), !dbg !424
  %1 = bitcast %struct.stat* %dotstat to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #7, !dbg !425
  %2 = bitcast %struct.stat* %pwdstat to i8*, !dbg !425
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %2) #7, !dbg !425
  %tobool = icmp eq i8* %0, null, !dbg !426
  br i1 %tobool, label %land.lhs.true, label %if.end33, !dbg !427

land.lhs.true:                                    ; preds = %entry
  %3 = load i32, i32* @getpwd.failure_errno, align 4, !dbg !428
  %call = tail call i32* @__errno_location() #6, !dbg !429
  store i32 %3, i32* %call, align 4, !dbg !430
  %tobool1 = icmp eq i32 %3, 0, !dbg !430
  br i1 %tobool1, label %if.then, label %if.end33, !dbg !431

if.then:                                          ; preds = %land.lhs.true
  %call2 = tail call i8* @getenv(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)) #6, !dbg !432
  call void @llvm.dbg.value(metadata i8* %call2, metadata !22, metadata !DIExpression()), !dbg !424
  %cmp = icmp eq i8* %call2, null, !dbg !433
  br i1 %cmp, label %if.then22, label %land.lhs.true3, !dbg !434

land.lhs.true3:                                   ; preds = %if.then
  %4 = load i8, i8* %call2, align 1, !dbg !435
  %cmp4 = icmp eq i8 %4, 47, !dbg !436
  br i1 %cmp4, label %land.lhs.true6, label %if.then22, !dbg !437

land.lhs.true6:                                   ; preds = %land.lhs.true3
  call void @llvm.dbg.value(metadata %struct.stat* %pwdstat, metadata !68, metadata !DIExpression(DW_OP_deref)), !dbg !424
  %call7 = call i32 @stat(i8* nonnull %call2, %struct.stat* nonnull %pwdstat) #8, !dbg !438
  %cmp8 = icmp eq i32 %call7, 0, !dbg !439
  br i1 %cmp8, label %land.lhs.true10, label %if.then22, !dbg !440

land.lhs.true10:                                  ; preds = %land.lhs.true6
  call void @llvm.dbg.value(metadata %struct.stat* %dotstat, metadata !27, metadata !DIExpression(DW_OP_deref)), !dbg !424
  %call11 = call i32 @stat(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), %struct.stat* nonnull %dotstat) #8, !dbg !441
  %cmp12 = icmp eq i32 %call11, 0, !dbg !442
  br i1 %cmp12, label %land.lhs.true14, label %if.then22, !dbg !443

land.lhs.true14:                                  ; preds = %land.lhs.true10
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %dotstat, i64 0, i32 1, !dbg !444
  %5 = load i64, i64* %st_ino, align 8, !dbg !444
  %st_ino15 = getelementptr inbounds %struct.stat, %struct.stat* %pwdstat, i64 0, i32 1, !dbg !445
  %6 = load i64, i64* %st_ino15, align 8, !dbg !445
  %cmp16 = icmp eq i64 %5, %6, !dbg !446
  br i1 %cmp16, label %land.lhs.true18, label %if.then22, !dbg !447

land.lhs.true18:                                  ; preds = %land.lhs.true14
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %dotstat, i64 0, i32 0, !dbg !448
  %7 = load i64, i64* %st_dev, align 8, !dbg !448
  %st_dev19 = getelementptr inbounds %struct.stat, %struct.stat* %pwdstat, i64 0, i32 0, !dbg !449
  %8 = load i64, i64* %st_dev19, align 8, !dbg !449
  %cmp20 = icmp eq i64 %7, %8, !dbg !450
  br i1 %cmp20, label %if.end32, label %if.then22, !dbg !451

if.then22:                                        ; preds = %if.then, %land.lhs.true18, %land.lhs.true14, %land.lhs.true10, %land.lhs.true6, %land.lhs.true3
  call void @llvm.dbg.value(metadata i64 4097, metadata !23, metadata !DIExpression()), !dbg !424
  br label %for.cond, !dbg !452

for.cond:                                         ; preds = %for.inc, %if.then22
  %s.0 = phi i64 [ 4097, %if.then22 ], [ %mul31, %for.inc ], !dbg !453
  call void @llvm.dbg.value(metadata i64 %s.0, metadata !23, metadata !DIExpression()), !dbg !424
  %call23 = call i8* @xmalloc(i64 %s.0) #6, !dbg !454
  call void @llvm.dbg.value(metadata i8* %call23, metadata !22, metadata !DIExpression()), !dbg !424
  %call24 = call i8* @getcwd(i8* %call23, i64 %s.0) #6, !dbg !455
  %tobool25 = icmp eq i8* %call24, null, !dbg !456
  br i1 %tobool25, label %for.body, label %if.end32.loopexit, !dbg !457

for.body:                                         ; preds = %for.cond
  %call26 = call i32* @__errno_location() #6, !dbg !458
  %9 = load i32, i32* %call26, align 4, !dbg !458
  call void @llvm.dbg.value(metadata i32 %9, metadata !69, metadata !DIExpression()), !dbg !459
  call void @free(i8* %call23) #6, !dbg !460
  %cmp27 = icmp eq i32 %9, 34, !dbg !461
  br i1 %cmp27, label %cleanup, label %if.then29, !dbg !463

if.then29:                                        ; preds = %for.body
  store i32 %9, i32* @getpwd.failure_errno, align 4, !dbg !464
  %call30 = call i32* @__errno_location() #6, !dbg !466
  store i32 %9, i32* %call30, align 4, !dbg !467
  call void @llvm.dbg.value(metadata i8* null, metadata !22, metadata !DIExpression()), !dbg !424
  br label %cleanup, !dbg !468

cleanup:                                          ; preds = %for.body, %if.then29
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then29 ], [ true, %for.body ]
  %p.0 = phi i8* [ null, %if.then29 ], [ %call23, %for.body ], !dbg !469
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !22, metadata !DIExpression()), !dbg !424
  br i1 %cleanup.dest.slot.0, label %for.inc, label %if.end32.loopexit

for.inc:                                          ; preds = %cleanup
  %mul31 = shl i64 %s.0, 1, !dbg !470
  call void @llvm.dbg.value(metadata i64 %mul31, metadata !23, metadata !DIExpression()), !dbg !424
  br label %for.cond, !dbg !471, !llvm.loop !472

if.end32.loopexit:                                ; preds = %cleanup, %for.cond
  %p.2.ph = phi i8* [ %call23, %for.cond ], [ %p.0, %cleanup ]
  br label %if.end32, !dbg !474

if.end32:                                         ; preds = %if.end32.loopexit, %land.lhs.true18
  %p.2 = phi i8* [ %call2, %land.lhs.true18 ], [ %p.2.ph, %if.end32.loopexit ], !dbg !475
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !22, metadata !DIExpression()), !dbg !424
  store i8* %p.2, i8** @getpwd.pwd, align 8, !dbg !474
  br label %if.end33, !dbg !476

if.end33:                                         ; preds = %land.lhs.true, %entry, %if.end32
  %p.3 = phi i8* [ %0, %entry ], [ null, %land.lhs.true ], [ %p.2, %if.end32 ], !dbg !424
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !22, metadata !DIExpression()), !dbg !424
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %2) #7, !dbg !477
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #7, !dbg !477
  ret i8* %p.3, !dbg !478
}

declare dso_local i32* @__errno_location() local_unnamed_addr #1

declare dso_local i8* @getenv(i8*) local_unnamed_addr #1

declare dso_local i8* @getcwd(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

declare dso_local void @free(i8*) local_unnamed_addr #1

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
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!8}
!llvm.module.flags = !{!76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pwd", scope: !2, file: !3, line: 73, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "getpwd", scope: !3, file: !3, line: 71, type: !4, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !21)
!3 = !DIFile(filename: "getpwd.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, globals: !18, nameTableKind: None)
!9 = !{}
!10 = !{!11, !12, !13, !14, !16, !17, !6}
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!18 = !{!0, !19}
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(name: "failure_errno", scope: !2, file: !3, line: 74, type: !11, isLocal: true, isDefinition: true)
!21 = !{!22, !23, !27, !68, !69}
!22 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 76, type: !6)
!23 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 77, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !25, line: 46, baseType: !26)
!25 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "dotstat", scope: !2, file: !3, line: 78, type: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !29, line: 46, size: 1152, elements: !30)
!29 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!30 = !{!31, !34, !36, !38, !41, !43, !45, !46, !47, !50, !52, !54, !62, !63, !64}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !28, file: !29, line: 48, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !33, line: 145, baseType: !26)
!33 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!34 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !28, file: !29, line: 53, baseType: !35, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !33, line: 148, baseType: !26)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !28, file: !29, line: 61, baseType: !37, size: 64, offset: 128)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !33, line: 151, baseType: !26)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !28, file: !29, line: 62, baseType: !39, size: 32, offset: 192)
!39 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !33, line: 150, baseType: !40)
!40 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !28, file: !29, line: 64, baseType: !42, size: 32, offset: 224)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !33, line: 146, baseType: !40)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !28, file: !29, line: 65, baseType: !44, size: 32, offset: 256)
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !33, line: 147, baseType: !40)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !28, file: !29, line: 67, baseType: !11, size: 32, offset: 288)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !28, file: !29, line: 69, baseType: !32, size: 64, offset: 320)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !28, file: !29, line: 74, baseType: !48, size: 64, offset: 384)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !33, line: 152, baseType: !49)
!49 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !28, file: !29, line: 78, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !33, line: 174, baseType: !49)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !28, file: !29, line: 80, baseType: !53, size: 64, offset: 512)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !33, line: 179, baseType: !49)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !28, file: !29, line: 91, baseType: !55, size: 128, offset: 576)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !56, line: 10, size: 128, elements: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !55, file: !56, line: 12, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !33, line: 160, baseType: !49)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !55, file: !56, line: 16, baseType: !61, size: 64, offset: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !33, line: 196, baseType: !49)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !28, file: !29, line: 92, baseType: !55, size: 128, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !28, file: !29, line: 93, baseType: !55, size: 128, offset: 832)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !28, file: !29, line: 106, baseType: !65, size: 192, offset: 960)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 192, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 3)
!68 = !DILocalVariable(name: "pwdstat", scope: !2, file: !3, line: 78, type: !28)
!69 = !DILocalVariable(name: "e", scope: !70, file: !3, line: 92, type: !11)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 91, column: 4)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 90, column: 2)
!72 = distinct !DILexicalBlock(scope: !73, file: !3, line: 90, column: 2)
!73 = distinct !DILexicalBlock(scope: !74, file: !3, line: 82, column: 11)
!74 = distinct !DILexicalBlock(scope: !75, file: !3, line: 81, column: 5)
!75 = distinct !DILexicalBlock(scope: !2, file: !3, line: 80, column: 7)
!76 = !{i32 2, !"Dwarf Version", i32 4}
!77 = !{i32 2, !"Debug Info Version", i32 3}
!78 = !{i32 1, !"wchar_size", i32 4}
!79 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!80 = distinct !DISubprogram(name: "atoi", scope: !81, file: !81, line: 361, type: !82, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !84)
!81 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!82 = !DISubroutineType(types: !83)
!83 = !{!11, !14}
!84 = !{!85}
!85 = !DILocalVariable(name: "__nptr", arg: 1, scope: !80, file: !81, line: 361, type: !14)
!86 = !DILocation(line: 0, scope: !80)
!87 = !DILocation(line: 363, column: 16, scope: !80)
!88 = !DILocation(line: 363, column: 10, scope: !80)
!89 = !DILocation(line: 363, column: 3, scope: !80)
!90 = distinct !DISubprogram(name: "atol", scope: !81, file: !81, line: 366, type: !91, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !93)
!91 = !DISubroutineType(types: !92)
!92 = !{!49, !14}
!93 = !{!94}
!94 = !DILocalVariable(name: "__nptr", arg: 1, scope: !90, file: !81, line: 366, type: !14)
!95 = !DILocation(line: 0, scope: !90)
!96 = !DILocation(line: 368, column: 10, scope: !90)
!97 = !DILocation(line: 368, column: 3, scope: !90)
!98 = distinct !DISubprogram(name: "atoll", scope: !81, file: !81, line: 373, type: !99, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !102)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !14}
!101 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!102 = !{!103}
!103 = !DILocalVariable(name: "__nptr", arg: 1, scope: !98, file: !81, line: 373, type: !14)
!104 = !DILocation(line: 0, scope: !98)
!105 = !DILocation(line: 375, column: 10, scope: !98)
!106 = !DILocation(line: 375, column: 3, scope: !98)
!107 = distinct !DISubprogram(name: "bsearch", scope: !108, file: !108, line: 20, type: !109, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !117)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!109 = !DISubroutineType(types: !110)
!110 = !{!13, !111, !111, !24, !24, !113}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !81, line: 808, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!11, !111, !111}
!117 = !{!118, !119, !120, !121, !122, !123, !124, !125, !126, !127}
!118 = !DILocalVariable(name: "__key", arg: 1, scope: !107, file: !108, line: 20, type: !111)
!119 = !DILocalVariable(name: "__base", arg: 2, scope: !107, file: !108, line: 20, type: !111)
!120 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !107, file: !108, line: 20, type: !24)
!121 = !DILocalVariable(name: "__size", arg: 4, scope: !107, file: !108, line: 20, type: !24)
!122 = !DILocalVariable(name: "__compar", arg: 5, scope: !107, file: !108, line: 21, type: !113)
!123 = !DILocalVariable(name: "__l", scope: !107, file: !108, line: 23, type: !24)
!124 = !DILocalVariable(name: "__u", scope: !107, file: !108, line: 23, type: !24)
!125 = !DILocalVariable(name: "__idx", scope: !107, file: !108, line: 23, type: !24)
!126 = !DILocalVariable(name: "__p", scope: !107, file: !108, line: 24, type: !111)
!127 = !DILocalVariable(name: "__comparison", scope: !107, file: !108, line: 25, type: !11)
!128 = !DILocation(line: 0, scope: !107)
!129 = !DILocation(line: 29, column: 3, scope: !107)
!130 = !DILocation(line: 27, column: 7, scope: !107)
!131 = !DILocation(line: 29, column: 14, scope: !107)
!132 = !DILocation(line: 31, column: 20, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !108, line: 30, column: 5)
!134 = !DILocation(line: 31, column: 27, scope: !133)
!135 = !DILocation(line: 32, column: 56, scope: !133)
!136 = !DILocation(line: 32, column: 47, scope: !133)
!137 = !DILocation(line: 33, column: 22, scope: !133)
!138 = !DILocation(line: 34, column: 24, scope: !139)
!139 = distinct !DILexicalBlock(scope: !133, file: !108, line: 34, column: 11)
!140 = !DILocation(line: 34, column: 11, scope: !133)
!141 = !DILocation(line: 36, column: 29, scope: !142)
!142 = distinct !DILexicalBlock(scope: !139, file: !108, line: 36, column: 16)
!143 = !DILocation(line: 36, column: 16, scope: !139)
!144 = !DILocation(line: 37, column: 14, scope: !142)
!145 = distinct !{!145, !129, !146}
!146 = !DILocation(line: 40, column: 5, scope: !107)
!147 = !DILocation(line: 43, column: 1, scope: !107)
!148 = distinct !DISubprogram(name: "atof", scope: !149, file: !149, line: 25, type: !150, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !153)
!149 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !14}
!152 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!153 = !{!154}
!154 = !DILocalVariable(name: "__nptr", arg: 1, scope: !148, file: !149, line: 25, type: !14)
!155 = !DILocation(line: 0, scope: !148)
!156 = !DILocation(line: 27, column: 10, scope: !148)
!157 = !DILocation(line: 27, column: 3, scope: !148)
!158 = distinct !DISubprogram(name: "stat", scope: !159, file: !159, line: 453, type: !160, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !163)
!159 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!160 = !DISubroutineType(types: !161)
!161 = !{!11, !14, !162}
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!163 = !{!164, !165}
!164 = !DILocalVariable(name: "__path", arg: 1, scope: !158, file: !159, line: 453, type: !14)
!165 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !158, file: !159, line: 453, type: !162)
!166 = !DILocation(line: 0, scope: !158)
!167 = !DILocation(line: 455, column: 10, scope: !158)
!168 = !DILocation(line: 455, column: 3, scope: !158)
!169 = distinct !DISubprogram(name: "lstat", scope: !159, file: !159, line: 460, type: !160, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: "__path", arg: 1, scope: !169, file: !159, line: 460, type: !14)
!172 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !169, file: !159, line: 460, type: !162)
!173 = !DILocation(line: 0, scope: !169)
!174 = !DILocation(line: 462, column: 10, scope: !169)
!175 = !DILocation(line: 462, column: 3, scope: !169)
!176 = distinct !DISubprogram(name: "fstat", scope: !159, file: !159, line: 467, type: !177, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !179)
!177 = !DISubroutineType(types: !178)
!178 = !{!11, !11, !162}
!179 = !{!180, !181}
!180 = !DILocalVariable(name: "__fd", arg: 1, scope: !176, file: !159, line: 467, type: !11)
!181 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !176, file: !159, line: 467, type: !162)
!182 = !DILocation(line: 0, scope: !176)
!183 = !DILocation(line: 469, column: 10, scope: !176)
!184 = !DILocation(line: 469, column: 3, scope: !176)
!185 = distinct !DISubprogram(name: "fstatat", scope: !159, file: !159, line: 474, type: !186, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !188)
!186 = !DISubroutineType(types: !187)
!187 = !{!11, !11, !14, !162, !11}
!188 = !{!189, !190, !191, !192}
!189 = !DILocalVariable(name: "__fd", arg: 1, scope: !185, file: !159, line: 474, type: !11)
!190 = !DILocalVariable(name: "__filename", arg: 2, scope: !185, file: !159, line: 474, type: !14)
!191 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !185, file: !159, line: 474, type: !162)
!192 = !DILocalVariable(name: "__flag", arg: 4, scope: !185, file: !159, line: 474, type: !11)
!193 = !DILocation(line: 0, scope: !185)
!194 = !DILocation(line: 477, column: 10, scope: !185)
!195 = !DILocation(line: 477, column: 3, scope: !185)
!196 = distinct !DISubprogram(name: "mknod", scope: !159, file: !159, line: 483, type: !197, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !199)
!197 = !DISubroutineType(types: !198)
!198 = !{!11, !14, !39, !32}
!199 = !{!200, !201, !202}
!200 = !DILocalVariable(name: "__path", arg: 1, scope: !196, file: !159, line: 483, type: !14)
!201 = !DILocalVariable(name: "__mode", arg: 2, scope: !196, file: !159, line: 483, type: !39)
!202 = !DILocalVariable(name: "__dev", arg: 3, scope: !196, file: !159, line: 483, type: !32)
!203 = !DILocation(line: 0, scope: !196)
!204 = !DILocation(line: 485, column: 10, scope: !196)
!205 = !DILocation(line: 485, column: 3, scope: !196)
!206 = distinct !DISubprogram(name: "mknodat", scope: !159, file: !159, line: 491, type: !207, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !209)
!207 = !DISubroutineType(types: !208)
!208 = !{!11, !11, !14, !39, !32}
!209 = !{!210, !211, !212, !213}
!210 = !DILocalVariable(name: "__fd", arg: 1, scope: !206, file: !159, line: 491, type: !11)
!211 = !DILocalVariable(name: "__path", arg: 2, scope: !206, file: !159, line: 491, type: !14)
!212 = !DILocalVariable(name: "__mode", arg: 3, scope: !206, file: !159, line: 491, type: !39)
!213 = !DILocalVariable(name: "__dev", arg: 4, scope: !206, file: !159, line: 491, type: !32)
!214 = !DILocation(line: 0, scope: !206)
!215 = !DILocation(line: 494, column: 10, scope: !206)
!216 = !DILocation(line: 494, column: 3, scope: !206)
!217 = distinct !DISubprogram(name: "stat64", scope: !159, file: !159, line: 502, type: !218, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !240)
!218 = !DISubroutineType(types: !219)
!219 = !{!11, !14, !220}
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !29, line: 119, size: 1152, elements: !222)
!222 = !{!223, !224, !226, !227, !228, !229, !230, !231, !232, !233, !234, !236, !237, !238, !239}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !221, file: !29, line: 121, baseType: !32, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !221, file: !29, line: 123, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !33, line: 149, baseType: !26)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !221, file: !29, line: 124, baseType: !37, size: 64, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !221, file: !29, line: 125, baseType: !39, size: 32, offset: 192)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !221, file: !29, line: 132, baseType: !42, size: 32, offset: 224)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !221, file: !29, line: 133, baseType: !44, size: 32, offset: 256)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !221, file: !29, line: 135, baseType: !11, size: 32, offset: 288)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !221, file: !29, line: 136, baseType: !32, size: 64, offset: 320)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !221, file: !29, line: 137, baseType: !48, size: 64, offset: 384)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !221, file: !29, line: 143, baseType: !51, size: 64, offset: 448)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !221, file: !29, line: 144, baseType: !235, size: 64, offset: 512)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !33, line: 180, baseType: !49)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !221, file: !29, line: 152, baseType: !55, size: 128, offset: 576)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !221, file: !29, line: 153, baseType: !55, size: 128, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !221, file: !29, line: 154, baseType: !55, size: 128, offset: 832)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !221, file: !29, line: 164, baseType: !65, size: 192, offset: 960)
!240 = !{!241, !242}
!241 = !DILocalVariable(name: "__path", arg: 1, scope: !217, file: !159, line: 502, type: !14)
!242 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !217, file: !159, line: 502, type: !220)
!243 = !DILocation(line: 0, scope: !217)
!244 = !DILocation(line: 504, column: 10, scope: !217)
!245 = !DILocation(line: 504, column: 3, scope: !217)
!246 = distinct !DISubprogram(name: "lstat64", scope: !159, file: !159, line: 509, type: !218, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !247)
!247 = !{!248, !249}
!248 = !DILocalVariable(name: "__path", arg: 1, scope: !246, file: !159, line: 509, type: !14)
!249 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !246, file: !159, line: 509, type: !220)
!250 = !DILocation(line: 0, scope: !246)
!251 = !DILocation(line: 511, column: 10, scope: !246)
!252 = !DILocation(line: 511, column: 3, scope: !246)
!253 = distinct !DISubprogram(name: "fstat64", scope: !159, file: !159, line: 516, type: !254, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !256)
!254 = !DISubroutineType(types: !255)
!255 = !{!11, !11, !220}
!256 = !{!257, !258}
!257 = !DILocalVariable(name: "__fd", arg: 1, scope: !253, file: !159, line: 516, type: !11)
!258 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !253, file: !159, line: 516, type: !220)
!259 = !DILocation(line: 0, scope: !253)
!260 = !DILocation(line: 518, column: 10, scope: !253)
!261 = !DILocation(line: 518, column: 3, scope: !253)
!262 = distinct !DISubprogram(name: "fstatat64", scope: !159, file: !159, line: 523, type: !263, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !265)
!263 = !DISubroutineType(types: !264)
!264 = !{!11, !11, !14, !220, !11}
!265 = !{!266, !267, !268, !269}
!266 = !DILocalVariable(name: "__fd", arg: 1, scope: !262, file: !159, line: 523, type: !11)
!267 = !DILocalVariable(name: "__filename", arg: 2, scope: !262, file: !159, line: 523, type: !14)
!268 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !262, file: !159, line: 523, type: !220)
!269 = !DILocalVariable(name: "__flag", arg: 4, scope: !262, file: !159, line: 523, type: !11)
!270 = !DILocation(line: 0, scope: !262)
!271 = !DILocation(line: 526, column: 10, scope: !262)
!272 = !DILocation(line: 526, column: 3, scope: !262)
!273 = distinct !DISubprogram(name: "vprintf", scope: !274, file: !274, line: 39, type: !275, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !285)
!274 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!275 = !DISubroutineType(types: !276)
!276 = !{!11, !277, !278}
!277 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !14)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 527, size: 192, elements: !280)
!280 = !{!281, !282, !283, !284}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !279, file: !3, line: 527, baseType: !40, size: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !279, file: !3, line: 527, baseType: !40, size: 32, offset: 32)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !279, file: !3, line: 527, baseType: !13, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !279, file: !3, line: 527, baseType: !13, size: 64, offset: 128)
!285 = !{!286, !287}
!286 = !DILocalVariable(name: "__fmt", arg: 1, scope: !273, file: !274, line: 39, type: !277)
!287 = !DILocalVariable(name: "__arg", arg: 2, scope: !273, file: !274, line: 39, type: !278)
!288 = !DILocation(line: 0, scope: !273)
!289 = !DILocation(line: 41, column: 20, scope: !273)
!290 = !DILocation(line: 41, column: 10, scope: !273)
!291 = !DILocation(line: 41, column: 3, scope: !273)
!292 = distinct !DISubprogram(name: "getchar", scope: !274, file: !274, line: 47, type: !293, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !9)
!293 = !DISubroutineType(types: !294)
!294 = !{!11}
!295 = !DILocation(line: 49, column: 16, scope: !292)
!296 = !DILocation(line: 49, column: 10, scope: !292)
!297 = !DILocation(line: 49, column: 3, scope: !292)
!298 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !274, file: !274, line: 56, type: !299, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !354)
!299 = !DISubroutineType(types: !300)
!300 = !{!11, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !303, line: 7, baseType: !304)
!303 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !305, line: 49, size: 1728, elements: !306)
!305 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!306 = !{!307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !322, !324, !325, !326, !327, !329, !331, !335, !338, !340, !343, !346, !347, !348, !349, !350}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !304, file: !305, line: 51, baseType: !11, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !304, file: !305, line: 54, baseType: !6, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !304, file: !305, line: 55, baseType: !6, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !304, file: !305, line: 56, baseType: !6, size: 64, offset: 192)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !304, file: !305, line: 57, baseType: !6, size: 64, offset: 256)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !304, file: !305, line: 58, baseType: !6, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !304, file: !305, line: 59, baseType: !6, size: 64, offset: 384)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !304, file: !305, line: 60, baseType: !6, size: 64, offset: 448)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !304, file: !305, line: 61, baseType: !6, size: 64, offset: 512)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !304, file: !305, line: 64, baseType: !6, size: 64, offset: 576)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !304, file: !305, line: 65, baseType: !6, size: 64, offset: 640)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !304, file: !305, line: 66, baseType: !6, size: 64, offset: 704)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !304, file: !305, line: 68, baseType: !320, size: 64, offset: 768)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !305, line: 36, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !304, file: !305, line: 70, baseType: !323, size: 64, offset: 832)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !304, file: !305, line: 72, baseType: !11, size: 32, offset: 896)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !304, file: !305, line: 73, baseType: !11, size: 32, offset: 928)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !304, file: !305, line: 74, baseType: !48, size: 64, offset: 960)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !304, file: !305, line: 77, baseType: !328, size: 16, offset: 1024)
!328 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !304, file: !305, line: 78, baseType: !330, size: 8, offset: 1040)
!330 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !304, file: !305, line: 79, baseType: !332, size: 8, offset: 1048)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 8, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 1)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !304, file: !305, line: 81, baseType: !336, size: 64, offset: 1088)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !305, line: 43, baseType: null)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !304, file: !305, line: 89, baseType: !339, size: 64, offset: 1152)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !33, line: 153, baseType: !49)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !304, file: !305, line: 91, baseType: !341, size: 64, offset: 1216)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !305, line: 37, flags: DIFlagFwdDecl)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !304, file: !305, line: 92, baseType: !344, size: 64, offset: 1280)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !305, line: 38, flags: DIFlagFwdDecl)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !304, file: !305, line: 93, baseType: !323, size: 64, offset: 1344)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !304, file: !305, line: 94, baseType: !13, size: 64, offset: 1408)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !304, file: !305, line: 95, baseType: !24, size: 64, offset: 1472)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !304, file: !305, line: 96, baseType: !11, size: 32, offset: 1536)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !304, file: !305, line: 98, baseType: !351, size: 160, offset: 1568)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 160, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 20)
!354 = !{!355}
!355 = !DILocalVariable(name: "__fp", arg: 1, scope: !298, file: !274, line: 56, type: !301)
!356 = !DILocation(line: 0, scope: !298)
!357 = !DILocation(line: 58, column: 10, scope: !298)
!358 = !DILocation(line: 58, column: 3, scope: !298)
!359 = distinct !DISubprogram(name: "getc_unlocked", scope: !274, file: !274, line: 66, type: !299, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !360)
!360 = !{!361}
!361 = !DILocalVariable(name: "__fp", arg: 1, scope: !359, file: !274, line: 66, type: !301)
!362 = !DILocation(line: 0, scope: !359)
!363 = !DILocation(line: 68, column: 10, scope: !359)
!364 = !DILocation(line: 68, column: 3, scope: !359)
!365 = distinct !DISubprogram(name: "getchar_unlocked", scope: !274, file: !274, line: 73, type: !293, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !9)
!366 = !DILocation(line: 75, column: 10, scope: !365)
!367 = !DILocation(line: 75, column: 3, scope: !365)
!368 = distinct !DISubprogram(name: "putchar", scope: !274, file: !274, line: 82, type: !369, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!11, !11}
!371 = !{!372}
!372 = !DILocalVariable(name: "__c", arg: 1, scope: !368, file: !274, line: 82, type: !11)
!373 = !DILocation(line: 0, scope: !368)
!374 = !DILocation(line: 84, column: 21, scope: !368)
!375 = !DILocation(line: 84, column: 10, scope: !368)
!376 = !DILocation(line: 84, column: 3, scope: !368)
!377 = distinct !DISubprogram(name: "fputc_unlocked", scope: !274, file: !274, line: 91, type: !378, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !380)
!378 = !DISubroutineType(types: !379)
!379 = !{!11, !11, !301}
!380 = !{!381, !382}
!381 = !DILocalVariable(name: "__c", arg: 1, scope: !377, file: !274, line: 91, type: !11)
!382 = !DILocalVariable(name: "__stream", arg: 2, scope: !377, file: !274, line: 91, type: !301)
!383 = !DILocation(line: 0, scope: !377)
!384 = !DILocation(line: 93, column: 10, scope: !377)
!385 = !DILocation(line: 93, column: 3, scope: !377)
!386 = distinct !DISubprogram(name: "putc_unlocked", scope: !274, file: !274, line: 101, type: !378, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !387)
!387 = !{!388, !389}
!388 = !DILocalVariable(name: "__c", arg: 1, scope: !386, file: !274, line: 101, type: !11)
!389 = !DILocalVariable(name: "__stream", arg: 2, scope: !386, file: !274, line: 101, type: !301)
!390 = !DILocation(line: 0, scope: !386)
!391 = !DILocation(line: 103, column: 10, scope: !386)
!392 = !DILocation(line: 103, column: 3, scope: !386)
!393 = distinct !DISubprogram(name: "putchar_unlocked", scope: !274, file: !274, line: 108, type: !369, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !394)
!394 = !{!395}
!395 = !DILocalVariable(name: "__c", arg: 1, scope: !393, file: !274, line: 108, type: !11)
!396 = !DILocation(line: 0, scope: !393)
!397 = !DILocation(line: 110, column: 10, scope: !393)
!398 = !DILocation(line: 110, column: 3, scope: !393)
!399 = distinct !DISubprogram(name: "getline", scope: !274, file: !274, line: 118, type: !400, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !404)
!400 = !DISubroutineType(types: !401)
!401 = !{!402, !12, !403, !301}
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !33, line: 193, baseType: !49)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!404 = !{!405, !406, !407}
!405 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !399, file: !274, line: 118, type: !12)
!406 = !DILocalVariable(name: "__n", arg: 2, scope: !399, file: !274, line: 118, type: !403)
!407 = !DILocalVariable(name: "__stream", arg: 3, scope: !399, file: !274, line: 118, type: !301)
!408 = !DILocation(line: 0, scope: !399)
!409 = !DILocation(line: 120, column: 10, scope: !399)
!410 = !DILocation(line: 120, column: 3, scope: !399)
!411 = distinct !DISubprogram(name: "feof_unlocked", scope: !274, file: !274, line: 128, type: !299, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !412)
!412 = !{!413}
!413 = !DILocalVariable(name: "__stream", arg: 1, scope: !411, file: !274, line: 128, type: !301)
!414 = !DILocation(line: 0, scope: !411)
!415 = !DILocation(line: 130, column: 10, scope: !411)
!416 = !DILocation(line: 130, column: 3, scope: !411)
!417 = distinct !DISubprogram(name: "ferror_unlocked", scope: !274, file: !274, line: 135, type: !299, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !8, retainedNodes: !418)
!418 = !{!419}
!419 = !DILocalVariable(name: "__stream", arg: 1, scope: !417, file: !274, line: 135, type: !301)
!420 = !DILocation(line: 0, scope: !417)
!421 = !DILocation(line: 137, column: 10, scope: !417)
!422 = !DILocation(line: 137, column: 3, scope: !417)
!423 = !DILocation(line: 76, column: 13, scope: !2)
!424 = !DILocation(line: 0, scope: !2)
!425 = !DILocation(line: 78, column: 3, scope: !2)
!426 = !DILocation(line: 80, column: 8, scope: !75)
!427 = !DILocation(line: 80, column: 10, scope: !75)
!428 = !DILocation(line: 80, column: 23, scope: !75)
!429 = !DILocation(line: 80, column: 15, scope: !75)
!430 = !DILocation(line: 80, column: 21, scope: !75)
!431 = !DILocation(line: 80, column: 7, scope: !2)
!432 = !DILocation(line: 82, column: 19, scope: !73)
!433 = !DILocation(line: 82, column: 35, scope: !73)
!434 = !DILocation(line: 83, column: 7, scope: !73)
!435 = !DILocation(line: 83, column: 10, scope: !73)
!436 = !DILocation(line: 83, column: 13, scope: !73)
!437 = !DILocation(line: 84, column: 7, scope: !73)
!438 = !DILocation(line: 84, column: 10, scope: !73)
!439 = !DILocation(line: 84, column: 29, scope: !73)
!440 = !DILocation(line: 85, column: 7, scope: !73)
!441 = !DILocation(line: 85, column: 10, scope: !73)
!442 = !DILocation(line: 85, column: 31, scope: !73)
!443 = !DILocation(line: 86, column: 7, scope: !73)
!444 = !DILocation(line: 86, column: 18, scope: !73)
!445 = !DILocation(line: 86, column: 36, scope: !73)
!446 = !DILocation(line: 86, column: 25, scope: !73)
!447 = !DILocation(line: 87, column: 7, scope: !73)
!448 = !DILocation(line: 87, column: 18, scope: !73)
!449 = !DILocation(line: 87, column: 36, scope: !73)
!450 = !DILocation(line: 87, column: 25, scope: !73)
!451 = !DILocation(line: 82, column: 11, scope: !74)
!452 = !DILocation(line: 90, column: 7, scope: !72)
!453 = !DILocation(line: 0, scope: !72)
!454 = !DILocation(line: 90, column: 39, scope: !71)
!455 = !DILocation(line: 90, column: 27, scope: !71)
!456 = !DILocation(line: 90, column: 26, scope: !71)
!457 = !DILocation(line: 90, column: 2, scope: !72)
!458 = !DILocation(line: 92, column: 14, scope: !70)
!459 = !DILocation(line: 0, scope: !70)
!460 = !DILocation(line: 93, column: 6, scope: !70)
!461 = !DILocation(line: 95, column: 12, scope: !462)
!462 = distinct !DILexicalBlock(scope: !70, file: !3, line: 95, column: 10)
!463 = !DILocation(line: 95, column: 10, scope: !70)
!464 = !DILocation(line: 98, column: 25, scope: !465)
!465 = distinct !DILexicalBlock(scope: !462, file: !3, line: 97, column: 8)
!466 = !DILocation(line: 98, column: 3, scope: !465)
!467 = !DILocation(line: 98, column: 9, scope: !465)
!468 = !DILocation(line: 100, column: 3, scope: !465)
!469 = !DILocation(line: 0, scope: !71)
!470 = !DILocation(line: 90, column: 65, scope: !71)
!471 = !DILocation(line: 90, column: 2, scope: !71)
!472 = distinct !{!472, !457, !473}
!473 = !DILocation(line: 102, column: 4, scope: !72)
!474 = !DILocation(line: 106, column: 11, scope: !74)
!475 = !DILocation(line: 0, scope: !73)
!476 = !DILocation(line: 107, column: 5, scope: !74)
!477 = !DILocation(line: 109, column: 1, scope: !2)
!478 = !DILocation(line: 108, column: 3, scope: !2)
