; ModuleID = 'fdmatch.bc'
source_filename = "fdmatch.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !10 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !30, metadata !DIExpression()), !dbg !31
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !32
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !33
  ret i32 %call, !dbg !34
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !35 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !38
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !39
  ret i32 %call, !dbg !40
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !41 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !105, metadata !DIExpression()), !dbg !106
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !107
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !107
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !107
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !107
  %cmp = icmp uge i8* %0, %1, !dbg !107
  %conv1 = zext i1 %cmp to i64, !dbg !107
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !107
  %tobool = icmp eq i64 %expval, 0, !dbg !107
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !107

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !107
  br label %cond.end, !dbg !107

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !107
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !107
  %2 = load i8, i8* %0, align 1, !dbg !107
  %conv3 = zext i8 %2 to i32, !dbg !107
  br label %cond.end, !dbg !107

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !107
  ret i32 %cond, !dbg !108
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !109 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !111, metadata !DIExpression()), !dbg !112
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !113
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !113
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !113
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !113
  %cmp = icmp uge i8* %0, %1, !dbg !113
  %conv1 = zext i1 %cmp to i64, !dbg !113
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !113
  %tobool = icmp eq i64 %expval, 0, !dbg !113
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !113

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !113
  br label %cond.end, !dbg !113

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !113
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !113
  %2 = load i8, i8* %0, align 1, !dbg !113
  %conv3 = zext i8 %2 to i32, !dbg !113
  br label %cond.end, !dbg !113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !113
  ret i32 %cond, !dbg !114
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !115 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !116
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !116
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !116
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !116
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !116
  %cmp = icmp uge i8* %1, %2, !dbg !116
  %conv1 = zext i1 %cmp to i64, !dbg !116
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !116
  %tobool = icmp eq i64 %expval, 0, !dbg !116
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !116

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !116
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !116
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !116
  %3 = load i8, i8* %1, align 1, !dbg !116
  %conv3 = zext i8 %3 to i32, !dbg !116
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !116
  ret i32 %cond, !dbg !117
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !118 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !124
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !125
  ret i32 %call, !dbg !126
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !127 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !131, metadata !DIExpression()), !dbg !133
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !132, metadata !DIExpression()), !dbg !133
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !134
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !134
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !134
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !134
  %cmp = icmp uge i8* %0, %1, !dbg !134
  %conv1 = zext i1 %cmp to i64, !dbg !134
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !134
  %tobool = icmp eq i64 %expval, 0, !dbg !134
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !134

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !134
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !134
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !134
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !134
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !134
  store i8 %conv2, i8* %0, align 1, !dbg !134
  %conv6 = and i32 %__c, 255, !dbg !134
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !134
  ret i32 %cond, !dbg !135
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !136 {
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
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !141
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

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !143 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !147
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !147
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !147
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !147
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !147
  %cmp = icmp uge i8* %1, %2, !dbg !147
  %conv1 = zext i1 %cmp to i64, !dbg !147
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !147
  %tobool = icmp eq i64 %expval, 0, !dbg !147
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !147

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !147
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !147
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !147
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !147
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !147
  store i8 %conv4, i8* %1, align 1, !dbg !147
  %conv6 = and i32 %__c, 255, !dbg !147
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !147
  ret i32 %cond, !dbg !148
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !149 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !156, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata i64* %__n, metadata !157, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !158, metadata !DIExpression()), !dbg !159
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !160
  ret i64 %call, !dbg !161
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !162 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !164, metadata !DIExpression()), !dbg !165
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !166
  %0 = load i32, i32* %_flags, align 8, !dbg !166
  %and = lshr i32 %0, 4, !dbg !166
  %and.lobit = and i32 %and, 1, !dbg !166
  ret i32 %and.lobit, !dbg !167
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !170, metadata !DIExpression()), !dbg !171
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !172
  %0 = load i32, i32* %_flags, align 8, !dbg !172
  %and = lshr i32 %0, 5, !dbg !172
  %and.lobit = and i32 %and, 1, !dbg !172
  ret i32 %and.lobit, !dbg !173
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !174 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !216, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !217, metadata !DIExpression()), !dbg !218
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !219
  ret i32 %call, !dbg !220
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !221 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !223, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !224, metadata !DIExpression()), !dbg !225
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !226
  ret i32 %call, !dbg !227
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !232, metadata !DIExpression()), !dbg !234
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !233, metadata !DIExpression()), !dbg !234
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !235
  ret i32 %call, !dbg !236
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !237 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !241, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !242, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !243, metadata !DIExpression()), !dbg !245
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !244, metadata !DIExpression()), !dbg !245
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !246
  ret i32 %call, !dbg !247
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !248 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !252, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !253, metadata !DIExpression()), !dbg !255
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !254, metadata !DIExpression()), !dbg !255
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !254, metadata !DIExpression(DW_OP_deref)), !dbg !255
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !256
  ret i32 %call, !dbg !257
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !258 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %__path, metadata !263, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !264, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !265, metadata !DIExpression()), !dbg !266
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !265, metadata !DIExpression(DW_OP_deref)), !dbg !266
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !267
  ret i32 %call, !dbg !268
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !269 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !293, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !294, metadata !DIExpression()), !dbg !295
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !296
  ret i32 %call, !dbg !297
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !298 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !300, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !301, metadata !DIExpression()), !dbg !302
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !303
  ret i32 %call, !dbg !304
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !309, metadata !DIExpression()), !dbg !311
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !310, metadata !DIExpression()), !dbg !311
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !312
  ret i32 %call, !dbg !313
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !314 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !318, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !319, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !320, metadata !DIExpression()), !dbg !322
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !321, metadata !DIExpression()), !dbg !322
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !323
  ret i32 %call, !dbg !324
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @fdmatch(i32 %fd1, i32 %fd2) local_unnamed_addr #3 !dbg !325 {
entry:
  %sbuf1 = alloca %struct.stat, align 8
  %sbuf2 = alloca %struct.stat, align 8
  call void @llvm.dbg.value(metadata i32 %fd1, metadata !329, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.value(metadata i32 %fd2, metadata !330, metadata !DIExpression()), !dbg !333
  %0 = bitcast %struct.stat* %sbuf1 to i8*, !dbg !334
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %0) #7, !dbg !334
  %1 = bitcast %struct.stat* %sbuf2 to i8*, !dbg !335
  call void @llvm.lifetime.start.p0i8(i64 144, i8* nonnull %1) #7, !dbg !335
  call void @llvm.dbg.value(metadata %struct.stat* %sbuf1, metadata !331, metadata !DIExpression(DW_OP_deref)), !dbg !333
  %call = call i32 @fstat(i32 %fd1, %struct.stat* nonnull %sbuf1) #8, !dbg !336
  %cmp = icmp eq i32 %call, 0, !dbg !338
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !339

