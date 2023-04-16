; ModuleID = 'unlink-if-ordinary.bc'
source_filename = "unlink-if-ordinary.c"
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !61, metadata !DIExpression()), !dbg !63
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !62, metadata !DIExpression()), !dbg !63
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !64
  ret i32 %call, !dbg !65
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !66 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !68, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !69, metadata !DIExpression()), !dbg !70
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !71
  ret i32 %call, !dbg !72
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !73 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !77, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !78, metadata !DIExpression()), !dbg !79
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !80
  ret i32 %call, !dbg !81
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !82 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !87, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !89, metadata !DIExpression()), !dbg !90
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !91
  ret i32 %call, !dbg !92
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !93 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !97, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !98, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !99, metadata !DIExpression()), !dbg !100
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !99, metadata !DIExpression(DW_OP_deref)), !dbg !100
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !101
  ret i32 %call, !dbg !102
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !103 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !107, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i8* %__path, metadata !108, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !109, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !110, metadata !DIExpression()), !dbg !111
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !110, metadata !DIExpression(DW_OP_deref)), !dbg !111
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !112
  ret i32 %call, !dbg !113
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !114 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !139, metadata !DIExpression()), !dbg !140
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !141
  ret i32 %call, !dbg !142
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !145, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !146, metadata !DIExpression()), !dbg !147
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !148
  ret i32 %call, !dbg !149
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !150 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !154, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !155, metadata !DIExpression()), !dbg !156
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !157
  ret i32 %call, !dbg !158
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !159 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !163, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !164, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !165, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !166, metadata !DIExpression()), !dbg !167
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !168
  ret i32 %call, !dbg !169
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !170 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !184, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !187
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !188
  ret i32 %call, !dbg !189
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !190 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !193
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !194
  ret i32 %call, !dbg !195
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !196 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !256, metadata !DIExpression()), !dbg !257
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !258
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !258
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !258
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !258
  %cmp = icmp uge i8* %0, %1, !dbg !258
  %conv1 = zext i1 %cmp to i64, !dbg !258
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !258
  %tobool = icmp eq i64 %expval, 0, !dbg !258
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !258

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !258
  br label %cond.end, !dbg !258

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !258
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !258
  %2 = load i8, i8* %0, align 1, !dbg !258
  %conv3 = zext i8 %2 to i32, !dbg !258
  br label %cond.end, !dbg !258

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !258
  ret i32 %cond, !dbg !259
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !260 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !262, metadata !DIExpression()), !dbg !263
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !264
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !264
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !264
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !264
  %cmp = icmp uge i8* %0, %1, !dbg !264
  %conv1 = zext i1 %cmp to i64, !dbg !264
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !264
  %tobool = icmp eq i64 %expval, 0, !dbg !264
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !264

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !264
  br label %cond.end, !dbg !264

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !264
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !264
  %2 = load i8, i8* %0, align 1, !dbg !264
  %conv3 = zext i8 %2 to i32, !dbg !264
  br label %cond.end, !dbg !264

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !264
  ret i32 %cond, !dbg !265
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !266 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !267
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !267
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !267
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !267
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !267
  %cmp = icmp uge i8* %1, %2, !dbg !267
  %conv1 = zext i1 %cmp to i64, !dbg !267
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !267
  %tobool = icmp eq i64 %expval, 0, !dbg !267
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !267

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !267
  br label %cond.end, !dbg !267

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !267
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !267
  %3 = load i8, i8* %1, align 1, !dbg !267
  %conv3 = zext i8 %3 to i32, !dbg !267
  br label %cond.end, !dbg !267

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !267
  ret i32 %cond, !dbg !268
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !273, metadata !DIExpression()), !dbg !274
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !275
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !276
  ret i32 %call, !dbg !277
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !278 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !282, metadata !DIExpression()), !dbg !284
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !283, metadata !DIExpression()), !dbg !284
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !285
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !285
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !285
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !285
  %cmp = icmp uge i8* %0, %1, !dbg !285
  %conv1 = zext i1 %cmp to i64, !dbg !285
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !285
  %tobool = icmp eq i64 %expval, 0, !dbg !285
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !285

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !285
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !285
  br label %cond.end, !dbg !285

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !285
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !285
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !285
  store i8 %conv2, i8* %0, align 1, !dbg !285
  %conv6 = and i32 %__c, 255, !dbg !285
  br label %cond.end, !dbg !285

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !285
  ret i32 %cond, !dbg !286
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !287 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !289, metadata !DIExpression()), !dbg !291
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !290, metadata !DIExpression()), !dbg !291
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !292
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !292
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !292
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !292
  %cmp = icmp uge i8* %0, %1, !dbg !292
  %conv1 = zext i1 %cmp to i64, !dbg !292
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !292
  %tobool = icmp eq i64 %expval, 0, !dbg !292
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !292

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !292
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !292
  br label %cond.end, !dbg !292

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !292
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !292
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !292
  store i8 %conv2, i8* %0, align 1, !dbg !292
  %conv6 = and i32 %__c, 255, !dbg !292
  br label %cond.end, !dbg !292

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !292
  ret i32 %cond, !dbg !293
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !294 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !296, metadata !DIExpression()), !dbg !297
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !298
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !298
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !298
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !298
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !298
  %cmp = icmp uge i8* %1, %2, !dbg !298
  %conv1 = zext i1 %cmp to i64, !dbg !298
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !298
  %tobool = icmp eq i64 %expval, 0, !dbg !298
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !298

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !298
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !298
  br label %cond.end, !dbg !298

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !298
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !298
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !298
  store i8 %conv4, i8* %1, align 1, !dbg !298
  %conv6 = and i32 %__c, 255, !dbg !298
  br label %cond.end, !dbg !298

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !298
  ret i32 %cond, !dbg !299
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !300 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !307, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata i64* %__n, metadata !308, metadata !DIExpression()), !dbg !310
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !309, metadata !DIExpression()), !dbg !310
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !311
  ret i64 %call, !dbg !312
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !313 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !315, metadata !DIExpression()), !dbg !316
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !317
  %0 = load i32, i32* %_flags, align 8, !dbg !317
  %and = lshr i32 %0, 4, !dbg !317
  %and.lobit = and i32 %and, 1, !dbg !317
  ret i32 %and.lobit, !dbg !318
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !319 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !321, metadata !DIExpression()), !dbg !322
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !323
  %0 = load i32, i32* %_flags, align 8, !dbg !323
  %and = lshr i32 %0, 5, !dbg !323
  %and.lobit = and i32 %and, 1, !dbg !323
  ret i32 %and.lobit, !dbg !324
}

