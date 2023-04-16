; ModuleID = 'host-linux.bc'
source_filename = "host-linux.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.host_hooks = type { void ()*, i8* (i64, i32)*, i32 (i8*, i64, i32, i64)*, i64 ()* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@host_hooks = dso_local local_unnamed_addr constant %struct.host_hooks { void ()* @hook_void_void, i8* (i64, i32)* @default_gt_pch_get_address, i32 (i8*, i64, i32, i64)* @default_gt_pch_use_address, i64 ()* @default_gt_pch_alloc_granularity }, align 8, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !43 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !57, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !60
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #4, !dbg !61
  ret i32 %call, !dbg !62
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !63 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !66
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #4, !dbg !67
  ret i32 %call, !dbg !68
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !69 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !129, metadata !DIExpression()), !dbg !130
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !131
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !131
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !131
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !131
  %cmp = icmp uge i8* %0, %1, !dbg !131
  %conv1 = zext i1 %cmp to i64, !dbg !131
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !131
  %tobool = icmp eq i64 %expval, 0, !dbg !131
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !131

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !131
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !131
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !131
  %2 = load i8, i8* %0, align 1, !dbg !131
  %conv3 = zext i8 %2 to i32, !dbg !131
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !131
  ret i32 %cond, !dbg !132
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !133 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !135, metadata !DIExpression()), !dbg !136
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !137
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !137
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !137
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !137
  %cmp = icmp uge i8* %0, %1, !dbg !137
  %conv1 = zext i1 %cmp to i64, !dbg !137
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !137
  %tobool = icmp eq i64 %expval, 0, !dbg !137
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !137

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #4, !dbg !137
  br label %cond.end, !dbg !137

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !137
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !137
  %2 = load i8, i8* %0, align 1, !dbg !137
  %conv3 = zext i8 %2 to i32, !dbg !137
  br label %cond.end, !dbg !137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !137
  ret i32 %cond, !dbg !138
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !139 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !140
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !140
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !140
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !140
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !140
  %cmp = icmp uge i8* %1, %2, !dbg !140
  %conv1 = zext i1 %cmp to i64, !dbg !140
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !140
  %tobool = icmp eq i64 %expval, 0, !dbg !140
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !140

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #4, !dbg !140
  br label %cond.end, !dbg !140

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !140
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !140
  %3 = load i8, i8* %1, align 1, !dbg !140
  %conv3 = zext i8 %3 to i32, !dbg !140
  br label %cond.end, !dbg !140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !140
  ret i32 %cond, !dbg !141
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !142 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !148
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #4, !dbg !149
  ret i32 %call, !dbg !150
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !151 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !155, metadata !DIExpression()), !dbg !157
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !156, metadata !DIExpression()), !dbg !157
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !158
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !158
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !158
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !158
  %cmp = icmp uge i8* %0, %1, !dbg !158
  %conv1 = zext i1 %cmp to i64, !dbg !158
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !158
  %tobool = icmp eq i64 %expval, 0, !dbg !158
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !158

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !158
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !158
  br label %cond.end, !dbg !158

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !158
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !158
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !158
  store i8 %conv2, i8* %0, align 1, !dbg !158
  %conv6 = and i32 %__c, 255, !dbg !158
  br label %cond.end, !dbg !158

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !158
  ret i32 %cond, !dbg !159
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !160 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !162, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !163, metadata !DIExpression()), !dbg !164
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !165
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !165
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !165
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !165
  %cmp = icmp uge i8* %0, %1, !dbg !165
  %conv1 = zext i1 %cmp to i64, !dbg !165
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !165
  %tobool = icmp eq i64 %expval, 0, !dbg !165
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !165

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !165
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #4, !dbg !165
  br label %cond.end, !dbg !165

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !165
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !165
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !165
  store i8 %conv2, i8* %0, align 1, !dbg !165
  %conv6 = and i32 %__c, 255, !dbg !165
  br label %cond.end, !dbg !165

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !165
  ret i32 %cond, !dbg !166
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !167 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !169, metadata !DIExpression()), !dbg !170
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !171
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !171
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !171
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !171
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !171
  %cmp = icmp uge i8* %1, %2, !dbg !171
  %conv1 = zext i1 %cmp to i64, !dbg !171
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !171
  %tobool = icmp eq i64 %expval, 0, !dbg !171
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !171

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !171
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #4, !dbg !171
  br label %cond.end, !dbg !171

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !171
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !171
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !171
  store i8 %conv4, i8* %1, align 1, !dbg !171
  %conv6 = and i32 %__c, 255, !dbg !171
  br label %cond.end, !dbg !171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !171
  ret i32 %cond, !dbg !172
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !173 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !179, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata i64* %__n, metadata !180, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !181, metadata !DIExpression()), !dbg !182
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #4, !dbg !183
  ret i64 %call, !dbg !184
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !185 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !187, metadata !DIExpression()), !dbg !188
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !189
  %0 = load i32, i32* %_flags, align 8, !dbg !189
  %and = lshr i32 %0, 4, !dbg !189
  %and.lobit = and i32 %and, 1, !dbg !189
  ret i32 %and.lobit, !dbg !190
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !191 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !193, metadata !DIExpression()), !dbg !194
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !195
  %0 = load i32, i32* %_flags, align 8, !dbg !195
  %and = lshr i32 %0, 5, !dbg !195
  %and.lobit = and i32 %and, 1, !dbg !195
  ret i32 %and.lobit, !dbg !196
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !200, metadata !DIExpression()), !dbg !201
  %__c.off = add i32 %__c, 128, !dbg !202
  %0 = icmp ult i32 %__c.off, 384, !dbg !202
  br i1 %0, label %cond.true, label %cond.end, !dbg !202

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #4, !dbg !203
  %1 = load i32*, i32** %call, align 8, !dbg !204
  %idxprom = sext i32 %__c to i64, !dbg !205
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !205
  %2 = load i32, i32* %arrayidx, align 4, !dbg !205
  br label %cond.end, !dbg !206

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !206
  ret i32 %cond, !dbg !207
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !208 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !210, metadata !DIExpression()), !dbg !211
  %__c.off = add i32 %__c, 128, !dbg !212
  %0 = icmp ult i32 %__c.off, 384, !dbg !212
  br i1 %0, label %cond.true, label %cond.end, !dbg !212

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #4, !dbg !213
  %1 = load i32*, i32** %call, align 8, !dbg !214
  %idxprom = sext i32 %__c to i64, !dbg !215
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !215
  %2 = load i32, i32* %arrayidx, align 4, !dbg !215
  br label %cond.end, !dbg !216

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !216
  ret i32 %cond, !dbg !217
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !218 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !223, metadata !DIExpression()), !dbg !224
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !225
  %conv = trunc i64 %call to i32, !dbg !226
  ret i32 %conv, !dbg !227
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !228 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !232, metadata !DIExpression()), !dbg !233
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #4, !dbg !234
  ret i64 %call, !dbg !235
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !236 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !241, metadata !DIExpression()), !dbg !242
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #4, !dbg !243
  ret i64 %call, !dbg !244
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !256, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i8* %__base, metadata !257, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !258, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__size, metadata !259, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !260, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 0, metadata !261, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !262, metadata !DIExpression()), !dbg !266
  br label %while.cond, !dbg !267

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !268
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !261, metadata !DIExpression()), !dbg !266
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !269
  br i1 %cmp, label %while.body, label %cleanup, !dbg !267

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !270
  %div = lshr i64 %add, 1, !dbg !272
  call void @llvm.dbg.value(metadata i64 %div, metadata !263, metadata !DIExpression()), !dbg !266
  %mul = mul i64 %div, %__size, !dbg !273
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !274
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !264, metadata !DIExpression()), !dbg !266
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #4, !dbg !275
  call void @llvm.dbg.value(metadata i32 %call, metadata !265, metadata !DIExpression()), !dbg !266
  %cmp1 = icmp slt i32 %call, 0, !dbg !276
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !278

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !279
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !281

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !282
  call void @llvm.dbg.value(metadata i64 %add4, metadata !261, metadata !DIExpression()), !dbg !266
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !266
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !266
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !262, metadata !DIExpression()), !dbg !266
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !261, metadata !DIExpression()), !dbg !266
  br label %while.cond, !dbg !267, !llvm.loop !283

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !266
  ret i8* %retval.0, !dbg !285
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !286 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !292, metadata !DIExpression()), !dbg !293
  %call = tail call double @strtod(i8* %__nptr, i8** null) #4, !dbg !294
  ret double %call, !dbg !295
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !296 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !305, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !306, metadata !DIExpression()), !dbg !308
  call void @llvm.dbg.value(metadata i32 %base, metadata !307, metadata !DIExpression()), !dbg !308
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !309
  ret i64 %call, !dbg !310
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !311 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !317, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata i32 %base, metadata !319, metadata !DIExpression()), !dbg !320
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #4, !dbg !321
  ret i64 %call, !dbg !322
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !323 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !334, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !335, metadata !DIExpression()), !dbg !337
  call void @llvm.dbg.value(metadata i32 %base, metadata !336, metadata !DIExpression()), !dbg !337
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !338
  ret i64 %call, !dbg !339
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !340 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !344, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !345, metadata !DIExpression()), !dbg !347
  call void @llvm.dbg.value(metadata i32 %base, metadata !346, metadata !DIExpression()), !dbg !347
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #4, !dbg !348
  ret i64 %call, !dbg !349
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !350 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !392, metadata !DIExpression()), !dbg !394
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !393, metadata !DIExpression()), !dbg !394
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !395
  ret i32 %call, !dbg !396
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !397 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !399, metadata !DIExpression()), !dbg !401
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !400, metadata !DIExpression()), !dbg !401
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #4, !dbg !402
  ret i32 %call, !dbg !403
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !404 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !408, metadata !DIExpression()), !dbg !410
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !409, metadata !DIExpression()), !dbg !410
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #4, !dbg !411
  ret i32 %call, !dbg !412
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !413 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !417, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !418, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !419, metadata !DIExpression()), !dbg !421
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !420, metadata !DIExpression()), !dbg !421
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #4, !dbg !422
  ret i32 %call, !dbg !423
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !424 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !428, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !429, metadata !DIExpression()), !dbg !431
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !430, metadata !DIExpression()), !dbg !431
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !430, metadata !DIExpression(DW_OP_deref)), !dbg !431
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !432
  ret i32 %call, !dbg !433
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !434 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !438, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i8* %__path, metadata !439, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !440, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !441, metadata !DIExpression()), !dbg !442
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !441, metadata !DIExpression(DW_OP_deref)), !dbg !442
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #4, !dbg !443
  ret i32 %call, !dbg !444
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !445 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !469, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !470, metadata !DIExpression()), !dbg !471
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !472
  ret i32 %call, !dbg !473
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !474 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !476, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !477, metadata !DIExpression()), !dbg !478
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #4, !dbg !479
  ret i32 %call, !dbg !480
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !481 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !485, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !486, metadata !DIExpression()), !dbg !487
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #4, !dbg !488
  ret i32 %call, !dbg !489
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !490 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !494, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !495, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !496, metadata !DIExpression()), !dbg !498
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #4, !dbg !499
  ret i32 %call, !dbg !500
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