land.lhs.true:                                    ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.stat* %sbuf2, metadata !332, metadata !DIExpression(DW_OP_deref)), !dbg !333
  %call1 = call i32 @fstat(i32 %fd2, %struct.stat* nonnull %sbuf2) #8, !dbg !340
  %cmp2 = icmp eq i32 %call1, 0, !dbg !341
  br i1 %cmp2, label %land.lhs.true3, label %if.else, !dbg !342

land.lhs.true3:                                   ; preds = %land.lhs.true
  %st_dev = getelementptr inbounds %struct.stat, %struct.stat* %sbuf1, i64 0, i32 0, !dbg !343
  %2 = load i64, i64* %st_dev, align 8, !dbg !343
  %st_dev4 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf2, i64 0, i32 0, !dbg !344
  %3 = load i64, i64* %st_dev4, align 8, !dbg !344
  %cmp5 = icmp eq i64 %2, %3, !dbg !345
  br i1 %cmp5, label %land.lhs.true6, label %if.else, !dbg !346

land.lhs.true6:                                   ; preds = %land.lhs.true3
  %st_ino = getelementptr inbounds %struct.stat, %struct.stat* %sbuf1, i64 0, i32 1, !dbg !347
  %4 = load i64, i64* %st_ino, align 8, !dbg !347
  %st_ino7 = getelementptr inbounds %struct.stat, %struct.stat* %sbuf2, i64 0, i32 1, !dbg !348
  %5 = load i64, i64* %st_ino7, align 8, !dbg !348
  %cmp8 = icmp eq i64 %4, %5, !dbg !349
  br i1 %cmp8, label %cleanup, label %if.else, !dbg !350