; Function Attrs: nounwind uwtable
define dso_local i32 @unlink_if_ordinary(i8* %name) local_unnamed_addr #3 !dbg !325 {
entry:
  %st = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i8* %name, metadata !329, metadata !DIExpression()), !dbg !331
  %0 = bitcast %struct.stat* %st to i8*, !dbg !332
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #7, !dbg !332
  call void @llvm.dbg.value(metadata %struct.stat* %st, metadata !330, metadata !DIExpression(DW_OP_deref)), !dbg !331
  %call = call i32 @lstat(i8* %name, %struct.stat* nonnull %st) #8, !dbg !333
  %cmp = icmp eq i32 %call, 0, !dbg !335
  br i1 %cmp, label %land.lhs.true, label %cleanup, !dbg !336

land.lhs.true:                                    ; preds = %entry
  %st_mode = getelementptr inbounds %struct.stat, %struct.stat* %st, i64 0, i32 3, !dbg !337
  %1 = load i32, i32* %st_mode, align 8, !dbg !337
  %and = and i32 %1, 61440, !dbg !337
  %cmp1 = icmp eq i32 %and, 32768, !dbg !337
  br i1 %cmp1, label %if.then, label %lor.lhs.false, !dbg !338

lor.lhs.false:                                    ; preds = %land.lhs.true
  %cmp4 = icmp eq i32 %and, 40960, !dbg !339
  br i1 %cmp4, label %if.then, label %cleanup, !dbg !340

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %call5 = call i32 @unlink(i8* %name) #6, !dbg !341
  br label %cleanup, !dbg !342

