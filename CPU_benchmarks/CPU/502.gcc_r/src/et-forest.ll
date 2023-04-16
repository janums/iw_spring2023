; ModuleID = 'et-forest.bc'
source_filename = "et-forest.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.alloc_pool_def = type { i8*, i64, %struct.alloc_pool_list_def*, i8*, i64, i64, i64, i64, %struct.alloc_pool_list_def*, i64, i64 }
%struct.alloc_pool_list_def = type { %struct.alloc_pool_list_def* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.et_node = type { i8*, i32, i32, %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_node*, %struct.et_occ*, %struct.et_occ* }
%struct.et_occ = type { %struct.et_node*, %struct.et_occ*, %struct.et_occ*, %struct.et_occ*, i32, i32, %struct.et_occ* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@et_nodes = internal global %struct.alloc_pool_def* null, align 8, !dbg !0
@.str = private unnamed_addr constant [13 x i8] c"et_node pool\00", align 1
@et_occurrences = internal global %struct.alloc_pool_def* null, align 8, !dbg !39
@.str.1 = private unnamed_addr constant [12 x i8] c"et_occ pool\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !69 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !83, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !86
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !87
  ret i32 %call, !dbg !88
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !89 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !92
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !93
  ret i32 %call, !dbg !94
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !95 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !155, metadata !DIExpression()), !dbg !156
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !157
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !157
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !157
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !157
  %cmp = icmp uge i8* %0, %1, !dbg !157
  %conv1 = zext i1 %cmp to i64, !dbg !157
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !157
  %tobool = icmp eq i64 %expval, 0, !dbg !157
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !157

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !157
  br label %cond.end, !dbg !157

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !157
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !157
  %2 = load i8, i8* %0, align 1, !dbg !157
  %conv3 = zext i8 %2 to i32, !dbg !157
  br label %cond.end, !dbg !157

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !157
  ret i32 %cond, !dbg !158
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !159 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !161, metadata !DIExpression()), !dbg !162
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !163
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !163
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !163
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !163
  %cmp = icmp uge i8* %0, %1, !dbg !163
  %conv1 = zext i1 %cmp to i64, !dbg !163
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !163
  %tobool = icmp eq i64 %expval, 0, !dbg !163
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !163

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !163
  br label %cond.end, !dbg !163

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !163
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !163
  %2 = load i8, i8* %0, align 1, !dbg !163
  %conv3 = zext i8 %2 to i32, !dbg !163
  br label %cond.end, !dbg !163

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !163
  ret i32 %cond, !dbg !164
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !165 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !166
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !166
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !166
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !166
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !166
  %cmp = icmp uge i8* %1, %2, !dbg !166
  %conv1 = zext i1 %cmp to i64, !dbg !166
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !166
  %tobool = icmp eq i64 %expval, 0, !dbg !166
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !166

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !166
  br label %cond.end, !dbg !166

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !166
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !166
  %3 = load i8, i8* %1, align 1, !dbg !166
  %conv3 = zext i8 %3 to i32, !dbg !166
  br label %cond.end, !dbg !166

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !166
  ret i32 %cond, !dbg !167
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !168 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !174
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !175
  ret i32 %call, !dbg !176
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !177 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !181, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !182, metadata !DIExpression()), !dbg !183
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !184
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !184
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !184
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !184
  %cmp = icmp uge i8* %0, %1, !dbg !184
  %conv1 = zext i1 %cmp to i64, !dbg !184
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !184
  %tobool = icmp eq i64 %expval, 0, !dbg !184
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !184

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !184
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !184
  br label %cond.end, !dbg !184

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !184
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !184
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !184
  store i8 %conv2, i8* %0, align 1, !dbg !184
  %conv6 = and i32 %__c, 255, !dbg !184
  br label %cond.end, !dbg !184

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !184
  ret i32 %cond, !dbg !185
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !186 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !188, metadata !DIExpression()), !dbg !190
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !189, metadata !DIExpression()), !dbg !190
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !191
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !191
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !191
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !191
  %cmp = icmp uge i8* %0, %1, !dbg !191
  %conv1 = zext i1 %cmp to i64, !dbg !191
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !191
  %tobool = icmp eq i64 %expval, 0, !dbg !191
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !191

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !191
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !191
  br label %cond.end, !dbg !191

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !191
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !191
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !191
  store i8 %conv2, i8* %0, align 1, !dbg !191
  %conv6 = and i32 %__c, 255, !dbg !191
  br label %cond.end, !dbg !191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !191
  ret i32 %cond, !dbg !192
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !193 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !197
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !197
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !197
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !197
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !197
  %cmp = icmp uge i8* %1, %2, !dbg !197
  %conv1 = zext i1 %cmp to i64, !dbg !197
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !197
  %tobool = icmp eq i64 %expval, 0, !dbg !197
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !197

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !197
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !197
  br label %cond.end, !dbg !197

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !197
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !197
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !197
  store i8 %conv4, i8* %1, align 1, !dbg !197
  %conv6 = and i32 %__c, 255, !dbg !197
  br label %cond.end, !dbg !197

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !197
  ret i32 %cond, !dbg !198
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !199 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !205, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata i64* %__n, metadata !206, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !207, metadata !DIExpression()), !dbg !208
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !209
  ret i64 %call, !dbg !210
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !211 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !213, metadata !DIExpression()), !dbg !214
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !215
  %0 = load i32, i32* %_flags, align 8, !dbg !215
  %and = lshr i32 %0, 4, !dbg !215
  %and.lobit = and i32 %and, 1, !dbg !215
  ret i32 %and.lobit, !dbg !216
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !217 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !219, metadata !DIExpression()), !dbg !220
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !221
  %0 = load i32, i32* %_flags, align 8, !dbg !221
  %and = lshr i32 %0, 5, !dbg !221
  %and.lobit = and i32 %and, 1, !dbg !221
  ret i32 %and.lobit, !dbg !222
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !223 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !226, metadata !DIExpression()), !dbg !227
  %__c.off = add i32 %__c, 128, !dbg !228
  %0 = icmp ult i32 %__c.off, 384, !dbg !228
  br i1 %0, label %cond.true, label %cond.end, !dbg !228

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !229
  %1 = load i32*, i32** %call, align 8, !dbg !230
  %idxprom = sext i32 %__c to i64, !dbg !231
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !231
  %2 = load i32, i32* %arrayidx, align 4, !dbg !231
  br label %cond.end, !dbg !232

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !232
  ret i32 %cond, !dbg !233
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !234 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !236, metadata !DIExpression()), !dbg !237
  %__c.off = add i32 %__c, 128, !dbg !238
  %0 = icmp ult i32 %__c.off, 384, !dbg !238
  br i1 %0, label %cond.true, label %cond.end, !dbg !238

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !239
  %1 = load i32*, i32** %call, align 8, !dbg !240
  %idxprom = sext i32 %__c to i64, !dbg !241
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !241
  %2 = load i32, i32* %arrayidx, align 4, !dbg !241
  br label %cond.end, !dbg !242

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !242
  ret i32 %cond, !dbg !243
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !244 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !249, metadata !DIExpression()), !dbg !250
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !251
  %conv = trunc i64 %call to i32, !dbg !252
  ret i32 %conv, !dbg !253
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !254 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !258, metadata !DIExpression()), !dbg !259
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !260
  ret i64 %call, !dbg !261
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !262 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !267, metadata !DIExpression()), !dbg !268
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !269
  ret i64 %call, !dbg !270
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !282, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i8* %__base, metadata !283, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !284, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %__size, metadata !285, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !286, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 0, metadata !287, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !288, metadata !DIExpression()), !dbg !292
  br label %while.cond, !dbg !293

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !294
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !292
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !287, metadata !DIExpression()), !dbg !292
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !295
  br i1 %cmp, label %while.body, label %cleanup, !dbg !293

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !296
  %div = lshr i64 %add, 1, !dbg !298
  call void @llvm.dbg.value(metadata i64 %div, metadata !289, metadata !DIExpression()), !dbg !292
  %mul = mul i64 %div, %__size, !dbg !299
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !300
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !290, metadata !DIExpression()), !dbg !292
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !301
  call void @llvm.dbg.value(metadata i32 %call, metadata !291, metadata !DIExpression()), !dbg !292
  %cmp1 = icmp slt i32 %call, 0, !dbg !302
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !304

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !305
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !307

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !308
  call void @llvm.dbg.value(metadata i64 %add4, metadata !287, metadata !DIExpression()), !dbg !292
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !292
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !292
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !288, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !287, metadata !DIExpression()), !dbg !292
  br label %while.cond, !dbg !293, !llvm.loop !309

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !292
  ret i8* %retval.0, !dbg !311
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !318, metadata !DIExpression()), !dbg !319
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !320
  ret double %call, !dbg !321
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !322 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !331, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !332, metadata !DIExpression()), !dbg !334
  call void @llvm.dbg.value(metadata i32 %base, metadata !333, metadata !DIExpression()), !dbg !334
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !335
  ret i64 %call, !dbg !336
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !337 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !343, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !344, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.value(metadata i32 %base, metadata !345, metadata !DIExpression()), !dbg !346
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !347
  ret i64 %call, !dbg !348
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !349 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !360, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !361, metadata !DIExpression()), !dbg !363
  call void @llvm.dbg.value(metadata i32 %base, metadata !362, metadata !DIExpression()), !dbg !363
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !364
  ret i64 %call, !dbg !365
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !366 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !370, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !371, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.value(metadata i32 %base, metadata !372, metadata !DIExpression()), !dbg !373
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !374
  ret i64 %call, !dbg !375
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !376 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !418, metadata !DIExpression()), !dbg !420
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !419, metadata !DIExpression()), !dbg !420
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !421
  ret i32 %call, !dbg !422
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !425, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !426, metadata !DIExpression()), !dbg !427
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !428
  ret i32 %call, !dbg !429
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !430 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !434, metadata !DIExpression()), !dbg !436
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !435, metadata !DIExpression()), !dbg !436
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !437
  ret i32 %call, !dbg !438
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !443, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !446, metadata !DIExpression()), !dbg !447
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !448
  ret i32 %call, !dbg !449
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !450 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !454, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !455, metadata !DIExpression()), !dbg !457
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !456, metadata !DIExpression()), !dbg !457
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !456, metadata !DIExpression(DW_OP_deref)), !dbg !457
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !458
  ret i32 %call, !dbg !459
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !460 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !464, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i8* %__path, metadata !465, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !466, metadata !DIExpression()), !dbg !468
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !467, metadata !DIExpression()), !dbg !468
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !467, metadata !DIExpression(DW_OP_deref)), !dbg !468
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !469
  ret i32 %call, !dbg !470
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !471 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !495, metadata !DIExpression()), !dbg !497
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !496, metadata !DIExpression()), !dbg !497
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !498
  ret i32 %call, !dbg !499
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !500 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !502, metadata !DIExpression()), !dbg !504
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !503, metadata !DIExpression()), !dbg !504
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !505
  ret i32 %call, !dbg !506
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !514
  ret i32 %call, !dbg !515
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !520, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !521, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !523, metadata !DIExpression()), !dbg !524
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !525
  ret i32 %call, !dbg !526
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.et_node* @et_new_tree(i8* %data) local_unnamed_addr #3 !dbg !527 {
entry:
  call void @llvm.dbg.value(metadata i8* %data, metadata !531, metadata !DIExpression()), !dbg !533
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_nodes, align 8, !dbg !534
  %tobool = icmp eq %struct.alloc_pool_def* %0, null, !dbg !534
  br i1 %tobool, label %if.then, label %if.end, !dbg !536

if.then:                                          ; preds = %entry
  %call = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 64, i64 300) #5, !dbg !537
  store %struct.alloc_pool_def* %call, %struct.alloc_pool_def** @et_nodes, align 8, !dbg !538
  br label %if.end, !dbg !539

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.alloc_pool_def* [ %0, %entry ], [ %call, %if.then ], !dbg !540
  %call1 = tail call i8* @pool_alloc(%struct.alloc_pool_def* %1) #5, !dbg !541
  %2 = bitcast i8* %call1 to %struct.et_node*, !dbg !542
  call void @llvm.dbg.value(metadata %struct.et_node* %2, metadata !532, metadata !DIExpression()), !dbg !533
  %data2 = bitcast i8* %call1 to i8**, !dbg !543
  store i8* %data, i8** %data2, align 8, !dbg !544
  %father = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !545
  %3 = bitcast i8* %father to %struct.et_node**, !dbg !545
  store %struct.et_node* null, %struct.et_node** %3, align 8, !dbg !546
  %left = getelementptr inbounds i8, i8* %call1, i64 32, !dbg !547
  %4 = bitcast i8* %left to %struct.et_node**, !dbg !547
  store %struct.et_node* null, %struct.et_node** %4, align 8, !dbg !548
  %right = getelementptr inbounds i8, i8* %call1, i64 40, !dbg !549
  %5 = bitcast i8* %right to %struct.et_node**, !dbg !549
  store %struct.et_node* null, %struct.et_node** %5, align 8, !dbg !550
  %son = getelementptr inbounds i8, i8* %call1, i64 24, !dbg !551
  %6 = bitcast i8* %son to %struct.et_node**, !dbg !551
  store %struct.et_node* null, %struct.et_node** %6, align 8, !dbg !552
  %call3 = tail call fastcc %struct.et_occ* @et_new_occ(%struct.et_node* %2) #6, !dbg !553
  %rightmost_occ = getelementptr inbounds i8, i8* %call1, i64 48, !dbg !554
  %7 = bitcast i8* %rightmost_occ to %struct.et_occ**, !dbg !554
  store %struct.et_occ* %call3, %struct.et_occ** %7, align 8, !dbg !555
  %parent_occ = getelementptr inbounds i8, i8* %call1, i64 56, !dbg !556
  %8 = bitcast i8* %parent_occ to %struct.et_occ**, !dbg !556
  store %struct.et_occ* null, %struct.et_occ** %8, align 8, !dbg !557
  ret %struct.et_node* %2, !dbg !558
}

declare dso_local %struct.alloc_pool_def* @create_alloc_pool(i8*, i64, i64) local_unnamed_addr #1

declare dso_local i8* @pool_alloc(%struct.alloc_pool_def*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc %struct.et_occ* @et_new_occ(%struct.et_node* %node) unnamed_addr #3 !dbg !559 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %node, metadata !563, metadata !DIExpression()), !dbg !565
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !566
  %tobool = icmp eq %struct.alloc_pool_def* %0, null, !dbg !566
  br i1 %tobool, label %if.then, label %if.end, !dbg !568

if.then:                                          ; preds = %entry
  %call = tail call %struct.alloc_pool_def* @create_alloc_pool(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i64 48, i64 300) #5, !dbg !569
  store %struct.alloc_pool_def* %call, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !570
  br label %if.end, !dbg !571

if.end:                                           ; preds = %entry, %if.then
  %1 = phi %struct.alloc_pool_def* [ %0, %entry ], [ %call, %if.then ], !dbg !572
  %call1 = tail call i8* @pool_alloc(%struct.alloc_pool_def* %1) #5, !dbg !573
  %2 = bitcast i8* %call1 to %struct.et_occ*, !dbg !574
  call void @llvm.dbg.value(metadata %struct.et_occ* %2, metadata !564, metadata !DIExpression()), !dbg !565
  %of = bitcast i8* %call1 to %struct.et_node**, !dbg !575
  store %struct.et_node* %node, %struct.et_node** %of, align 8, !dbg !576
  %parent = getelementptr inbounds i8, i8* %call1, i64 8, !dbg !577
  %3 = bitcast i8* %parent to %struct.et_occ**, !dbg !577
  store %struct.et_occ* null, %struct.et_occ** %3, align 8, !dbg !578
  %prev = getelementptr inbounds i8, i8* %call1, i64 16, !dbg !579
  %4 = bitcast i8* %prev to %struct.et_occ**, !dbg !579
  store %struct.et_occ* null, %struct.et_occ** %4, align 8, !dbg !580
  %next = getelementptr inbounds i8, i8* %call1, i64 24, !dbg !581
  %5 = bitcast i8* %next to %struct.et_occ**, !dbg !581
  store %struct.et_occ* null, %struct.et_occ** %5, align 8, !dbg !582
  %depth = getelementptr inbounds i8, i8* %call1, i64 32, !dbg !583
  %6 = bitcast i8* %depth to i32*, !dbg !583
  store i32 0, i32* %6, align 8, !dbg !584
  %min_occ = getelementptr inbounds i8, i8* %call1, i64 40, !dbg !585
  %7 = bitcast i8* %min_occ to i8**, !dbg !586
  store i8* %call1, i8** %7, align 8, !dbg !586
  %min = getelementptr inbounds i8, i8* %call1, i64 36, !dbg !587
  %8 = bitcast i8* %min to i32*, !dbg !587
  store i32 0, i32* %8, align 4, !dbg !588
  ret %struct.et_occ* %2, !dbg !589
}

; Function Attrs: nounwind uwtable
define dso_local void @et_free_tree(%struct.et_node* %t) local_unnamed_addr #3 !dbg !590 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %t, metadata !594, metadata !DIExpression()), !dbg !595
  %son = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 4, !dbg !595
  br label %while.cond, !dbg !596

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.et_node*, %struct.et_node** %son, align 8, !dbg !597
  %tobool = icmp eq %struct.et_node* %0, null, !dbg !596
  br i1 %tobool, label %while.end, label %while.body, !dbg !596

while.body:                                       ; preds = %while.cond
  tail call void @et_split(%struct.et_node* nonnull %0) #6, !dbg !598
  br label %while.cond, !dbg !596, !llvm.loop !599

while.end:                                        ; preds = %while.cond
  %father = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 3, !dbg !601
  %1 = load %struct.et_node*, %struct.et_node** %father, align 8, !dbg !601
  %tobool2 = icmp eq %struct.et_node* %1, null, !dbg !603
  br i1 %tobool2, label %if.end, label %if.then, !dbg !604

if.then:                                          ; preds = %while.end
  tail call void @et_split(%struct.et_node* %t) #6, !dbg !605
  br label %if.end, !dbg !605

if.end:                                           ; preds = %while.end, %if.then
  %2 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !606
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 7, !dbg !607
  %3 = bitcast %struct.et_occ** %rightmost_occ to i8**, !dbg !607
  %4 = load i8*, i8** %3, align 8, !dbg !607
  tail call void @pool_free(%struct.alloc_pool_def* %2, i8* %4) #5, !dbg !608
  %5 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_nodes, align 8, !dbg !609
  %6 = bitcast %struct.et_node* %t to i8*, !dbg !610
  tail call void @pool_free(%struct.alloc_pool_def* %5, i8* %6) #5, !dbg !611
  ret void, !dbg !612
}