if.else:                                          ; preds = %land.lhs.true6, %land.lhs.true3, %land.lhs.true, %entry
  br label %cleanup, !dbg !351

cleanup:                                          ; preds = %land.lhs.true6, %if.else
  %retval.0 = phi i32 [ 0, %if.else ], [ 1, %land.lhs.true6 ], !dbg !353
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %1) #7, !dbg !354
  call void @llvm.lifetime.end.p0i8(i64 144, i8* nonnull %0) #7, !dbg !354
  ret i32 %retval.0, !dbg !354
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

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
!1 = !DIFile(filename: "fdmatch.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!10 = distinct !DISubprogram(name: "vprintf", scope: !11, file: !11, line: 39, type: !12, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !28)
!11 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !15, !19}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !21)
!21 = !{!22, !24, !25, !27}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !20, file: !1, baseType: !23, size: 32)
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !20, file: !1, baseType: !23, size: 32, offset: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !20, file: !1, baseType: !26, size: 64, offset: 128)
!28 = !{!29, !30}
!29 = !DILocalVariable(name: "__fmt", arg: 1, scope: !10, file: !11, line: 39, type: !15)
!30 = !DILocalVariable(name: "__arg", arg: 2, scope: !10, file: !11, line: 39, type: !19)
!31 = !DILocation(line: 0, scope: !10)
!32 = !DILocation(line: 41, column: 20, scope: !10)
!33 = !DILocation(line: 41, column: 10, scope: !10)
!34 = !DILocation(line: 41, column: 3, scope: !10)
!35 = distinct !DISubprogram(name: "getchar", scope: !11, file: !11, line: 47, type: !36, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!36 = !DISubroutineType(types: !37)
!37 = !{!14}
!38 = !DILocation(line: 49, column: 16, scope: !35)
!39 = !DILocation(line: 49, column: 10, scope: !35)
!40 = !DILocation(line: 49, column: 3, scope: !35)
!41 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !11, file: !11, line: 56, type: !42, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!42 = !DISubroutineType(types: !43)
!43 = !{!14, !44}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !46, line: 7, baseType: !47)
!46 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !48, line: 49, size: 1728, elements: !49)
!48 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!49 = !{!50, !51, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !66, !68, !69, !70, !74, !76, !78, !82, !85, !87, !90, !93, !94, !95, !99, !100}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !47, file: !48, line: 51, baseType: !14, size: 32)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !47, file: !48, line: 54, baseType: !52, size: 64, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !47, file: !48, line: 55, baseType: !52, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !47, file: !48, line: 56, baseType: !52, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !47, file: !48, line: 57, baseType: !52, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !47, file: !48, line: 58, baseType: !52, size: 64, offset: 320)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !47, file: !48, line: 59, baseType: !52, size: 64, offset: 384)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !47, file: !48, line: 60, baseType: !52, size: 64, offset: 448)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !47, file: !48, line: 61, baseType: !52, size: 64, offset: 512)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !47, file: !48, line: 64, baseType: !52, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !47, file: !48, line: 65, baseType: !52, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !47, file: !48, line: 66, baseType: !52, size: 64, offset: 704)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !47, file: !48, line: 68, baseType: !64, size: 64, offset: 768)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !48, line: 36, flags: DIFlagFwdDecl)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !47, file: !48, line: 70, baseType: !67, size: 64, offset: 832)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !47, file: !48, line: 72, baseType: !14, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !47, file: !48, line: 73, baseType: !14, size: 32, offset: 928)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !47, file: !48, line: 74, baseType: !71, size: 64, offset: 960)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !72, line: 152, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!73 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !47, file: !48, line: 77, baseType: !75, size: 16, offset: 1024)
!75 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !47, file: !48, line: 78, baseType: !77, size: 8, offset: 1040)
!77 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !47, file: !48, line: 79, baseType: !79, size: 8, offset: 1048)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 8, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 1)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !47, file: !48, line: 81, baseType: !83, size: 64, offset: 1088)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !48, line: 43, baseType: null)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !47, file: !48, line: 89, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !72, line: 153, baseType: !73)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !47, file: !48, line: 91, baseType: !88, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !48, line: 37, flags: DIFlagFwdDecl)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !47, file: !48, line: 92, baseType: !91, size: 64, offset: 1280)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !48, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !47, file: !48, line: 93, baseType: !67, size: 64, offset: 1344)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !47, file: !48, line: 94, baseType: !26, size: 64, offset: 1408)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !47, file: !48, line: 95, baseType: !96, size: 64, offset: 1472)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !97, line: 46, baseType: !98)
!97 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !47, file: !48, line: 96, baseType: !14, size: 32, offset: 1536)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !47, file: !48, line: 98, baseType: !101, size: 160, offset: 1568)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 160, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 20)
!104 = !{!105}
!105 = !DILocalVariable(name: "__fp", arg: 1, scope: !41, file: !11, line: 56, type: !44)
!106 = !DILocation(line: 0, scope: !41)
!107 = !DILocation(line: 58, column: 10, scope: !41)
!108 = !DILocation(line: 58, column: 3, scope: !41)
!109 = distinct !DISubprogram(name: "getc_unlocked", scope: !11, file: !11, line: 66, type: !42, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111}
!111 = !DILocalVariable(name: "__fp", arg: 1, scope: !109, file: !11, line: 66, type: !44)
!112 = !DILocation(line: 0, scope: !109)
!113 = !DILocation(line: 68, column: 10, scope: !109)
!114 = !DILocation(line: 68, column: 3, scope: !109)
!115 = distinct !DISubprogram(name: "getchar_unlocked", scope: !11, file: !11, line: 73, type: !36, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!116 = !DILocation(line: 75, column: 10, scope: !115)
!117 = !DILocation(line: 75, column: 3, scope: !115)
!118 = distinct !DISubprogram(name: "putchar", scope: !11, file: !11, line: 82, type: !119, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!119 = !DISubroutineType(types: !120)
!120 = !{!14, !14}
!121 = !{!122}
!122 = !DILocalVariable(name: "__c", arg: 1, scope: !118, file: !11, line: 82, type: !14)
!123 = !DILocation(line: 0, scope: !118)
!124 = !DILocation(line: 84, column: 21, scope: !118)
!125 = !DILocation(line: 84, column: 10, scope: !118)
!126 = !DILocation(line: 84, column: 3, scope: !118)
!127 = distinct !DISubprogram(name: "fputc_unlocked", scope: !11, file: !11, line: 91, type: !128, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!14, !14, !44}
!130 = !{!131, !132}
!131 = !DILocalVariable(name: "__c", arg: 1, scope: !127, file: !11, line: 91, type: !14)
!132 = !DILocalVariable(name: "__stream", arg: 2, scope: !127, file: !11, line: 91, type: !44)
!133 = !DILocation(line: 0, scope: !127)
!134 = !DILocation(line: 93, column: 10, scope: !127)
!135 = !DILocation(line: 93, column: 3, scope: !127)
!136 = distinct !DISubprogram(name: "putc_unlocked", scope: !11, file: !11, line: 101, type: !128, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(name: "__c", arg: 1, scope: !136, file: !11, line: 101, type: !14)
!139 = !DILocalVariable(name: "__stream", arg: 2, scope: !136, file: !11, line: 101, type: !44)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocation(line: 103, column: 10, scope: !136)
!142 = !DILocation(line: 103, column: 3, scope: !136)
!143 = distinct !DISubprogram(name: "putchar_unlocked", scope: !11, file: !11, line: 108, type: !119, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145}
!145 = !DILocalVariable(name: "__c", arg: 1, scope: !143, file: !11, line: 108, type: !14)
!146 = !DILocation(line: 0, scope: !143)
!147 = !DILocation(line: 110, column: 10, scope: !143)
!148 = !DILocation(line: 110, column: 3, scope: !143)
!149 = distinct !DISubprogram(name: "getline", scope: !11, file: !11, line: 118, type: !150, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !153, !154, !44}
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !72, line: 193, baseType: !73)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !149, file: !11, line: 118, type: !153)
!157 = !DILocalVariable(name: "__n", arg: 2, scope: !149, file: !11, line: 118, type: !154)
!158 = !DILocalVariable(name: "__stream", arg: 3, scope: !149, file: !11, line: 118, type: !44)
!159 = !DILocation(line: 0, scope: !149)
!160 = !DILocation(line: 120, column: 10, scope: !149)
!161 = !DILocation(line: 120, column: 3, scope: !149)
!162 = distinct !DISubprogram(name: "feof_unlocked", scope: !11, file: !11, line: 128, type: !42, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164}
!164 = !DILocalVariable(name: "__stream", arg: 1, scope: !162, file: !11, line: 128, type: !44)
!165 = !DILocation(line: 0, scope: !162)
!166 = !DILocation(line: 130, column: 10, scope: !162)
!167 = !DILocation(line: 130, column: 3, scope: !162)
!168 = distinct !DISubprogram(name: "ferror_unlocked", scope: !11, file: !11, line: 135, type: !42, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "__stream", arg: 1, scope: !168, file: !11, line: 135, type: !44)
!171 = !DILocation(line: 0, scope: !168)
!172 = !DILocation(line: 137, column: 10, scope: !168)
!173 = !DILocation(line: 137, column: 3, scope: !168)
!174 = distinct !DISubprogram(name: "stat", scope: !175, file: !175, line: 453, type: !176, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !215)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!176 = !DISubroutineType(types: !177)
!177 = !{!14, !16, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !180, line: 46, size: 1152, elements: !181)
!180 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!181 = !{!182, !184, !186, !188, !190, !192, !194, !195, !196, !197, !199, !201, !209, !210, !211}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !179, file: !180, line: 48, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !72, line: 145, baseType: !98)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !179, file: !180, line: 53, baseType: !185, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !72, line: 148, baseType: !98)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !179, file: !180, line: 61, baseType: !187, size: 64, offset: 128)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !72, line: 151, baseType: !98)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !179, file: !180, line: 62, baseType: !189, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !72, line: 150, baseType: !23)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !179, file: !180, line: 64, baseType: !191, size: 32, offset: 224)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !72, line: 146, baseType: !23)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !179, file: !180, line: 65, baseType: !193, size: 32, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !72, line: 147, baseType: !23)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !179, file: !180, line: 67, baseType: !14, size: 32, offset: 288)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !179, file: !180, line: 69, baseType: !183, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !179, file: !180, line: 74, baseType: !71, size: 64, offset: 384)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !179, file: !180, line: 78, baseType: !198, size: 64, offset: 448)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !72, line: 174, baseType: !73)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !179, file: !180, line: 80, baseType: !200, size: 64, offset: 512)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !72, line: 179, baseType: !73)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !179, file: !180, line: 91, baseType: !202, size: 128, offset: 576)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !203, line: 10, size: 128, elements: !204)
!203 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!204 = !{!205, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !202, file: !203, line: 12, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !72, line: 160, baseType: !73)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !202, file: !203, line: 16, baseType: !208, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !72, line: 196, baseType: !73)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !179, file: !180, line: 92, baseType: !202, size: 128, offset: 704)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !179, file: !180, line: 93, baseType: !202, size: 128, offset: 832)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !179, file: !180, line: 106, baseType: !212, size: 192, offset: 960)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 192, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 3)
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "__path", arg: 1, scope: !174, file: !175, line: 453, type: !16)
!217 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !174, file: !175, line: 453, type: !178)
!218 = !DILocation(line: 0, scope: !174)
!219 = !DILocation(line: 455, column: 10, scope: !174)
!220 = !DILocation(line: 455, column: 3, scope: !174)
!221 = distinct !DISubprogram(name: "lstat", scope: !175, file: !175, line: 460, type: !176, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !222)
!222 = !{!223, !224}
!223 = !DILocalVariable(name: "__path", arg: 1, scope: !221, file: !175, line: 460, type: !16)
!224 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !221, file: !175, line: 460, type: !178)
!225 = !DILocation(line: 0, scope: !221)
!226 = !DILocation(line: 462, column: 10, scope: !221)
!227 = !DILocation(line: 462, column: 3, scope: !221)
!228 = distinct !DISubprogram(name: "fstat", scope: !175, file: !175, line: 467, type: !229, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!14, !14, !178}
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "__fd", arg: 1, scope: !228, file: !175, line: 467, type: !14)
!233 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !228, file: !175, line: 467, type: !178)
!234 = !DILocation(line: 0, scope: !228)
!235 = !DILocation(line: 469, column: 10, scope: !228)
!236 = !DILocation(line: 469, column: 3, scope: !228)
!237 = distinct !DISubprogram(name: "fstatat", scope: !175, file: !175, line: 474, type: !238, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !240)
!238 = !DISubroutineType(types: !239)
!239 = !{!14, !14, !16, !178, !14}
!240 = !{!241, !242, !243, !244}
!241 = !DILocalVariable(name: "__fd", arg: 1, scope: !237, file: !175, line: 474, type: !14)
!242 = !DILocalVariable(name: "__filename", arg: 2, scope: !237, file: !175, line: 474, type: !16)
!243 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !237, file: !175, line: 474, type: !178)
!244 = !DILocalVariable(name: "__flag", arg: 4, scope: !237, file: !175, line: 474, type: !14)
!245 = !DILocation(line: 0, scope: !237)
!246 = !DILocation(line: 477, column: 10, scope: !237)
!247 = !DILocation(line: 477, column: 3, scope: !237)
!248 = distinct !DISubprogram(name: "mknod", scope: !175, file: !175, line: 483, type: !249, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !251)
!249 = !DISubroutineType(types: !250)
!250 = !{!14, !16, !189, !183}
!251 = !{!252, !253, !254}
!252 = !DILocalVariable(name: "__path", arg: 1, scope: !248, file: !175, line: 483, type: !16)
!253 = !DILocalVariable(name: "__mode", arg: 2, scope: !248, file: !175, line: 483, type: !189)
!254 = !DILocalVariable(name: "__dev", arg: 3, scope: !248, file: !175, line: 483, type: !183)
!255 = !DILocation(line: 0, scope: !248)
!256 = !DILocation(line: 485, column: 10, scope: !248)
!257 = !DILocation(line: 485, column: 3, scope: !248)
!258 = distinct !DISubprogram(name: "mknodat", scope: !175, file: !175, line: 491, type: !259, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!14, !14, !16, !189, !183}
!261 = !{!262, !263, !264, !265}
!262 = !DILocalVariable(name: "__fd", arg: 1, scope: !258, file: !175, line: 491, type: !14)
!263 = !DILocalVariable(name: "__path", arg: 2, scope: !258, file: !175, line: 491, type: !16)
!264 = !DILocalVariable(name: "__mode", arg: 3, scope: !258, file: !175, line: 491, type: !189)
!265 = !DILocalVariable(name: "__dev", arg: 4, scope: !258, file: !175, line: 491, type: !183)
!266 = !DILocation(line: 0, scope: !258)
!267 = !DILocation(line: 494, column: 10, scope: !258)
!268 = !DILocation(line: 494, column: 3, scope: !258)
!269 = distinct !DISubprogram(name: "stat64", scope: !175, file: !175, line: 502, type: !270, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !292)
!270 = !DISubroutineType(types: !271)
!271 = !{!14, !16, !272}
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !180, line: 119, size: 1152, elements: !274)
!274 = !{!275, !276, !278, !279, !280, !281, !282, !283, !284, !285, !286, !288, !289, !290, !291}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !273, file: !180, line: 121, baseType: !183, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !273, file: !180, line: 123, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !72, line: 149, baseType: !98)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !273, file: !180, line: 124, baseType: !187, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !273, file: !180, line: 125, baseType: !189, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !273, file: !180, line: 132, baseType: !191, size: 32, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !273, file: !180, line: 133, baseType: !193, size: 32, offset: 256)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !273, file: !180, line: 135, baseType: !14, size: 32, offset: 288)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !273, file: !180, line: 136, baseType: !183, size: 64, offset: 320)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !273, file: !180, line: 137, baseType: !71, size: 64, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !273, file: !180, line: 143, baseType: !198, size: 64, offset: 448)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !273, file: !180, line: 144, baseType: !287, size: 64, offset: 512)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !72, line: 180, baseType: !73)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !273, file: !180, line: 152, baseType: !202, size: 128, offset: 576)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !273, file: !180, line: 153, baseType: !202, size: 128, offset: 704)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !273, file: !180, line: 154, baseType: !202, size: 128, offset: 832)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !273, file: !180, line: 164, baseType: !212, size: 192, offset: 960)
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "__path", arg: 1, scope: !269, file: !175, line: 502, type: !16)
!294 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !269, file: !175, line: 502, type: !272)
!295 = !DILocation(line: 0, scope: !269)
!296 = !DILocation(line: 504, column: 10, scope: !269)
!297 = !DILocation(line: 504, column: 3, scope: !269)
!298 = distinct !DISubprogram(name: "lstat64", scope: !175, file: !175, line: 509, type: !270, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !299)
!299 = !{!300, !301}
!300 = !DILocalVariable(name: "__path", arg: 1, scope: !298, file: !175, line: 509, type: !16)
!301 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !298, file: !175, line: 509, type: !272)
!302 = !DILocation(line: 0, scope: !298)
!303 = !DILocation(line: 511, column: 10, scope: !298)
!304 = !DILocation(line: 511, column: 3, scope: !298)
!305 = distinct !DISubprogram(name: "fstat64", scope: !175, file: !175, line: 516, type: !306, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !308)
!306 = !DISubroutineType(types: !307)
!307 = !{!14, !14, !272}
!308 = !{!309, !310}
!309 = !DILocalVariable(name: "__fd", arg: 1, scope: !305, file: !175, line: 516, type: !14)
!310 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !305, file: !175, line: 516, type: !272)
!311 = !DILocation(line: 0, scope: !305)
!312 = !DILocation(line: 518, column: 10, scope: !305)
!313 = !DILocation(line: 518, column: 3, scope: !305)
!314 = distinct !DISubprogram(name: "fstatat64", scope: !175, file: !175, line: 523, type: !315, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{!14, !14, !16, !272, !14}
!317 = !{!318, !319, !320, !321}
!318 = !DILocalVariable(name: "__fd", arg: 1, scope: !314, file: !175, line: 523, type: !14)
!319 = !DILocalVariable(name: "__filename", arg: 2, scope: !314, file: !175, line: 523, type: !16)
!320 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !314, file: !175, line: 523, type: !272)
!321 = !DILocalVariable(name: "__flag", arg: 4, scope: !314, file: !175, line: 523, type: !14)
!322 = !DILocation(line: 0, scope: !314)
!323 = !DILocation(line: 526, column: 10, scope: !314)
!324 = !DILocation(line: 526, column: 3, scope: !314)
!325 = distinct !DISubprogram(name: "fdmatch", scope: !1, file: !1, line: 52, type: !326, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!14, !14, !14}
!328 = !{!329, !330, !331, !332}
!329 = !DILocalVariable(name: "fd1", arg: 1, scope: !325, file: !1, line: 52, type: !14)
!330 = !DILocalVariable(name: "fd2", arg: 2, scope: !325, file: !1, line: 52, type: !14)
!331 = !DILocalVariable(name: "sbuf1", scope: !325, file: !1, line: 54, type: !179)
!332 = !DILocalVariable(name: "sbuf2", scope: !325, file: !1, line: 55, type: !179)
!333 = !DILocation(line: 0, scope: !325)
!334 = !DILocation(line: 54, column: 3, scope: !325)
!335 = !DILocation(line: 55, column: 3, scope: !325)
!336 = !DILocation(line: 57, column: 8, scope: !337)
!337 = distinct !DILexicalBlock(scope: !325, file: !1, line: 57, column: 7)
!338 = !DILocation(line: 57, column: 28, scope: !337)
!339 = !DILocation(line: 57, column: 34, scope: !337)
!340 = !DILocation(line: 58, column: 8, scope: !337)
!341 = !DILocation(line: 58, column: 28, scope: !337)
!342 = !DILocation(line: 58, column: 34, scope: !337)
!343 = !DILocation(line: 59, column: 14, scope: !337)
!344 = !DILocation(line: 59, column: 30, scope: !337)
!345 = !DILocation(line: 59, column: 21, scope: !337)
!346 = !DILocation(line: 59, column: 38, scope: !337)
!347 = !DILocation(line: 60, column: 14, scope: !337)
!348 = !DILocation(line: 60, column: 30, scope: !337)
!349 = !DILocation(line: 60, column: 21, scope: !337)
!350 = !DILocation(line: 57, column: 7, scope: !325)
!351 = !DILocation(line: 66, column: 7, scope: !352)
!352 = distinct !DILexicalBlock(scope: !337, file: !1, line: 65, column: 5)
!353 = !DILocation(line: 0, scope: !337)
!354 = !DILocation(line: 68, column: 1, scope: !325)