cleanup:                                          ; preds = %entry, %lor.lhs.false, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ 1, %lor.lhs.false ], [ 1, %entry ], !dbg !331
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #7, !dbg !343
  ret i32 %retval.0, !dbg !343
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i32 @unlink(i8*) local_unnamed_addr #1

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, nameTableKind: None)
!1 = !DIFile(filename: "unlink-if-ordinary.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "stat", scope: !11, file: !11, line: 453, type: !12, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !60)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !18}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !20, line: 46, size: 1152, elements: !21)
!20 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!21 = !{!22, !26, !28, !30, !33, !35, !37, !38, !39, !42, !44, !46, !54, !55, !56}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !19, file: !20, line: 48, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !24, line: 145, baseType: !25)
!24 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !19, file: !20, line: 53, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !24, line: 148, baseType: !25)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !19, file: !20, line: 61, baseType: !29, size: 64, offset: 128)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !24, line: 151, baseType: !25)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !19, file: !20, line: 62, baseType: !31, size: 32, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !24, line: 150, baseType: !32)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !19, file: !20, line: 64, baseType: !34, size: 32, offset: 224)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !24, line: 146, baseType: !32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !19, file: !20, line: 65, baseType: !36, size: 32, offset: 256)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !24, line: 147, baseType: !32)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !19, file: !20, line: 67, baseType: !14, size: 32, offset: 288)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !19, file: !20, line: 69, baseType: !23, size: 64, offset: 320)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !19, file: !20, line: 74, baseType: !40, size: 64, offset: 384)
!40 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !24, line: 152, baseType: !41)
!41 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !19, file: !20, line: 78, baseType: !43, size: 64, offset: 448)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !24, line: 174, baseType: !41)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !19, file: !20, line: 80, baseType: !45, size: 64, offset: 512)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !24, line: 179, baseType: !41)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !19, file: !20, line: 91, baseType: !47, size: 128, offset: 576)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !48, line: 10, size: 128, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!49 = !{!50, !52}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !47, file: !48, line: 12, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !24, line: 160, baseType: !41)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !47, file: !48, line: 16, baseType: !53, size: 64, offset: 64)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !24, line: 196, baseType: !41)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !19, file: !20, line: 92, baseType: !47, size: 128, offset: 704)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !19, file: !20, line: 93, baseType: !47, size: 128, offset: 832)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !19, file: !20, line: 106, baseType: !57, size: 192, offset: 960)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 3)
!60 = !{!61, !62}
!61 = !DILocalVariable(name: "__path", arg: 1, scope: !10, file: !11, line: 453, type: !15)
!62 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !10, file: !11, line: 453, type: !18)
!63 = !DILocation(line: 0, scope: !10)
!64 = !DILocation(line: 455, column: 10, scope: !10)
!65 = !DILocation(line: 455, column: 3, scope: !10)
!66 = distinct !DISubprogram(name: "lstat", scope: !11, file: !11, line: 460, type: !12, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!67 = !{!68, !69}
!68 = !DILocalVariable(name: "__path", arg: 1, scope: !66, file: !11, line: 460, type: !15)
!69 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !66, file: !11, line: 460, type: !18)
!70 = !DILocation(line: 0, scope: !66)
!71 = !DILocation(line: 462, column: 10, scope: !66)
!72 = !DILocation(line: 462, column: 3, scope: !66)
!73 = distinct !DISubprogram(name: "fstat", scope: !11, file: !11, line: 467, type: !74, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!74 = !DISubroutineType(types: !75)
!75 = !{!14, !14, !18}
!76 = !{!77, !78}
!77 = !DILocalVariable(name: "__fd", arg: 1, scope: !73, file: !11, line: 467, type: !14)
!78 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !73, file: !11, line: 467, type: !18)
!79 = !DILocation(line: 0, scope: !73)
!80 = !DILocation(line: 469, column: 10, scope: !73)
!81 = !DILocation(line: 469, column: 3, scope: !73)
!82 = distinct !DISubprogram(name: "fstatat", scope: !11, file: !11, line: 474, type: !83, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!83 = !DISubroutineType(types: !84)
!84 = !{!14, !14, !15, !18, !14}
!85 = !{!86, !87, !88, !89}
!86 = !DILocalVariable(name: "__fd", arg: 1, scope: !82, file: !11, line: 474, type: !14)
!87 = !DILocalVariable(name: "__filename", arg: 2, scope: !82, file: !11, line: 474, type: !15)
!88 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !82, file: !11, line: 474, type: !18)
!89 = !DILocalVariable(name: "__flag", arg: 4, scope: !82, file: !11, line: 474, type: !14)
!90 = !DILocation(line: 0, scope: !82)
!91 = !DILocation(line: 477, column: 10, scope: !82)
!92 = !DILocation(line: 477, column: 3, scope: !82)
!93 = distinct !DISubprogram(name: "mknod", scope: !11, file: !11, line: 483, type: !94, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{!14, !15, !31, !23}
!96 = !{!97, !98, !99}
!97 = !DILocalVariable(name: "__path", arg: 1, scope: !93, file: !11, line: 483, type: !15)
!98 = !DILocalVariable(name: "__mode", arg: 2, scope: !93, file: !11, line: 483, type: !31)
!99 = !DILocalVariable(name: "__dev", arg: 3, scope: !93, file: !11, line: 483, type: !23)
!100 = !DILocation(line: 0, scope: !93)
!101 = !DILocation(line: 485, column: 10, scope: !93)
!102 = !DILocation(line: 485, column: 3, scope: !93)
!103 = distinct !DISubprogram(name: "mknodat", scope: !11, file: !11, line: 491, type: !104, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!104 = !DISubroutineType(types: !105)
!105 = !{!14, !14, !15, !31, !23}
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: "__fd", arg: 1, scope: !103, file: !11, line: 491, type: !14)
!108 = !DILocalVariable(name: "__path", arg: 2, scope: !103, file: !11, line: 491, type: !15)
!109 = !DILocalVariable(name: "__mode", arg: 3, scope: !103, file: !11, line: 491, type: !31)
!110 = !DILocalVariable(name: "__dev", arg: 4, scope: !103, file: !11, line: 491, type: !23)
!111 = !DILocation(line: 0, scope: !103)
!112 = !DILocation(line: 494, column: 10, scope: !103)
!113 = !DILocation(line: 494, column: 3, scope: !103)
!114 = distinct !DISubprogram(name: "stat64", scope: !11, file: !11, line: 502, type: !115, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!115 = !DISubroutineType(types: !116)
!116 = !{!14, !15, !117}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !20, line: 119, size: 1152, elements: !119)
!119 = !{!120, !121, !123, !124, !125, !126, !127, !128, !129, !130, !131, !133, !134, !135, !136}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !118, file: !20, line: 121, baseType: !23, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !118, file: !20, line: 123, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !24, line: 149, baseType: !25)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !118, file: !20, line: 124, baseType: !29, size: 64, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !118, file: !20, line: 125, baseType: !31, size: 32, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !118, file: !20, line: 132, baseType: !34, size: 32, offset: 224)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !118, file: !20, line: 133, baseType: !36, size: 32, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !118, file: !20, line: 135, baseType: !14, size: 32, offset: 288)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !118, file: !20, line: 136, baseType: !23, size: 64, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !118, file: !20, line: 137, baseType: !40, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !118, file: !20, line: 143, baseType: !43, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !118, file: !20, line: 144, baseType: !132, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !24, line: 180, baseType: !41)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !118, file: !20, line: 152, baseType: !47, size: 128, offset: 576)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !118, file: !20, line: 153, baseType: !47, size: 128, offset: 704)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !118, file: !20, line: 154, baseType: !47, size: 128, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !118, file: !20, line: 164, baseType: !57, size: 192, offset: 960)
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "__path", arg: 1, scope: !114, file: !11, line: 502, type: !15)
!139 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !114, file: !11, line: 502, type: !117)
!140 = !DILocation(line: 0, scope: !114)
!141 = !DILocation(line: 504, column: 10, scope: !114)
!142 = !DILocation(line: 504, column: 3, scope: !114)
!143 = distinct !DISubprogram(name: "lstat64", scope: !11, file: !11, line: 509, type: !115, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146}
!145 = !DILocalVariable(name: "__path", arg: 1, scope: !143, file: !11, line: 509, type: !15)
!146 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !143, file: !11, line: 509, type: !117)
!147 = !DILocation(line: 0, scope: !143)
!148 = !DILocation(line: 511, column: 10, scope: !143)
!149 = !DILocation(line: 511, column: 3, scope: !143)
!150 = distinct !DISubprogram(name: "fstat64", scope: !11, file: !11, line: 516, type: !151, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!151 = !DISubroutineType(types: !152)
!152 = !{!14, !14, !117}
!153 = !{!154, !155}
!154 = !DILocalVariable(name: "__fd", arg: 1, scope: !150, file: !11, line: 516, type: !14)
!155 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !150, file: !11, line: 516, type: !117)
!156 = !DILocation(line: 0, scope: !150)
!157 = !DILocation(line: 518, column: 10, scope: !150)
!158 = !DILocation(line: 518, column: 3, scope: !150)
!159 = distinct !DISubprogram(name: "fstatat64", scope: !11, file: !11, line: 523, type: !160, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!160 = !DISubroutineType(types: !161)
!161 = !{!14, !14, !15, !117, !14}
!162 = !{!163, !164, !165, !166}
!163 = !DILocalVariable(name: "__fd", arg: 1, scope: !159, file: !11, line: 523, type: !14)
!164 = !DILocalVariable(name: "__filename", arg: 2, scope: !159, file: !11, line: 523, type: !15)
!165 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !159, file: !11, line: 523, type: !117)
!166 = !DILocalVariable(name: "__flag", arg: 4, scope: !159, file: !11, line: 523, type: !14)
!167 = !DILocation(line: 0, scope: !159)
!168 = !DILocation(line: 526, column: 10, scope: !159)
!169 = !DILocation(line: 526, column: 3, scope: !159)
!170 = distinct !DISubprogram(name: "vprintf", scope: !171, file: !171, line: 39, type: !172, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !183)
!171 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!172 = !DISubroutineType(types: !173)
!173 = !{!14, !174, !175}
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !15)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, line: 527, size: 192, elements: !177)
!177 = !{!178, !179, !180, !182}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !176, file: !1, line: 527, baseType: !32, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !176, file: !1, line: 527, baseType: !32, size: 32, offset: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !176, file: !1, line: 527, baseType: !181, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !176, file: !1, line: 527, baseType: !181, size: 64, offset: 128)
!183 = !{!184, !185}
!184 = !DILocalVariable(name: "__fmt", arg: 1, scope: !170, file: !171, line: 39, type: !174)
!185 = !DILocalVariable(name: "__arg", arg: 2, scope: !170, file: !171, line: 39, type: !175)
!186 = !DILocation(line: 0, scope: !170)
!187 = !DILocation(line: 41, column: 20, scope: !170)
!188 = !DILocation(line: 41, column: 10, scope: !170)
!189 = !DILocation(line: 41, column: 3, scope: !170)
!190 = distinct !DISubprogram(name: "getchar", scope: !171, file: !171, line: 47, type: !191, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!191 = !DISubroutineType(types: !192)
!192 = !{!14}
!193 = !DILocation(line: 49, column: 16, scope: !190)
!194 = !DILocation(line: 49, column: 10, scope: !190)
!195 = !DILocation(line: 49, column: 3, scope: !190)
!196 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !171, file: !171, line: 56, type: !197, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !255)
!197 = !DISubroutineType(types: !198)
!198 = !{!14, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !201, line: 7, baseType: !202)
!201 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !203, line: 49, size: 1728, elements: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!204 = !{!205, !206, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !221, !223, !224, !225, !226, !228, !230, !234, !237, !239, !242, !245, !246, !247, !250, !251}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !202, file: !203, line: 51, baseType: !14, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !202, file: !203, line: 54, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !202, file: !203, line: 55, baseType: !207, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !202, file: !203, line: 56, baseType: !207, size: 64, offset: 192)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !202, file: !203, line: 57, baseType: !207, size: 64, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !202, file: !203, line: 58, baseType: !207, size: 64, offset: 320)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !202, file: !203, line: 59, baseType: !207, size: 64, offset: 384)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !202, file: !203, line: 60, baseType: !207, size: 64, offset: 448)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !202, file: !203, line: 61, baseType: !207, size: 64, offset: 512)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !202, file: !203, line: 64, baseType: !207, size: 64, offset: 576)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !202, file: !203, line: 65, baseType: !207, size: 64, offset: 640)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !202, file: !203, line: 66, baseType: !207, size: 64, offset: 704)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !202, file: !203, line: 68, baseType: !219, size: 64, offset: 768)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !203, line: 36, flags: DIFlagFwdDecl)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !202, file: !203, line: 70, baseType: !222, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !202, file: !203, line: 72, baseType: !14, size: 32, offset: 896)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !202, file: !203, line: 73, baseType: !14, size: 32, offset: 928)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !202, file: !203, line: 74, baseType: !40, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !202, file: !203, line: 77, baseType: !227, size: 16, offset: 1024)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !202, file: !203, line: 78, baseType: !229, size: 8, offset: 1040)
!229 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !202, file: !203, line: 79, baseType: !231, size: 8, offset: 1048)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 8, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 1)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !202, file: !203, line: 81, baseType: !235, size: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !203, line: 43, baseType: null)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !202, file: !203, line: 89, baseType: !238, size: 64, offset: 1152)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !24, line: 153, baseType: !41)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !202, file: !203, line: 91, baseType: !240, size: 64, offset: 1216)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !203, line: 37, flags: DIFlagFwdDecl)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !202, file: !203, line: 92, baseType: !243, size: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !203, line: 38, flags: DIFlagFwdDecl)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !202, file: !203, line: 93, baseType: !222, size: 64, offset: 1344)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !202, file: !203, line: 94, baseType: !181, size: 64, offset: 1408)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !202, file: !203, line: 95, baseType: !248, size: 64, offset: 1472)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !249, line: 46, baseType: !25)
!249 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !202, file: !203, line: 96, baseType: !14, size: 32, offset: 1536)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !202, file: !203, line: 98, baseType: !252, size: 160, offset: 1568)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 20)
!255 = !{!256}
!256 = !DILocalVariable(name: "__fp", arg: 1, scope: !196, file: !171, line: 56, type: !199)
!257 = !DILocation(line: 0, scope: !196)
!258 = !DILocation(line: 58, column: 10, scope: !196)
!259 = !DILocation(line: 58, column: 3, scope: !196)
!260 = distinct !DISubprogram(name: "getc_unlocked", scope: !171, file: !171, line: 66, type: !197, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!261 = !{!262}
!262 = !DILocalVariable(name: "__fp", arg: 1, scope: !260, file: !171, line: 66, type: !199)
!263 = !DILocation(line: 0, scope: !260)
!264 = !DILocation(line: 68, column: 10, scope: !260)
!265 = !DILocation(line: 68, column: 3, scope: !260)
!266 = distinct !DISubprogram(name: "getchar_unlocked", scope: !171, file: !171, line: 73, type: !191, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!267 = !DILocation(line: 75, column: 10, scope: !266)
!268 = !DILocation(line: 75, column: 3, scope: !266)
!269 = distinct !DISubprogram(name: "putchar", scope: !171, file: !171, line: 82, type: !270, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !272)
!270 = !DISubroutineType(types: !271)
!271 = !{!14, !14}
!272 = !{!273}
!273 = !DILocalVariable(name: "__c", arg: 1, scope: !269, file: !171, line: 82, type: !14)
!274 = !DILocation(line: 0, scope: !269)
!275 = !DILocation(line: 84, column: 21, scope: !269)
!276 = !DILocation(line: 84, column: 10, scope: !269)
!277 = !DILocation(line: 84, column: 3, scope: !269)
!278 = distinct !DISubprogram(name: "fputc_unlocked", scope: !171, file: !171, line: 91, type: !279, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !281)
!279 = !DISubroutineType(types: !280)
!280 = !{!14, !14, !199}
!281 = !{!282, !283}
!282 = !DILocalVariable(name: "__c", arg: 1, scope: !278, file: !171, line: 91, type: !14)
!283 = !DILocalVariable(name: "__stream", arg: 2, scope: !278, file: !171, line: 91, type: !199)
!284 = !DILocation(line: 0, scope: !278)
!285 = !DILocation(line: 93, column: 10, scope: !278)
!286 = !DILocation(line: 93, column: 3, scope: !278)
!287 = distinct !DISubprogram(name: "putc_unlocked", scope: !171, file: !171, line: 101, type: !279, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !288)
!288 = !{!289, !290}
!289 = !DILocalVariable(name: "__c", arg: 1, scope: !287, file: !171, line: 101, type: !14)
!290 = !DILocalVariable(name: "__stream", arg: 2, scope: !287, file: !171, line: 101, type: !199)
!291 = !DILocation(line: 0, scope: !287)
!292 = !DILocation(line: 103, column: 10, scope: !287)
!293 = !DILocation(line: 103, column: 3, scope: !287)
!294 = distinct !DISubprogram(name: "putchar_unlocked", scope: !171, file: !171, line: 108, type: !270, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !295)
!295 = !{!296}
!296 = !DILocalVariable(name: "__c", arg: 1, scope: !294, file: !171, line: 108, type: !14)
!297 = !DILocation(line: 0, scope: !294)
!298 = !DILocation(line: 110, column: 10, scope: !294)
!299 = !DILocation(line: 110, column: 3, scope: !294)
!300 = distinct !DISubprogram(name: "getline", scope: !171, file: !171, line: 118, type: !301, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !306)
!301 = !DISubroutineType(types: !302)
!302 = !{!303, !304, !305, !199}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !24, line: 193, baseType: !41)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!306 = !{!307, !308, !309}
!307 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !300, file: !171, line: 118, type: !304)
!308 = !DILocalVariable(name: "__n", arg: 2, scope: !300, file: !171, line: 118, type: !305)
!309 = !DILocalVariable(name: "__stream", arg: 3, scope: !300, file: !171, line: 118, type: !199)
!310 = !DILocation(line: 0, scope: !300)
!311 = !DILocation(line: 120, column: 10, scope: !300)
!312 = !DILocation(line: 120, column: 3, scope: !300)
!313 = distinct !DISubprogram(name: "feof_unlocked", scope: !171, file: !171, line: 128, type: !197, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !314)
!314 = !{!315}
!315 = !DILocalVariable(name: "__stream", arg: 1, scope: !313, file: !171, line: 128, type: !199)
!316 = !DILocation(line: 0, scope: !313)
!317 = !DILocation(line: 130, column: 10, scope: !313)
!318 = !DILocation(line: 130, column: 3, scope: !313)
!319 = distinct !DISubprogram(name: "ferror_unlocked", scope: !171, file: !171, line: 135, type: !197, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !320)
!320 = !{!321}
!321 = !DILocalVariable(name: "__stream", arg: 1, scope: !319, file: !171, line: 135, type: !199)
!322 = !DILocation(line: 0, scope: !319)
!323 = !DILocation(line: 137, column: 10, scope: !319)
!324 = !DILocation(line: 137, column: 3, scope: !319)
!325 = distinct !DISubprogram(name: "unlink_if_ordinary", scope: !1, file: !1, line: 67, type: !326, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!14, !15}
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "name", arg: 1, scope: !325, file: !1, line: 67, type: !15)
!330 = !DILocalVariable(name: "st", scope: !325, file: !1, line: 69, type: !19)
!331 = !DILocation(line: 0, scope: !325)
!332 = !DILocation(line: 69, column: 3, scope: !325)
!333 = !DILocation(line: 71, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !325, file: !1, line: 71, column: 7)
!335 = !DILocation(line: 71, column: 25, scope: !334)
!336 = !DILocation(line: 72, column: 7, scope: !334)
!337 = !DILocation(line: 72, column: 11, scope: !334)
!338 = !DILocation(line: 72, column: 32, scope: !334)
!339 = !DILocation(line: 72, column: 35, scope: !334)
!340 = !DILocation(line: 71, column: 7, scope: !325)
!341 = !DILocation(line: 73, column: 12, scope: !334)
!342 = !DILocation(line: 73, column: 5, scope: !334)
!343 = !DILocation(line: 76, column: 1, scope: !325)