; Function Attrs: nounwind uwtable
define dso_local void @et_split(%struct.et_node* %t) local_unnamed_addr #3 !dbg !613 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %t, metadata !615, metadata !DIExpression()), !dbg !621
  %father1 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 3, !dbg !622
  %0 = load %struct.et_node*, %struct.et_node** %father1, align 8, !dbg !622
  call void @llvm.dbg.value(metadata %struct.et_node* %0, metadata !616, metadata !DIExpression()), !dbg !621
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 7, !dbg !623
  %1 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ, align 8, !dbg !623
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !619, metadata !DIExpression()), !dbg !621
  tail call fastcc void @et_splay(%struct.et_occ* %1) #6, !dbg !624
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !625
  %r.0.pre = load %struct.et_occ*, %struct.et_occ** %next, align 8, !dbg !627
  br label %for.cond, !dbg !628

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi %struct.et_occ* [ %r.0.pre, %entry ], [ %2, %for.inc ], !dbg !627
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0, metadata !617, metadata !DIExpression()), !dbg !621
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %r.0, i64 0, i32 2, !dbg !629
  %2 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !629
  %tobool = icmp eq %struct.et_occ* %2, null, !dbg !631
  br i1 %tobool, label %for.end, label %for.inc, !dbg !631

for.inc:                                          ; preds = %for.cond
  br label %for.cond, !dbg !632, !llvm.loop !633

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi %struct.et_occ* [ %r.0, %for.cond ], !dbg !627
  %prev.lcssa = phi %struct.et_occ** [ %prev, %for.cond ], !dbg !629
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0.lcssa, metadata !617, metadata !DIExpression()), !dbg !621
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0.lcssa, metadata !617, metadata !DIExpression()), !dbg !621
  tail call fastcc void @et_splay(%struct.et_occ* %r.0.lcssa) #6, !dbg !635
  %3 = load %struct.et_occ*, %struct.et_occ** %prev.lcssa, align 8, !dbg !636
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !637
  store %struct.et_occ* null, %struct.et_occ** %parent, align 8, !dbg !638
  %parent_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 8, !dbg !639
  %4 = load %struct.et_occ*, %struct.et_occ** %parent_occ, align 8, !dbg !639
  call void @llvm.dbg.value(metadata %struct.et_occ* %4, metadata !620, metadata !DIExpression()), !dbg !621
  tail call fastcc void @et_splay(%struct.et_occ* %4) #6, !dbg !640
  store %struct.et_occ* null, %struct.et_occ** %parent_occ, align 8, !dbg !641
  %prev5 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 2, !dbg !642
  %5 = load %struct.et_occ*, %struct.et_occ** %prev5, align 8, !dbg !642
  call void @llvm.dbg.value(metadata %struct.et_occ* %5, metadata !618, metadata !DIExpression()), !dbg !621
  %next6 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 3, !dbg !643
  %6 = load %struct.et_occ*, %struct.et_occ** %next6, align 8, !dbg !643
  %parent7 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %6, i64 0, i32 1, !dbg !644
  store %struct.et_occ* null, %struct.et_occ** %parent7, align 8, !dbg !645
  tail call fastcc void @set_prev(%struct.et_occ* %r.0.lcssa, %struct.et_occ* %5) #6, !dbg !646
  tail call fastcc void @et_recomp_min(%struct.et_occ* %r.0.lcssa) #6, !dbg !647
  tail call fastcc void @et_splay(%struct.et_occ* %1) #6, !dbg !648
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 4, !dbg !649
  store i32 0, i32* %depth, align 8, !dbg !650
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 5, !dbg !651
  store i32 0, i32* %min, align 4, !dbg !652
  %7 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !653
  %8 = bitcast %struct.et_occ* %4 to i8*, !dbg !654
  tail call void @pool_free(%struct.alloc_pool_def* %7, i8* %8) #5, !dbg !655
  %son = getelementptr inbounds %struct.et_node, %struct.et_node* %0, i64 0, i32 4, !dbg !656
  %9 = load %struct.et_node*, %struct.et_node** %son, align 8, !dbg !656
  %cmp = icmp eq %struct.et_node* %9, %t, !dbg !658
  br i1 %cmp, label %if.then, label %if.end, !dbg !659

if.then:                                          ; preds = %for.end
  %right = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 6, !dbg !660
  %10 = bitcast %struct.et_node** %right to i64*, !dbg !660
  %11 = load i64, i64* %10, align 8, !dbg !660
  %12 = bitcast %struct.et_node** %son to i64*, !dbg !661
  store i64 %11, i64* %12, align 8, !dbg !661
  %13 = inttoptr i64 %11 to %struct.et_node*, !dbg !662
  br label %if.end, !dbg !662

if.end:                                           ; preds = %if.then, %for.end
  %14 = phi %struct.et_node* [ %13, %if.then ], [ %9, %for.end ], !dbg !663
  %cmp10 = icmp eq %struct.et_node* %14, %t, !dbg !665
  br i1 %cmp10, label %if.then11, label %if.else, !dbg !666

if.then11:                                        ; preds = %if.end
  store %struct.et_node* null, %struct.et_node** %son, align 8, !dbg !667
  br label %if.end18, !dbg !668

if.else:                                          ; preds = %if.end
  %right13 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 6, !dbg !669
  %15 = bitcast %struct.et_node** %right13 to i64*, !dbg !669
  %16 = load i64, i64* %15, align 8, !dbg !669
  %left = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 5, !dbg !671
  %17 = load %struct.et_node*, %struct.et_node** %left, align 8, !dbg !671
  %right14 = getelementptr inbounds %struct.et_node, %struct.et_node* %17, i64 0, i32 6, !dbg !672
  %18 = bitcast %struct.et_node** %right14 to i64*, !dbg !673
  store i64 %16, i64* %18, align 8, !dbg !673
  %19 = bitcast %struct.et_node** %left to i64*, !dbg !674
  %20 = load i64, i64* %19, align 8, !dbg !674
  %21 = load %struct.et_node*, %struct.et_node** %right13, align 8, !dbg !675
  %left17 = getelementptr inbounds %struct.et_node, %struct.et_node* %21, i64 0, i32 5, !dbg !676
  %22 = bitcast %struct.et_node** %left17 to i64*, !dbg !677
  store i64 %20, i64* %22, align 8, !dbg !677
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then11
  %right19 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 6, !dbg !678
  store %struct.et_node* null, %struct.et_node** %right19, align 8, !dbg !679
  %left20 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 5, !dbg !680
  store %struct.et_node* null, %struct.et_node** %left20, align 8, !dbg !681
  store %struct.et_node* null, %struct.et_node** %father1, align 8, !dbg !682
  ret void, !dbg !683
}

declare dso_local void @pool_free(%struct.alloc_pool_def*, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @et_free_tree_force(%struct.et_node* %t) local_unnamed_addr #3 !dbg !684 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %t, metadata !686, metadata !DIExpression()), !dbg !687
  %0 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !688
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 7, !dbg !689
  %1 = bitcast %struct.et_occ** %rightmost_occ to i8**, !dbg !689
  %2 = load i8*, i8** %1, align 8, !dbg !689
  tail call void @pool_free(%struct.alloc_pool_def* %0, i8* %2) #5, !dbg !690
  %parent_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 8, !dbg !691
  %3 = load %struct.et_occ*, %struct.et_occ** %parent_occ, align 8, !dbg !691
  %tobool = icmp eq %struct.et_occ* %3, null, !dbg !693
  br i1 %tobool, label %if.end, label %if.then, !dbg !694

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.et_occ* %3 to i8*, !dbg !694
  %5 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_occurrences, align 8, !dbg !695
  tail call void @pool_free(%struct.alloc_pool_def* %5, i8* nonnull %4) #5, !dbg !696
  br label %if.end, !dbg !696

if.end:                                           ; preds = %entry, %if.then
  %6 = load %struct.alloc_pool_def*, %struct.alloc_pool_def** @et_nodes, align 8, !dbg !697
  %7 = bitcast %struct.et_node* %t to i8*, !dbg !698
  tail call void @pool_free(%struct.alloc_pool_def* %6, i8* %7) #5, !dbg !699
  ret void, !dbg !700
}

; Function Attrs: nounwind uwtable
define dso_local void @et_free_pools() local_unnamed_addr #3 !dbg !701 {
entry:
  tail call void @free_alloc_pool_if_empty(%struct.alloc_pool_def** nonnull @et_occurrences) #5, !dbg !704
  tail call void @free_alloc_pool_if_empty(%struct.alloc_pool_def** nonnull @et_nodes) #5, !dbg !705
  ret void, !dbg !706
}

declare dso_local void @free_alloc_pool_if_empty(%struct.alloc_pool_def**) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @et_set_father(%struct.et_node* %t, %struct.et_node* %father) local_unnamed_addr #3 !dbg !707 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %t, metadata !711, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata %struct.et_node* %father, metadata !712, metadata !DIExpression()), !dbg !719
  %call = tail call fastcc %struct.et_occ* @et_new_occ(%struct.et_node* %father) #6, !dbg !720
  call void @llvm.dbg.value(metadata %struct.et_occ* %call, metadata !717, metadata !DIExpression()), !dbg !719
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %father, i64 0, i32 7, !dbg !721
  %0 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ, align 8, !dbg !721
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !715, metadata !DIExpression()), !dbg !719
  tail call fastcc void @et_splay(%struct.et_occ* %0) #6, !dbg !722
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 2, !dbg !723
  %1 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !723
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !716, metadata !DIExpression()), !dbg !719
  %rightmost_occ1 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 7, !dbg !724
  %2 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ1, align 8, !dbg !724
  call void @llvm.dbg.value(metadata %struct.et_occ* %2, metadata !718, metadata !DIExpression()), !dbg !719
  tail call fastcc void @et_splay(%struct.et_occ* %2) #6, !dbg !725
  tail call fastcc void @set_prev(%struct.et_occ* %call, %struct.et_occ* %1) #6, !dbg !726
  tail call fastcc void @set_next(%struct.et_occ* %call, %struct.et_occ* %2) #6, !dbg !727
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 4, !dbg !728
  %3 = load i32, i32* %depth, align 8, !dbg !729
  %inc = add nsw i32 %3, 1, !dbg !729
  store i32 %inc, i32* %depth, align 8, !dbg !729
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 5, !dbg !730
  %4 = load i32, i32* %min, align 4, !dbg !731
  %inc2 = add nsw i32 %4, 1, !dbg !731
  store i32 %inc2, i32* %min, align 4, !dbg !731
  tail call fastcc void @et_recomp_min(%struct.et_occ* %call) #6, !dbg !732
  tail call fastcc void @set_prev(%struct.et_occ* %0, %struct.et_occ* %call) #6, !dbg !733
  %min3 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %call, i64 0, i32 5, !dbg !734
  %5 = load i32, i32* %min3, align 4, !dbg !734
  %depth4 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 4, !dbg !736
  %6 = load i32, i32* %depth4, align 8, !dbg !736
  %add = add nsw i32 %5, %6, !dbg !737
  %min5 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 5, !dbg !738
  %7 = load i32, i32* %min5, align 4, !dbg !738
  %cmp = icmp slt i32 %add, %7, !dbg !739
  br i1 %cmp, label %if.then, label %if.end, !dbg !740

if.then:                                          ; preds = %entry
  store i32 %add, i32* %min5, align 4, !dbg !741
  %min_occ = getelementptr inbounds %struct.et_occ, %struct.et_occ* %call, i64 0, i32 6, !dbg !743
  %8 = bitcast %struct.et_occ** %min_occ to i64*, !dbg !743
  %9 = load i64, i64* %8, align 8, !dbg !743
  %min_occ10 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 6, !dbg !744
  %10 = bitcast %struct.et_occ** %min_occ10 to i64*, !dbg !745
  store i64 %9, i64* %10, align 8, !dbg !745
  br label %if.end, !dbg !746

if.end:                                           ; preds = %if.then, %entry
  %parent_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 8, !dbg !747
  store %struct.et_occ* %call, %struct.et_occ** %parent_occ, align 8, !dbg !748
  %father11 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 3, !dbg !749
  store %struct.et_node* %father, %struct.et_node** %father11, align 8, !dbg !750
  %son = getelementptr inbounds %struct.et_node, %struct.et_node* %father, i64 0, i32 4, !dbg !751
  %11 = load %struct.et_node*, %struct.et_node** %son, align 8, !dbg !751
  call void @llvm.dbg.value(metadata %struct.et_node* %11, metadata !714, metadata !DIExpression()), !dbg !719
  %tobool = icmp eq %struct.et_node* %11, null, !dbg !752
  br i1 %tobool, label %if.end14, label %if.then12, !dbg !754

if.then12:                                        ; preds = %if.end
  %left13 = getelementptr inbounds %struct.et_node, %struct.et_node* %11, i64 0, i32 5, !dbg !755
  %12 = load %struct.et_node*, %struct.et_node** %left13, align 8, !dbg !755
  call void @llvm.dbg.value(metadata %struct.et_node* %12, metadata !713, metadata !DIExpression()), !dbg !719
  br label %if.end14, !dbg !756

if.end14:                                         ; preds = %if.end, %if.then12
  %left.0 = phi %struct.et_node* [ %12, %if.then12 ], [ %t, %if.end ], !dbg !757
  %right.0 = phi %struct.et_node* [ %11, %if.then12 ], [ %t, %if.end ], !dbg !719
  call void @llvm.dbg.value(metadata %struct.et_node* %right.0, metadata !714, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata %struct.et_node* %left.0, metadata !713, metadata !DIExpression()), !dbg !719
  %right15 = getelementptr inbounds %struct.et_node, %struct.et_node* %left.0, i64 0, i32 6, !dbg !758
  store %struct.et_node* %t, %struct.et_node** %right15, align 8, !dbg !759
  %left16 = getelementptr inbounds %struct.et_node, %struct.et_node* %right.0, i64 0, i32 5, !dbg !760
  store %struct.et_node* %t, %struct.et_node** %left16, align 8, !dbg !761
  %left17 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 5, !dbg !762
  store %struct.et_node* %left.0, %struct.et_node** %left17, align 8, !dbg !763
  %right18 = getelementptr inbounds %struct.et_node, %struct.et_node* %t, i64 0, i32 6, !dbg !764
  store %struct.et_node* %right.0, %struct.et_node** %right18, align 8, !dbg !765
  store %struct.et_node* %t, %struct.et_node** %son, align 8, !dbg !766
  ret void, !dbg !767
}

; Function Attrs: nounwind uwtable
define internal fastcc void @et_splay(%struct.et_occ* %occ) unnamed_addr #3 !dbg !768 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !772, metadata !DIExpression()), !dbg !779
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 1, !dbg !779
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 4, !dbg !780
  %min_occ15 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 6, !dbg !780
  %0 = bitcast %struct.et_occ** %min_occ15 to i64*, !dbg !780
  %min17 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 5, !dbg !780
  %prev55 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 2, !dbg !782
  %next46 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 3, !dbg !787
  br label %while.cond, !dbg !789

while.cond:                                       ; preds = %if.end72, %entry
  %1 = load %struct.et_occ*, %struct.et_occ** %parent, align 8, !dbg !790
  %tobool = icmp eq %struct.et_occ* %1, null, !dbg !789
  br i1 %tobool, label %cleanup.cont.loopexit, label %while.body, !dbg !789

while.body:                                       ; preds = %while.cond
  %2 = load i32, i32* %depth, align 8, !dbg !791
  call void @llvm.dbg.value(metadata i32 %2, metadata !776, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !773, metadata !DIExpression()), !dbg !779
  %depth2 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 4, !dbg !792
  %3 = load i32, i32* %depth2, align 8, !dbg !792
  call void @llvm.dbg.value(metadata i32 %3, metadata !777, metadata !DIExpression()), !dbg !779
  %parent3 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 1, !dbg !793
  %4 = load %struct.et_occ*, %struct.et_occ** %parent3, align 8, !dbg !793
  call void @llvm.dbg.value(metadata %struct.et_occ* %4, metadata !774, metadata !DIExpression()), !dbg !779
  %tobool4 = icmp eq %struct.et_occ* %4, null, !dbg !794
  br i1 %tobool4, label %if.then, label %if.end12, !dbg !796

if.then:                                          ; preds = %while.body
  %.lcssa10 = phi i32 [ %2, %while.body ], !dbg !791
  %.lcssa9 = phi i32 [ %3, %while.body ], !dbg !792
  %.lcssa8 = phi %struct.et_occ* [ %1, %while.body ], !dbg !790
  tail call fastcc void @set_depth_add(%struct.et_occ* %occ, i32 %.lcssa9) #6, !dbg !797
  %min_occ = getelementptr inbounds %struct.et_occ, %struct.et_occ* %.lcssa8, i64 0, i32 6, !dbg !799
  %5 = bitcast %struct.et_occ** %min_occ to i64*, !dbg !799
  %6 = load i64, i64* %5, align 8, !dbg !799
  store i64 %6, i64* %0, align 8, !dbg !800
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %.lcssa8, i64 0, i32 5, !dbg !801
  %7 = load i32, i32* %min, align 4, !dbg !801
  store i32 %7, i32* %min17, align 4, !dbg !802
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %.lcssa8, i64 0, i32 2, !dbg !803
  %8 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !803
  %cmp = icmp eq %struct.et_occ* %8, %occ, !dbg !805
  br i1 %cmp, label %if.then7, label %if.else, !dbg !806

if.then7:                                         ; preds = %if.then
  %9 = load %struct.et_occ*, %struct.et_occ** %next46, align 8, !dbg !807
  tail call fastcc void @set_prev(%struct.et_occ* %.lcssa8, %struct.et_occ* %9) #6, !dbg !809
  tail call fastcc void @set_next(%struct.et_occ* %occ, %struct.et_occ* %.lcssa8) #6, !dbg !810
  %10 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !811
  tail call fastcc void @set_depth_add(%struct.et_occ* %10, i32 %.lcssa10) #6, !dbg !812
  br label %if.end, !dbg !813

if.else:                                          ; preds = %if.then
  %11 = load %struct.et_occ*, %struct.et_occ** %prev55, align 8, !dbg !814
  tail call fastcc void @set_next(%struct.et_occ* %.lcssa8, %struct.et_occ* %11) #6, !dbg !816
  tail call fastcc void @set_prev(%struct.et_occ* %occ, %struct.et_occ* %.lcssa8) #6, !dbg !817
  %next10 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %.lcssa8, i64 0, i32 3, !dbg !818
  %12 = load %struct.et_occ*, %struct.et_occ** %next10, align 8, !dbg !818
  tail call fastcc void @set_depth_add(%struct.et_occ* %12, i32 %.lcssa10) #6, !dbg !819
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then7
  %sub = sub nsw i32 0, %.lcssa10, !dbg !820
  tail call fastcc void @set_depth(%struct.et_occ* %.lcssa8, i32 %sub) #6, !dbg !821
  store %struct.et_occ* null, %struct.et_occ** %parent, align 8, !dbg !822
  tail call fastcc void @et_recomp_min(%struct.et_occ* %.lcssa8) #6, !dbg !823
  br label %cleanup.cont, !dbg !824