declare dso_local void @hook_void_void() #1

declare dso_local i8* @default_gt_pch_get_address(i64, i32) #1

declare dso_local i32 @default_gt_pch_use_address(i8*, i64, i32, i64) #1

declare dso_local i64 @default_gt_pch_alloc_granularity() #1

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #3

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!39, !40, !41}
!llvm.ident = !{!42}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "host_hooks", scope: !2, file: !3, line: 226, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !15, nameTableKind: None)
!3 = !DIFile(filename: "host-linux.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
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
!16 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "host_hooks", file: !18, line: 23, size: 256, elements: !19)
!18 = !DIFile(filename: "./hosthooks.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!19 = !{!20, !24, !31, !35}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "extra_signals", scope: !17, file: !18, line: 25, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{null}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "gt_pch_get_address", scope: !17, file: !18, line: 30, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DISubroutineType(types: !27)
!27 = !{!12, !28, !8}
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !29, line: 46, baseType: !30)
!29 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "gt_pch_use_address", scope: !17, file: !18, line: 36, baseType: !32, size: 64, offset: 128)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!8, !12, !28, !8, !28}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "gt_pch_alloc_granularity", scope: !17, file: !18, line: 40, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{!28}
!39 = !{i32 2, !"Dwarf Version", i32 4}
!40 = !{i32 2, !"Debug Info Version", i32 3}
!41 = !{i32 1, !"wchar_size", i32 4}
!42 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!43 = distinct !DISubprogram(name: "vprintf", scope: !44, file: !44, line: 39, type: !45, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !56)
!44 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!45 = !DISubroutineType(types: !46)
!46 = !{!8, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !50)
!50 = !{!51, !53, !54, !55}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !49, file: !3, baseType: !52, size: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !49, file: !3, baseType: !52, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !49, file: !3, baseType: !12, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !49, file: !3, baseType: !12, size: 64, offset: 128)
!56 = !{!57, !58}
!57 = !DILocalVariable(name: "__fmt", arg: 1, scope: !43, file: !44, line: 39, type: !47)
!58 = !DILocalVariable(name: "__arg", arg: 2, scope: !43, file: !44, line: 39, type: !48)
!59 = !DILocation(line: 0, scope: !43)
!60 = !DILocation(line: 41, column: 20, scope: !43)
!61 = !DILocation(line: 41, column: 10, scope: !43)
!62 = !DILocation(line: 41, column: 3, scope: !43)
!63 = distinct !DISubprogram(name: "getchar", scope: !44, file: !44, line: 47, type: !64, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!64 = !DISubroutineType(types: !65)
!65 = !{!8}
!66 = !DILocation(line: 49, column: 16, scope: !63)
!67 = !DILocation(line: 49, column: 10, scope: !63)
!68 = !DILocation(line: 49, column: 3, scope: !63)
!69 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !44, file: !44, line: 56, type: !70, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !128)
!70 = !DISubroutineType(types: !71)
!71 = !{!8, !72}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !74, line: 7, baseType: !75)
!74 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !76, line: 49, size: 1728, elements: !77)
!76 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!77 = !{!78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !93, !95, !96, !97, !101, !103, !105, !109, !112, !114, !117, !120, !121, !122, !123, !124}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !75, file: !76, line: 51, baseType: !8, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !75, file: !76, line: 54, baseType: !10, size: 64, offset: 64)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !75, file: !76, line: 55, baseType: !10, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !75, file: !76, line: 56, baseType: !10, size: 64, offset: 192)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !75, file: !76, line: 57, baseType: !10, size: 64, offset: 256)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !75, file: !76, line: 58, baseType: !10, size: 64, offset: 320)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !75, file: !76, line: 59, baseType: !10, size: 64, offset: 384)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !75, file: !76, line: 60, baseType: !10, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !75, file: !76, line: 61, baseType: !10, size: 64, offset: 512)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !75, file: !76, line: 64, baseType: !10, size: 64, offset: 576)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !75, file: !76, line: 65, baseType: !10, size: 64, offset: 640)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !75, file: !76, line: 66, baseType: !10, size: 64, offset: 704)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !75, file: !76, line: 68, baseType: !91, size: 64, offset: 768)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !76, line: 36, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !75, file: !76, line: 70, baseType: !94, size: 64, offset: 832)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !75, file: !76, line: 72, baseType: !8, size: 32, offset: 896)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !75, file: !76, line: 73, baseType: !8, size: 32, offset: 928)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !75, file: !76, line: 74, baseType: !98, size: 64, offset: 960)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !99, line: 152, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!100 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !75, file: !76, line: 77, baseType: !102, size: 16, offset: 1024)
!102 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !75, file: !76, line: 78, baseType: !104, size: 8, offset: 1040)
!104 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !75, file: !76, line: 79, baseType: !106, size: 8, offset: 1048)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 1)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !75, file: !76, line: 81, baseType: !110, size: 64, offset: 1088)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !76, line: 43, baseType: null)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !75, file: !76, line: 89, baseType: !113, size: 64, offset: 1152)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !99, line: 153, baseType: !100)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !75, file: !76, line: 91, baseType: !115, size: 64, offset: 1216)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !76, line: 37, flags: DIFlagFwdDecl)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !75, file: !76, line: 92, baseType: !118, size: 64, offset: 1280)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !76, line: 38, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !75, file: !76, line: 93, baseType: !94, size: 64, offset: 1344)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !75, file: !76, line: 94, baseType: !12, size: 64, offset: 1408)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !75, file: !76, line: 95, baseType: !28, size: 64, offset: 1472)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !75, file: !76, line: 96, baseType: !8, size: 32, offset: 1536)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !75, file: !76, line: 98, baseType: !125, size: 160, offset: 1568)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 20)
!128 = !{!129}
!129 = !DILocalVariable(name: "__fp", arg: 1, scope: !69, file: !44, line: 56, type: !72)
!130 = !DILocation(line: 0, scope: !69)
!131 = !DILocation(line: 58, column: 10, scope: !69)
!132 = !DILocation(line: 58, column: 3, scope: !69)
!133 = distinct !DISubprogram(name: "getc_unlocked", scope: !44, file: !44, line: 66, type: !70, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!134 = !{!135}
!135 = !DILocalVariable(name: "__fp", arg: 1, scope: !133, file: !44, line: 66, type: !72)
!136 = !DILocation(line: 0, scope: !133)
!137 = !DILocation(line: 68, column: 10, scope: !133)
!138 = !DILocation(line: 68, column: 3, scope: !133)
!139 = distinct !DISubprogram(name: "getchar_unlocked", scope: !44, file: !44, line: 73, type: !64, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!140 = !DILocation(line: 75, column: 10, scope: !139)
!141 = !DILocation(line: 75, column: 3, scope: !139)
!142 = distinct !DISubprogram(name: "putchar", scope: !44, file: !44, line: 82, type: !143, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!8, !8}
!145 = !{!146}
!146 = !DILocalVariable(name: "__c", arg: 1, scope: !142, file: !44, line: 82, type: !8)
!147 = !DILocation(line: 0, scope: !142)
!148 = !DILocation(line: 84, column: 21, scope: !142)
!149 = !DILocation(line: 84, column: 10, scope: !142)
!150 = !DILocation(line: 84, column: 3, scope: !142)
!151 = distinct !DISubprogram(name: "fputc_unlocked", scope: !44, file: !44, line: 91, type: !152, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{!8, !8, !72}
!154 = !{!155, !156}
!155 = !DILocalVariable(name: "__c", arg: 1, scope: !151, file: !44, line: 91, type: !8)
!156 = !DILocalVariable(name: "__stream", arg: 2, scope: !151, file: !44, line: 91, type: !72)
!157 = !DILocation(line: 0, scope: !151)
!158 = !DILocation(line: 93, column: 10, scope: !151)
!159 = !DILocation(line: 93, column: 3, scope: !151)
!160 = distinct !DISubprogram(name: "putc_unlocked", scope: !44, file: !44, line: 101, type: !152, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !161)
!161 = !{!162, !163}
!162 = !DILocalVariable(name: "__c", arg: 1, scope: !160, file: !44, line: 101, type: !8)
!163 = !DILocalVariable(name: "__stream", arg: 2, scope: !160, file: !44, line: 101, type: !72)
!164 = !DILocation(line: 0, scope: !160)
!165 = !DILocation(line: 103, column: 10, scope: !160)
!166 = !DILocation(line: 103, column: 3, scope: !160)
!167 = distinct !DISubprogram(name: "putchar_unlocked", scope: !44, file: !44, line: 108, type: !143, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !168)
!168 = !{!169}
!169 = !DILocalVariable(name: "__c", arg: 1, scope: !167, file: !44, line: 108, type: !8)
!170 = !DILocation(line: 0, scope: !167)
!171 = !DILocation(line: 110, column: 10, scope: !167)
!172 = !DILocation(line: 110, column: 3, scope: !167)
!173 = distinct !DISubprogram(name: "getline", scope: !44, file: !44, line: 118, type: !174, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!174 = !DISubroutineType(types: !175)
!175 = !{!176, !9, !177, !72}
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !99, line: 193, baseType: !100)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!178 = !{!179, !180, !181}
!179 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !173, file: !44, line: 118, type: !9)
!180 = !DILocalVariable(name: "__n", arg: 2, scope: !173, file: !44, line: 118, type: !177)
!181 = !DILocalVariable(name: "__stream", arg: 3, scope: !173, file: !44, line: 118, type: !72)
!182 = !DILocation(line: 0, scope: !173)
!183 = !DILocation(line: 120, column: 10, scope: !173)
!184 = !DILocation(line: 120, column: 3, scope: !173)
!185 = distinct !DISubprogram(name: "feof_unlocked", scope: !44, file: !44, line: 128, type: !70, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !186)
!186 = !{!187}
!187 = !DILocalVariable(name: "__stream", arg: 1, scope: !185, file: !44, line: 128, type: !72)
!188 = !DILocation(line: 0, scope: !185)
!189 = !DILocation(line: 130, column: 10, scope: !185)
!190 = !DILocation(line: 130, column: 3, scope: !185)
!191 = distinct !DISubprogram(name: "ferror_unlocked", scope: !44, file: !44, line: 135, type: !70, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!192 = !{!193}
!193 = !DILocalVariable(name: "__stream", arg: 1, scope: !191, file: !44, line: 135, type: !72)
!194 = !DILocation(line: 0, scope: !191)
!195 = !DILocation(line: 137, column: 10, scope: !191)
!196 = !DILocation(line: 137, column: 3, scope: !191)
!197 = distinct !DISubprogram(name: "tolower", scope: !198, file: !198, line: 207, type: !143, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !199)
!198 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!199 = !{!200}
!200 = !DILocalVariable(name: "__c", arg: 1, scope: !197, file: !198, line: 207, type: !8)
!201 = !DILocation(line: 0, scope: !197)
!202 = !DILocation(line: 209, column: 22, scope: !197)
!203 = !DILocation(line: 209, column: 39, scope: !197)
!204 = !DILocation(line: 209, column: 38, scope: !197)
!205 = !DILocation(line: 209, column: 37, scope: !197)
!206 = !DILocation(line: 209, column: 10, scope: !197)
!207 = !DILocation(line: 209, column: 3, scope: !197)
!208 = distinct !DISubprogram(name: "toupper", scope: !198, file: !198, line: 213, type: !143, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !209)
!209 = !{!210}
!210 = !DILocalVariable(name: "__c", arg: 1, scope: !208, file: !198, line: 213, type: !8)
!211 = !DILocation(line: 0, scope: !208)
!212 = !DILocation(line: 215, column: 22, scope: !208)
!213 = !DILocation(line: 215, column: 39, scope: !208)
!214 = !DILocation(line: 215, column: 38, scope: !208)
!215 = !DILocation(line: 215, column: 37, scope: !208)
!216 = !DILocation(line: 215, column: 10, scope: !208)
!217 = !DILocation(line: 215, column: 3, scope: !208)
!218 = distinct !DISubprogram(name: "atoi", scope: !219, file: !219, line: 361, type: !220, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !222)
!219 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!220 = !DISubroutineType(types: !221)
!221 = !{!8, !13}
!222 = !{!223}
!223 = !DILocalVariable(name: "__nptr", arg: 1, scope: !218, file: !219, line: 361, type: !13)
!224 = !DILocation(line: 0, scope: !218)
!225 = !DILocation(line: 363, column: 16, scope: !218)
!226 = !DILocation(line: 363, column: 10, scope: !218)
!227 = !DILocation(line: 363, column: 3, scope: !218)
!228 = distinct !DISubprogram(name: "atol", scope: !219, file: !219, line: 366, type: !229, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{!100, !13}
!231 = !{!232}
!232 = !DILocalVariable(name: "__nptr", arg: 1, scope: !228, file: !219, line: 366, type: !13)
!233 = !DILocation(line: 0, scope: !228)
!234 = !DILocation(line: 368, column: 10, scope: !228)
!235 = !DILocation(line: 368, column: 3, scope: !228)
!236 = distinct !DISubprogram(name: "atoll", scope: !219, file: !219, line: 373, type: !237, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !240)
!237 = !DISubroutineType(types: !238)
!238 = !{!239, !13}
!239 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!240 = !{!241}
!241 = !DILocalVariable(name: "__nptr", arg: 1, scope: !236, file: !219, line: 373, type: !13)
!242 = !DILocation(line: 0, scope: !236)
!243 = !DILocation(line: 375, column: 10, scope: !236)
!244 = !DILocation(line: 375, column: 3, scope: !236)
!245 = distinct !DISubprogram(name: "bsearch", scope: !246, file: !246, line: 20, type: !247, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !255)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!247 = !DISubroutineType(types: !248)
!248 = !{!12, !249, !249, !28, !28, !251}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !219, line: 808, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!8, !249, !249}
!255 = !{!256, !257, !258, !259, !260, !261, !262, !263, !264, !265}
!256 = !DILocalVariable(name: "__key", arg: 1, scope: !245, file: !246, line: 20, type: !249)
!257 = !DILocalVariable(name: "__base", arg: 2, scope: !245, file: !246, line: 20, type: !249)
!258 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !245, file: !246, line: 20, type: !28)
!259 = !DILocalVariable(name: "__size", arg: 4, scope: !245, file: !246, line: 20, type: !28)
!260 = !DILocalVariable(name: "__compar", arg: 5, scope: !245, file: !246, line: 21, type: !251)
!261 = !DILocalVariable(name: "__l", scope: !245, file: !246, line: 23, type: !28)
!262 = !DILocalVariable(name: "__u", scope: !245, file: !246, line: 23, type: !28)
!263 = !DILocalVariable(name: "__idx", scope: !245, file: !246, line: 23, type: !28)
!264 = !DILocalVariable(name: "__p", scope: !245, file: !246, line: 24, type: !249)
!265 = !DILocalVariable(name: "__comparison", scope: !245, file: !246, line: 25, type: !8)
!266 = !DILocation(line: 0, scope: !245)
!267 = !DILocation(line: 29, column: 3, scope: !245)
!268 = !DILocation(line: 27, column: 7, scope: !245)
!269 = !DILocation(line: 29, column: 14, scope: !245)
!270 = !DILocation(line: 31, column: 20, scope: !271)
!271 = distinct !DILexicalBlock(scope: !245, file: !246, line: 30, column: 5)
!272 = !DILocation(line: 31, column: 27, scope: !271)
!273 = !DILocation(line: 32, column: 56, scope: !271)
!274 = !DILocation(line: 32, column: 47, scope: !271)
!275 = !DILocation(line: 33, column: 22, scope: !271)
!276 = !DILocation(line: 34, column: 24, scope: !277)
!277 = distinct !DILexicalBlock(scope: !271, file: !246, line: 34, column: 11)
!278 = !DILocation(line: 34, column: 11, scope: !271)
!279 = !DILocation(line: 36, column: 29, scope: !280)
!280 = distinct !DILexicalBlock(scope: !277, file: !246, line: 36, column: 16)
!281 = !DILocation(line: 36, column: 16, scope: !277)
!282 = !DILocation(line: 37, column: 14, scope: !280)
!283 = distinct !{!283, !267, !284}
!284 = !DILocation(line: 40, column: 5, scope: !245)
!285 = !DILocation(line: 43, column: 1, scope: !245)
!286 = distinct !DISubprogram(name: "atof", scope: !287, file: !287, line: 25, type: !288, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !291)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !13}
!290 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!291 = !{!292}
!292 = !DILocalVariable(name: "__nptr", arg: 1, scope: !286, file: !287, line: 25, type: !13)
!293 = !DILocation(line: 0, scope: !286)
!294 = !DILocation(line: 27, column: 10, scope: !286)
!295 = !DILocation(line: 27, column: 3, scope: !286)
!296 = distinct !DISubprogram(name: "strtoimax", scope: !297, file: !297, line: 324, type: !298, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !304)
!297 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!298 = !DISubroutineType(types: !299)
!299 = !{!300, !47, !303, !8}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !301, line: 101, baseType: !302)
!301 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !99, line: 72, baseType: !100)
!303 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!304 = !{!305, !306, !307}
!305 = !DILocalVariable(name: "nptr", arg: 1, scope: !296, file: !297, line: 324, type: !47)
!306 = !DILocalVariable(name: "endptr", arg: 2, scope: !296, file: !297, line: 324, type: !303)
!307 = !DILocalVariable(name: "base", arg: 3, scope: !296, file: !297, line: 324, type: !8)
!308 = !DILocation(line: 0, scope: !296)
!309 = !DILocation(line: 327, column: 10, scope: !296)
!310 = !DILocation(line: 327, column: 3, scope: !296)
!311 = distinct !DISubprogram(name: "strtoumax", scope: !297, file: !297, line: 336, type: !312, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !316)
!312 = !DISubroutineType(types: !313)
!313 = !{!314, !47, !303, !8}
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !301, line: 102, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !99, line: 73, baseType: !30)
!316 = !{!317, !318, !319}
!317 = !DILocalVariable(name: "nptr", arg: 1, scope: !311, file: !297, line: 336, type: !47)
!318 = !DILocalVariable(name: "endptr", arg: 2, scope: !311, file: !297, line: 336, type: !303)
!319 = !DILocalVariable(name: "base", arg: 3, scope: !311, file: !297, line: 336, type: !8)
!320 = !DILocation(line: 0, scope: !311)
!321 = !DILocation(line: 339, column: 10, scope: !311)
!322 = !DILocation(line: 339, column: 3, scope: !311)
!323 = distinct !DISubprogram(name: "wcstoimax", scope: !297, file: !297, line: 348, type: !324, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !333)
!324 = !DISubroutineType(types: !325)
!325 = !{!300, !326, !330, !8}
!326 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !327)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !329)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !297, line: 34, baseType: !8)
!330 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!333 = !{!334, !335, !336}
!334 = !DILocalVariable(name: "nptr", arg: 1, scope: !323, file: !297, line: 348, type: !326)
!335 = !DILocalVariable(name: "endptr", arg: 2, scope: !323, file: !297, line: 348, type: !330)
!336 = !DILocalVariable(name: "base", arg: 3, scope: !323, file: !297, line: 348, type: !8)
!337 = !DILocation(line: 0, scope: !323)
!338 = !DILocation(line: 351, column: 10, scope: !323)
!339 = !DILocation(line: 351, column: 3, scope: !323)
!340 = distinct !DISubprogram(name: "wcstoumax", scope: !297, file: !297, line: 362, type: !341, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !343)
!341 = !DISubroutineType(types: !342)
!342 = !{!314, !326, !330, !8}
!343 = !{!344, !345, !346}
!344 = !DILocalVariable(name: "nptr", arg: 1, scope: !340, file: !297, line: 362, type: !326)
!345 = !DILocalVariable(name: "endptr", arg: 2, scope: !340, file: !297, line: 362, type: !330)
!346 = !DILocalVariable(name: "base", arg: 3, scope: !340, file: !297, line: 362, type: !8)
!347 = !DILocation(line: 0, scope: !340)
!348 = !DILocation(line: 365, column: 10, scope: !340)
!349 = !DILocation(line: 365, column: 3, scope: !340)
!350 = distinct !DISubprogram(name: "stat", scope: !351, file: !351, line: 453, type: !352, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !391)
!351 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!352 = !DISubroutineType(types: !353)
!353 = !{!8, !13, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !356, line: 46, size: 1152, elements: !357)
!356 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!357 = !{!358, !360, !362, !364, !366, !368, !370, !371, !372, !373, !375, !377, !385, !386, !387}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !355, file: !356, line: 48, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !99, line: 145, baseType: !30)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !355, file: !356, line: 53, baseType: !361, size: 64, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !99, line: 148, baseType: !30)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !355, file: !356, line: 61, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !99, line: 151, baseType: !30)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !355, file: !356, line: 62, baseType: !365, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !99, line: 150, baseType: !52)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !355, file: !356, line: 64, baseType: !367, size: 32, offset: 224)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !99, line: 146, baseType: !52)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !355, file: !356, line: 65, baseType: !369, size: 32, offset: 256)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !99, line: 147, baseType: !52)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !355, file: !356, line: 67, baseType: !8, size: 32, offset: 288)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !355, file: !356, line: 69, baseType: !359, size: 64, offset: 320)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !355, file: !356, line: 74, baseType: !98, size: 64, offset: 384)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !355, file: !356, line: 78, baseType: !374, size: 64, offset: 448)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !99, line: 174, baseType: !100)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !355, file: !356, line: 80, baseType: !376, size: 64, offset: 512)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !99, line: 179, baseType: !100)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !355, file: !356, line: 91, baseType: !378, size: 128, offset: 576)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !379, line: 10, size: 128, elements: !380)
!379 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!380 = !{!381, !383}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !378, file: !379, line: 12, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !99, line: 160, baseType: !100)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !378, file: !379, line: 16, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !99, line: 196, baseType: !100)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !355, file: !356, line: 92, baseType: !378, size: 128, offset: 704)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !355, file: !356, line: 93, baseType: !378, size: 128, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !355, file: !356, line: 106, baseType: !388, size: 192, offset: 960)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 192, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 3)
!391 = !{!392, !393}
!392 = !DILocalVariable(name: "__path", arg: 1, scope: !350, file: !351, line: 453, type: !13)
!393 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !350, file: !351, line: 453, type: !354)
!394 = !DILocation(line: 0, scope: !350)
!395 = !DILocation(line: 455, column: 10, scope: !350)
!396 = !DILocation(line: 455, column: 3, scope: !350)
!397 = distinct !DISubprogram(name: "lstat", scope: !351, file: !351, line: 460, type: !352, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !398)
!398 = !{!399, !400}
!399 = !DILocalVariable(name: "__path", arg: 1, scope: !397, file: !351, line: 460, type: !13)
!400 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !397, file: !351, line: 460, type: !354)
!401 = !DILocation(line: 0, scope: !397)
!402 = !DILocation(line: 462, column: 10, scope: !397)
!403 = !DILocation(line: 462, column: 3, scope: !397)
!404 = distinct !DISubprogram(name: "fstat", scope: !351, file: !351, line: 467, type: !405, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !407)
!405 = !DISubroutineType(types: !406)
!406 = !{!8, !8, !354}
!407 = !{!408, !409}
!408 = !DILocalVariable(name: "__fd", arg: 1, scope: !404, file: !351, line: 467, type: !8)
!409 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !404, file: !351, line: 467, type: !354)
!410 = !DILocation(line: 0, scope: !404)
!411 = !DILocation(line: 469, column: 10, scope: !404)
!412 = !DILocation(line: 469, column: 3, scope: !404)
!413 = distinct !DISubprogram(name: "fstatat", scope: !351, file: !351, line: 474, type: !414, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !416)
!414 = !DISubroutineType(types: !415)
!415 = !{!8, !8, !13, !354, !8}
!416 = !{!417, !418, !419, !420}
!417 = !DILocalVariable(name: "__fd", arg: 1, scope: !413, file: !351, line: 474, type: !8)
!418 = !DILocalVariable(name: "__filename", arg: 2, scope: !413, file: !351, line: 474, type: !13)
!419 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !413, file: !351, line: 474, type: !354)
!420 = !DILocalVariable(name: "__flag", arg: 4, scope: !413, file: !351, line: 474, type: !8)
!421 = !DILocation(line: 0, scope: !413)
!422 = !DILocation(line: 477, column: 10, scope: !413)
!423 = !DILocation(line: 477, column: 3, scope: !413)
!424 = distinct !DISubprogram(name: "mknod", scope: !351, file: !351, line: 483, type: !425, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !427)
!425 = !DISubroutineType(types: !426)
!426 = !{!8, !13, !365, !359}
!427 = !{!428, !429, !430}
!428 = !DILocalVariable(name: "__path", arg: 1, scope: !424, file: !351, line: 483, type: !13)
!429 = !DILocalVariable(name: "__mode", arg: 2, scope: !424, file: !351, line: 483, type: !365)
!430 = !DILocalVariable(name: "__dev", arg: 3, scope: !424, file: !351, line: 483, type: !359)
!431 = !DILocation(line: 0, scope: !424)
!432 = !DILocation(line: 485, column: 10, scope: !424)
!433 = !DILocation(line: 485, column: 3, scope: !424)
!434 = distinct !DISubprogram(name: "mknodat", scope: !351, file: !351, line: 491, type: !435, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !437)
!435 = !DISubroutineType(types: !436)
!436 = !{!8, !8, !13, !365, !359}
!437 = !{!438, !439, !440, !441}
!438 = !DILocalVariable(name: "__fd", arg: 1, scope: !434, file: !351, line: 491, type: !8)
!439 = !DILocalVariable(name: "__path", arg: 2, scope: !434, file: !351, line: 491, type: !13)
!440 = !DILocalVariable(name: "__mode", arg: 3, scope: !434, file: !351, line: 491, type: !365)
!441 = !DILocalVariable(name: "__dev", arg: 4, scope: !434, file: !351, line: 491, type: !359)
!442 = !DILocation(line: 0, scope: !434)
!443 = !DILocation(line: 494, column: 10, scope: !434)
!444 = !DILocation(line: 494, column: 3, scope: !434)
!445 = distinct !DISubprogram(name: "stat64", scope: !351, file: !351, line: 502, type: !446, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !468)
!446 = !DISubroutineType(types: !447)
!447 = !{!8, !13, !448}
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !356, line: 119, size: 1152, elements: !450)
!450 = !{!451, !452, !454, !455, !456, !457, !458, !459, !460, !461, !462, !464, !465, !466, !467}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !449, file: !356, line: 121, baseType: !359, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !449, file: !356, line: 123, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !99, line: 149, baseType: !30)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !449, file: !356, line: 124, baseType: !363, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !449, file: !356, line: 125, baseType: !365, size: 32, offset: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !449, file: !356, line: 132, baseType: !367, size: 32, offset: 224)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !449, file: !356, line: 133, baseType: !369, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !449, file: !356, line: 135, baseType: !8, size: 32, offset: 288)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !449, file: !356, line: 136, baseType: !359, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !449, file: !356, line: 137, baseType: !98, size: 64, offset: 384)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !449, file: !356, line: 143, baseType: !374, size: 64, offset: 448)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !449, file: !356, line: 144, baseType: !463, size: 64, offset: 512)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !99, line: 180, baseType: !100)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !449, file: !356, line: 152, baseType: !378, size: 128, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !449, file: !356, line: 153, baseType: !378, size: 128, offset: 704)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !449, file: !356, line: 154, baseType: !378, size: 128, offset: 832)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !449, file: !356, line: 164, baseType: !388, size: 192, offset: 960)
!468 = !{!469, !470}
!469 = !DILocalVariable(name: "__path", arg: 1, scope: !445, file: !351, line: 502, type: !13)
!470 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !445, file: !351, line: 502, type: !448)
!471 = !DILocation(line: 0, scope: !445)
!472 = !DILocation(line: 504, column: 10, scope: !445)
!473 = !DILocation(line: 504, column: 3, scope: !445)
!474 = distinct !DISubprogram(name: "lstat64", scope: !351, file: !351, line: 509, type: !446, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !475)
!475 = !{!476, !477}
!476 = !DILocalVariable(name: "__path", arg: 1, scope: !474, file: !351, line: 509, type: !13)
!477 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !474, file: !351, line: 509, type: !448)
!478 = !DILocation(line: 0, scope: !474)
!479 = !DILocation(line: 511, column: 10, scope: !474)
!480 = !DILocation(line: 511, column: 3, scope: !474)
!481 = distinct !DISubprogram(name: "fstat64", scope: !351, file: !351, line: 516, type: !482, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !484)
!482 = !DISubroutineType(types: !483)
!483 = !{!8, !8, !448}
!484 = !{!485, !486}
!485 = !DILocalVariable(name: "__fd", arg: 1, scope: !481, file: !351, line: 516, type: !8)
!486 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !481, file: !351, line: 516, type: !448)
!487 = !DILocation(line: 0, scope: !481)
!488 = !DILocation(line: 518, column: 10, scope: !481)
!489 = !DILocation(line: 518, column: 3, scope: !481)
!490 = distinct !DISubprogram(name: "fstatat64", scope: !351, file: !351, line: 523, type: !491, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !493)
!491 = !DISubroutineType(types: !492)
!492 = !{!8, !8, !13, !448, !8}
!493 = !{!494, !495, !496, !497}
!494 = !DILocalVariable(name: "__fd", arg: 1, scope: !490, file: !351, line: 523, type: !8)
!495 = !DILocalVariable(name: "__filename", arg: 2, scope: !490, file: !351, line: 523, type: !13)
!496 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !490, file: !351, line: 523, type: !448)
!497 = !DILocalVariable(name: "__flag", arg: 4, scope: !490, file: !351, line: 523, type: !8)
!498 = !DILocation(line: 0, scope: !490)
!499 = !DILocation(line: 526, column: 10, scope: !490)
!500 = !DILocation(line: 526, column: 3, scope: !490)