if.end12:                                         ; preds = %while.body
  %depth13 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 4, !dbg !825
  %13 = load i32, i32* %depth13, align 8, !dbg !825
  call void @llvm.dbg.value(metadata i32 %13, metadata !778, metadata !DIExpression()), !dbg !779
  %add = add nsw i32 %3, %13, !dbg !826
  tail call fastcc void @set_depth_add(%struct.et_occ* %occ, i32 %add) #6, !dbg !827
  %min_occ14 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 6, !dbg !828
  %14 = bitcast %struct.et_occ** %min_occ14 to i64*, !dbg !828
  %15 = load i64, i64* %14, align 8, !dbg !828
  store i64 %15, i64* %0, align 8, !dbg !829
  %min16 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 5, !dbg !830
  %16 = load i32, i32* %min16, align 4, !dbg !830
  store i32 %16, i32* %min17, align 4, !dbg !831
  %parent18 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 1, !dbg !832
  %17 = load %struct.et_occ*, %struct.et_occ** %parent18, align 8, !dbg !832
  call void @llvm.dbg.value(metadata %struct.et_occ* %17, metadata !775, metadata !DIExpression()), !dbg !779
  %prev19 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 2, !dbg !833
  %18 = load %struct.et_occ*, %struct.et_occ** %prev19, align 8, !dbg !833
  %cmp20 = icmp eq %struct.et_occ* %18, %1, !dbg !834
  %prev22 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 2, !dbg !835
  %19 = load %struct.et_occ*, %struct.et_occ** %prev22, align 8, !dbg !835
  %cmp23 = icmp eq %struct.et_occ* %19, %occ, !dbg !835
  br i1 %cmp20, label %if.then21, label %if.else41, !dbg !836

if.then21:                                        ; preds = %if.end12
  br i1 %cmp23, label %if.then24, label %if.else31, !dbg !837

if.then24:                                        ; preds = %if.then21
  %next25 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !839
  %20 = load %struct.et_occ*, %struct.et_occ** %next25, align 8, !dbg !839
  tail call fastcc void @set_prev(%struct.et_occ* nonnull %4, %struct.et_occ* %20) #6, !dbg !842
  %21 = load %struct.et_occ*, %struct.et_occ** %next46, align 8, !dbg !843
  tail call fastcc void @set_prev(%struct.et_occ* %1, %struct.et_occ* %21) #6, !dbg !844
  tail call fastcc void @set_next(%struct.et_occ* %occ, %struct.et_occ* %1) #6, !dbg !845
  tail call fastcc void @set_next(%struct.et_occ* %1, %struct.et_occ* nonnull %4) #6, !dbg !846
  %sub27 = sub nsw i32 0, %2, !dbg !847
  tail call fastcc void @set_depth(%struct.et_occ* %1, i32 %sub27) #6, !dbg !848
  %22 = load %struct.et_occ*, %struct.et_occ** %prev22, align 8, !dbg !849
  tail call fastcc void @set_depth_add(%struct.et_occ* %22, i32 %2) #6, !dbg !850
  %sub29 = sub nsw i32 0, %3, !dbg !851
  tail call fastcc void @set_depth(%struct.et_occ* nonnull %4, i32 %sub29) #6, !dbg !852
  %23 = load %struct.et_occ*, %struct.et_occ** %prev19, align 8, !dbg !853
  tail call fastcc void @set_depth_add(%struct.et_occ* %23, i32 %3) #6, !dbg !854
  br label %if.end61, !dbg !855

if.else31:                                        ; preds = %if.then21
  %24 = load %struct.et_occ*, %struct.et_occ** %next46, align 8, !dbg !856
  tail call fastcc void @set_prev(%struct.et_occ* nonnull %4, %struct.et_occ* %24) #6, !dbg !858
  %25 = load %struct.et_occ*, %struct.et_occ** %prev55, align 8, !dbg !859
  tail call fastcc void @set_next(%struct.et_occ* %1, %struct.et_occ* %25) #6, !dbg !860
  tail call fastcc void @set_prev(%struct.et_occ* %occ, %struct.et_occ* %1) #6, !dbg !861
  tail call fastcc void @set_next(%struct.et_occ* %occ, %struct.et_occ* nonnull %4) #6, !dbg !862
  %sub34 = sub nsw i32 0, %2, !dbg !863
  tail call fastcc void @set_depth(%struct.et_occ* %1, i32 %sub34) #6, !dbg !864
  %next35 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !865
  %26 = load %struct.et_occ*, %struct.et_occ** %next35, align 8, !dbg !865
  tail call fastcc void @set_depth_add(%struct.et_occ* %26, i32 %2) #6, !dbg !866
  %sub37 = sub nsw i32 %sub34, %3, !dbg !867
  tail call fastcc void @set_depth(%struct.et_occ* nonnull %4, i32 %sub37) #6, !dbg !868
  %27 = load %struct.et_occ*, %struct.et_occ** %prev19, align 8, !dbg !869
  %add39 = add nsw i32 %2, %3, !dbg !870
  tail call fastcc void @set_depth_add(%struct.et_occ* %27, i32 %add39) #6, !dbg !871
  br label %if.end61

if.else41:                                        ; preds = %if.end12
  br i1 %cmp23, label %if.then44, label %if.else53, !dbg !872

if.then44:                                        ; preds = %if.else41
  %28 = load %struct.et_occ*, %struct.et_occ** %prev55, align 8, !dbg !873
  tail call fastcc void @set_next(%struct.et_occ* nonnull %4, %struct.et_occ* %28) #6, !dbg !874
  %29 = load %struct.et_occ*, %struct.et_occ** %next46, align 8, !dbg !875
  tail call fastcc void @set_prev(%struct.et_occ* %1, %struct.et_occ* %29) #6, !dbg !876
  tail call fastcc void @set_prev(%struct.et_occ* %occ, %struct.et_occ* nonnull %4) #6, !dbg !877
  tail call fastcc void @set_next(%struct.et_occ* %occ, %struct.et_occ* %1) #6, !dbg !878
  %sub47 = sub nsw i32 0, %2, !dbg !879
  tail call fastcc void @set_depth(%struct.et_occ* %1, i32 %sub47) #6, !dbg !880
  %30 = load %struct.et_occ*, %struct.et_occ** %prev22, align 8, !dbg !881
  tail call fastcc void @set_depth_add(%struct.et_occ* %30, i32 %2) #6, !dbg !882
  %sub50 = sub nsw i32 %sub47, %3, !dbg !883
  tail call fastcc void @set_depth(%struct.et_occ* nonnull %4, i32 %sub50) #6, !dbg !884
  %next51 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 3, !dbg !885
  %31 = load %struct.et_occ*, %struct.et_occ** %next51, align 8, !dbg !885
  %add52 = add nsw i32 %2, %3, !dbg !886
  tail call fastcc void @set_depth_add(%struct.et_occ* %31, i32 %add52) #6, !dbg !887
  br label %if.end61, !dbg !888

if.else53:                                        ; preds = %if.else41
  tail call fastcc void @set_next(%struct.et_occ* nonnull %4, %struct.et_occ* %19) #6, !dbg !889
  %32 = load %struct.et_occ*, %struct.et_occ** %prev55, align 8, !dbg !890
  tail call fastcc void @set_next(%struct.et_occ* %1, %struct.et_occ* %32) #6, !dbg !891
  tail call fastcc void @set_prev(%struct.et_occ* %occ, %struct.et_occ* %1) #6, !dbg !892
  tail call fastcc void @set_prev(%struct.et_occ* %1, %struct.et_occ* nonnull %4) #6, !dbg !893
  %sub56 = sub nsw i32 0, %2, !dbg !894
  tail call fastcc void @set_depth(%struct.et_occ* %1, i32 %sub56) #6, !dbg !895
  %next57 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !896
  %33 = load %struct.et_occ*, %struct.et_occ** %next57, align 8, !dbg !896
  tail call fastcc void @set_depth_add(%struct.et_occ* %33, i32 %2) #6, !dbg !897
  %sub58 = sub nsw i32 0, %3, !dbg !898
  tail call fastcc void @set_depth(%struct.et_occ* nonnull %4, i32 %sub58) #6, !dbg !899
  %next59 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %4, i64 0, i32 3, !dbg !900
  %34 = load %struct.et_occ*, %struct.et_occ** %next59, align 8, !dbg !900
  tail call fastcc void @set_depth_add(%struct.et_occ* %34, i32 %3) #6, !dbg !901
  br label %if.end61

if.end61:                                         ; preds = %if.then44, %if.else53, %if.then24, %if.else31
  store %struct.et_occ* %17, %struct.et_occ** %parent, align 8, !dbg !902
  %tobool63 = icmp eq %struct.et_occ* %17, null, !dbg !903
  br i1 %tobool63, label %if.end72, label %if.then64, !dbg !905

if.then64:                                        ; preds = %if.end61
  %prev65 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %17, i64 0, i32 2, !dbg !906
  %35 = load %struct.et_occ*, %struct.et_occ** %prev65, align 8, !dbg !906
  %cmp66 = icmp eq %struct.et_occ* %35, %4, !dbg !909
  br i1 %cmp66, label %if.then67, label %if.else69, !dbg !910

if.then67:                                        ; preds = %if.then64
  store %struct.et_occ* %occ, %struct.et_occ** %prev65, align 8, !dbg !911
  br label %if.end72, !dbg !912

if.else69:                                        ; preds = %if.then64
  %next70 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %17, i64 0, i32 3, !dbg !913
  store %struct.et_occ* %occ, %struct.et_occ** %next70, align 8, !dbg !914
  br label %if.end72

if.end72:                                         ; preds = %if.end61, %if.then67, %if.else69
  tail call fastcc void @et_recomp_min(%struct.et_occ* nonnull %4) #6, !dbg !915
  tail call fastcc void @et_recomp_min(%struct.et_occ* %1) #6, !dbg !916
  br label %while.cond, !dbg !789, !llvm.loop !917

cleanup.cont.loopexit:                            ; preds = %while.cond
  br label %cleanup.cont, !dbg !919

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %if.end
  ret void, !dbg !919
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_prev(%struct.et_occ* %occ, %struct.et_occ* %t) unnamed_addr #0 !dbg !920 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !924, metadata !DIExpression()), !dbg !926
  call void @llvm.dbg.value(metadata %struct.et_occ* %t, metadata !925, metadata !DIExpression()), !dbg !926
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 2, !dbg !927
  store %struct.et_occ* %t, %struct.et_occ** %prev, align 8, !dbg !928
  %tobool = icmp eq %struct.et_occ* %t, null, !dbg !929
  br i1 %tobool, label %if.end, label %if.then, !dbg !931

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %t, i64 0, i32 1, !dbg !932
  store %struct.et_occ* %occ, %struct.et_occ** %parent, align 8, !dbg !933
  br label %if.end, !dbg !934

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !935
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_next(%struct.et_occ* %occ, %struct.et_occ* %t) unnamed_addr #0 !dbg !936 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !938, metadata !DIExpression()), !dbg !940
  call void @llvm.dbg.value(metadata %struct.et_occ* %t, metadata !939, metadata !DIExpression()), !dbg !940
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 3, !dbg !941
  store %struct.et_occ* %t, %struct.et_occ** %next, align 8, !dbg !942
  %tobool = icmp eq %struct.et_occ* %t, null, !dbg !943
  br i1 %tobool, label %if.end, label %if.then, !dbg !945

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %t, i64 0, i32 1, !dbg !946
  store %struct.et_occ* %occ, %struct.et_occ** %parent, align 8, !dbg !947
  br label %if.end, !dbg !948

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !949
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @et_recomp_min(%struct.et_occ* %occ) unnamed_addr #0 !dbg !950 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !952, metadata !DIExpression()), !dbg !954
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 2, !dbg !955
  %0 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !955
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !953, metadata !DIExpression()), !dbg !954
  %tobool = icmp eq %struct.et_occ* %0, null, !dbg !956
  br i1 %tobool, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !958

entry.if.then_crit_edge:                          ; preds = %entry
  %next4.phi.trans.insert = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 3, !dbg !959
  %.pre = load %struct.et_occ*, %struct.et_occ** %next4.phi.trans.insert, align 8, !dbg !960
  br label %if.then, !dbg !958

lor.lhs.false:                                    ; preds = %entry
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 3, !dbg !961
  %1 = load %struct.et_occ*, %struct.et_occ** %next, align 8, !dbg !961
  %tobool1 = icmp eq %struct.et_occ* %1, null, !dbg !962
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !963

land.lhs.true:                                    ; preds = %lor.lhs.false
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 5, !dbg !964
  %2 = load i32, i32* %min, align 4, !dbg !964
  %min3 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 5, !dbg !965
  %3 = load i32, i32* %min3, align 4, !dbg !965
  %cmp = icmp sgt i32 %2, %3, !dbg !966
  br i1 %cmp, label %if.then, label %if.end, !dbg !967

if.then:                                          ; preds = %entry.if.then_crit_edge, %land.lhs.true
  %4 = phi %struct.et_occ* [ %.pre, %entry.if.then_crit_edge ], [ %1, %land.lhs.true ], !dbg !960
  call void @llvm.dbg.value(metadata %struct.et_occ* %4, metadata !953, metadata !DIExpression()), !dbg !954
  br label %if.end, !dbg !968

if.end:                                           ; preds = %lor.lhs.false, %if.then, %land.lhs.true
  %mson.0 = phi %struct.et_occ* [ %4, %if.then ], [ %0, %land.lhs.true ], [ %0, %lor.lhs.false ], !dbg !954
  call void @llvm.dbg.value(metadata %struct.et_occ* %mson.0, metadata !953, metadata !DIExpression()), !dbg !954
  %tobool5 = icmp eq %struct.et_occ* %mson.0, null, !dbg !969
  br i1 %tobool5, label %if.else, label %land.lhs.true6, !dbg !971

land.lhs.true6:                                   ; preds = %if.end
  %min7 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %mson.0, i64 0, i32 5, !dbg !972
  %5 = load i32, i32* %min7, align 4, !dbg !972
  %cmp8 = icmp slt i32 %5, 0, !dbg !973
  br i1 %cmp8, label %if.then9, label %if.else, !dbg !974

if.then9:                                         ; preds = %land.lhs.true6
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 4, !dbg !975
  %6 = load i32, i32* %depth, align 8, !dbg !975
  %add = add nsw i32 %5, %6, !dbg !977
  %min11 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 5, !dbg !978
  store i32 %add, i32* %min11, align 4, !dbg !979
  %min_occ = getelementptr inbounds %struct.et_occ, %struct.et_occ* %mson.0, i64 0, i32 6, !dbg !980
  %7 = bitcast %struct.et_occ** %min_occ to i64*, !dbg !980
  %8 = load i64, i64* %7, align 8, !dbg !980
  %min_occ12 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 6, !dbg !981
  %9 = bitcast %struct.et_occ** %min_occ12 to i64*, !dbg !982
  store i64 %8, i64* %9, align 8, !dbg !982
  br label %if.end16, !dbg !983

if.else:                                          ; preds = %if.end, %land.lhs.true6
  %depth13 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 4, !dbg !984
  %10 = load i32, i32* %depth13, align 8, !dbg !984
  %min14 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 5, !dbg !986
  store i32 %10, i32* %min14, align 4, !dbg !987
  %min_occ15 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 6, !dbg !988
  store %struct.et_occ* %occ, %struct.et_occ** %min_occ15, align 8, !dbg !989
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  ret void, !dbg !990
}

; Function Attrs: nounwind uwtable
define dso_local %struct.et_node* @et_nca(%struct.et_node* %n1, %struct.et_node* %n2) local_unnamed_addr #3 !dbg !991 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %n1, metadata !995, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata %struct.et_node* %n2, metadata !996, metadata !DIExpression()), !dbg !1004
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %n1, i64 0, i32 7, !dbg !1005
  %0 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ, align 8, !dbg !1005
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !997, metadata !DIExpression()), !dbg !1004
  %rightmost_occ1 = getelementptr inbounds %struct.et_node, %struct.et_node* %n2, i64 0, i32 7, !dbg !1006
  %1 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ1, align 8, !dbg !1006
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !998, metadata !DIExpression()), !dbg !1004
  %cmp = icmp eq %struct.et_node* %n1, %n2, !dbg !1007
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1009

if.end:                                           ; preds = %entry
  tail call fastcc void @et_splay(%struct.et_occ* %0) #6, !dbg !1010
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 2, !dbg !1011
  %2 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !1011
  call void @llvm.dbg.value(metadata %struct.et_occ* %2, metadata !1000, metadata !DIExpression()), !dbg !1004
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 3, !dbg !1012
  %3 = load %struct.et_occ*, %struct.et_occ** %next, align 8, !dbg !1012
  call void @llvm.dbg.value(metadata %struct.et_occ* %3, metadata !1001, metadata !DIExpression()), !dbg !1004
  %tobool = icmp eq %struct.et_occ* %2, null, !dbg !1013
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !1015

if.then2:                                         ; preds = %if.end
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 1, !dbg !1016
  store %struct.et_occ* null, %struct.et_occ** %parent, align 8, !dbg !1017
  br label %if.end3, !dbg !1018

if.end3:                                          ; preds = %if.end, %if.then2
  %tobool4 = icmp eq %struct.et_occ* %3, null, !dbg !1019
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1021

if.then5:                                         ; preds = %if.end3
  %parent6 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !1022
  store %struct.et_occ* null, %struct.et_occ** %parent6, align 8, !dbg !1023
  br label %if.end7, !dbg !1024

if.end7:                                          ; preds = %if.end3, %if.then5
  tail call fastcc void @et_splay(%struct.et_occ* %1) #6, !dbg !1025
  %cmp8 = icmp eq %struct.et_occ* %2, %1, !dbg !1026
  br i1 %cmp8, label %if.then12, label %lor.lhs.false, !dbg !1028

lor.lhs.false:                                    ; preds = %if.end7
  br i1 %tobool, label %if.else, label %land.lhs.true, !dbg !1029

land.lhs.true:                                    ; preds = %lor.lhs.false
  %parent10 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 1, !dbg !1030
  %4 = load %struct.et_occ*, %struct.et_occ** %parent10, align 8, !dbg !1030
  %cmp11 = icmp eq %struct.et_occ* %4, null, !dbg !1031
  br i1 %cmp11, label %if.else, label %if.then12, !dbg !1032

if.then12:                                        ; preds = %land.lhs.true, %if.end7
  %next13 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !1033
  %5 = load %struct.et_occ*, %struct.et_occ** %next13, align 8, !dbg !1033
  call void @llvm.dbg.value(metadata %struct.et_occ* %5, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call fastcc void @set_prev(%struct.et_occ* %0, %struct.et_occ* %1) #6, !dbg !1035
  br i1 %tobool4, label %if.end23, label %if.then15, !dbg !1036

if.then15:                                        ; preds = %if.then12
  %parent16 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !1037
  store %struct.et_occ* %0, %struct.et_occ** %parent16, align 8, !dbg !1039
  br label %if.end23, !dbg !1040

if.else:                                          ; preds = %land.lhs.true, %lor.lhs.false
  %prev18 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 2, !dbg !1041
  %6 = load %struct.et_occ*, %struct.et_occ** %prev18, align 8, !dbg !1041
  call void @llvm.dbg.value(metadata %struct.et_occ* %6, metadata !1002, metadata !DIExpression()), !dbg !1004
  tail call fastcc void @set_next(%struct.et_occ* %0, %struct.et_occ* %1) #6, !dbg !1043
  br i1 %tobool, label %if.end23, label %if.then20, !dbg !1044

if.then20:                                        ; preds = %if.else
  %parent21 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 1, !dbg !1045
  store %struct.et_occ* %0, %struct.et_occ** %parent21, align 8, !dbg !1047
  br label %if.end23, !dbg !1048

if.end23:                                         ; preds = %if.then12, %if.else, %if.then20, %if.then15
  %ret.0 = phi %struct.et_occ* [ %5, %if.then15 ], [ %5, %if.then12 ], [ %6, %if.then20 ], [ %6, %if.else ], !dbg !1049
  call void @llvm.dbg.value(metadata %struct.et_occ* %ret.0, metadata !1002, metadata !DIExpression()), !dbg !1004
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 4, !dbg !1050
  %7 = load i32, i32* %depth, align 8, !dbg !1050
  %cmp24 = icmp sgt i32 %7, 0, !dbg !1052
  br i1 %cmp24, label %if.then25, label %if.else27, !dbg !1053

if.then25:                                        ; preds = %if.end23
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !999, metadata !DIExpression()), !dbg !1004
  %depth26 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 4, !dbg !1054
  %8 = load i32, i32* %depth26, align 8, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %8, metadata !1003, metadata !DIExpression()), !dbg !1004
  br label %if.end30, !dbg !1056

if.else27:                                        ; preds = %if.end23
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !999, metadata !DIExpression()), !dbg !1004
  %depth29 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 4, !dbg !1057
  %9 = load i32, i32* %depth29, align 8, !dbg !1057
  %add = add nsw i32 %7, %9, !dbg !1059
  call void @llvm.dbg.value(metadata i32 %add, metadata !1003, metadata !DIExpression()), !dbg !1004
  br label %if.end30

if.end30:                                         ; preds = %if.else27, %if.then25
  %10 = phi i32 [ %8, %if.then25 ], [ %9, %if.else27 ]
  %om.0 = phi %struct.et_occ* [ %0, %if.then25 ], [ %1, %if.else27 ], !dbg !1060
  %mn.0 = phi i32 [ %8, %if.then25 ], [ %add, %if.else27 ], !dbg !1060
  call void @llvm.dbg.value(metadata i32 %mn.0, metadata !1003, metadata !DIExpression()), !dbg !1004
  call void @llvm.dbg.value(metadata %struct.et_occ* %om.0, metadata !999, metadata !DIExpression()), !dbg !1004
  %tobool31 = icmp eq %struct.et_occ* %ret.0, null, !dbg !1061
  br i1 %tobool31, label %if.else39, label %land.lhs.true32, !dbg !1063

land.lhs.true32:                                  ; preds = %if.end30
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %ret.0, i64 0, i32 5, !dbg !1064
  %11 = load i32, i32* %min, align 4, !dbg !1064
  %add34 = add nsw i32 %11, %10, !dbg !1065
  %add36 = add nsw i32 %add34, %7, !dbg !1066
  %cmp37 = icmp slt i32 %add36, %mn.0, !dbg !1067
  br i1 %cmp37, label %if.then38, label %if.else39, !dbg !1068

if.then38:                                        ; preds = %land.lhs.true32
  %min_occ = getelementptr inbounds %struct.et_occ, %struct.et_occ* %ret.0, i64 0, i32 6, !dbg !1069
  %12 = load %struct.et_occ*, %struct.et_occ** %min_occ, align 8, !dbg !1069
  %of = getelementptr inbounds %struct.et_occ, %struct.et_occ* %12, i64 0, i32 0, !dbg !1070
  %13 = load %struct.et_node*, %struct.et_node** %of, align 8, !dbg !1070
  br label %cleanup, !dbg !1071

if.else39:                                        ; preds = %if.end30, %land.lhs.true32
  %of40 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %om.0, i64 0, i32 0, !dbg !1072
  %14 = load %struct.et_node*, %struct.et_node** %of40, align 8, !dbg !1072
  br label %cleanup, !dbg !1073

cleanup:                                          ; preds = %entry, %if.else39, %if.then38
  %retval.0 = phi %struct.et_node* [ %13, %if.then38 ], [ %14, %if.else39 ], [ %n1, %entry ], !dbg !1004
  ret %struct.et_node* %retval.0, !dbg !1074
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @et_below(%struct.et_node* %down, %struct.et_node* %up) local_unnamed_addr #3 !dbg !1075 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %down, metadata !1079, metadata !DIExpression()), !dbg !1085
  call void @llvm.dbg.value(metadata %struct.et_node* %up, metadata !1080, metadata !DIExpression()), !dbg !1085
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %up, i64 0, i32 7, !dbg !1086
  %0 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ, align 8, !dbg !1086
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !1081, metadata !DIExpression()), !dbg !1085
  %rightmost_occ1 = getelementptr inbounds %struct.et_node, %struct.et_node* %down, i64 0, i32 7, !dbg !1087
  %1 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ1, align 8, !dbg !1087
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !1082, metadata !DIExpression()), !dbg !1085
  %cmp = icmp eq %struct.et_node* %up, %down, !dbg !1088
  br i1 %cmp, label %cleanup, label %if.end, !dbg !1090

if.end:                                           ; preds = %entry
  tail call fastcc void @et_splay(%struct.et_occ* %0) #6, !dbg !1091
  %prev = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 2, !dbg !1092
  %2 = load %struct.et_occ*, %struct.et_occ** %prev, align 8, !dbg !1092
  call void @llvm.dbg.value(metadata %struct.et_occ* %2, metadata !1083, metadata !DIExpression()), !dbg !1085
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %0, i64 0, i32 3, !dbg !1093
  %3 = load %struct.et_occ*, %struct.et_occ** %next, align 8, !dbg !1093
  call void @llvm.dbg.value(metadata %struct.et_occ* %3, metadata !1084, metadata !DIExpression()), !dbg !1085
  %tobool = icmp eq %struct.et_occ* %2, null, !dbg !1094
  br i1 %tobool, label %cleanup, label %if.end3, !dbg !1096

if.end3:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.et_occ, %struct.et_occ* %2, i64 0, i32 1, !dbg !1097
  store %struct.et_occ* null, %struct.et_occ** %parent, align 8, !dbg !1098
  %tobool4 = icmp eq %struct.et_occ* %3, null, !dbg !1099
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !1101

if.then5:                                         ; preds = %if.end3
  %parent6 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !1102
  store %struct.et_occ* null, %struct.et_occ** %parent6, align 8, !dbg !1103
  br label %if.end7, !dbg !1104

if.end7:                                          ; preds = %if.end3, %if.then5
  tail call fastcc void @et_splay(%struct.et_occ* %1) #6, !dbg !1105
  %cmp8 = icmp eq %struct.et_occ* %2, %1, !dbg !1106
  br i1 %cmp8, label %if.then11, label %lor.lhs.false, !dbg !1108

lor.lhs.false:                                    ; preds = %if.end7
  %4 = load %struct.et_occ*, %struct.et_occ** %parent, align 8, !dbg !1109
  %cmp10 = icmp eq %struct.et_occ* %4, null, !dbg !1110
  br i1 %cmp10, label %if.else, label %if.then11, !dbg !1111

if.then11:                                        ; preds = %lor.lhs.false, %if.end7
  br i1 %tobool4, label %if.end15, label %if.then13, !dbg !1112

if.then13:                                        ; preds = %if.then11
  %parent14 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !1114
  store %struct.et_occ* %0, %struct.et_occ** %parent14, align 8, !dbg !1116
  br label %if.end15, !dbg !1117

if.end15:                                         ; preds = %if.then11, %if.then13
  tail call fastcc void @set_prev(%struct.et_occ* %0, %struct.et_occ* %1) #6, !dbg !1118
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 4, !dbg !1119
  %5 = load i32, i32* %depth, align 8, !dbg !1119
  %cmp24 = icmp slt i32 %5, 1, !dbg !1121
  br i1 %cmp24, label %cleanup, label %if.end26, !dbg !1122

if.else:                                          ; preds = %lor.lhs.false
  store %struct.et_occ* %0, %struct.et_occ** %parent, align 8, !dbg !1123
  br i1 %tobool4, label %if.else21, label %land.lhs.true, !dbg !1125

land.lhs.true:                                    ; preds = %if.else
  %parent18 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %3, i64 0, i32 1, !dbg !1127
  %6 = load %struct.et_occ*, %struct.et_occ** %parent18, align 8, !dbg !1127
  %cmp19 = icmp eq %struct.et_occ* %6, null, !dbg !1128
  br i1 %cmp19, label %if.else21, label %if.then20, !dbg !1129

if.then20:                                        ; preds = %land.lhs.true
  tail call fastcc void @set_next(%struct.et_occ* %0, %struct.et_occ* %1) #6, !dbg !1130
  br label %cleanup, !dbg !1130

if.else21:                                        ; preds = %land.lhs.true, %if.else
  tail call fastcc void @set_next(%struct.et_occ* %0, %struct.et_occ* %3) #6, !dbg !1131
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %next27 = getelementptr inbounds %struct.et_occ, %struct.et_occ* %1, i64 0, i32 3, !dbg !1132
  %7 = load %struct.et_occ*, %struct.et_occ** %next27, align 8, !dbg !1132
  %tobool28 = icmp eq %struct.et_occ* %7, null, !dbg !1133
  br i1 %tobool28, label %lor.end, label %lor.rhs, !dbg !1134

lor.rhs:                                          ; preds = %if.end26
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %7, i64 0, i32 5, !dbg !1135
  %8 = load i32, i32* %min, align 4, !dbg !1135
  %add = add nsw i32 %8, %5, !dbg !1136
  %add.lobit = lshr i32 %add, 31, !dbg !1134
  %9 = trunc i32 %add.lobit to i8, !dbg !1134
  %.not = xor i8 %9, 1, !dbg !1134
  br label %lor.end, !dbg !1134

lor.end:                                          ; preds = %if.end26, %lor.rhs
  %10 = phi i8 [ 1, %if.end26 ], [ %.not, %lor.rhs ]
  br label %cleanup, !dbg !1137

cleanup:                                          ; preds = %if.end, %if.end15, %if.then20, %if.else21, %entry, %lor.end
  %retval.0 = phi i8 [ %10, %lor.end ], [ 1, %entry ], [ 0, %if.end ], [ 0, %if.else21 ], [ 0, %if.then20 ], [ 0, %if.end15 ], !dbg !1085
  ret i8 %retval.0, !dbg !1138
}

; Function Attrs: nounwind uwtable
define dso_local %struct.et_node* @et_root(%struct.et_node* %node) local_unnamed_addr #3 !dbg !1139 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_node* %node, metadata !1143, metadata !DIExpression()), !dbg !1146
  %rightmost_occ = getelementptr inbounds %struct.et_node, %struct.et_node* %node, i64 0, i32 7, !dbg !1147
  %0 = load %struct.et_occ*, %struct.et_occ** %rightmost_occ, align 8, !dbg !1147
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !1144, metadata !DIExpression()), !dbg !1146
  tail call fastcc void @et_splay(%struct.et_occ* %0) #6, !dbg !1148
  call void @llvm.dbg.value(metadata %struct.et_occ* %0, metadata !1145, metadata !DIExpression()), !dbg !1146
  br label %for.cond, !dbg !1149

for.cond:                                         ; preds = %for.inc, %entry
  %r.0 = phi %struct.et_occ* [ %0, %entry ], [ %1, %for.inc ], !dbg !1151
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0, metadata !1145, metadata !DIExpression()), !dbg !1146
  %next = getelementptr inbounds %struct.et_occ, %struct.et_occ* %r.0, i64 0, i32 3, !dbg !1152
  %1 = load %struct.et_occ*, %struct.et_occ** %next, align 8, !dbg !1152
  %tobool = icmp eq %struct.et_occ* %1, null, !dbg !1154
  br i1 %tobool, label %for.end, label %for.inc, !dbg !1154

for.inc:                                          ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.et_occ* %1, metadata !1145, metadata !DIExpression()), !dbg !1146
  br label %for.cond, !dbg !1155, !llvm.loop !1156

for.end:                                          ; preds = %for.cond
  %r.0.lcssa = phi %struct.et_occ* [ %r.0, %for.cond ], !dbg !1151
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1146
  call void @llvm.dbg.value(metadata %struct.et_occ* %r.0.lcssa, metadata !1145, metadata !DIExpression()), !dbg !1146
  tail call fastcc void @et_splay(%struct.et_occ* %r.0.lcssa) #6, !dbg !1158
  %of = getelementptr inbounds %struct.et_occ, %struct.et_occ* %r.0.lcssa, i64 0, i32 0, !dbg !1159
  %2 = load %struct.et_node*, %struct.et_node** %of, align 8, !dbg !1159
  ret %struct.et_node* %2, !dbg !1160
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_depth_add(%struct.et_occ* %occ, i32 %d) unnamed_addr #0 !dbg !1161 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata i32 %d, metadata !1166, metadata !DIExpression()), !dbg !1167
  %tobool = icmp eq %struct.et_occ* %occ, null, !dbg !1168
  br i1 %tobool, label %return, label %if.end, !dbg !1170

if.end:                                           ; preds = %entry
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 5, !dbg !1171
  %0 = load i32, i32* %min, align 4, !dbg !1172
  %add = add nsw i32 %0, %d, !dbg !1172
  store i32 %add, i32* %min, align 4, !dbg !1172
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 4, !dbg !1173
  %1 = load i32, i32* %depth, align 8, !dbg !1174
  %add1 = add nsw i32 %1, %d, !dbg !1174
  store i32 %add1, i32* %depth, align 8, !dbg !1174
  br label %return, !dbg !1175

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1175
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_depth(%struct.et_occ* %occ, i32 %d) unnamed_addr #0 !dbg !1176 {
entry:
  call void @llvm.dbg.value(metadata %struct.et_occ* %occ, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata i32 %d, metadata !1179, metadata !DIExpression()), !dbg !1180
  %tobool = icmp eq %struct.et_occ* %occ, null, !dbg !1181
  br i1 %tobool, label %return, label %if.end, !dbg !1183

if.end:                                           ; preds = %entry
  %depth = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 4, !dbg !1184
  %0 = load i32, i32* %depth, align 8, !dbg !1184
  %sub = sub nsw i32 %d, %0, !dbg !1185
  %min = getelementptr inbounds %struct.et_occ, %struct.et_occ* %occ, i64 0, i32 5, !dbg !1186
  %1 = load i32, i32* %min, align 4, !dbg !1187
  %add = add nsw i32 %1, %sub, !dbg !1187
  store i32 %add, i32* %min, align 4, !dbg !1187
  store i32 %d, i32* %depth, align 8, !dbg !1188
  br label %return, !dbg !1189

return:                                           ; preds = %entry, %if.end
  ret void, !dbg !1189
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }
attributes #6 = { nobuiltin }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!65, !66, !67}
!llvm.ident = !{!68}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "et_nodes", scope: !2, file: !3, line: 58, type: !41, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !38, nameTableKind: None)
!3 = !DIFile(filename: "et-forest.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{}
!5 = !{!6, !7, !8, !9, !12, !13, !15, !27}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !17, line: 59, size: 512, elements: !18)
!17 = !DIFile(filename: "./et-forest.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!18 = !{!19, !20, !21, !22, !23, !24, !25, !26, !37}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !16, file: !17, line: 61, baseType: !12, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_num_in", scope: !16, file: !17, line: 63, baseType: !8, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_num_out", scope: !16, file: !17, line: 63, baseType: !8, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "father", scope: !16, file: !17, line: 65, baseType: !15, size: 64, offset: 128)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "son", scope: !16, file: !17, line: 66, baseType: !15, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "left", scope: !16, file: !17, line: 67, baseType: !15, size: 64, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "right", scope: !16, file: !17, line: 68, baseType: !15, size: 64, offset: 320)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "rightmost_occ", scope: !16, file: !17, line: 70, baseType: !27, size: 64, offset: 384)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "et_occ", file: !3, line: 41, size: 384, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "of", scope: !28, file: !3, line: 43, baseType: !15, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !28, file: !3, line: 45, baseType: !27, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !28, file: !3, line: 46, baseType: !27, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !28, file: !3, line: 47, baseType: !27, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "depth", scope: !28, file: !3, line: 49, baseType: !8, size: 32, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !28, file: !3, line: 51, baseType: !8, size: 32, offset: 288)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "min_occ", scope: !28, file: !3, line: 54, baseType: !27, size: 64, offset: 320)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parent_occ", scope: !16, file: !17, line: 71, baseType: !27, size: 64, offset: 448)
!38 = !{!0, !39}
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(name: "et_occurrences", scope: !2, file: !3, line: 59, type: !41, isLocal: true, isDefinition: true)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool", file: !42, line: 58, baseType: !43)
!42 = !DIFile(filename: "./alloc-pool.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_def", file: !42, line: 32, size: 704, elements: !45)
!45 = !{!46, !47, !51, !57, !58, !59, !60, !61, !62, !63, !64}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !44, file: !42, line: 34, baseType: !13, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "elts_per_block", scope: !44, file: !42, line: 38, baseType: !48, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !49, line: 46, baseType: !50)
!49 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!50 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "returned_free_list", scope: !44, file: !42, line: 41, baseType: !52, size: 64, offset: 128)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "alloc_pool_list", file: !42, line: 30, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "alloc_pool_list_def", file: !42, line: 26, size: 64, elements: !55)
!55 = !{!56}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !54, file: !42, line: 28, baseType: !53, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_free_list", scope: !44, file: !42, line: 45, baseType: !10, size: 64, offset: 192)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "virgin_elts_remaining", scope: !44, file: !42, line: 49, baseType: !48, size: 64, offset: 256)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "elts_allocated", scope: !44, file: !42, line: 51, baseType: !48, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "elts_free", scope: !44, file: !42, line: 52, baseType: !48, size: 64, offset: 384)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_allocated", scope: !44, file: !42, line: 53, baseType: !48, size: 64, offset: 448)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "block_list", scope: !44, file: !42, line: 54, baseType: !52, size: 64, offset: 512)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "block_size", scope: !44, file: !42, line: 55, baseType: !48, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "elt_size", scope: !44, file: !42, line: 56, baseType: !48, size: 64, offset: 640)
!65 = !{i32 2, !"Dwarf Version", i32 4}
!66 = !{i32 2, !"Debug Info Version", i32 3}
!67 = !{i32 1, !"wchar_size", i32 4}
!68 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!69 = distinct !DISubprogram(name: "vprintf", scope: !70, file: !70, line: 39, type: !71, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!71 = !DISubroutineType(types: !72)
!72 = !{!8, !73, !74}
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !13)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !76)
!76 = !{!77, !79, !80, !81}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !75, file: !3, baseType: !78, size: 32)
!78 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !75, file: !3, baseType: !78, size: 32, offset: 32)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !75, file: !3, baseType: !12, size: 64, offset: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !75, file: !3, baseType: !12, size: 64, offset: 128)
!82 = !{!83, !84}
!83 = !DILocalVariable(name: "__fmt", arg: 1, scope: !69, file: !70, line: 39, type: !73)
!84 = !DILocalVariable(name: "__arg", arg: 2, scope: !69, file: !70, line: 39, type: !74)
!85 = !DILocation(line: 0, scope: !69)
!86 = !DILocation(line: 41, column: 20, scope: !69)
!87 = !DILocation(line: 41, column: 10, scope: !69)
!88 = !DILocation(line: 41, column: 3, scope: !69)
!89 = distinct !DISubprogram(name: "getchar", scope: !70, file: !70, line: 47, type: !90, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!90 = !DISubroutineType(types: !91)
!91 = !{!8}
!92 = !DILocation(line: 49, column: 16, scope: !89)
!93 = !DILocation(line: 49, column: 10, scope: !89)
!94 = !DILocation(line: 49, column: 3, scope: !89)
!95 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !70, file: !70, line: 56, type: !96, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!96 = !DISubroutineType(types: !97)
!97 = !{!8, !98}
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !100, line: 7, baseType: !101)
!100 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !102, line: 49, size: 1728, elements: !103)
!102 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!103 = !{!104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !119, !121, !122, !123, !127, !129, !131, !135, !138, !140, !143, !146, !147, !148, !149, !150}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !101, file: !102, line: 51, baseType: !8, size: 32)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !101, file: !102, line: 54, baseType: !10, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !101, file: !102, line: 55, baseType: !10, size: 64, offset: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !101, file: !102, line: 56, baseType: !10, size: 64, offset: 192)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !101, file: !102, line: 57, baseType: !10, size: 64, offset: 256)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !101, file: !102, line: 58, baseType: !10, size: 64, offset: 320)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !101, file: !102, line: 59, baseType: !10, size: 64, offset: 384)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !101, file: !102, line: 60, baseType: !10, size: 64, offset: 448)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !101, file: !102, line: 61, baseType: !10, size: 64, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !101, file: !102, line: 64, baseType: !10, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !101, file: !102, line: 65, baseType: !10, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !101, file: !102, line: 66, baseType: !10, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !101, file: !102, line: 68, baseType: !117, size: 64, offset: 768)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !102, line: 36, flags: DIFlagFwdDecl)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !101, file: !102, line: 70, baseType: !120, size: 64, offset: 832)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !101, file: !102, line: 72, baseType: !8, size: 32, offset: 896)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !101, file: !102, line: 73, baseType: !8, size: 32, offset: 928)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !101, file: !102, line: 74, baseType: !124, size: 64, offset: 960)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !125, line: 152, baseType: !126)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!126 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !101, file: !102, line: 77, baseType: !128, size: 16, offset: 1024)
!128 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !101, file: !102, line: 78, baseType: !130, size: 8, offset: 1040)
!130 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !101, file: !102, line: 79, baseType: !132, size: 8, offset: 1048)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !101, file: !102, line: 81, baseType: !136, size: 64, offset: 1088)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !102, line: 43, baseType: null)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !101, file: !102, line: 89, baseType: !139, size: 64, offset: 1152)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !125, line: 153, baseType: !126)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !101, file: !102, line: 91, baseType: !141, size: 64, offset: 1216)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !102, line: 37, flags: DIFlagFwdDecl)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !101, file: !102, line: 92, baseType: !144, size: 64, offset: 1280)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !102, line: 38, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !101, file: !102, line: 93, baseType: !120, size: 64, offset: 1344)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !101, file: !102, line: 94, baseType: !12, size: 64, offset: 1408)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !101, file: !102, line: 95, baseType: !48, size: 64, offset: 1472)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !101, file: !102, line: 96, baseType: !8, size: 32, offset: 1536)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !101, file: !102, line: 98, baseType: !151, size: 160, offset: 1568)
!151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !152)
!152 = !{!153}
!153 = !DISubrange(count: 20)
!154 = !{!155}
!155 = !DILocalVariable(name: "__fp", arg: 1, scope: !95, file: !70, line: 56, type: !98)
!156 = !DILocation(line: 0, scope: !95)
!157 = !DILocation(line: 58, column: 10, scope: !95)
!158 = !DILocation(line: 58, column: 3, scope: !95)
!159 = distinct !DISubprogram(name: "getc_unlocked", scope: !70, file: !70, line: 66, type: !96, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!160 = !{!161}
!161 = !DILocalVariable(name: "__fp", arg: 1, scope: !159, file: !70, line: 66, type: !98)
!162 = !DILocation(line: 0, scope: !159)
!163 = !DILocation(line: 68, column: 10, scope: !159)
!164 = !DILocation(line: 68, column: 3, scope: !159)
!165 = distinct !DISubprogram(name: "getchar_unlocked", scope: !70, file: !70, line: 73, type: !90, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!166 = !DILocation(line: 75, column: 10, scope: !165)
!167 = !DILocation(line: 75, column: 3, scope: !165)
!168 = distinct !DISubprogram(name: "putchar", scope: !70, file: !70, line: 82, type: !169, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !171)
!169 = !DISubroutineType(types: !170)
!170 = !{!8, !8}
!171 = !{!172}
!172 = !DILocalVariable(name: "__c", arg: 1, scope: !168, file: !70, line: 82, type: !8)
!173 = !DILocation(line: 0, scope: !168)
!174 = !DILocation(line: 84, column: 21, scope: !168)
!175 = !DILocation(line: 84, column: 10, scope: !168)
!176 = !DILocation(line: 84, column: 3, scope: !168)
!177 = distinct !DISubprogram(name: "fputc_unlocked", scope: !70, file: !70, line: 91, type: !178, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !180)
!178 = !DISubroutineType(types: !179)
!179 = !{!8, !8, !98}
!180 = !{!181, !182}
!181 = !DILocalVariable(name: "__c", arg: 1, scope: !177, file: !70, line: 91, type: !8)
!182 = !DILocalVariable(name: "__stream", arg: 2, scope: !177, file: !70, line: 91, type: !98)
!183 = !DILocation(line: 0, scope: !177)
!184 = !DILocation(line: 93, column: 10, scope: !177)
!185 = !DILocation(line: 93, column: 3, scope: !177)
!186 = distinct !DISubprogram(name: "putc_unlocked", scope: !70, file: !70, line: 101, type: !178, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !187)
!187 = !{!188, !189}
!188 = !DILocalVariable(name: "__c", arg: 1, scope: !186, file: !70, line: 101, type: !8)
!189 = !DILocalVariable(name: "__stream", arg: 2, scope: !186, file: !70, line: 101, type: !98)
!190 = !DILocation(line: 0, scope: !186)
!191 = !DILocation(line: 103, column: 10, scope: !186)
!192 = !DILocation(line: 103, column: 3, scope: !186)
!193 = distinct !DISubprogram(name: "putchar_unlocked", scope: !70, file: !70, line: 108, type: !169, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !194)
!194 = !{!195}
!195 = !DILocalVariable(name: "__c", arg: 1, scope: !193, file: !70, line: 108, type: !8)
!196 = !DILocation(line: 0, scope: !193)
!197 = !DILocation(line: 110, column: 10, scope: !193)
!198 = !DILocation(line: 110, column: 3, scope: !193)
!199 = distinct !DISubprogram(name: "getline", scope: !70, file: !70, line: 118, type: !200, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !204)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !9, !203, !98}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !125, line: 193, baseType: !126)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!204 = !{!205, !206, !207}
!205 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !199, file: !70, line: 118, type: !9)
!206 = !DILocalVariable(name: "__n", arg: 2, scope: !199, file: !70, line: 118, type: !203)
!207 = !DILocalVariable(name: "__stream", arg: 3, scope: !199, file: !70, line: 118, type: !98)
!208 = !DILocation(line: 0, scope: !199)
!209 = !DILocation(line: 120, column: 10, scope: !199)
!210 = !DILocation(line: 120, column: 3, scope: !199)
!211 = distinct !DISubprogram(name: "feof_unlocked", scope: !70, file: !70, line: 128, type: !96, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !212)
!212 = !{!213}
!213 = !DILocalVariable(name: "__stream", arg: 1, scope: !211, file: !70, line: 128, type: !98)
!214 = !DILocation(line: 0, scope: !211)
!215 = !DILocation(line: 130, column: 10, scope: !211)
!216 = !DILocation(line: 130, column: 3, scope: !211)
!217 = distinct !DISubprogram(name: "ferror_unlocked", scope: !70, file: !70, line: 135, type: !96, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !218)
!218 = !{!219}
!219 = !DILocalVariable(name: "__stream", arg: 1, scope: !217, file: !70, line: 135, type: !98)
!220 = !DILocation(line: 0, scope: !217)
!221 = !DILocation(line: 137, column: 10, scope: !217)
!222 = !DILocation(line: 137, column: 3, scope: !217)
!223 = distinct !DISubprogram(name: "tolower", scope: !224, file: !224, line: 207, type: !169, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !225)
!224 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!225 = !{!226}
!226 = !DILocalVariable(name: "__c", arg: 1, scope: !223, file: !224, line: 207, type: !8)
!227 = !DILocation(line: 0, scope: !223)
!228 = !DILocation(line: 209, column: 22, scope: !223)
!229 = !DILocation(line: 209, column: 39, scope: !223)
!230 = !DILocation(line: 209, column: 38, scope: !223)
!231 = !DILocation(line: 209, column: 37, scope: !223)
!232 = !DILocation(line: 209, column: 10, scope: !223)
!233 = !DILocation(line: 209, column: 3, scope: !223)
!234 = distinct !DISubprogram(name: "toupper", scope: !224, file: !224, line: 213, type: !169, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !235)
!235 = !{!236}
!236 = !DILocalVariable(name: "__c", arg: 1, scope: !234, file: !224, line: 213, type: !8)
!237 = !DILocation(line: 0, scope: !234)
!238 = !DILocation(line: 215, column: 22, scope: !234)
!239 = !DILocation(line: 215, column: 39, scope: !234)
!240 = !DILocation(line: 215, column: 38, scope: !234)
!241 = !DILocation(line: 215, column: 37, scope: !234)
!242 = !DILocation(line: 215, column: 10, scope: !234)
!243 = !DILocation(line: 215, column: 3, scope: !234)
!244 = distinct !DISubprogram(name: "atoi", scope: !245, file: !245, line: 361, type: !246, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !248)
!245 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!246 = !DISubroutineType(types: !247)
!247 = !{!8, !13}
!248 = !{!249}
!249 = !DILocalVariable(name: "__nptr", arg: 1, scope: !244, file: !245, line: 361, type: !13)
!250 = !DILocation(line: 0, scope: !244)
!251 = !DILocation(line: 363, column: 16, scope: !244)
!252 = !DILocation(line: 363, column: 10, scope: !244)
!253 = !DILocation(line: 363, column: 3, scope: !244)
!254 = distinct !DISubprogram(name: "atol", scope: !245, file: !245, line: 366, type: !255, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !257)
!255 = !DISubroutineType(types: !256)
!256 = !{!126, !13}
!257 = !{!258}
!258 = !DILocalVariable(name: "__nptr", arg: 1, scope: !254, file: !245, line: 366, type: !13)
!259 = !DILocation(line: 0, scope: !254)
!260 = !DILocation(line: 368, column: 10, scope: !254)
!261 = !DILocation(line: 368, column: 3, scope: !254)
!262 = distinct !DISubprogram(name: "atoll", scope: !245, file: !245, line: 373, type: !263, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !266)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !13}
!265 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!266 = !{!267}
!267 = !DILocalVariable(name: "__nptr", arg: 1, scope: !262, file: !245, line: 373, type: !13)
!268 = !DILocation(line: 0, scope: !262)
!269 = !DILocation(line: 375, column: 10, scope: !262)
!270 = !DILocation(line: 375, column: 3, scope: !262)
!271 = distinct !DISubprogram(name: "bsearch", scope: !272, file: !272, line: 20, type: !273, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !281)
!272 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!273 = !DISubroutineType(types: !274)
!274 = !{!12, !275, !275, !48, !48, !277}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !245, line: 808, baseType: !278)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DISubroutineType(types: !280)
!280 = !{!8, !275, !275}
!281 = !{!282, !283, !284, !285, !286, !287, !288, !289, !290, !291}
!282 = !DILocalVariable(name: "__key", arg: 1, scope: !271, file: !272, line: 20, type: !275)
!283 = !DILocalVariable(name: "__base", arg: 2, scope: !271, file: !272, line: 20, type: !275)
!284 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !271, file: !272, line: 20, type: !48)
!285 = !DILocalVariable(name: "__size", arg: 4, scope: !271, file: !272, line: 20, type: !48)
!286 = !DILocalVariable(name: "__compar", arg: 5, scope: !271, file: !272, line: 21, type: !277)
!287 = !DILocalVariable(name: "__l", scope: !271, file: !272, line: 23, type: !48)
!288 = !DILocalVariable(name: "__u", scope: !271, file: !272, line: 23, type: !48)
!289 = !DILocalVariable(name: "__idx", scope: !271, file: !272, line: 23, type: !48)
!290 = !DILocalVariable(name: "__p", scope: !271, file: !272, line: 24, type: !275)
!291 = !DILocalVariable(name: "__comparison", scope: !271, file: !272, line: 25, type: !8)
!292 = !DILocation(line: 0, scope: !271)
!293 = !DILocation(line: 29, column: 3, scope: !271)
!294 = !DILocation(line: 27, column: 7, scope: !271)
!295 = !DILocation(line: 29, column: 14, scope: !271)
!296 = !DILocation(line: 31, column: 20, scope: !297)
!297 = distinct !DILexicalBlock(scope: !271, file: !272, line: 30, column: 5)
!298 = !DILocation(line: 31, column: 27, scope: !297)
!299 = !DILocation(line: 32, column: 56, scope: !297)
!300 = !DILocation(line: 32, column: 47, scope: !297)
!301 = !DILocation(line: 33, column: 22, scope: !297)
!302 = !DILocation(line: 34, column: 24, scope: !303)
!303 = distinct !DILexicalBlock(scope: !297, file: !272, line: 34, column: 11)
!304 = !DILocation(line: 34, column: 11, scope: !297)
!305 = !DILocation(line: 36, column: 29, scope: !306)
!306 = distinct !DILexicalBlock(scope: !303, file: !272, line: 36, column: 16)
!307 = !DILocation(line: 36, column: 16, scope: !303)
!308 = !DILocation(line: 37, column: 14, scope: !306)
!309 = distinct !{!309, !293, !310}
!310 = !DILocation(line: 40, column: 5, scope: !271)
!311 = !DILocation(line: 43, column: 1, scope: !271)
!312 = distinct !DISubprogram(name: "atof", scope: !313, file: !313, line: 25, type: !314, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !317)
!313 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !13}
!316 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!317 = !{!318}
!318 = !DILocalVariable(name: "__nptr", arg: 1, scope: !312, file: !313, line: 25, type: !13)
!319 = !DILocation(line: 0, scope: !312)
!320 = !DILocation(line: 27, column: 10, scope: !312)
!321 = !DILocation(line: 27, column: 3, scope: !312)
!322 = distinct !DISubprogram(name: "strtoimax", scope: !323, file: !323, line: 324, type: !324, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !330)
!323 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !73, !329, !8}
!326 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !327, line: 101, baseType: !328)
!327 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !125, line: 72, baseType: !126)
!329 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !9)
!330 = !{!331, !332, !333}
!331 = !DILocalVariable(name: "nptr", arg: 1, scope: !322, file: !323, line: 324, type: !73)
!332 = !DILocalVariable(name: "endptr", arg: 2, scope: !322, file: !323, line: 324, type: !329)
!333 = !DILocalVariable(name: "base", arg: 3, scope: !322, file: !323, line: 324, type: !8)
!334 = !DILocation(line: 0, scope: !322)
!335 = !DILocation(line: 327, column: 10, scope: !322)
!336 = !DILocation(line: 327, column: 3, scope: !322)
!337 = distinct !DISubprogram(name: "strtoumax", scope: !323, file: !323, line: 336, type: !338, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !342)
!338 = !DISubroutineType(types: !339)
!339 = !{!340, !73, !329, !8}
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !327, line: 102, baseType: !341)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !125, line: 73, baseType: !50)
!342 = !{!343, !344, !345}
!343 = !DILocalVariable(name: "nptr", arg: 1, scope: !337, file: !323, line: 336, type: !73)
!344 = !DILocalVariable(name: "endptr", arg: 2, scope: !337, file: !323, line: 336, type: !329)
!345 = !DILocalVariable(name: "base", arg: 3, scope: !337, file: !323, line: 336, type: !8)
!346 = !DILocation(line: 0, scope: !337)
!347 = !DILocation(line: 339, column: 10, scope: !337)
!348 = !DILocation(line: 339, column: 3, scope: !337)
!349 = distinct !DISubprogram(name: "wcstoimax", scope: !323, file: !323, line: 348, type: !350, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !359)
!350 = !DISubroutineType(types: !351)
!351 = !{!326, !352, !356, !8}
!352 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !353)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !323, line: 34, baseType: !8)
!356 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!359 = !{!360, !361, !362}
!360 = !DILocalVariable(name: "nptr", arg: 1, scope: !349, file: !323, line: 348, type: !352)
!361 = !DILocalVariable(name: "endptr", arg: 2, scope: !349, file: !323, line: 348, type: !356)
!362 = !DILocalVariable(name: "base", arg: 3, scope: !349, file: !323, line: 348, type: !8)
!363 = !DILocation(line: 0, scope: !349)
!364 = !DILocation(line: 351, column: 10, scope: !349)
!365 = !DILocation(line: 351, column: 3, scope: !349)
!366 = distinct !DISubprogram(name: "wcstoumax", scope: !323, file: !323, line: 362, type: !367, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !369)
!367 = !DISubroutineType(types: !368)
!368 = !{!340, !352, !356, !8}
!369 = !{!370, !371, !372}
!370 = !DILocalVariable(name: "nptr", arg: 1, scope: !366, file: !323, line: 362, type: !352)
!371 = !DILocalVariable(name: "endptr", arg: 2, scope: !366, file: !323, line: 362, type: !356)
!372 = !DILocalVariable(name: "base", arg: 3, scope: !366, file: !323, line: 362, type: !8)
!373 = !DILocation(line: 0, scope: !366)
!374 = !DILocation(line: 365, column: 10, scope: !366)
!375 = !DILocation(line: 365, column: 3, scope: !366)
!376 = distinct !DISubprogram(name: "stat", scope: !377, file: !377, line: 453, type: !378, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !417)
!377 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!378 = !DISubroutineType(types: !379)
!379 = !{!8, !13, !380}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !382, line: 46, size: 1152, elements: !383)
!382 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!383 = !{!384, !386, !388, !390, !392, !394, !396, !397, !398, !399, !401, !403, !411, !412, !413}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !381, file: !382, line: 48, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !125, line: 145, baseType: !50)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !381, file: !382, line: 53, baseType: !387, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !125, line: 148, baseType: !50)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !381, file: !382, line: 61, baseType: !389, size: 64, offset: 128)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !125, line: 151, baseType: !50)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !381, file: !382, line: 62, baseType: !391, size: 32, offset: 192)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !125, line: 150, baseType: !78)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !381, file: !382, line: 64, baseType: !393, size: 32, offset: 224)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !125, line: 146, baseType: !78)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !381, file: !382, line: 65, baseType: !395, size: 32, offset: 256)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !125, line: 147, baseType: !78)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !381, file: !382, line: 67, baseType: !8, size: 32, offset: 288)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !381, file: !382, line: 69, baseType: !385, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !381, file: !382, line: 74, baseType: !124, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !381, file: !382, line: 78, baseType: !400, size: 64, offset: 448)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !125, line: 174, baseType: !126)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !381, file: !382, line: 80, baseType: !402, size: 64, offset: 512)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !125, line: 179, baseType: !126)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !381, file: !382, line: 91, baseType: !404, size: 128, offset: 576)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !405, line: 10, size: 128, elements: !406)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!406 = !{!407, !409}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !404, file: !405, line: 12, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !125, line: 160, baseType: !126)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !404, file: !405, line: 16, baseType: !410, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !125, line: 196, baseType: !126)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !381, file: !382, line: 92, baseType: !404, size: 128, offset: 704)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !381, file: !382, line: 93, baseType: !404, size: 128, offset: 832)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !381, file: !382, line: 106, baseType: !414, size: 192, offset: 960)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 192, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 3)
!417 = !{!418, !419}
!418 = !DILocalVariable(name: "__path", arg: 1, scope: !376, file: !377, line: 453, type: !13)
!419 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !376, file: !377, line: 453, type: !380)
!420 = !DILocation(line: 0, scope: !376)
!421 = !DILocation(line: 455, column: 10, scope: !376)
!422 = !DILocation(line: 455, column: 3, scope: !376)
!423 = distinct !DISubprogram(name: "lstat", scope: !377, file: !377, line: 460, type: !378, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !424)
!424 = !{!425, !426}
!425 = !DILocalVariable(name: "__path", arg: 1, scope: !423, file: !377, line: 460, type: !13)
!426 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !423, file: !377, line: 460, type: !380)
!427 = !DILocation(line: 0, scope: !423)
!428 = !DILocation(line: 462, column: 10, scope: !423)
!429 = !DILocation(line: 462, column: 3, scope: !423)
!430 = distinct !DISubprogram(name: "fstat", scope: !377, file: !377, line: 467, type: !431, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !433)
!431 = !DISubroutineType(types: !432)
!432 = !{!8, !8, !380}
!433 = !{!434, !435}
!434 = !DILocalVariable(name: "__fd", arg: 1, scope: !430, file: !377, line: 467, type: !8)
!435 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !430, file: !377, line: 467, type: !380)
!436 = !DILocation(line: 0, scope: !430)
!437 = !DILocation(line: 469, column: 10, scope: !430)
!438 = !DILocation(line: 469, column: 3, scope: !430)
!439 = distinct !DISubprogram(name: "fstatat", scope: !377, file: !377, line: 474, type: !440, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !442)
!440 = !DISubroutineType(types: !441)
!441 = !{!8, !8, !13, !380, !8}
!442 = !{!443, !444, !445, !446}
!443 = !DILocalVariable(name: "__fd", arg: 1, scope: !439, file: !377, line: 474, type: !8)
!444 = !DILocalVariable(name: "__filename", arg: 2, scope: !439, file: !377, line: 474, type: !13)
!445 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !439, file: !377, line: 474, type: !380)
!446 = !DILocalVariable(name: "__flag", arg: 4, scope: !439, file: !377, line: 474, type: !8)
!447 = !DILocation(line: 0, scope: !439)
!448 = !DILocation(line: 477, column: 10, scope: !439)
!449 = !DILocation(line: 477, column: 3, scope: !439)
!450 = distinct !DISubprogram(name: "mknod", scope: !377, file: !377, line: 483, type: !451, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !453)
!451 = !DISubroutineType(types: !452)
!452 = !{!8, !13, !391, !385}
!453 = !{!454, !455, !456}
!454 = !DILocalVariable(name: "__path", arg: 1, scope: !450, file: !377, line: 483, type: !13)
!455 = !DILocalVariable(name: "__mode", arg: 2, scope: !450, file: !377, line: 483, type: !391)
!456 = !DILocalVariable(name: "__dev", arg: 3, scope: !450, file: !377, line: 483, type: !385)
!457 = !DILocation(line: 0, scope: !450)
!458 = !DILocation(line: 485, column: 10, scope: !450)
!459 = !DILocation(line: 485, column: 3, scope: !450)
!460 = distinct !DISubprogram(name: "mknodat", scope: !377, file: !377, line: 491, type: !461, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!8, !8, !13, !391, !385}
!463 = !{!464, !465, !466, !467}
!464 = !DILocalVariable(name: "__fd", arg: 1, scope: !460, file: !377, line: 491, type: !8)
!465 = !DILocalVariable(name: "__path", arg: 2, scope: !460, file: !377, line: 491, type: !13)
!466 = !DILocalVariable(name: "__mode", arg: 3, scope: !460, file: !377, line: 491, type: !391)
!467 = !DILocalVariable(name: "__dev", arg: 4, scope: !460, file: !377, line: 491, type: !385)
!468 = !DILocation(line: 0, scope: !460)
!469 = !DILocation(line: 494, column: 10, scope: !460)
!470 = !DILocation(line: 494, column: 3, scope: !460)
!471 = distinct !DISubprogram(name: "stat64", scope: !377, file: !377, line: 502, type: !472, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !494)
!472 = !DISubroutineType(types: !473)
!473 = !{!8, !13, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !382, line: 119, size: 1152, elements: !476)
!476 = !{!477, !478, !480, !481, !482, !483, !484, !485, !486, !487, !488, !490, !491, !492, !493}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !475, file: !382, line: 121, baseType: !385, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !475, file: !382, line: 123, baseType: !479, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !125, line: 149, baseType: !50)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !475, file: !382, line: 124, baseType: !389, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !475, file: !382, line: 125, baseType: !391, size: 32, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !475, file: !382, line: 132, baseType: !393, size: 32, offset: 224)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !475, file: !382, line: 133, baseType: !395, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !475, file: !382, line: 135, baseType: !8, size: 32, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !475, file: !382, line: 136, baseType: !385, size: 64, offset: 320)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !475, file: !382, line: 137, baseType: !124, size: 64, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !475, file: !382, line: 143, baseType: !400, size: 64, offset: 448)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !475, file: !382, line: 144, baseType: !489, size: 64, offset: 512)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !125, line: 180, baseType: !126)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !475, file: !382, line: 152, baseType: !404, size: 128, offset: 576)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !475, file: !382, line: 153, baseType: !404, size: 128, offset: 704)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !475, file: !382, line: 154, baseType: !404, size: 128, offset: 832)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !475, file: !382, line: 164, baseType: !414, size: 192, offset: 960)
!494 = !{!495, !496}
!495 = !DILocalVariable(name: "__path", arg: 1, scope: !471, file: !377, line: 502, type: !13)
!496 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !471, file: !377, line: 502, type: !474)
!497 = !DILocation(line: 0, scope: !471)
!498 = !DILocation(line: 504, column: 10, scope: !471)
!499 = !DILocation(line: 504, column: 3, scope: !471)
!500 = distinct !DISubprogram(name: "lstat64", scope: !377, file: !377, line: 509, type: !472, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!501 = !{!502, !503}
!502 = !DILocalVariable(name: "__path", arg: 1, scope: !500, file: !377, line: 509, type: !13)
!503 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !500, file: !377, line: 509, type: !474)
!504 = !DILocation(line: 0, scope: !500)
!505 = !DILocation(line: 511, column: 10, scope: !500)
!506 = !DILocation(line: 511, column: 3, scope: !500)
!507 = distinct !DISubprogram(name: "fstat64", scope: !377, file: !377, line: 516, type: !508, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !510)
!508 = !DISubroutineType(types: !509)
!509 = !{!8, !8, !474}
!510 = !{!511, !512}
!511 = !DILocalVariable(name: "__fd", arg: 1, scope: !507, file: !377, line: 516, type: !8)
!512 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !507, file: !377, line: 516, type: !474)
!513 = !DILocation(line: 0, scope: !507)
!514 = !DILocation(line: 518, column: 10, scope: !507)
!515 = !DILocation(line: 518, column: 3, scope: !507)
!516 = distinct !DISubprogram(name: "fstatat64", scope: !377, file: !377, line: 523, type: !517, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !519)
!517 = !DISubroutineType(types: !518)
!518 = !{!8, !8, !13, !474, !8}
!519 = !{!520, !521, !522, !523}
!520 = !DILocalVariable(name: "__fd", arg: 1, scope: !516, file: !377, line: 523, type: !8)
!521 = !DILocalVariable(name: "__filename", arg: 2, scope: !516, file: !377, line: 523, type: !13)
!522 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !516, file: !377, line: 523, type: !474)
!523 = !DILocalVariable(name: "__flag", arg: 4, scope: !516, file: !377, line: 523, type: !8)
!524 = !DILocation(line: 0, scope: !516)
!525 = !DILocation(line: 526, column: 10, scope: !516)
!526 = !DILocation(line: 526, column: 3, scope: !516)
!527 = distinct !DISubprogram(name: "et_new_tree", scope: !3, file: !3, line: 467, type: !528, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !530)
!528 = !DISubroutineType(types: !529)
!529 = !{!15, !12}
!530 = !{!531, !532}
!531 = !DILocalVariable(name: "data", arg: 1, scope: !527, file: !3, line: 467, type: !12)
!532 = !DILocalVariable(name: "nw", scope: !527, file: !3, line: 469, type: !15)
!533 = !DILocation(line: 0, scope: !527)
!534 = !DILocation(line: 471, column: 8, scope: !535)
!535 = distinct !DILexicalBlock(scope: !527, file: !3, line: 471, column: 7)
!536 = !DILocation(line: 471, column: 7, scope: !527)
!537 = !DILocation(line: 472, column: 16, scope: !535)
!538 = !DILocation(line: 472, column: 14, scope: !535)
!539 = !DILocation(line: 472, column: 5, scope: !535)
!540 = !DILocation(line: 473, column: 39, scope: !527)
!541 = !DILocation(line: 473, column: 27, scope: !527)
!542 = !DILocation(line: 473, column: 8, scope: !527)
!543 = !DILocation(line: 475, column: 7, scope: !527)
!544 = !DILocation(line: 475, column: 12, scope: !527)
!545 = !DILocation(line: 476, column: 7, scope: !527)
!546 = !DILocation(line: 476, column: 14, scope: !527)
!547 = !DILocation(line: 477, column: 7, scope: !527)
!548 = !DILocation(line: 477, column: 12, scope: !527)
!549 = !DILocation(line: 478, column: 7, scope: !527)
!550 = !DILocation(line: 478, column: 13, scope: !527)
!551 = !DILocation(line: 479, column: 7, scope: !527)
!552 = !DILocation(line: 479, column: 11, scope: !527)
!553 = !DILocation(line: 481, column: 23, scope: !527)
!554 = !DILocation(line: 481, column: 7, scope: !527)
!555 = !DILocation(line: 481, column: 21, scope: !527)
!556 = !DILocation(line: 482, column: 7, scope: !527)
!557 = !DILocation(line: 482, column: 18, scope: !527)
!558 = !DILocation(line: 484, column: 3, scope: !527)
!559 = distinct !DISubprogram(name: "et_new_occ", scope: !3, file: !3, line: 444, type: !560, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !562)
!560 = !DISubroutineType(types: !561)
!561 = !{!27, !15}
!562 = !{!563, !564}
!563 = !DILocalVariable(name: "node", arg: 1, scope: !559, file: !3, line: 444, type: !15)
!564 = !DILocalVariable(name: "nw", scope: !559, file: !3, line: 446, type: !27)
!565 = !DILocation(line: 0, scope: !559)
!566 = !DILocation(line: 448, column: 8, scope: !567)
!567 = distinct !DILexicalBlock(scope: !559, file: !3, line: 448, column: 7)
!568 = !DILocation(line: 448, column: 7, scope: !559)
!569 = !DILocation(line: 449, column: 22, scope: !567)
!570 = !DILocation(line: 449, column: 20, scope: !567)
!571 = !DILocation(line: 449, column: 5, scope: !567)
!572 = !DILocation(line: 450, column: 38, scope: !559)
!573 = !DILocation(line: 450, column: 26, scope: !559)
!574 = !DILocation(line: 450, column: 8, scope: !559)
!575 = !DILocation(line: 452, column: 7, scope: !559)
!576 = !DILocation(line: 452, column: 10, scope: !559)
!577 = !DILocation(line: 453, column: 7, scope: !559)
!578 = !DILocation(line: 453, column: 14, scope: !559)
!579 = !DILocation(line: 454, column: 7, scope: !559)
!580 = !DILocation(line: 454, column: 12, scope: !559)
!581 = !DILocation(line: 455, column: 7, scope: !559)
!582 = !DILocation(line: 455, column: 12, scope: !559)
!583 = !DILocation(line: 457, column: 7, scope: !559)
!584 = !DILocation(line: 457, column: 13, scope: !559)
!585 = !DILocation(line: 458, column: 7, scope: !559)
!586 = !DILocation(line: 458, column: 15, scope: !559)
!587 = !DILocation(line: 459, column: 7, scope: !559)
!588 = !DILocation(line: 459, column: 11, scope: !559)
!589 = !DILocation(line: 461, column: 3, scope: !559)
!590 = distinct !DISubprogram(name: "et_free_tree", scope: !3, file: !3, line: 490, type: !591, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{null, !15}
!593 = !{!594}
!594 = !DILocalVariable(name: "t", arg: 1, scope: !590, file: !3, line: 490, type: !15)
!595 = !DILocation(line: 0, scope: !590)
!596 = !DILocation(line: 492, column: 3, scope: !590)
!597 = !DILocation(line: 492, column: 13, scope: !590)
!598 = !DILocation(line: 493, column: 5, scope: !590)
!599 = distinct !{!599, !596, !600}
!600 = !DILocation(line: 493, column: 21, scope: !590)
!601 = !DILocation(line: 495, column: 10, scope: !602)
!602 = distinct !DILexicalBlock(scope: !590, file: !3, line: 495, column: 7)
!603 = !DILocation(line: 495, column: 7, scope: !602)
!604 = !DILocation(line: 495, column: 7, scope: !590)
!605 = !DILocation(line: 496, column: 5, scope: !602)
!606 = !DILocation(line: 498, column: 14, scope: !590)
!607 = !DILocation(line: 498, column: 33, scope: !590)
!608 = !DILocation(line: 498, column: 3, scope: !590)
!609 = !DILocation(line: 499, column: 14, scope: !590)
!610 = !DILocation(line: 499, column: 24, scope: !590)
!611 = !DILocation(line: 499, column: 3, scope: !590)
!612 = !DILocation(line: 500, column: 1, scope: !590)
!613 = distinct !DISubprogram(name: "et_split", scope: !3, file: !3, line: 582, type: !591, scopeLine: 583, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !614)
!614 = !{!615, !616, !617, !618, !619, !620}
!615 = !DILocalVariable(name: "t", arg: 1, scope: !613, file: !3, line: 582, type: !15)
!616 = !DILocalVariable(name: "father", scope: !613, file: !3, line: 584, type: !15)
!617 = !DILocalVariable(name: "r", scope: !613, file: !3, line: 585, type: !27)
!618 = !DILocalVariable(name: "l", scope: !613, file: !3, line: 585, type: !27)
!619 = !DILocalVariable(name: "rmost", scope: !613, file: !3, line: 585, type: !27)
!620 = !DILocalVariable(name: "p_occ", scope: !613, file: !3, line: 585, type: !27)
!621 = !DILocation(line: 0, scope: !613)
!622 = !DILocation(line: 584, column: 31, scope: !613)
!623 = !DILocation(line: 588, column: 14, scope: !613)
!624 = !DILocation(line: 589, column: 3, scope: !613)
!625 = !DILocation(line: 591, column: 19, scope: !626)
!626 = distinct !DILexicalBlock(scope: !613, file: !3, line: 591, column: 3)
!627 = !DILocation(line: 0, scope: !626)
!628 = !DILocation(line: 591, column: 8, scope: !626)
!629 = !DILocation(line: 591, column: 28, scope: !630)
!630 = distinct !DILexicalBlock(scope: !626, file: !3, line: 591, column: 3)
!631 = !DILocation(line: 591, column: 3, scope: !626)
!632 = !DILocation(line: 591, column: 3, scope: !630)
!633 = distinct !{!633, !631, !634}
!634 = !DILocation(line: 592, column: 5, scope: !626)
!635 = !DILocation(line: 593, column: 3, scope: !613)
!636 = !DILocation(line: 595, column: 6, scope: !613)
!637 = !DILocation(line: 595, column: 12, scope: !613)
!638 = !DILocation(line: 595, column: 19, scope: !613)
!639 = !DILocation(line: 596, column: 14, scope: !613)
!640 = !DILocation(line: 597, column: 3, scope: !613)
!641 = !DILocation(line: 598, column: 17, scope: !613)
!642 = !DILocation(line: 600, column: 14, scope: !613)
!643 = !DILocation(line: 601, column: 10, scope: !613)
!644 = !DILocation(line: 601, column: 16, scope: !613)
!645 = !DILocation(line: 601, column: 23, scope: !613)
!646 = !DILocation(line: 603, column: 3, scope: !613)
!647 = !DILocation(line: 605, column: 3, scope: !613)
!648 = !DILocation(line: 607, column: 3, scope: !613)
!649 = !DILocation(line: 608, column: 10, scope: !613)
!650 = !DILocation(line: 608, column: 16, scope: !613)
!651 = !DILocation(line: 609, column: 10, scope: !613)
!652 = !DILocation(line: 609, column: 14, scope: !613)
!653 = !DILocation(line: 611, column: 14, scope: !613)
!654 = !DILocation(line: 611, column: 30, scope: !613)
!655 = !DILocation(line: 611, column: 3, scope: !613)
!656 = !DILocation(line: 614, column: 15, scope: !657)
!657 = distinct !DILexicalBlock(scope: !613, file: !3, line: 614, column: 7)
!658 = !DILocation(line: 614, column: 19, scope: !657)
!659 = !DILocation(line: 614, column: 7, scope: !613)
!660 = !DILocation(line: 615, column: 22, scope: !657)
!661 = !DILocation(line: 615, column: 17, scope: !657)
!662 = !DILocation(line: 615, column: 5, scope: !657)
!663 = !DILocation(line: 616, column: 15, scope: !664)
!664 = distinct !DILexicalBlock(scope: !613, file: !3, line: 616, column: 7)
!665 = !DILocation(line: 616, column: 19, scope: !664)
!666 = !DILocation(line: 616, column: 7, scope: !613)
!667 = !DILocation(line: 617, column: 17, scope: !664)
!668 = !DILocation(line: 617, column: 5, scope: !664)
!669 = !DILocation(line: 620, column: 27, scope: !670)
!670 = distinct !DILexicalBlock(scope: !664, file: !3, line: 619, column: 5)
!671 = !DILocation(line: 620, column: 10, scope: !670)
!672 = !DILocation(line: 620, column: 16, scope: !670)
!673 = !DILocation(line: 620, column: 22, scope: !670)
!674 = !DILocation(line: 621, column: 27, scope: !670)
!675 = !DILocation(line: 621, column: 10, scope: !670)
!676 = !DILocation(line: 621, column: 17, scope: !670)
!677 = !DILocation(line: 621, column: 22, scope: !670)
!678 = !DILocation(line: 623, column: 16, scope: !613)
!679 = !DILocation(line: 623, column: 22, scope: !613)
!680 = !DILocation(line: 623, column: 6, scope: !613)
!681 = !DILocation(line: 623, column: 11, scope: !613)
!682 = !DILocation(line: 624, column: 13, scope: !613)
!683 = !DILocation(line: 633, column: 1, scope: !613)
!684 = distinct !DISubprogram(name: "et_free_tree_force", scope: !3, file: !3, line: 505, type: !591, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !685)
!685 = !{!686}
!686 = !DILocalVariable(name: "t", arg: 1, scope: !684, file: !3, line: 505, type: !15)
!687 = !DILocation(line: 0, scope: !684)
!688 = !DILocation(line: 507, column: 14, scope: !684)
!689 = !DILocation(line: 507, column: 33, scope: !684)
!690 = !DILocation(line: 507, column: 3, scope: !684)
!691 = !DILocation(line: 508, column: 10, scope: !692)
!692 = distinct !DILexicalBlock(scope: !684, file: !3, line: 508, column: 7)
!693 = !DILocation(line: 508, column: 7, scope: !692)
!694 = !DILocation(line: 508, column: 7, scope: !684)
!695 = !DILocation(line: 509, column: 16, scope: !692)
!696 = !DILocation(line: 509, column: 5, scope: !692)
!697 = !DILocation(line: 510, column: 14, scope: !684)
!698 = !DILocation(line: 510, column: 24, scope: !684)
!699 = !DILocation(line: 510, column: 3, scope: !684)
!700 = !DILocation(line: 511, column: 1, scope: !684)
!701 = distinct !DISubprogram(name: "et_free_pools", scope: !3, file: !3, line: 516, type: !702, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!702 = !DISubroutineType(types: !703)
!703 = !{null}
!704 = !DILocation(line: 518, column: 3, scope: !701)
!705 = !DILocation(line: 519, column: 3, scope: !701)
!706 = !DILocation(line: 520, column: 1, scope: !701)
!707 = distinct !DISubprogram(name: "et_set_father", scope: !3, file: !3, line: 525, type: !708, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{null, !15, !15}
!710 = !{!711, !712, !713, !714, !715, !716, !717, !718}
!711 = !DILocalVariable(name: "t", arg: 1, scope: !707, file: !3, line: 525, type: !15)
!712 = !DILocalVariable(name: "father", arg: 2, scope: !707, file: !3, line: 525, type: !15)
!713 = !DILocalVariable(name: "left", scope: !707, file: !3, line: 527, type: !15)
!714 = !DILocalVariable(name: "right", scope: !707, file: !3, line: 527, type: !15)
!715 = !DILocalVariable(name: "rmost", scope: !707, file: !3, line: 528, type: !27)
!716 = !DILocalVariable(name: "left_part", scope: !707, file: !3, line: 528, type: !27)
!717 = !DILocalVariable(name: "new_f_occ", scope: !707, file: !3, line: 528, type: !27)
!718 = !DILocalVariable(name: "p", scope: !707, file: !3, line: 528, type: !27)
!719 = !DILocation(line: 0, scope: !707)
!720 = !DILocation(line: 531, column: 15, scope: !707)
!721 = !DILocation(line: 533, column: 19, scope: !707)
!722 = !DILocation(line: 534, column: 3, scope: !707)
!723 = !DILocation(line: 536, column: 22, scope: !707)
!724 = !DILocation(line: 538, column: 10, scope: !707)
!725 = !DILocation(line: 539, column: 3, scope: !707)
!726 = !DILocation(line: 541, column: 3, scope: !707)
!727 = !DILocation(line: 542, column: 3, scope: !707)
!728 = !DILocation(line: 544, column: 6, scope: !707)
!729 = !DILocation(line: 544, column: 11, scope: !707)
!730 = !DILocation(line: 545, column: 6, scope: !707)
!731 = !DILocation(line: 545, column: 9, scope: !707)
!732 = !DILocation(line: 546, column: 3, scope: !707)
!733 = !DILocation(line: 548, column: 3, scope: !707)
!734 = !DILocation(line: 550, column: 18, scope: !735)
!735 = distinct !DILexicalBlock(scope: !707, file: !3, line: 550, column: 7)
!736 = !DILocation(line: 550, column: 31, scope: !735)
!737 = !DILocation(line: 550, column: 22, scope: !735)
!738 = !DILocation(line: 550, column: 46, scope: !735)
!739 = !DILocation(line: 550, column: 37, scope: !735)
!740 = !DILocation(line: 550, column: 7, scope: !707)
!741 = !DILocation(line: 552, column: 18, scope: !742)
!742 = distinct !DILexicalBlock(scope: !735, file: !3, line: 551, column: 5)
!743 = !DILocation(line: 553, column: 35, scope: !742)
!744 = !DILocation(line: 553, column: 14, scope: !742)
!745 = !DILocation(line: 553, column: 22, scope: !742)
!746 = !DILocation(line: 554, column: 5, scope: !742)
!747 = !DILocation(line: 556, column: 6, scope: !707)
!748 = !DILocation(line: 556, column: 17, scope: !707)
!749 = !DILocation(line: 559, column: 6, scope: !707)
!750 = !DILocation(line: 559, column: 13, scope: !707)
!751 = !DILocation(line: 560, column: 19, scope: !707)
!752 = !DILocation(line: 561, column: 7, scope: !753)
!753 = distinct !DILexicalBlock(scope: !707, file: !3, line: 561, column: 7)
!754 = !DILocation(line: 561, column: 7, scope: !707)
!755 = !DILocation(line: 562, column: 19, scope: !753)
!756 = !DILocation(line: 562, column: 5, scope: !753)
!757 = !DILocation(line: 0, scope: !753)
!758 = !DILocation(line: 566, column: 9, scope: !707)
!759 = !DILocation(line: 566, column: 15, scope: !707)
!760 = !DILocation(line: 567, column: 10, scope: !707)
!761 = !DILocation(line: 567, column: 15, scope: !707)
!762 = !DILocation(line: 568, column: 6, scope: !707)
!763 = !DILocation(line: 568, column: 11, scope: !707)
!764 = !DILocation(line: 569, column: 6, scope: !707)
!765 = !DILocation(line: 569, column: 12, scope: !707)
!766 = !DILocation(line: 571, column: 15, scope: !707)
!767 = !DILocation(line: 577, column: 1, scope: !707)
!768 = distinct !DISubprogram(name: "et_splay", scope: !3, file: !3, line: 302, type: !769, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{null, !27}
!771 = !{!772, !773, !774, !775, !776, !777, !778}
!772 = !DILocalVariable(name: "occ", arg: 1, scope: !768, file: !3, line: 302, type: !27)
!773 = !DILocalVariable(name: "f", scope: !768, file: !3, line: 304, type: !27)
!774 = !DILocalVariable(name: "gf", scope: !768, file: !3, line: 304, type: !27)
!775 = !DILocalVariable(name: "ggf", scope: !768, file: !3, line: 304, type: !27)
!776 = !DILocalVariable(name: "occ_depth", scope: !768, file: !3, line: 305, type: !8)
!777 = !DILocalVariable(name: "f_depth", scope: !768, file: !3, line: 305, type: !8)
!778 = !DILocalVariable(name: "gf_depth", scope: !768, file: !3, line: 305, type: !8)
!779 = !DILocation(line: 0, scope: !768)
!780 = !DILocation(line: 0, scope: !781)
!781 = distinct !DILexicalBlock(scope: !768, file: !3, line: 313, column: 5)
!782 = !DILocation(line: 0, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 405, column: 6)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 391, column: 8)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 390, column: 2)
!786 = distinct !DILexicalBlock(scope: !781, file: !3, line: 360, column: 11)
!787 = !DILocation(line: 0, scope: !788)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 392, column: 6)
!789 = !DILocation(line: 312, column: 3, scope: !768)
!790 = !DILocation(line: 312, column: 15, scope: !768)
!791 = !DILocation(line: 314, column: 24, scope: !781)
!792 = !DILocation(line: 317, column: 20, scope: !781)
!793 = !DILocation(line: 319, column: 15, scope: !781)
!794 = !DILocation(line: 321, column: 12, scope: !795)
!795 = distinct !DILexicalBlock(scope: !781, file: !3, line: 321, column: 11)
!796 = !DILocation(line: 321, column: 11, scope: !781)
!797 = !DILocation(line: 323, column: 4, scope: !798)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 322, column: 2)
!799 = !DILocation(line: 324, column: 22, scope: !798)
!800 = !DILocation(line: 324, column: 17, scope: !798)
!801 = !DILocation(line: 325, column: 18, scope: !798)
!802 = !DILocation(line: 325, column: 13, scope: !798)
!803 = !DILocation(line: 327, column: 11, scope: !804)
!804 = distinct !DILexicalBlock(scope: !798, file: !3, line: 327, column: 8)
!805 = !DILocation(line: 327, column: 16, scope: !804)
!806 = !DILocation(line: 327, column: 8, scope: !798)
!807 = !DILocation(line: 330, column: 26, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 328, column: 6)
!809 = !DILocation(line: 330, column: 8, scope: !808)
!810 = !DILocation(line: 331, column: 8, scope: !808)
!811 = !DILocation(line: 332, column: 26, scope: !808)
!812 = !DILocation(line: 332, column: 8, scope: !808)
!813 = !DILocation(line: 333, column: 6, scope: !808)
!814 = !DILocation(line: 337, column: 26, scope: !815)
!815 = distinct !DILexicalBlock(scope: !804, file: !3, line: 335, column: 6)
!816 = !DILocation(line: 337, column: 8, scope: !815)
!817 = !DILocation(line: 338, column: 8, scope: !815)
!818 = !DILocation(line: 339, column: 26, scope: !815)
!819 = !DILocation(line: 339, column: 8, scope: !815)
!820 = !DILocation(line: 341, column: 18, scope: !798)
!821 = !DILocation(line: 341, column: 4, scope: !798)
!822 = !DILocation(line: 342, column: 16, scope: !798)
!823 = !DILocation(line: 344, column: 4, scope: !798)
!824 = !DILocation(line: 349, column: 4, scope: !798)
!825 = !DILocation(line: 352, column: 22, scope: !781)
!826 = !DILocation(line: 354, column: 35, scope: !781)
!827 = !DILocation(line: 354, column: 7, scope: !781)
!828 = !DILocation(line: 355, column: 26, scope: !781)
!829 = !DILocation(line: 355, column: 20, scope: !781)
!830 = !DILocation(line: 356, column: 22, scope: !781)
!831 = !DILocation(line: 356, column: 16, scope: !781)
!832 = !DILocation(line: 358, column: 17, scope: !781)
!833 = !DILocation(line: 360, column: 15, scope: !786)
!834 = !DILocation(line: 360, column: 20, scope: !786)
!835 = !DILocation(line: 0, scope: !786)
!836 = !DILocation(line: 360, column: 11, scope: !781)
!837 = !DILocation(line: 362, column: 8, scope: !838)
!838 = distinct !DILexicalBlock(scope: !786, file: !3, line: 361, column: 2)
!839 = !DILocation(line: 365, column: 25, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 363, column: 6)
!841 = distinct !DILexicalBlock(scope: !838, file: !3, line: 362, column: 8)
!842 = !DILocation(line: 365, column: 8, scope: !840)
!843 = !DILocation(line: 366, column: 26, scope: !840)
!844 = !DILocation(line: 366, column: 8, scope: !840)
!845 = !DILocation(line: 367, column: 8, scope: !840)
!846 = !DILocation(line: 368, column: 8, scope: !840)
!847 = !DILocation(line: 370, column: 22, scope: !840)
!848 = !DILocation(line: 370, column: 8, scope: !840)
!849 = !DILocation(line: 371, column: 26, scope: !840)
!850 = !DILocation(line: 371, column: 8, scope: !840)
!851 = !DILocation(line: 372, column: 23, scope: !840)
!852 = !DILocation(line: 372, column: 8, scope: !840)
!853 = !DILocation(line: 373, column: 27, scope: !840)
!854 = !DILocation(line: 373, column: 8, scope: !840)
!855 = !DILocation(line: 374, column: 6, scope: !840)
!856 = !DILocation(line: 378, column: 27, scope: !857)
!857 = distinct !DILexicalBlock(scope: !841, file: !3, line: 376, column: 6)
!858 = !DILocation(line: 378, column: 8, scope: !857)
!859 = !DILocation(line: 379, column: 26, scope: !857)
!860 = !DILocation(line: 379, column: 8, scope: !857)
!861 = !DILocation(line: 380, column: 8, scope: !857)
!862 = !DILocation(line: 381, column: 8, scope: !857)
!863 = !DILocation(line: 383, column: 22, scope: !857)
!864 = !DILocation(line: 383, column: 8, scope: !857)
!865 = !DILocation(line: 384, column: 26, scope: !857)
!866 = !DILocation(line: 384, column: 8, scope: !857)
!867 = !DILocation(line: 385, column: 34, scope: !857)
!868 = !DILocation(line: 385, column: 8, scope: !857)
!869 = !DILocation(line: 386, column: 27, scope: !857)
!870 = !DILocation(line: 386, column: 43, scope: !857)
!871 = !DILocation(line: 386, column: 8, scope: !857)
!872 = !DILocation(line: 391, column: 8, scope: !785)
!873 = !DILocation(line: 394, column: 27, scope: !788)
!874 = !DILocation(line: 394, column: 8, scope: !788)
!875 = !DILocation(line: 395, column: 26, scope: !788)
!876 = !DILocation(line: 395, column: 8, scope: !788)
!877 = !DILocation(line: 396, column: 8, scope: !788)
!878 = !DILocation(line: 397, column: 8, scope: !788)
!879 = !DILocation(line: 399, column: 22, scope: !788)
!880 = !DILocation(line: 399, column: 8, scope: !788)
!881 = !DILocation(line: 400, column: 26, scope: !788)
!882 = !DILocation(line: 400, column: 8, scope: !788)
!883 = !DILocation(line: 401, column: 34, scope: !788)
!884 = !DILocation(line: 401, column: 8, scope: !788)
!885 = !DILocation(line: 402, column: 27, scope: !788)
!886 = !DILocation(line: 402, column: 43, scope: !788)
!887 = !DILocation(line: 402, column: 8, scope: !788)
!888 = !DILocation(line: 403, column: 6, scope: !788)
!889 = !DILocation(line: 407, column: 8, scope: !783)
!890 = !DILocation(line: 408, column: 26, scope: !783)
!891 = !DILocation(line: 408, column: 8, scope: !783)
!892 = !DILocation(line: 409, column: 8, scope: !783)
!893 = !DILocation(line: 410, column: 8, scope: !783)
!894 = !DILocation(line: 412, column: 22, scope: !783)
!895 = !DILocation(line: 412, column: 8, scope: !783)
!896 = !DILocation(line: 413, column: 26, scope: !783)
!897 = !DILocation(line: 413, column: 8, scope: !783)
!898 = !DILocation(line: 414, column: 23, scope: !783)
!899 = !DILocation(line: 414, column: 8, scope: !783)
!900 = !DILocation(line: 415, column: 27, scope: !783)
!901 = !DILocation(line: 415, column: 8, scope: !783)
!902 = !DILocation(line: 419, column: 19, scope: !781)
!903 = !DILocation(line: 420, column: 11, scope: !904)
!904 = distinct !DILexicalBlock(scope: !781, file: !3, line: 420, column: 11)
!905 = !DILocation(line: 420, column: 11, scope: !781)
!906 = !DILocation(line: 422, column: 13, scope: !907)
!907 = distinct !DILexicalBlock(scope: !908, file: !3, line: 422, column: 8)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 421, column: 2)
!909 = !DILocation(line: 422, column: 18, scope: !907)
!910 = !DILocation(line: 422, column: 8, scope: !908)
!911 = !DILocation(line: 423, column: 16, scope: !907)
!912 = !DILocation(line: 423, column: 6, scope: !907)
!913 = !DILocation(line: 425, column: 11, scope: !907)
!914 = !DILocation(line: 425, column: 16, scope: !907)
!915 = !DILocation(line: 428, column: 7, scope: !781)
!916 = !DILocation(line: 429, column: 7, scope: !781)
!917 = distinct !{!917, !789, !918}
!918 = !DILocation(line: 433, column: 5, scope: !768)
!919 = !DILocation(line: 439, column: 1, scope: !768)
!920 = distinct !DISubprogram(name: "set_prev", scope: !3, file: !3, line: 88, type: !921, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !923)
!921 = !DISubroutineType(types: !922)
!922 = !{null, !27, !27}
!923 = !{!924, !925}
!924 = !DILocalVariable(name: "occ", arg: 1, scope: !920, file: !3, line: 88, type: !27)
!925 = !DILocalVariable(name: "t", arg: 2, scope: !920, file: !3, line: 88, type: !27)
!926 = !DILocation(line: 0, scope: !920)
!927 = !DILocation(line: 94, column: 8, scope: !920)
!928 = !DILocation(line: 94, column: 13, scope: !920)
!929 = !DILocation(line: 95, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !920, file: !3, line: 95, column: 7)
!931 = !DILocation(line: 95, column: 7, scope: !920)
!932 = !DILocation(line: 96, column: 8, scope: !930)
!933 = !DILocation(line: 96, column: 15, scope: !930)
!934 = !DILocation(line: 96, column: 5, scope: !930)
!935 = !DILocation(line: 97, column: 1, scope: !920)
!936 = distinct !DISubprogram(name: "set_next", scope: !3, file: !3, line: 102, type: !921, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !937)
!937 = !{!938, !939}
!938 = !DILocalVariable(name: "occ", arg: 1, scope: !936, file: !3, line: 102, type: !27)
!939 = !DILocalVariable(name: "t", arg: 2, scope: !936, file: !3, line: 102, type: !27)
!940 = !DILocation(line: 0, scope: !936)
!941 = !DILocation(line: 108, column: 8, scope: !936)
!942 = !DILocation(line: 108, column: 13, scope: !936)
!943 = !DILocation(line: 109, column: 7, scope: !944)
!944 = distinct !DILexicalBlock(scope: !936, file: !3, line: 109, column: 7)
!945 = !DILocation(line: 109, column: 7, scope: !936)
!946 = !DILocation(line: 110, column: 8, scope: !944)
!947 = !DILocation(line: 110, column: 15, scope: !944)
!948 = !DILocation(line: 110, column: 5, scope: !944)
!949 = !DILocation(line: 111, column: 1, scope: !936)
!950 = distinct !DISubprogram(name: "et_recomp_min", scope: !3, file: !3, line: 116, type: !769, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !951)
!951 = !{!952, !953}
!952 = !DILocalVariable(name: "occ", arg: 1, scope: !950, file: !3, line: 116, type: !27)
!953 = !DILocalVariable(name: "mson", scope: !950, file: !3, line: 118, type: !27)
!954 = !DILocation(line: 0, scope: !950)
!955 = !DILocation(line: 118, column: 30, scope: !950)
!956 = !DILocation(line: 120, column: 8, scope: !957)
!957 = distinct !DILexicalBlock(scope: !950, file: !3, line: 120, column: 7)
!958 = !DILocation(line: 121, column: 7, scope: !957)
!959 = !DILocation(line: 0, scope: !957)
!960 = !DILocation(line: 123, column: 19, scope: !957)
!961 = !DILocation(line: 121, column: 16, scope: !957)
!962 = !DILocation(line: 121, column: 11, scope: !957)
!963 = !DILocation(line: 122, column: 4, scope: !957)
!964 = !DILocation(line: 122, column: 13, scope: !957)
!965 = !DILocation(line: 122, column: 30, scope: !957)
!966 = !DILocation(line: 122, column: 17, scope: !957)
!967 = !DILocation(line: 120, column: 7, scope: !950)
!968 = !DILocation(line: 123, column: 7, scope: !957)
!969 = !DILocation(line: 125, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !950, file: !3, line: 125, column: 7)
!971 = !DILocation(line: 125, column: 12, scope: !970)
!972 = !DILocation(line: 125, column: 21, scope: !970)
!973 = !DILocation(line: 125, column: 25, scope: !970)
!974 = !DILocation(line: 125, column: 7, scope: !950)
!975 = !DILocation(line: 127, column: 35, scope: !976)
!976 = distinct !DILexicalBlock(scope: !970, file: !3, line: 126, column: 5)
!977 = !DILocation(line: 127, column: 28, scope: !976)
!978 = !DILocation(line: 127, column: 12, scope: !976)
!979 = !DILocation(line: 127, column: 16, scope: !976)
!980 = !DILocation(line: 128, column: 28, scope: !976)
!981 = !DILocation(line: 128, column: 12, scope: !976)
!982 = !DILocation(line: 128, column: 20, scope: !976)
!983 = !DILocation(line: 129, column: 5, scope: !976)
!984 = !DILocation(line: 132, column: 23, scope: !985)
!985 = distinct !DILexicalBlock(scope: !970, file: !3, line: 131, column: 5)
!986 = !DILocation(line: 132, column: 12, scope: !985)
!987 = !DILocation(line: 132, column: 16, scope: !985)
!988 = !DILocation(line: 133, column: 12, scope: !985)
!989 = !DILocation(line: 133, column: 20, scope: !985)
!990 = !DILocation(line: 135, column: 1, scope: !950)
!991 = distinct !DISubprogram(name: "et_nca", scope: !3, file: !3, line: 638, type: !992, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !994)
!992 = !DISubroutineType(types: !993)
!993 = !{!15, !15, !15}
!994 = !{!995, !996, !997, !998, !999, !1000, !1001, !1002, !1003}
!995 = !DILocalVariable(name: "n1", arg: 1, scope: !991, file: !3, line: 638, type: !15)
!996 = !DILocalVariable(name: "n2", arg: 2, scope: !991, file: !3, line: 638, type: !15)
!997 = !DILocalVariable(name: "o1", scope: !991, file: !3, line: 640, type: !27)
!998 = !DILocalVariable(name: "o2", scope: !991, file: !3, line: 640, type: !27)
!999 = !DILocalVariable(name: "om", scope: !991, file: !3, line: 640, type: !27)
!1000 = !DILocalVariable(name: "l", scope: !991, file: !3, line: 641, type: !27)
!1001 = !DILocalVariable(name: "r", scope: !991, file: !3, line: 641, type: !27)
!1002 = !DILocalVariable(name: "ret", scope: !991, file: !3, line: 641, type: !27)
!1003 = !DILocalVariable(name: "mn", scope: !991, file: !3, line: 642, type: !8)
!1004 = !DILocation(line: 0, scope: !991)
!1005 = !DILocation(line: 640, column: 27, scope: !991)
!1006 = !DILocation(line: 640, column: 52, scope: !991)
!1007 = !DILocation(line: 644, column: 10, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !991, file: !3, line: 644, column: 7)
!1009 = !DILocation(line: 644, column: 7, scope: !991)
!1010 = !DILocation(line: 647, column: 3, scope: !991)
!1011 = !DILocation(line: 648, column: 11, scope: !991)
!1012 = !DILocation(line: 649, column: 11, scope: !991)
!1013 = !DILocation(line: 650, column: 7, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !991, file: !3, line: 650, column: 7)
!1015 = !DILocation(line: 650, column: 7, scope: !991)
!1016 = !DILocation(line: 651, column: 8, scope: !1014)
!1017 = !DILocation(line: 651, column: 15, scope: !1014)
!1018 = !DILocation(line: 651, column: 5, scope: !1014)
!1019 = !DILocation(line: 652, column: 7, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !991, file: !3, line: 652, column: 7)
!1021 = !DILocation(line: 652, column: 7, scope: !991)
!1022 = !DILocation(line: 653, column: 8, scope: !1020)
!1023 = !DILocation(line: 653, column: 15, scope: !1020)
!1024 = !DILocation(line: 653, column: 5, scope: !1020)
!1025 = !DILocation(line: 654, column: 3, scope: !991)
!1026 = !DILocation(line: 656, column: 9, scope: !1027)
!1027 = distinct !DILexicalBlock(scope: !991, file: !3, line: 656, column: 7)
!1028 = !DILocation(line: 656, column: 15, scope: !1027)
!1029 = !DILocation(line: 656, column: 21, scope: !1027)
!1030 = !DILocation(line: 656, column: 27, scope: !1027)
!1031 = !DILocation(line: 656, column: 34, scope: !1027)
!1032 = !DILocation(line: 656, column: 7, scope: !991)
!1033 = !DILocation(line: 658, column: 17, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 657, column: 5)
!1035 = !DILocation(line: 660, column: 7, scope: !1034)
!1036 = !DILocation(line: 661, column: 11, scope: !1034)
!1037 = !DILocation(line: 662, column: 5, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 661, column: 11)
!1039 = !DILocation(line: 662, column: 12, scope: !1038)
!1040 = !DILocation(line: 662, column: 2, scope: !1038)
!1041 = !DILocation(line: 666, column: 17, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 665, column: 5)
!1043 = !DILocation(line: 668, column: 7, scope: !1042)
!1044 = !DILocation(line: 669, column: 11, scope: !1042)
!1045 = !DILocation(line: 670, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 669, column: 11)
!1047 = !DILocation(line: 670, column: 12, scope: !1046)
!1048 = !DILocation(line: 670, column: 2, scope: !1046)
!1049 = !DILocation(line: 0, scope: !1027)
!1050 = !DILocation(line: 673, column: 15, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !991, file: !3, line: 673, column: 7)
!1052 = !DILocation(line: 673, column: 9, scope: !1051)
!1053 = !DILocation(line: 673, column: 7, scope: !991)
!1054 = !DILocation(line: 676, column: 16, scope: !1055)
!1055 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 674, column: 5)
!1056 = !DILocation(line: 677, column: 5, scope: !1055)
!1057 = !DILocation(line: 681, column: 28, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 679, column: 5)
!1059 = !DILocation(line: 681, column: 22, scope: !1058)
!1060 = !DILocation(line: 0, scope: !1051)
!1061 = !DILocation(line: 688, column: 7, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !991, file: !3, line: 688, column: 7)
!1063 = !DILocation(line: 688, column: 11, scope: !1062)
!1064 = !DILocation(line: 688, column: 19, scope: !1062)
!1065 = !DILocation(line: 688, column: 23, scope: !1062)
!1066 = !DILocation(line: 688, column: 35, scope: !1062)
!1067 = !DILocation(line: 688, column: 47, scope: !1062)
!1068 = !DILocation(line: 688, column: 7, scope: !991)
!1069 = !DILocation(line: 689, column: 17, scope: !1062)
!1070 = !DILocation(line: 689, column: 26, scope: !1062)
!1071 = !DILocation(line: 689, column: 5, scope: !1062)
!1072 = !DILocation(line: 691, column: 16, scope: !1062)
!1073 = !DILocation(line: 691, column: 5, scope: !1062)
!1074 = !DILocation(line: 692, column: 1, scope: !991)
!1075 = distinct !DISubprogram(name: "et_below", scope: !3, file: !3, line: 697, type: !1076, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1078)
!1076 = !DISubroutineType(types: !1077)
!1077 = !{!7, !15, !15}
!1078 = !{!1079, !1080, !1081, !1082, !1083, !1084}
!1079 = !DILocalVariable(name: "down", arg: 1, scope: !1075, file: !3, line: 697, type: !15)
!1080 = !DILocalVariable(name: "up", arg: 2, scope: !1075, file: !3, line: 697, type: !15)
!1081 = !DILocalVariable(name: "u", scope: !1075, file: !3, line: 699, type: !27)
!1082 = !DILocalVariable(name: "d", scope: !1075, file: !3, line: 699, type: !27)
!1083 = !DILocalVariable(name: "l", scope: !1075, file: !3, line: 700, type: !27)
!1084 = !DILocalVariable(name: "r", scope: !1075, file: !3, line: 700, type: !27)
!1085 = !DILocation(line: 0, scope: !1075)
!1086 = !DILocation(line: 699, column: 26, scope: !1075)
!1087 = !DILocation(line: 699, column: 52, scope: !1075)
!1088 = !DILocation(line: 702, column: 10, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 702, column: 7)
!1090 = !DILocation(line: 702, column: 7, scope: !1075)
!1091 = !DILocation(line: 705, column: 3, scope: !1075)
!1092 = !DILocation(line: 706, column: 10, scope: !1075)
!1093 = !DILocation(line: 707, column: 10, scope: !1075)
!1094 = !DILocation(line: 709, column: 8, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 709, column: 7)
!1096 = !DILocation(line: 709, column: 7, scope: !1075)
!1097 = !DILocation(line: 712, column: 6, scope: !1075)
!1098 = !DILocation(line: 712, column: 13, scope: !1075)
!1099 = !DILocation(line: 714, column: 7, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 714, column: 7)
!1101 = !DILocation(line: 714, column: 7, scope: !1075)
!1102 = !DILocation(line: 715, column: 8, scope: !1100)
!1103 = !DILocation(line: 715, column: 15, scope: !1100)
!1104 = !DILocation(line: 715, column: 5, scope: !1100)
!1105 = !DILocation(line: 717, column: 3, scope: !1075)
!1106 = !DILocation(line: 719, column: 9, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 719, column: 7)
!1108 = !DILocation(line: 719, column: 14, scope: !1107)
!1109 = !DILocation(line: 719, column: 20, scope: !1107)
!1110 = !DILocation(line: 719, column: 27, scope: !1107)
!1111 = !DILocation(line: 719, column: 7, scope: !1075)
!1112 = !DILocation(line: 721, column: 11, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 720, column: 5)
!1114 = !DILocation(line: 722, column: 5, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 721, column: 11)
!1116 = !DILocation(line: 722, column: 12, scope: !1115)
!1117 = !DILocation(line: 722, column: 2, scope: !1115)
!1118 = !DILocation(line: 723, column: 7, scope: !1113)
!1119 = !DILocation(line: 745, column: 15, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 745, column: 7)
!1121 = !DILocation(line: 745, column: 9, scope: !1120)
!1122 = !DILocation(line: 745, column: 7, scope: !1075)
!1123 = !DILocation(line: 730, column: 17, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1107, file: !3, line: 729, column: 5)
!1125 = !DILocation(line: 734, column: 13, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1124, file: !3, line: 734, column: 11)
!1127 = !DILocation(line: 734, column: 19, scope: !1126)
!1128 = !DILocation(line: 734, column: 26, scope: !1126)
!1129 = !DILocation(line: 734, column: 11, scope: !1124)
!1130 = !DILocation(line: 735, column: 2, scope: !1126)
!1131 = !DILocation(line: 737, column: 2, scope: !1126)
!1132 = !DILocation(line: 748, column: 14, scope: !1075)
!1133 = !DILocation(line: 748, column: 11, scope: !1075)
!1134 = !DILocation(line: 748, column: 19, scope: !1075)
!1135 = !DILocation(line: 748, column: 31, scope: !1075)
!1136 = !DILocation(line: 748, column: 35, scope: !1075)
!1137 = !DILocation(line: 748, column: 3, scope: !1075)
!1138 = !DILocation(line: 749, column: 1, scope: !1075)
!1139 = distinct !DISubprogram(name: "et_root", scope: !3, file: !3, line: 754, type: !1140, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1142)
!1140 = !DISubroutineType(types: !1141)
!1141 = !{!15, !15}
!1142 = !{!1143, !1144, !1145}
!1143 = !DILocalVariable(name: "node", arg: 1, scope: !1139, file: !3, line: 754, type: !15)
!1144 = !DILocalVariable(name: "occ", scope: !1139, file: !3, line: 756, type: !27)
!1145 = !DILocalVariable(name: "r", scope: !1139, file: !3, line: 756, type: !27)
!1146 = !DILocation(line: 0, scope: !1139)
!1147 = !DILocation(line: 756, column: 30, scope: !1139)
!1148 = !DILocation(line: 760, column: 3, scope: !1139)
!1149 = !DILocation(line: 761, column: 8, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 761, column: 3)
!1151 = !DILocation(line: 0, scope: !1150)
!1152 = !DILocation(line: 761, column: 20, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 761, column: 3)
!1154 = !DILocation(line: 761, column: 3, scope: !1150)
!1155 = !DILocation(line: 761, column: 3, scope: !1153)
!1156 = distinct !{!1156, !1154, !1157}
!1157 = !DILocation(line: 762, column: 5, scope: !1150)
!1158 = !DILocation(line: 763, column: 3, scope: !1139)
!1159 = !DILocation(line: 765, column: 13, scope: !1139)
!1160 = !DILocation(line: 765, column: 3, scope: !1139)
!1161 = distinct !DISubprogram(name: "set_depth_add", scope: !3, file: !3, line: 76, type: !1162, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{null, !27, !8}
!1164 = !{!1165, !1166}
!1165 = !DILocalVariable(name: "occ", arg: 1, scope: !1161, file: !3, line: 76, type: !27)
!1166 = !DILocalVariable(name: "d", arg: 2, scope: !1161, file: !3, line: 76, type: !8)
!1167 = !DILocation(line: 0, scope: !1161)
!1168 = !DILocation(line: 78, column: 8, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 78, column: 7)
!1170 = !DILocation(line: 78, column: 7, scope: !1161)
!1171 = !DILocation(line: 81, column: 8, scope: !1161)
!1172 = !DILocation(line: 81, column: 12, scope: !1161)
!1173 = !DILocation(line: 82, column: 8, scope: !1161)
!1174 = !DILocation(line: 82, column: 14, scope: !1161)
!1175 = !DILocation(line: 83, column: 1, scope: !1161)
!1176 = distinct !DISubprogram(name: "set_depth", scope: !3, file: !3, line: 64, type: !1162, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1177)
!1177 = !{!1178, !1179}
!1178 = !DILocalVariable(name: "occ", arg: 1, scope: !1176, file: !3, line: 64, type: !27)
!1179 = !DILocalVariable(name: "d", arg: 2, scope: !1176, file: !3, line: 64, type: !8)
!1180 = !DILocation(line: 0, scope: !1176)
!1181 = !DILocation(line: 66, column: 8, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 66, column: 7)
!1183 = !DILocation(line: 66, column: 7, scope: !1176)
!1184 = !DILocation(line: 69, column: 24, scope: !1176)
!1185 = !DILocation(line: 69, column: 17, scope: !1176)
!1186 = !DILocation(line: 69, column: 8, scope: !1176)
!1187 = !DILocation(line: 69, column: 12, scope: !1176)
!1188 = !DILocation(line: 70, column: 14, scope: !1176)
!1189 = !DILocation(line: 71, column: 1, scope: !1176)
