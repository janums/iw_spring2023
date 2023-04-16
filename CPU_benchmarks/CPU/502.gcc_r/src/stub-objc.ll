; ModuleID = 'stub-objc.bc'
source_filename = "stub-objc.c"
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
%union.tree_node = type { %struct.tree_function_decl }
%struct.tree_function_decl = type { %struct.tree_decl_non_common, %struct.function*, %union.tree_node*, %union.tree_node*, %union.tree_node*, i32 }
%struct.tree_decl_non_common = type { %struct.tree_decl_with_vis, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_decl_with_vis = type { %struct.tree_decl_with_rtl, %union.tree_node*, %union.tree_node*, %union.tree_node*, i24 }
%struct.tree_decl_with_rtl = type { %struct.tree_decl_common, %struct.rtx_def* }
%struct.tree_decl_common = type { %struct.tree_decl_minimal, %union.tree_node*, i40, i32, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.lang_decl* }
%struct.tree_decl_minimal = type { %struct.tree_common, i32, i32, %union.tree_node*, %union.tree_node* }
%struct.tree_common = type { %struct.tree_base, %union.tree_node*, %union.tree_node* }
%struct.tree_base = type { i64 }
%struct.lang_decl = type opaque
%struct.rtx_def = type opaque
%struct.function = type opaque

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !245 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !258, metadata !DIExpression()), !dbg !260
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !259, metadata !DIExpression()), !dbg !260
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !261
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #5, !dbg !262
  ret i32 %call, !dbg !263
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !264 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !268
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #5, !dbg !269
  ret i32 %call, !dbg !270
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !271 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !334, metadata !DIExpression()), !dbg !335
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !336
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !336
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !336
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !336
  %cmp = icmp uge i8* %0, %1, !dbg !336
  %conv1 = zext i1 %cmp to i64, !dbg !336
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !336
  %tobool = icmp eq i64 %expval, 0, !dbg !336
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !336

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !336
  br label %cond.end, !dbg !336

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !336
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !336
  %2 = load i8, i8* %0, align 1, !dbg !336
  %conv3 = zext i8 %2 to i32, !dbg !336
  br label %cond.end, !dbg !336

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !336
  ret i32 %cond, !dbg !337
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !338 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !340, metadata !DIExpression()), !dbg !341
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !342
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !342
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !342
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !342
  %cmp = icmp uge i8* %0, %1, !dbg !342
  %conv1 = zext i1 %cmp to i64, !dbg !342
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !342
  %tobool = icmp eq i64 %expval, 0, !dbg !342
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !342

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #5, !dbg !342
  br label %cond.end, !dbg !342

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !342
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !342
  %2 = load i8, i8* %0, align 1, !dbg !342
  %conv3 = zext i8 %2 to i32, !dbg !342
  br label %cond.end, !dbg !342

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !342
  ret i32 %cond, !dbg !343
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !344 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !345
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !345
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !345
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !345
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !345
  %cmp = icmp uge i8* %1, %2, !dbg !345
  %conv1 = zext i1 %cmp to i64, !dbg !345
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !345
  %tobool = icmp eq i64 %expval, 0, !dbg !345
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !345

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #5, !dbg !345
  br label %cond.end, !dbg !345

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !345
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !345
  %3 = load i8, i8* %1, align 1, !dbg !345
  %conv3 = zext i8 %3 to i32, !dbg !345
  br label %cond.end, !dbg !345

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !345
  ret i32 %cond, !dbg !346
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !347 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !351, metadata !DIExpression()), !dbg !352
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !353
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #5, !dbg !354
  ret i32 %call, !dbg !355
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !356 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !360, metadata !DIExpression()), !dbg !362
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !361, metadata !DIExpression()), !dbg !362
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !363
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !363
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !363
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !363
  %cmp = icmp uge i8* %0, %1, !dbg !363
  %conv1 = zext i1 %cmp to i64, !dbg !363
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !363
  %tobool = icmp eq i64 %expval, 0, !dbg !363
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !363

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !363
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !363
  br label %cond.end, !dbg !363

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !363
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !363
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !363
  store i8 %conv2, i8* %0, align 1, !dbg !363
  %conv6 = and i32 %__c, 255, !dbg !363
  br label %cond.end, !dbg !363

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !363
  ret i32 %cond, !dbg !364
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !365 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !367, metadata !DIExpression()), !dbg !369
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !368, metadata !DIExpression()), !dbg !369
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !370
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !370
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !370
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !370
  %cmp = icmp uge i8* %0, %1, !dbg !370
  %conv1 = zext i1 %cmp to i64, !dbg !370
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !370
  %tobool = icmp eq i64 %expval, 0, !dbg !370
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !370

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !370
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #5, !dbg !370
  br label %cond.end, !dbg !370

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !370
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !370
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !370
  store i8 %conv2, i8* %0, align 1, !dbg !370
  %conv6 = and i32 %__c, 255, !dbg !370
  br label %cond.end, !dbg !370

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !370
  ret i32 %cond, !dbg !371
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !374, metadata !DIExpression()), !dbg !375
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !376
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !376
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !376
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !376
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !376
  %cmp = icmp uge i8* %1, %2, !dbg !376
  %conv1 = zext i1 %cmp to i64, !dbg !376
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !376
  %tobool = icmp eq i64 %expval, 0, !dbg !376
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !376

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !376
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #5, !dbg !376
  br label %cond.end, !dbg !376

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !376
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !376
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !376
  store i8 %conv4, i8* %1, align 1, !dbg !376
  %conv6 = and i32 %__c, 255, !dbg !376
  br label %cond.end, !dbg !376

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !376
  ret i32 %cond, !dbg !377
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !378 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !384, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata i64* %__n, metadata !385, metadata !DIExpression()), !dbg !387
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !386, metadata !DIExpression()), !dbg !387
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #5, !dbg !388
  ret i64 %call, !dbg !389
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !390 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !392, metadata !DIExpression()), !dbg !393
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !394
  %0 = load i32, i32* %_flags, align 8, !dbg !394
  %and = lshr i32 %0, 4, !dbg !394
  %and.lobit = and i32 %and, 1, !dbg !394
  ret i32 %and.lobit, !dbg !395
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !396 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !398, metadata !DIExpression()), !dbg !399
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !400
  %0 = load i32, i32* %_flags, align 8, !dbg !400
  %and = lshr i32 %0, 5, !dbg !400
  %and.lobit = and i32 %and, 1, !dbg !400
  ret i32 %and.lobit, !dbg !401
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !402 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !405, metadata !DIExpression()), !dbg !406
  %__c.off = add i32 %__c, 128, !dbg !407
  %0 = icmp ult i32 %__c.off, 384, !dbg !407
  br i1 %0, label %cond.true, label %cond.end, !dbg !407

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #5, !dbg !408
  %1 = load i32*, i32** %call, align 8, !dbg !409
  %idxprom = sext i32 %__c to i64, !dbg !410
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !410
  %2 = load i32, i32* %arrayidx, align 4, !dbg !410
  br label %cond.end, !dbg !411

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !411
  ret i32 %cond, !dbg !412
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !413 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !415, metadata !DIExpression()), !dbg !416
  %__c.off = add i32 %__c, 128, !dbg !417
  %0 = icmp ult i32 %__c.off, 384, !dbg !417
  br i1 %0, label %cond.true, label %cond.end, !dbg !417

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #5, !dbg !418
  %1 = load i32*, i32** %call, align 8, !dbg !419
  %idxprom = sext i32 %__c to i64, !dbg !420
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !420
  %2 = load i32, i32* %arrayidx, align 4, !dbg !420
  br label %cond.end, !dbg !421

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !421
  ret i32 %cond, !dbg !422
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !428, metadata !DIExpression()), !dbg !429
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !430
  %conv = trunc i64 %call to i32, !dbg !431
  ret i32 %conv, !dbg !432
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !433 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !437, metadata !DIExpression()), !dbg !438
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #5, !dbg !439
  ret i64 %call, !dbg !440
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !446, metadata !DIExpression()), !dbg !447
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #5, !dbg !448
  ret i64 %call, !dbg !449
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !450 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !461, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i8* %__base, metadata !462, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !463, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %__size, metadata !464, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !465, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 0, metadata !466, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !467, metadata !DIExpression()), !dbg !471
  br label %while.cond, !dbg !472

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !473
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !471
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !467, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !466, metadata !DIExpression()), !dbg !471
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !474
  br i1 %cmp, label %while.body, label %cleanup, !dbg !472

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !475
  %div = lshr i64 %add, 1, !dbg !477
  call void @llvm.dbg.value(metadata i64 %div, metadata !468, metadata !DIExpression()), !dbg !471
  %mul = mul i64 %div, %__size, !dbg !478
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !479
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !469, metadata !DIExpression()), !dbg !471
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #5, !dbg !480
  call void @llvm.dbg.value(metadata i32 %call, metadata !470, metadata !DIExpression()), !dbg !471
  %cmp1 = icmp slt i32 %call, 0, !dbg !481
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !483

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !484
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !486

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !487
  call void @llvm.dbg.value(metadata i64 %add4, metadata !466, metadata !DIExpression()), !dbg !471
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !471
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !471
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !467, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !466, metadata !DIExpression()), !dbg !471
  br label %while.cond, !dbg !472, !llvm.loop !488

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !471
  ret i8* %retval.0, !dbg !490
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !491 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call double @strtod(i8* %__nptr, i8** null) #5, !dbg !499
  ret double %call, !dbg !500
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !510, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !511, metadata !DIExpression()), !dbg !513
  call void @llvm.dbg.value(metadata i32 %base, metadata !512, metadata !DIExpression()), !dbg !513
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !514
  ret i64 %call, !dbg !515
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !516 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !522, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !523, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.value(metadata i32 %base, metadata !524, metadata !DIExpression()), !dbg !525
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #5, !dbg !526
  ret i64 %call, !dbg !527
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !528 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !539, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !540, metadata !DIExpression()), !dbg !542
  call void @llvm.dbg.value(metadata i32 %base, metadata !541, metadata !DIExpression()), !dbg !542
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !543
  ret i64 %call, !dbg !544
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !545 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !549, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !550, metadata !DIExpression()), !dbg !552
  call void @llvm.dbg.value(metadata i32 %base, metadata !551, metadata !DIExpression()), !dbg !552
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #5, !dbg !553
  ret i64 %call, !dbg !554
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !555 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !597, metadata !DIExpression()), !dbg !599
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !598, metadata !DIExpression()), !dbg !599
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !600
  ret i32 %call, !dbg !601
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !602 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !604, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !605, metadata !DIExpression()), !dbg !606
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #5, !dbg !607
  ret i32 %call, !dbg !608
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !609 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !613, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !614, metadata !DIExpression()), !dbg !615
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #5, !dbg !616
  ret i32 %call, !dbg !617
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !618 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !622, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !623, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !624, metadata !DIExpression()), !dbg !626
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !625, metadata !DIExpression()), !dbg !626
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #5, !dbg !627
  ret i32 %call, !dbg !628
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !629 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !633, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !634, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !635, metadata !DIExpression()), !dbg !636
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !635, metadata !DIExpression(DW_OP_deref)), !dbg !636
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !637
  ret i32 %call, !dbg !638
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !639 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !643, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i8* %__path, metadata !644, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !645, metadata !DIExpression()), !dbg !647
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !646, metadata !DIExpression()), !dbg !647
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !646, metadata !DIExpression(DW_OP_deref)), !dbg !647
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #5, !dbg !648
  ret i32 %call, !dbg !649
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !650 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !674, metadata !DIExpression()), !dbg !676
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !675, metadata !DIExpression()), !dbg !676
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !677
  ret i32 %call, !dbg !678
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !679 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !681, metadata !DIExpression()), !dbg !683
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !682, metadata !DIExpression()), !dbg !683
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #5, !dbg !684
  ret i32 %call, !dbg !685
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !686 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !691, metadata !DIExpression()), !dbg !692
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #5, !dbg !693
  ret i32 %call, !dbg !694
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !695 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !699, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !700, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !701, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !702, metadata !DIExpression()), !dbg !703
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #5, !dbg !704
  ret i32 %call, !dbg !705
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_is_class_name(%union.tree_node* %arg) local_unnamed_addr #3 !dbg !706 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !1344, metadata !DIExpression()), !dbg !1345
  ret %union.tree_node* null, !dbg !1346
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_is_id(%union.tree_node* %arg) local_unnamed_addr #3 !dbg !1347 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !1349, metadata !DIExpression()), !dbg !1350
  ret %union.tree_node* null, !dbg !1351
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_is_object_ptr(%union.tree_node* %arg) local_unnamed_addr #3 !dbg !1352 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !1354, metadata !DIExpression()), !dbg !1355
  ret %union.tree_node* null, !dbg !1356
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_lookup_ivar(%union.tree_node* %other, %union.tree_node* %arg) local_unnamed_addr #3 !dbg !1357 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %other, metadata !1361, metadata !DIExpression()), !dbg !1363
  call void @llvm.dbg.value(metadata %union.tree_node* %arg, metadata !1362, metadata !DIExpression()), !dbg !1363
  ret %union.tree_node* %other, !dbg !1364
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_check_decl(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !1365 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1369, metadata !DIExpression()), !dbg !1370
  ret void, !dbg !1371
}

; Function Attrs: nounwind uwtable
define dso_local i32 @objc_is_reserved_word(%union.tree_node* %ident) local_unnamed_addr #3 !dbg !1372 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ident, metadata !1376, metadata !DIExpression()), !dbg !1377
  ret i32 0, !dbg !1378
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @objc_compare_types(%union.tree_node* %ltyp, %union.tree_node* %rtyp, i32 %argno, %union.tree_node* %callee) local_unnamed_addr #3 !dbg !1379 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ltyp, metadata !1383, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %union.tree_node* %rtyp, metadata !1384, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata i32 %argno, metadata !1385, metadata !DIExpression()), !dbg !1387
  call void @llvm.dbg.value(metadata %union.tree_node* %callee, metadata !1386, metadata !DIExpression()), !dbg !1387
  ret i8 0, !dbg !1388
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_volatilize_decl(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !1389 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1391, metadata !DIExpression()), !dbg !1392
  ret void, !dbg !1393
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @objc_type_quals_match(%union.tree_node* %ltyp, %union.tree_node* %rtyp) local_unnamed_addr #3 !dbg !1394 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ltyp, metadata !1398, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.value(metadata %union.tree_node* %rtyp, metadata !1399, metadata !DIExpression()), !dbg !1400
  ret i8 0, !dbg !1401
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_rewrite_function_call(%union.tree_node* %function, %union.tree_node* %first_param) local_unnamed_addr #3 !dbg !1402 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %function, metadata !1404, metadata !DIExpression()), !dbg !1406
  call void @llvm.dbg.value(metadata %union.tree_node* %first_param, metadata !1405, metadata !DIExpression()), !dbg !1406
  ret %union.tree_node* %function, !dbg !1407
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_message_selector() local_unnamed_addr #3 !dbg !1408 {
entry:
  ret %union.tree_node* null, !dbg !1411
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_declare_alias(%union.tree_node* %alias, %union.tree_node* %orig) local_unnamed_addr #3 !dbg !1412 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %alias, metadata !1416, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %union.tree_node* %orig, metadata !1417, metadata !DIExpression()), !dbg !1418
  ret void, !dbg !1419
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_declare_class(%union.tree_node* %list) local_unnamed_addr #3 !dbg !1420 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %list, metadata !1422, metadata !DIExpression()), !dbg !1423
  ret void, !dbg !1424
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_declare_protocols(%union.tree_node* %list) local_unnamed_addr #3 !dbg !1425 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %list, metadata !1427, metadata !DIExpression()), !dbg !1428
  ret void, !dbg !1429
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_protocol(%union.tree_node* %proto, %union.tree_node* %protorefs) local_unnamed_addr #3 !dbg !1430 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %proto, metadata !1432, metadata !DIExpression()), !dbg !1434
  call void @llvm.dbg.value(metadata %union.tree_node* %protorefs, metadata !1433, metadata !DIExpression()), !dbg !1434
  ret void, !dbg !1435
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_class_interface(%union.tree_node* %name, %union.tree_node* %super, %union.tree_node* %protos) local_unnamed_addr #3 !dbg !1436 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1440, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata %union.tree_node* %super, metadata !1441, metadata !DIExpression()), !dbg !1443
  call void @llvm.dbg.value(metadata %union.tree_node* %protos, metadata !1442, metadata !DIExpression()), !dbg !1443
  ret void, !dbg !1444
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_category_interface(%union.tree_node* %name, %union.tree_node* %categ, %union.tree_node* %protos) local_unnamed_addr #3 !dbg !1445 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1447, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %union.tree_node* %categ, metadata !1448, metadata !DIExpression()), !dbg !1450
  call void @llvm.dbg.value(metadata %union.tree_node* %protos, metadata !1449, metadata !DIExpression()), !dbg !1450
  ret void, !dbg !1451
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_continue_interface() local_unnamed_addr #3 !dbg !1452 {
entry:
  ret void, !dbg !1455
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_finish_interface() local_unnamed_addr #3 !dbg !1456 {
entry:
  ret void, !dbg !1457
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_add_instance_variable(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !1458 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1460, metadata !DIExpression()), !dbg !1461
  ret void, !dbg !1462
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_set_visibility(i32 %vis) local_unnamed_addr #3 !dbg !1463 {
entry:
  call void @llvm.dbg.value(metadata i32 %vis, metadata !1467, metadata !DIExpression()), !dbg !1468
  ret void, !dbg !1469
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_set_method_type(i32 %code) local_unnamed_addr #3 !dbg !1470 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !1474, metadata !DIExpression()), !dbg !1475
  ret void, !dbg !1476
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_class_implementation(%union.tree_node* %name, %union.tree_node* %super) local_unnamed_addr #3 !dbg !1477 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1479, metadata !DIExpression()), !dbg !1481
  call void @llvm.dbg.value(metadata %union.tree_node* %super, metadata !1480, metadata !DIExpression()), !dbg !1481
  ret void, !dbg !1482
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_category_implementation(%union.tree_node* %name, %union.tree_node* %categ) local_unnamed_addr #3 !dbg !1483 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1485, metadata !DIExpression()), !dbg !1487
  call void @llvm.dbg.value(metadata %union.tree_node* %categ, metadata !1486, metadata !DIExpression()), !dbg !1487
  ret void, !dbg !1488
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_continue_implementation() local_unnamed_addr #3 !dbg !1489 {
entry:
  ret void, !dbg !1490
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_clear_super_receiver() local_unnamed_addr #3 !dbg !1491 {
entry:
  ret void, !dbg !1492
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_finish_implementation() local_unnamed_addr #3 !dbg !1493 {
entry:
  ret void, !dbg !1494
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_add_method_declaration(%union.tree_node* %signature) local_unnamed_addr #3 !dbg !1495 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %signature, metadata !1497, metadata !DIExpression()), !dbg !1498
  ret void, !dbg !1499
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_start_method_definition(%union.tree_node* %signature) local_unnamed_addr #3 !dbg !1500 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %signature, metadata !1502, metadata !DIExpression()), !dbg !1503
  ret void, !dbg !1504
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_finish_method_definition(%union.tree_node* %fndecl) local_unnamed_addr #3 !dbg !1505 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %fndecl, metadata !1507, metadata !DIExpression()), !dbg !1508
  ret void, !dbg !1509
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_keyword_decl(%union.tree_node* %selector, %union.tree_node* %type, %union.tree_node* %identifier) local_unnamed_addr #3 !dbg !1510 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %selector, metadata !1514, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata %union.tree_node* %type, metadata !1515, metadata !DIExpression()), !dbg !1517
  call void @llvm.dbg.value(metadata %union.tree_node* %identifier, metadata !1516, metadata !DIExpression()), !dbg !1517
  ret %union.tree_node* null, !dbg !1518
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_method_signature(%union.tree_node* %rettype, %union.tree_node* %selectors, %union.tree_node* %optparms, i8 zeroext %ellipsis) local_unnamed_addr #3 !dbg !1519 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %rettype, metadata !1523, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %union.tree_node* %selectors, metadata !1524, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata %union.tree_node* %optparms, metadata !1525, metadata !DIExpression()), !dbg !1527
  call void @llvm.dbg.value(metadata i8 %ellipsis, metadata !1526, metadata !DIExpression()), !dbg !1527
  ret %union.tree_node* null, !dbg !1528
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_encode_expr(%union.tree_node* %expr) local_unnamed_addr #3 !dbg !1529 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1531, metadata !DIExpression()), !dbg !1532
  ret %union.tree_node* null, !dbg !1533
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_protocol_expr(%union.tree_node* %expr) local_unnamed_addr #3 !dbg !1534 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1536, metadata !DIExpression()), !dbg !1537
  ret %union.tree_node* null, !dbg !1538
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_selector_expr(i32 %loc, %union.tree_node* %expr) local_unnamed_addr #3 !dbg !1539 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !1543, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1544, metadata !DIExpression()), !dbg !1545
  ret %union.tree_node* null, !dbg !1546
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_message_expr(%union.tree_node* %expr) local_unnamed_addr #3 !dbg !1547 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1549, metadata !DIExpression()), !dbg !1550
  ret %union.tree_node* null, !dbg !1551
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_string_object(%union.tree_node* %str) local_unnamed_addr #3 !dbg !1552 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %str, metadata !1554, metadata !DIExpression()), !dbg !1555
  ret %union.tree_node* null, !dbg !1556
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_get_class_reference(%union.tree_node* %name) local_unnamed_addr #3 !dbg !1557 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1559, metadata !DIExpression()), !dbg !1560
  ret %union.tree_node* null, !dbg !1561
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_get_protocol_qualified_type(%union.tree_node* %name, %union.tree_node* %protos) local_unnamed_addr #3 !dbg !1562 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1564, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.value(metadata %union.tree_node* %protos, metadata !1565, metadata !DIExpression()), !dbg !1566
  ret %union.tree_node* null, !dbg !1567
}

; Function Attrs: nounwind uwtable
define dso_local i32 @objc_static_init_needed_p() local_unnamed_addr #3 !dbg !1568 {
entry:
  ret i32 0, !dbg !1569
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_generate_static_init_call(%union.tree_node* %ctors) local_unnamed_addr #3 !dbg !1570 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %ctors, metadata !1572, metadata !DIExpression()), !dbg !1573
  ret %union.tree_node* null, !dbg !1574
}

; Function Attrs: nounwind uwtable
define dso_local i32 @objc_is_public(%union.tree_node* %expr, %union.tree_node* %identifier) local_unnamed_addr #3 !dbg !1575 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1579, metadata !DIExpression()), !dbg !1581
  call void @llvm.dbg.value(metadata %union.tree_node* %identifier, metadata !1580, metadata !DIExpression()), !dbg !1581
  ret i32 1, !dbg !1582
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_get_class_ivars(%union.tree_node* %name) local_unnamed_addr #3 !dbg !1583 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %name, metadata !1585, metadata !DIExpression()), !dbg !1586
  ret %union.tree_node* null, !dbg !1587
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_throw_stmt(i32 %loc, %union.tree_node* %expr) local_unnamed_addr #3 !dbg !1588 {
entry:
  call void @llvm.dbg.value(metadata i32 %loc, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !1591, metadata !DIExpression()), !dbg !1592
  ret %union.tree_node* null, !dbg !1593
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_build_synchronized(i32 %start_locus, %union.tree_node* %mutex, %union.tree_node* %body) local_unnamed_addr #3 !dbg !1594 {
entry:
  call void @llvm.dbg.value(metadata i32 %start_locus, metadata !1598, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata %union.tree_node* %mutex, metadata !1599, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata %union.tree_node* %body, metadata !1600, metadata !DIExpression()), !dbg !1601
  ret %union.tree_node* null, !dbg !1602
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_begin_try_stmt(i32 %try_locus, %union.tree_node* %body) local_unnamed_addr #3 !dbg !1603 {
entry:
  call void @llvm.dbg.value(metadata i32 %try_locus, metadata !1607, metadata !DIExpression()), !dbg !1609
  call void @llvm.dbg.value(metadata %union.tree_node* %body, metadata !1608, metadata !DIExpression()), !dbg !1609
  ret void, !dbg !1610
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_begin_catch_clause(%union.tree_node* %decl) local_unnamed_addr #3 !dbg !1611 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %decl, metadata !1613, metadata !DIExpression()), !dbg !1614
  ret void, !dbg !1615
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_finish_catch_clause() local_unnamed_addr #3 !dbg !1616 {
entry:
  ret void, !dbg !1617
}

; Function Attrs: nounwind uwtable
define dso_local void @objc_build_finally_clause(i32 %finally_locus, %union.tree_node* %body) local_unnamed_addr #3 !dbg !1618 {
entry:
  call void @llvm.dbg.value(metadata i32 %finally_locus, metadata !1620, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.value(metadata %union.tree_node* %body, metadata !1621, metadata !DIExpression()), !dbg !1622
  ret void, !dbg !1623
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_finish_try_stmt() local_unnamed_addr #3 !dbg !1624 {
entry:
  ret %union.tree_node* null, !dbg !1625
}

; Function Attrs: nounwind uwtable
define dso_local %union.tree_node* @objc_generate_write_barrier(%union.tree_node* %lhs, i32 %modifycode, %union.tree_node* %rhs) local_unnamed_addr #3 !dbg !1626 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !1630, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata i32 %modifycode, metadata !1631, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.value(metadata %union.tree_node* %rhs, metadata !1632, metadata !DIExpression()), !dbg !1633
  ret %union.tree_node* null, !dbg !1634
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #4

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone speculatable }
attributes #5 = { nobuiltin nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!241, !242, !243}
!llvm.ident = !{!244}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !231, nameTableKind: None)
!1 = !DIFile(filename: "stub-objc.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !23, !30, !37}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !4, line: 280, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!7 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !4, line: 1817, baseType: !5, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29}
!25 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !4, line: 1805, baseType: !5, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36}
!32 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!34 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!35 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!36 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !4, line: 39, baseType: !5, size: 32, elements: !38)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230}
!39 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!40 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!41 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!42 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!43 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!44 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!45 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!46 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!47 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!48 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!49 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!50 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!51 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!52 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!53 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!54 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!55 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!56 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!57 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!58 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!59 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!60 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!61 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!62 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!63 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!64 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!65 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!66 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!67 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!68 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!69 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!70 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!71 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!72 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!73 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!74 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!75 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!76 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!77 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!78 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!79 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!80 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!81 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!82 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!83 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!84 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!85 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!86 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!87 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!88 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!89 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!90 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!91 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!92 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!93 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!94 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!95 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!96 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!97 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!98 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!99 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!100 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!101 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!102 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!103 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!104 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!105 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!106 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!107 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!108 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!109 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!110 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!111 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!112 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!113 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!114 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!115 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!116 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!117 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!118 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!121 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!122 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!123 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!124 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!125 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!126 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!127 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!128 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!129 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!130 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!131 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!132 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!133 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!134 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!135 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!136 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!137 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!138 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!139 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!140 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!141 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!142 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!143 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!144 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!145 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!146 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!147 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!148 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!149 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!150 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!151 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!152 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!153 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!154 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!155 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!156 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!157 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!158 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!159 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!160 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!161 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!162 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!163 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!164 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!165 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!166 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!167 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!168 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!169 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!170 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!171 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!172 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!173 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!174 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!175 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!176 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!177 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!178 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!179 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!180 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!181 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!182 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!183 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!184 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!185 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!186 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!187 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!189 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!190 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!191 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!196 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!197 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!198 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!199 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!200 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!201 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!202 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!203 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!204 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!205 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!206 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!207 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!208 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!209 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!210 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!211 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!212 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!213 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!214 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!215 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!216 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!217 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!218 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!219 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!224 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!225 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!226 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!227 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!228 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!229 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!230 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!231 = !{!232, !233, !234, !235, !238, !239}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!234 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!241 = !{i32 2, !"Dwarf Version", i32 4}
!242 = !{i32 2, !"Debug Info Version", i32 3}
!243 = !{i32 1, !"wchar_size", i32 4}
!244 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!245 = distinct !DISubprogram(name: "vprintf", scope: !246, file: !246, line: 39, type: !247, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !257)
!246 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!247 = !DISubroutineType(types: !248)
!248 = !{!234, !249, !250}
!249 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !239)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !252)
!252 = !{!253, !254, !255, !256}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !251, file: !1, baseType: !5, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !251, file: !1, baseType: !5, size: 32, offset: 32)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !251, file: !1, baseType: !238, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !251, file: !1, baseType: !238, size: 64, offset: 128)
!257 = !{!258, !259}
!258 = !DILocalVariable(name: "__fmt", arg: 1, scope: !245, file: !246, line: 39, type: !249)
!259 = !DILocalVariable(name: "__arg", arg: 2, scope: !245, file: !246, line: 39, type: !250)
!260 = !DILocation(line: 0, scope: !245)
!261 = !DILocation(line: 41, column: 20, scope: !245)
!262 = !DILocation(line: 41, column: 10, scope: !245)
!263 = !DILocation(line: 41, column: 3, scope: !245)
!264 = distinct !DISubprogram(name: "getchar", scope: !246, file: !246, line: 47, type: !265, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!265 = !DISubroutineType(types: !266)
!266 = !{!234}
!267 = !{}
!268 = !DILocation(line: 49, column: 16, scope: !264)
!269 = !DILocation(line: 49, column: 10, scope: !264)
!270 = !DILocation(line: 49, column: 3, scope: !264)
!271 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !246, file: !246, line: 56, type: !272, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !333)
!272 = !DISubroutineType(types: !273)
!273 = !{!234, !274}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !276, line: 7, baseType: !277)
!276 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !278, line: 49, size: 1728, elements: !279)
!278 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!279 = !{!280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !295, !297, !298, !299, !303, !305, !307, !311, !314, !316, !319, !322, !323, !324, !328, !329}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !277, file: !278, line: 51, baseType: !234, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !277, file: !278, line: 54, baseType: !236, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !277, file: !278, line: 55, baseType: !236, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !277, file: !278, line: 56, baseType: !236, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !277, file: !278, line: 57, baseType: !236, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !277, file: !278, line: 58, baseType: !236, size: 64, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !277, file: !278, line: 59, baseType: !236, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !277, file: !278, line: 60, baseType: !236, size: 64, offset: 448)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !277, file: !278, line: 61, baseType: !236, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !277, file: !278, line: 64, baseType: !236, size: 64, offset: 576)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !277, file: !278, line: 65, baseType: !236, size: 64, offset: 640)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !277, file: !278, line: 66, baseType: !236, size: 64, offset: 704)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !277, file: !278, line: 68, baseType: !293, size: 64, offset: 768)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !278, line: 36, flags: DIFlagFwdDecl)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !277, file: !278, line: 70, baseType: !296, size: 64, offset: 832)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !277, file: !278, line: 72, baseType: !234, size: 32, offset: 896)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !277, file: !278, line: 73, baseType: !234, size: 32, offset: 928)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !277, file: !278, line: 74, baseType: !300, size: 64, offset: 960)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !301, line: 152, baseType: !302)
!301 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!302 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !277, file: !278, line: 77, baseType: !304, size: 16, offset: 1024)
!304 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !277, file: !278, line: 78, baseType: !306, size: 8, offset: 1040)
!306 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !277, file: !278, line: 79, baseType: !308, size: 8, offset: 1048)
!308 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 8, elements: !309)
!309 = !{!310}
!310 = !DISubrange(count: 1)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !277, file: !278, line: 81, baseType: !312, size: 64, offset: 1088)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !278, line: 43, baseType: null)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !277, file: !278, line: 89, baseType: !315, size: 64, offset: 1152)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !301, line: 153, baseType: !302)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !277, file: !278, line: 91, baseType: !317, size: 64, offset: 1216)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !278, line: 37, flags: DIFlagFwdDecl)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !277, file: !278, line: 92, baseType: !320, size: 64, offset: 1280)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !278, line: 38, flags: DIFlagFwdDecl)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !277, file: !278, line: 93, baseType: !296, size: 64, offset: 1344)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !277, file: !278, line: 94, baseType: !238, size: 64, offset: 1408)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !277, file: !278, line: 95, baseType: !325, size: 64, offset: 1472)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !326, line: 46, baseType: !327)
!326 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!327 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !277, file: !278, line: 96, baseType: !234, size: 32, offset: 1536)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !277, file: !278, line: 98, baseType: !330, size: 160, offset: 1568)
!330 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 160, elements: !331)
!331 = !{!332}
!332 = !DISubrange(count: 20)
!333 = !{!334}
!334 = !DILocalVariable(name: "__fp", arg: 1, scope: !271, file: !246, line: 56, type: !274)
!335 = !DILocation(line: 0, scope: !271)
!336 = !DILocation(line: 58, column: 10, scope: !271)
!337 = !DILocation(line: 58, column: 3, scope: !271)
!338 = distinct !DISubprogram(name: "getc_unlocked", scope: !246, file: !246, line: 66, type: !272, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !339)
!339 = !{!340}
!340 = !DILocalVariable(name: "__fp", arg: 1, scope: !338, file: !246, line: 66, type: !274)
!341 = !DILocation(line: 0, scope: !338)
!342 = !DILocation(line: 68, column: 10, scope: !338)
!343 = !DILocation(line: 68, column: 3, scope: !338)
!344 = distinct !DISubprogram(name: "getchar_unlocked", scope: !246, file: !246, line: 73, type: !265, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!345 = !DILocation(line: 75, column: 10, scope: !344)
!346 = !DILocation(line: 75, column: 3, scope: !344)
!347 = distinct !DISubprogram(name: "putchar", scope: !246, file: !246, line: 82, type: !348, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!234, !234}
!350 = !{!351}
!351 = !DILocalVariable(name: "__c", arg: 1, scope: !347, file: !246, line: 82, type: !234)
!352 = !DILocation(line: 0, scope: !347)
!353 = !DILocation(line: 84, column: 21, scope: !347)
!354 = !DILocation(line: 84, column: 10, scope: !347)
!355 = !DILocation(line: 84, column: 3, scope: !347)
!356 = distinct !DISubprogram(name: "fputc_unlocked", scope: !246, file: !246, line: 91, type: !357, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !359)
!357 = !DISubroutineType(types: !358)
!358 = !{!234, !234, !274}
!359 = !{!360, !361}
!360 = !DILocalVariable(name: "__c", arg: 1, scope: !356, file: !246, line: 91, type: !234)
!361 = !DILocalVariable(name: "__stream", arg: 2, scope: !356, file: !246, line: 91, type: !274)
!362 = !DILocation(line: 0, scope: !356)
!363 = !DILocation(line: 93, column: 10, scope: !356)
!364 = !DILocation(line: 93, column: 3, scope: !356)
!365 = distinct !DISubprogram(name: "putc_unlocked", scope: !246, file: !246, line: 101, type: !357, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!366 = !{!367, !368}
!367 = !DILocalVariable(name: "__c", arg: 1, scope: !365, file: !246, line: 101, type: !234)
!368 = !DILocalVariable(name: "__stream", arg: 2, scope: !365, file: !246, line: 101, type: !274)
!369 = !DILocation(line: 0, scope: !365)
!370 = !DILocation(line: 103, column: 10, scope: !365)
!371 = !DILocation(line: 103, column: 3, scope: !365)
!372 = distinct !DISubprogram(name: "putchar_unlocked", scope: !246, file: !246, line: 108, type: !348, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !373)
!373 = !{!374}
!374 = !DILocalVariable(name: "__c", arg: 1, scope: !372, file: !246, line: 108, type: !234)
!375 = !DILocation(line: 0, scope: !372)
!376 = !DILocation(line: 110, column: 10, scope: !372)
!377 = !DILocation(line: 110, column: 3, scope: !372)
!378 = distinct !DISubprogram(name: "getline", scope: !246, file: !246, line: 118, type: !379, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !383)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !235, !382, !274}
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !301, line: 193, baseType: !302)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!383 = !{!384, !385, !386}
!384 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !378, file: !246, line: 118, type: !235)
!385 = !DILocalVariable(name: "__n", arg: 2, scope: !378, file: !246, line: 118, type: !382)
!386 = !DILocalVariable(name: "__stream", arg: 3, scope: !378, file: !246, line: 118, type: !274)
!387 = !DILocation(line: 0, scope: !378)
!388 = !DILocation(line: 120, column: 10, scope: !378)
!389 = !DILocation(line: 120, column: 3, scope: !378)
!390 = distinct !DISubprogram(name: "feof_unlocked", scope: !246, file: !246, line: 128, type: !272, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !391)
!391 = !{!392}
!392 = !DILocalVariable(name: "__stream", arg: 1, scope: !390, file: !246, line: 128, type: !274)
!393 = !DILocation(line: 0, scope: !390)
!394 = !DILocation(line: 130, column: 10, scope: !390)
!395 = !DILocation(line: 130, column: 3, scope: !390)
!396 = distinct !DISubprogram(name: "ferror_unlocked", scope: !246, file: !246, line: 135, type: !272, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !397)
!397 = !{!398}
!398 = !DILocalVariable(name: "__stream", arg: 1, scope: !396, file: !246, line: 135, type: !274)
!399 = !DILocation(line: 0, scope: !396)
!400 = !DILocation(line: 137, column: 10, scope: !396)
!401 = !DILocation(line: 137, column: 3, scope: !396)
!402 = distinct !DISubprogram(name: "tolower", scope: !403, file: !403, line: 207, type: !348, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !404)
!403 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!404 = !{!405}
!405 = !DILocalVariable(name: "__c", arg: 1, scope: !402, file: !403, line: 207, type: !234)
!406 = !DILocation(line: 0, scope: !402)
!407 = !DILocation(line: 209, column: 22, scope: !402)
!408 = !DILocation(line: 209, column: 39, scope: !402)
!409 = !DILocation(line: 209, column: 38, scope: !402)
!410 = !DILocation(line: 209, column: 37, scope: !402)
!411 = !DILocation(line: 209, column: 10, scope: !402)
!412 = !DILocation(line: 209, column: 3, scope: !402)
!413 = distinct !DISubprogram(name: "toupper", scope: !403, file: !403, line: 213, type: !348, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !414)
!414 = !{!415}
!415 = !DILocalVariable(name: "__c", arg: 1, scope: !413, file: !403, line: 213, type: !234)
!416 = !DILocation(line: 0, scope: !413)
!417 = !DILocation(line: 215, column: 22, scope: !413)
!418 = !DILocation(line: 215, column: 39, scope: !413)
!419 = !DILocation(line: 215, column: 38, scope: !413)
!420 = !DILocation(line: 215, column: 37, scope: !413)
!421 = !DILocation(line: 215, column: 10, scope: !413)
!422 = !DILocation(line: 215, column: 3, scope: !413)
!423 = distinct !DISubprogram(name: "atoi", scope: !424, file: !424, line: 361, type: !425, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !427)
!424 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!425 = !DISubroutineType(types: !426)
!426 = !{!234, !239}
!427 = !{!428}
!428 = !DILocalVariable(name: "__nptr", arg: 1, scope: !423, file: !424, line: 361, type: !239)
!429 = !DILocation(line: 0, scope: !423)
!430 = !DILocation(line: 363, column: 16, scope: !423)
!431 = !DILocation(line: 363, column: 10, scope: !423)
!432 = !DILocation(line: 363, column: 3, scope: !423)
!433 = distinct !DISubprogram(name: "atol", scope: !424, file: !424, line: 366, type: !434, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !436)
!434 = !DISubroutineType(types: !435)
!435 = !{!302, !239}
!436 = !{!437}
!437 = !DILocalVariable(name: "__nptr", arg: 1, scope: !433, file: !424, line: 366, type: !239)
!438 = !DILocation(line: 0, scope: !433)
!439 = !DILocation(line: 368, column: 10, scope: !433)
!440 = !DILocation(line: 368, column: 3, scope: !433)
!441 = distinct !DISubprogram(name: "atoll", scope: !424, file: !424, line: 373, type: !442, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !445)
!442 = !DISubroutineType(types: !443)
!443 = !{!444, !239}
!444 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!445 = !{!446}
!446 = !DILocalVariable(name: "__nptr", arg: 1, scope: !441, file: !424, line: 373, type: !239)
!447 = !DILocation(line: 0, scope: !441)
!448 = !DILocation(line: 375, column: 10, scope: !441)
!449 = !DILocation(line: 375, column: 3, scope: !441)
!450 = distinct !DISubprogram(name: "bsearch", scope: !451, file: !451, line: 20, type: !452, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !460)
!451 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!452 = !DISubroutineType(types: !453)
!453 = !{!238, !454, !454, !325, !325, !456}
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !424, line: 808, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!234, !454, !454}
!460 = !{!461, !462, !463, !464, !465, !466, !467, !468, !469, !470}
!461 = !DILocalVariable(name: "__key", arg: 1, scope: !450, file: !451, line: 20, type: !454)
!462 = !DILocalVariable(name: "__base", arg: 2, scope: !450, file: !451, line: 20, type: !454)
!463 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !450, file: !451, line: 20, type: !325)
!464 = !DILocalVariable(name: "__size", arg: 4, scope: !450, file: !451, line: 20, type: !325)
!465 = !DILocalVariable(name: "__compar", arg: 5, scope: !450, file: !451, line: 21, type: !456)
!466 = !DILocalVariable(name: "__l", scope: !450, file: !451, line: 23, type: !325)
!467 = !DILocalVariable(name: "__u", scope: !450, file: !451, line: 23, type: !325)
!468 = !DILocalVariable(name: "__idx", scope: !450, file: !451, line: 23, type: !325)
!469 = !DILocalVariable(name: "__p", scope: !450, file: !451, line: 24, type: !454)
!470 = !DILocalVariable(name: "__comparison", scope: !450, file: !451, line: 25, type: !234)
!471 = !DILocation(line: 0, scope: !450)
!472 = !DILocation(line: 29, column: 3, scope: !450)
!473 = !DILocation(line: 27, column: 7, scope: !450)
!474 = !DILocation(line: 29, column: 14, scope: !450)
!475 = !DILocation(line: 31, column: 20, scope: !476)
!476 = distinct !DILexicalBlock(scope: !450, file: !451, line: 30, column: 5)
!477 = !DILocation(line: 31, column: 27, scope: !476)
!478 = !DILocation(line: 32, column: 56, scope: !476)
!479 = !DILocation(line: 32, column: 47, scope: !476)
!480 = !DILocation(line: 33, column: 22, scope: !476)
!481 = !DILocation(line: 34, column: 24, scope: !482)
!482 = distinct !DILexicalBlock(scope: !476, file: !451, line: 34, column: 11)
!483 = !DILocation(line: 34, column: 11, scope: !476)
!484 = !DILocation(line: 36, column: 29, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !451, line: 36, column: 16)
!486 = !DILocation(line: 36, column: 16, scope: !482)
!487 = !DILocation(line: 37, column: 14, scope: !485)
!488 = distinct !{!488, !472, !489}
!489 = !DILocation(line: 40, column: 5, scope: !450)
!490 = !DILocation(line: 43, column: 1, scope: !450)
!491 = distinct !DISubprogram(name: "atof", scope: !492, file: !492, line: 25, type: !493, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !496)
!492 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!493 = !DISubroutineType(types: !494)
!494 = !{!495, !239}
!495 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!496 = !{!497}
!497 = !DILocalVariable(name: "__nptr", arg: 1, scope: !491, file: !492, line: 25, type: !239)
!498 = !DILocation(line: 0, scope: !491)
!499 = !DILocation(line: 27, column: 10, scope: !491)
!500 = !DILocation(line: 27, column: 3, scope: !491)
!501 = distinct !DISubprogram(name: "strtoimax", scope: !502, file: !502, line: 324, type: !503, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !509)
!502 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!503 = !DISubroutineType(types: !504)
!504 = !{!505, !249, !508, !234}
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !506, line: 101, baseType: !507)
!506 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!507 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !301, line: 72, baseType: !302)
!508 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!509 = !{!510, !511, !512}
!510 = !DILocalVariable(name: "nptr", arg: 1, scope: !501, file: !502, line: 324, type: !249)
!511 = !DILocalVariable(name: "endptr", arg: 2, scope: !501, file: !502, line: 324, type: !508)
!512 = !DILocalVariable(name: "base", arg: 3, scope: !501, file: !502, line: 324, type: !234)
!513 = !DILocation(line: 0, scope: !501)
!514 = !DILocation(line: 327, column: 10, scope: !501)
!515 = !DILocation(line: 327, column: 3, scope: !501)
!516 = distinct !DISubprogram(name: "strtoumax", scope: !502, file: !502, line: 336, type: !517, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !521)
!517 = !DISubroutineType(types: !518)
!518 = !{!519, !249, !508, !234}
!519 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !506, line: 102, baseType: !520)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !301, line: 73, baseType: !327)
!521 = !{!522, !523, !524}
!522 = !DILocalVariable(name: "nptr", arg: 1, scope: !516, file: !502, line: 336, type: !249)
!523 = !DILocalVariable(name: "endptr", arg: 2, scope: !516, file: !502, line: 336, type: !508)
!524 = !DILocalVariable(name: "base", arg: 3, scope: !516, file: !502, line: 336, type: !234)
!525 = !DILocation(line: 0, scope: !516)
!526 = !DILocation(line: 339, column: 10, scope: !516)
!527 = !DILocation(line: 339, column: 3, scope: !516)
!528 = distinct !DISubprogram(name: "wcstoimax", scope: !502, file: !502, line: 348, type: !529, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !538)
!529 = !DISubroutineType(types: !530)
!530 = !{!505, !531, !535, !234}
!531 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !532)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !534)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !502, line: 34, baseType: !234)
!535 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!538 = !{!539, !540, !541}
!539 = !DILocalVariable(name: "nptr", arg: 1, scope: !528, file: !502, line: 348, type: !531)
!540 = !DILocalVariable(name: "endptr", arg: 2, scope: !528, file: !502, line: 348, type: !535)
!541 = !DILocalVariable(name: "base", arg: 3, scope: !528, file: !502, line: 348, type: !234)
!542 = !DILocation(line: 0, scope: !528)
!543 = !DILocation(line: 351, column: 10, scope: !528)
!544 = !DILocation(line: 351, column: 3, scope: !528)
!545 = distinct !DISubprogram(name: "wcstoumax", scope: !502, file: !502, line: 362, type: !546, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!519, !531, !535, !234}
!548 = !{!549, !550, !551}
!549 = !DILocalVariable(name: "nptr", arg: 1, scope: !545, file: !502, line: 362, type: !531)
!550 = !DILocalVariable(name: "endptr", arg: 2, scope: !545, file: !502, line: 362, type: !535)
!551 = !DILocalVariable(name: "base", arg: 3, scope: !545, file: !502, line: 362, type: !234)
!552 = !DILocation(line: 0, scope: !545)
!553 = !DILocation(line: 365, column: 10, scope: !545)
!554 = !DILocation(line: 365, column: 3, scope: !545)
!555 = distinct !DISubprogram(name: "stat", scope: !556, file: !556, line: 453, type: !557, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !596)
!556 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!557 = !DISubroutineType(types: !558)
!558 = !{!234, !239, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !561, line: 46, size: 1152, elements: !562)
!561 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!562 = !{!563, !565, !567, !569, !571, !573, !575, !576, !577, !578, !580, !582, !590, !591, !592}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !560, file: !561, line: 48, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !301, line: 145, baseType: !327)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !560, file: !561, line: 53, baseType: !566, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !301, line: 148, baseType: !327)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !560, file: !561, line: 61, baseType: !568, size: 64, offset: 128)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !301, line: 151, baseType: !327)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !560, file: !561, line: 62, baseType: !570, size: 32, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !301, line: 150, baseType: !5)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !560, file: !561, line: 64, baseType: !572, size: 32, offset: 224)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !301, line: 146, baseType: !5)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !560, file: !561, line: 65, baseType: !574, size: 32, offset: 256)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !301, line: 147, baseType: !5)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !560, file: !561, line: 67, baseType: !234, size: 32, offset: 288)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !560, file: !561, line: 69, baseType: !564, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !560, file: !561, line: 74, baseType: !300, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !560, file: !561, line: 78, baseType: !579, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !301, line: 174, baseType: !302)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !560, file: !561, line: 80, baseType: !581, size: 64, offset: 512)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !301, line: 179, baseType: !302)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !560, file: !561, line: 91, baseType: !583, size: 128, offset: 576)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !584, line: 10, size: 128, elements: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!585 = !{!586, !588}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !583, file: !584, line: 12, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !301, line: 160, baseType: !302)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !583, file: !584, line: 16, baseType: !589, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !301, line: 196, baseType: !302)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !560, file: !561, line: 92, baseType: !583, size: 128, offset: 704)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !560, file: !561, line: 93, baseType: !583, size: 128, offset: 832)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !560, file: !561, line: 106, baseType: !593, size: 192, offset: 960)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 192, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 3)
!596 = !{!597, !598}
!597 = !DILocalVariable(name: "__path", arg: 1, scope: !555, file: !556, line: 453, type: !239)
!598 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !555, file: !556, line: 453, type: !559)
!599 = !DILocation(line: 0, scope: !555)
!600 = !DILocation(line: 455, column: 10, scope: !555)
!601 = !DILocation(line: 455, column: 3, scope: !555)
!602 = distinct !DISubprogram(name: "lstat", scope: !556, file: !556, line: 460, type: !557, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !603)
!603 = !{!604, !605}
!604 = !DILocalVariable(name: "__path", arg: 1, scope: !602, file: !556, line: 460, type: !239)
!605 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !602, file: !556, line: 460, type: !559)
!606 = !DILocation(line: 0, scope: !602)
!607 = !DILocation(line: 462, column: 10, scope: !602)
!608 = !DILocation(line: 462, column: 3, scope: !602)
!609 = distinct !DISubprogram(name: "fstat", scope: !556, file: !556, line: 467, type: !610, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!610 = !DISubroutineType(types: !611)
!611 = !{!234, !234, !559}
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "__fd", arg: 1, scope: !609, file: !556, line: 467, type: !234)
!614 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !609, file: !556, line: 467, type: !559)
!615 = !DILocation(line: 0, scope: !609)
!616 = !DILocation(line: 469, column: 10, scope: !609)
!617 = !DILocation(line: 469, column: 3, scope: !609)
!618 = distinct !DISubprogram(name: "fstatat", scope: !556, file: !556, line: 474, type: !619, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !621)
!619 = !DISubroutineType(types: !620)
!620 = !{!234, !234, !239, !559, !234}
!621 = !{!622, !623, !624, !625}
!622 = !DILocalVariable(name: "__fd", arg: 1, scope: !618, file: !556, line: 474, type: !234)
!623 = !DILocalVariable(name: "__filename", arg: 2, scope: !618, file: !556, line: 474, type: !239)
!624 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !618, file: !556, line: 474, type: !559)
!625 = !DILocalVariable(name: "__flag", arg: 4, scope: !618, file: !556, line: 474, type: !234)
!626 = !DILocation(line: 0, scope: !618)
!627 = !DILocation(line: 477, column: 10, scope: !618)
!628 = !DILocation(line: 477, column: 3, scope: !618)
!629 = distinct !DISubprogram(name: "mknod", scope: !556, file: !556, line: 483, type: !630, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !632)
!630 = !DISubroutineType(types: !631)
!631 = !{!234, !239, !570, !564}
!632 = !{!633, !634, !635}
!633 = !DILocalVariable(name: "__path", arg: 1, scope: !629, file: !556, line: 483, type: !239)
!634 = !DILocalVariable(name: "__mode", arg: 2, scope: !629, file: !556, line: 483, type: !570)
!635 = !DILocalVariable(name: "__dev", arg: 3, scope: !629, file: !556, line: 483, type: !564)
!636 = !DILocation(line: 0, scope: !629)
!637 = !DILocation(line: 485, column: 10, scope: !629)
!638 = !DILocation(line: 485, column: 3, scope: !629)
!639 = distinct !DISubprogram(name: "mknodat", scope: !556, file: !556, line: 491, type: !640, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !642)
!640 = !DISubroutineType(types: !641)
!641 = !{!234, !234, !239, !570, !564}
!642 = !{!643, !644, !645, !646}
!643 = !DILocalVariable(name: "__fd", arg: 1, scope: !639, file: !556, line: 491, type: !234)
!644 = !DILocalVariable(name: "__path", arg: 2, scope: !639, file: !556, line: 491, type: !239)
!645 = !DILocalVariable(name: "__mode", arg: 3, scope: !639, file: !556, line: 491, type: !570)
!646 = !DILocalVariable(name: "__dev", arg: 4, scope: !639, file: !556, line: 491, type: !564)
!647 = !DILocation(line: 0, scope: !639)
!648 = !DILocation(line: 494, column: 10, scope: !639)
!649 = !DILocation(line: 494, column: 3, scope: !639)
!650 = distinct !DISubprogram(name: "stat64", scope: !556, file: !556, line: 502, type: !651, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !673)
!651 = !DISubroutineType(types: !652)
!652 = !{!234, !239, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !561, line: 119, size: 1152, elements: !655)
!655 = !{!656, !657, !659, !660, !661, !662, !663, !664, !665, !666, !667, !669, !670, !671, !672}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !654, file: !561, line: 121, baseType: !564, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !654, file: !561, line: 123, baseType: !658, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !301, line: 149, baseType: !327)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !654, file: !561, line: 124, baseType: !568, size: 64, offset: 128)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !654, file: !561, line: 125, baseType: !570, size: 32, offset: 192)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !654, file: !561, line: 132, baseType: !572, size: 32, offset: 224)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !654, file: !561, line: 133, baseType: !574, size: 32, offset: 256)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !654, file: !561, line: 135, baseType: !234, size: 32, offset: 288)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !654, file: !561, line: 136, baseType: !564, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !654, file: !561, line: 137, baseType: !300, size: 64, offset: 384)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !654, file: !561, line: 143, baseType: !579, size: 64, offset: 448)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !654, file: !561, line: 144, baseType: !668, size: 64, offset: 512)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !301, line: 180, baseType: !302)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !654, file: !561, line: 152, baseType: !583, size: 128, offset: 576)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !654, file: !561, line: 153, baseType: !583, size: 128, offset: 704)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !654, file: !561, line: 154, baseType: !583, size: 128, offset: 832)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !654, file: !561, line: 164, baseType: !593, size: 192, offset: 960)
!673 = !{!674, !675}
!674 = !DILocalVariable(name: "__path", arg: 1, scope: !650, file: !556, line: 502, type: !239)
!675 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !650, file: !556, line: 502, type: !653)
!676 = !DILocation(line: 0, scope: !650)
!677 = !DILocation(line: 504, column: 10, scope: !650)
!678 = !DILocation(line: 504, column: 3, scope: !650)
!679 = distinct !DISubprogram(name: "lstat64", scope: !556, file: !556, line: 509, type: !651, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !680)
!680 = !{!681, !682}
!681 = !DILocalVariable(name: "__path", arg: 1, scope: !679, file: !556, line: 509, type: !239)
!682 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !679, file: !556, line: 509, type: !653)
!683 = !DILocation(line: 0, scope: !679)
!684 = !DILocation(line: 511, column: 10, scope: !679)
!685 = !DILocation(line: 511, column: 3, scope: !679)
!686 = distinct !DISubprogram(name: "fstat64", scope: !556, file: !556, line: 516, type: !687, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!687 = !DISubroutineType(types: !688)
!688 = !{!234, !234, !653}
!689 = !{!690, !691}
!690 = !DILocalVariable(name: "__fd", arg: 1, scope: !686, file: !556, line: 516, type: !234)
!691 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !686, file: !556, line: 516, type: !653)
!692 = !DILocation(line: 0, scope: !686)
!693 = !DILocation(line: 518, column: 10, scope: !686)
!694 = !DILocation(line: 518, column: 3, scope: !686)
!695 = distinct !DISubprogram(name: "fstatat64", scope: !556, file: !556, line: 523, type: !696, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!234, !234, !239, !653, !234}
!698 = !{!699, !700, !701, !702}
!699 = !DILocalVariable(name: "__fd", arg: 1, scope: !695, file: !556, line: 523, type: !234)
!700 = !DILocalVariable(name: "__filename", arg: 2, scope: !695, file: !556, line: 523, type: !239)
!701 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !695, file: !556, line: 523, type: !653)
!702 = !DILocalVariable(name: "__flag", arg: 4, scope: !695, file: !556, line: 523, type: !234)
!703 = !DILocation(line: 0, scope: !695)
!704 = !DILocation(line: 526, column: 10, scope: !695)
!705 = !DILocation(line: 526, column: 3, scope: !695)
!706 = distinct !DISubprogram(name: "objc_is_class_name", scope: !1, file: !1, line: 30, type: !707, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1343)
!707 = !DISubroutineType(types: !708)
!708 = !{!709, !709}
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !710, line: 56, baseType: !711)
!710 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !713)
!713 = !{!714, !747, !753, !764, !771, !778, !783, !789, !795, !808, !820, !858, !866, !894, !902, !903, !908, !917, !923, !928, !932, !936, !965, !1014, !1020, !1027, !1034, !1060, !1085, !1102, !1114, !1136, !1154, !1325}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !712, file: !4, line: 3372, baseType: !715, size: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !716)
!716 = !{!717, !718, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !715, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !715, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !715, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !715, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !715, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !715, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !715, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !715, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !715, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !715, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !715, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !715, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !715, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !715, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !715, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !715, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !715, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !715, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !715, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !715, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !715, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !715, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !715, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !715, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !715, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !715, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !715, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !715, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !715, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !715, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !712, file: !4, line: 3373, baseType: !748, size: 192)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !749)
!749 = !{!750, !751, !752}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !748, file: !4, line: 403, baseType: !715, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !748, file: !4, line: 404, baseType: !709, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !748, file: !4, line: 405, baseType: !709, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !712, file: !4, line: 3374, baseType: !754, size: 320)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !754, file: !4, line: 1385, baseType: !748, size: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !754, file: !4, line: 1386, baseType: !758, size: 128, offset: 192)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !759, line: 58, baseType: !760)
!759 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !759, line: 54, size: 128, elements: !761)
!761 = !{!762, !763}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !760, file: !759, line: 56, baseType: !327, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !760, file: !759, line: 57, baseType: !302, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !712, file: !4, line: 3375, baseType: !765, size: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !765, file: !4, line: 1398, baseType: !748, size: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !765, file: !4, line: 1399, baseType: !769, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !712, file: !4, line: 3376, baseType: !772, size: 256)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !772, file: !4, line: 1409, baseType: !748, size: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !772, file: !4, line: 1410, baseType: !776, size: 64, offset: 192)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !712, file: !4, line: 3377, baseType: !779, size: 256)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !779, file: !4, line: 1438, baseType: !748, size: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !779, file: !4, line: 1439, baseType: !709, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !712, file: !4, line: 3378, baseType: !784, size: 256)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !785)
!785 = !{!786, !787, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !784, file: !4, line: 1419, baseType: !748, size: 192)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !784, file: !4, line: 1420, baseType: !234, size: 32, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !784, file: !4, line: 1421, baseType: !308, size: 8, offset: 224)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !712, file: !4, line: 3379, baseType: !790, size: 320)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !790, file: !4, line: 1429, baseType: !748, size: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !790, file: !4, line: 1430, baseType: !709, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !790, file: !4, line: 1431, baseType: !709, size: 64, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !712, file: !4, line: 3380, baseType: !796, size: 320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !796, file: !4, line: 1461, baseType: !748, size: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !796, file: !4, line: 1462, baseType: !800, size: 128, offset: 192)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !801, line: 31, size: 128, elements: !802)
!801 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!802 = !{!803, !806, !807}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !800, file: !801, line: 32, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !800, file: !801, line: 33, baseType: !5, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !800, file: !801, line: 34, baseType: !5, size: 32, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !712, file: !4, line: 3381, baseType: !809, size: 384)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !810)
!810 = !{!811, !812, !817, !818, !819}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !809, file: !4, line: 2508, baseType: !748, size: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !809, file: !4, line: 2509, baseType: !813, size: 32, offset: 192)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !814, line: 58, baseType: !815)
!814 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !816, line: 44, baseType: !5)
!816 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!817 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !809, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !809, file: !4, line: 2511, baseType: !709, size: 64, offset: 256)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !809, file: !4, line: 2512, baseType: !709, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !712, file: !4, line: 3382, baseType: !821, size: 896)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !822)
!822 = !{!823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !821, file: !4, line: 2653, baseType: !809, size: 384)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !821, file: !4, line: 2654, baseType: !709, size: 64, offset: 384)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !821, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !821, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !821, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !821, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !821, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !821, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !821, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !821, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !821, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !821, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !821, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !821, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !821, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !821, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !821, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !821, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !821, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !821, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !821, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !821, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !821, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !821, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !821, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !821, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !821, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !821, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !821, file: !4, line: 2705, baseType: !709, size: 64, offset: 576)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !821, file: !4, line: 2706, baseType: !709, size: 64, offset: 640)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !821, file: !4, line: 2707, baseType: !709, size: 64, offset: 704)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !821, file: !4, line: 2708, baseType: !709, size: 64, offset: 768)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !821, file: !4, line: 2711, baseType: !856, size: 64, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !712, file: !4, line: 3383, baseType: !859, size: 960)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !860)
!860 = !{!861, !862}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !859, file: !4, line: 2757, baseType: !821, size: 896)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !859, file: !4, line: 2758, baseType: !863, size: 64, offset: 896)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !710, line: 50, baseType: !864)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !710, line: 49, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !712, file: !4, line: 3384, baseType: !867, size: 1472)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !868)
!868 = !{!869, !890, !891, !892, !893}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !867, file: !4, line: 3115, baseType: !870, size: 1216)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !871)
!871 = !{!872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !4, line: 2985, baseType: !859, size: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !870, file: !4, line: 2986, baseType: !709, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !870, file: !4, line: 2987, baseType: !709, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !870, file: !4, line: 2988, baseType: !709, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !870, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !870, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !870, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !870, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !870, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !870, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !870, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !870, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !870, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !870, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !870, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !870, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !870, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !870, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !867, file: !4, line: 3117, baseType: !709, size: 64, offset: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !867, file: !4, line: 3119, baseType: !709, size: 64, offset: 1280)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !867, file: !4, line: 3121, baseType: !709, size: 64, offset: 1344)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !867, file: !4, line: 3123, baseType: !709, size: 64, offset: 1408)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !712, file: !4, line: 3385, baseType: !895, size: 1088)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !896)
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !895, file: !4, line: 2875, baseType: !859, size: 960)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !895, file: !4, line: 2876, baseType: !863, size: 64, offset: 960)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !895, file: !4, line: 2877, baseType: !900, size: 64, offset: 1024)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !4, line: 2856, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !712, file: !4, line: 3386, baseType: !870, size: 1216)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !712, file: !4, line: 3387, baseType: !904, size: 1280)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !905)
!905 = !{!906, !907}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !904, file: !4, line: 3094, baseType: !870, size: 1216)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !904, file: !4, line: 3095, baseType: !900, size: 64, offset: 1216)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !712, file: !4, line: 3388, baseType: !909, size: 1216)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !910)
!910 = !{!911, !912, !913, !914, !915, !916}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !909, file: !4, line: 2825, baseType: !821, size: 896)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !909, file: !4, line: 2827, baseType: !709, size: 64, offset: 896)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !909, file: !4, line: 2828, baseType: !709, size: 64, offset: 960)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !909, file: !4, line: 2829, baseType: !709, size: 64, offset: 1024)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !909, file: !4, line: 2830, baseType: !709, size: 64, offset: 1088)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !909, file: !4, line: 2831, baseType: !709, size: 64, offset: 1152)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !712, file: !4, line: 3389, baseType: !918, size: 1024)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !918, file: !4, line: 2851, baseType: !859, size: 960)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !918, file: !4, line: 2852, baseType: !234, size: 32, offset: 960)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !918, file: !4, line: 2853, baseType: !234, size: 32, offset: 992)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !712, file: !4, line: 3390, baseType: !924, size: 1024)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !925)
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !924, file: !4, line: 2858, baseType: !859, size: 960)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !924, file: !4, line: 2859, baseType: !900, size: 64, offset: 960)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !712, file: !4, line: 3391, baseType: !929, size: 960)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !929, file: !4, line: 2863, baseType: !859, size: 960)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !712, file: !4, line: 3392, baseType: !933, size: 1472)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !934)
!934 = !{!935}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !4, line: 3305, baseType: !867, size: 1472)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !712, file: !4, line: 3393, baseType: !937, size: 1792)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !938)
!938 = !{!939, !940, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !937, file: !4, line: 3249, baseType: !867, size: 1472)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !937, file: !4, line: 3251, baseType: !941, size: 64, offset: 1472)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !943, line: 41, flags: DIFlagFwdDecl)
!943 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!944 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !937, file: !4, line: 3254, baseType: !709, size: 64, offset: 1536)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !937, file: !4, line: 3257, baseType: !709, size: 64, offset: 1600)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !937, file: !4, line: 3258, baseType: !709, size: 64, offset: 1664)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !937, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !937, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !937, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !937, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !937, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !937, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !937, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !937, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !937, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !937, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !937, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !937, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !937, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !937, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !937, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !937, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !937, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !937, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !712, file: !4, line: 3394, baseType: !966, size: 1344)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !967)
!967 = !{!968, !969, !970, !971, !972, !973, !974, !975, !976, !977, !978, !979, !980, !981, !982, !983, !984, !985, !986, !987, !988, !989, !990, !993, !994, !995, !1003, !1004, !1005, !1006, !1007, !1008, !1009, !1010, !1011}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !966, file: !4, line: 2280, baseType: !748, size: 192)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !966, file: !4, line: 2281, baseType: !709, size: 64, offset: 192)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !966, file: !4, line: 2282, baseType: !709, size: 64, offset: 256)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !966, file: !4, line: 2283, baseType: !709, size: 64, offset: 320)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !966, file: !4, line: 2284, baseType: !709, size: 64, offset: 384)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !966, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !966, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !966, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !966, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !966, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !966, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !966, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !966, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !966, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !966, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !966, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !966, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !966, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !966, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !966, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !966, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !966, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !966, file: !4, line: 2306, baseType: !991, size: 32, offset: 544)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !992, line: 31, baseType: !234)
!992 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!993 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !966, file: !4, line: 2307, baseType: !709, size: 64, offset: 576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !966, file: !4, line: 2308, baseType: !709, size: 64, offset: 640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !966, file: !4, line: 2314, baseType: !996, size: 64, offset: 704)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !997)
!997 = !{!998, !999, !1000}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !996, file: !4, line: 2310, baseType: !234, size: 32)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !996, file: !4, line: 2311, baseType: !239, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !996, file: !4, line: 2312, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !966, file: !4, line: 2315, baseType: !709, size: 64, offset: 768)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !966, file: !4, line: 2316, baseType: !709, size: 64, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !966, file: !4, line: 2317, baseType: !709, size: 64, offset: 896)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !966, file: !4, line: 2318, baseType: !709, size: 64, offset: 960)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !966, file: !4, line: 2319, baseType: !709, size: 64, offset: 1024)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !966, file: !4, line: 2320, baseType: !709, size: 64, offset: 1088)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !966, file: !4, line: 2321, baseType: !709, size: 64, offset: 1152)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !966, file: !4, line: 2322, baseType: !709, size: 64, offset: 1216)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !966, file: !4, line: 2324, baseType: !1012, size: 64, offset: 1280)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !4, line: 3395, baseType: !1015, size: 320)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1016)
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1015, file: !4, line: 1470, baseType: !748, size: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1015, file: !4, line: 1471, baseType: !709, size: 64, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1015, file: !4, line: 1472, baseType: !709, size: 64, offset: 256)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !712, file: !4, line: 3396, baseType: !1021, size: 320)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1021, file: !4, line: 1483, baseType: !748, size: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1021, file: !4, line: 1484, baseType: !234, size: 32, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1021, file: !4, line: 1485, baseType: !1026, size: 64, offset: 256)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !709, size: 64, elements: !309)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !712, file: !4, line: 3397, baseType: !1028, size: 384)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1029)
!1029 = !{!1030, !1031, !1032, !1033}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1028, file: !4, line: 1830, baseType: !748, size: 192)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1028, file: !4, line: 1831, baseType: !813, size: 32, offset: 192)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1028, file: !4, line: 1832, baseType: !709, size: 64, offset: 256)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1028, file: !4, line: 1835, baseType: !1026, size: 64, offset: 320)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !712, file: !4, line: 3398, baseType: !1035, size: 704)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1043, !1044, !1047}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1035, file: !4, line: 1899, baseType: !748, size: 192)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1035, file: !4, line: 1902, baseType: !709, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1035, file: !4, line: 1905, baseType: !1040, size: 64, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !710, line: 58, baseType: !1041)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !710, line: 57, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1035, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1035, file: !4, line: 1911, baseType: !1045, size: 64, offset: 384)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !4, line: 1876, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1035, file: !4, line: 1914, baseType: !1048, size: 256, offset: 448)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !1049)
!1049 = !{!1050, !1052, !1053, !1058}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1048, file: !4, line: 1884, baseType: !1051, size: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1048, file: !4, line: 1885, baseType: !1051, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1048, file: !4, line: 1891, baseType: !1054, size: 64, offset: 128)
!1054 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1048, file: !4, line: 1891, size: 64, elements: !1055)
!1055 = !{!1056, !1057}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1054, file: !4, line: 1891, baseType: !1040, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1054, file: !4, line: 1891, baseType: !709, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1048, file: !4, line: 1892, baseType: !1059, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !712, file: !4, line: 3399, baseType: !1061, size: 704)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1062)
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068, !1080, !1081, !1082, !1083, !1084}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1061, file: !4, line: 2009, baseType: !748, size: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1061, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1061, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1061, file: !4, line: 2014, baseType: !813, size: 32, offset: 224)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1061, file: !4, line: 2016, baseType: !709, size: 64, offset: 256)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1061, file: !4, line: 2017, baseType: !1069, size: 64, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1071)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1072)
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1071, file: !4, line: 183, baseType: !1074, size: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !1075)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1075, file: !4, line: 182, baseType: !5, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1075, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1075, file: !4, line: 182, baseType: !1026, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1061, file: !4, line: 2019, baseType: !709, size: 64, offset: 384)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1061, file: !4, line: 2020, baseType: !709, size: 64, offset: 448)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1061, file: !4, line: 2021, baseType: !709, size: 64, offset: 512)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1061, file: !4, line: 2022, baseType: !709, size: 64, offset: 576)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1061, file: !4, line: 2023, baseType: !709, size: 64, offset: 640)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !712, file: !4, line: 3400, baseType: !1086, size: 832)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1087)
!1087 = !{!1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097}
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1086, file: !4, line: 2431, baseType: !748, size: 192)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1086, file: !4, line: 2433, baseType: !709, size: 64, offset: 192)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1086, file: !4, line: 2434, baseType: !709, size: 64, offset: 256)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1086, file: !4, line: 2435, baseType: !709, size: 64, offset: 320)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1086, file: !4, line: 2436, baseType: !709, size: 64, offset: 384)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1086, file: !4, line: 2437, baseType: !1069, size: 64, offset: 448)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1086, file: !4, line: 2438, baseType: !709, size: 64, offset: 512)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1086, file: !4, line: 2440, baseType: !709, size: 64, offset: 576)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1086, file: !4, line: 2441, baseType: !709, size: 64, offset: 640)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1086, file: !4, line: 2443, baseType: !1098, size: 128, offset: 704)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1099)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1100)
!1100 = !{!1101}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1099, file: !4, line: 182, baseType: !1074, size: 128)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !712, file: !4, line: 3401, baseType: !1103, size: 320)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1104)
!1104 = !{!1105, !1106, !1113}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1103, file: !4, line: 3329, baseType: !748, size: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1103, file: !4, line: 3330, baseType: !1107, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1108, file: !4, line: 3322, baseType: !1107, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !4, line: 3323, baseType: !1107, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1108, file: !4, line: 3324, baseType: !709, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1103, file: !4, line: 3331, baseType: !1107, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !712, file: !4, line: 3402, baseType: !1115, size: 256)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1116)
!1116 = !{!1117, !1118}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1115, file: !4, line: 1541, baseType: !748, size: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1115, file: !4, line: 1542, baseType: !1119, size: 64, offset: 192)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1121)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1122)
!1122 = !{!1123}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1121, file: !4, line: 1538, baseType: !1124, size: 192)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1125)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1125, file: !4, line: 1537, baseType: !5, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1125, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1125, file: !4, line: 1537, baseType: !1130, size: 128, offset: 64)
!1130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1131, size: 128, elements: !309)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1133)
!1133 = !{!1134, !1135}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1132, file: !4, line: 1533, baseType: !709, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1132, file: !4, line: 1534, baseType: !709, size: 64, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !712, file: !4, line: 3403, baseType: !1137, size: 512)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1138)
!1138 = !{!1139, !1140, !1141, !1142, !1148, !1152, !1153}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !4, line: 1939, baseType: !748, size: 192)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1137, file: !4, line: 1940, baseType: !813, size: 32, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1137, file: !4, line: 1941, baseType: !3, size: 32, offset: 224)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1137, file: !4, line: 1946, baseType: !1143, size: 32, offset: 256)
!1143 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1144)
!1144 = !{!1145, !1146, !1147}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1143, file: !4, line: 1943, baseType: !23, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1143, file: !4, line: 1944, baseType: !30, size: 32)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1143, file: !4, line: 1945, baseType: !37, size: 32)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1137, file: !4, line: 1950, baseType: !1149, size: 64, offset: 320)
!1149 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !710, line: 66, baseType: !1150)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !710, line: 65, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1137, file: !4, line: 1951, baseType: !1149, size: 64, offset: 384)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1137, file: !4, line: 1953, baseType: !1026, size: 64, offset: 448)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !712, file: !4, line: 3404, baseType: !1155, size: 1664)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1155, file: !4, line: 3338, baseType: !748, size: 192)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1155, file: !4, line: 3341, baseType: !1159, size: 1472, offset: 192)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1160, line: 410, size: 1472, elements: !1161)
!1160 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1161 = !{!1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1159, file: !1160, line: 412, baseType: !234, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1159, file: !1160, line: 413, baseType: !234, size: 32, offset: 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1159, file: !1160, line: 414, baseType: !234, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1159, file: !1160, line: 415, baseType: !234, size: 32, offset: 96)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1159, file: !1160, line: 416, baseType: !234, size: 32, offset: 128)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1159, file: !1160, line: 417, baseType: !234, size: 32, offset: 160)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1159, file: !1160, line: 418, baseType: !233, size: 8, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1159, file: !1160, line: 419, baseType: !233, size: 8, offset: 200)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1159, file: !1160, line: 420, baseType: !306, size: 8, offset: 208)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1159, file: !1160, line: 421, baseType: !306, size: 8, offset: 216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1159, file: !1160, line: 422, baseType: !306, size: 8, offset: 224)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1159, file: !1160, line: 423, baseType: !306, size: 8, offset: 232)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1159, file: !1160, line: 424, baseType: !306, size: 8, offset: 240)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1159, file: !1160, line: 425, baseType: !306, size: 8, offset: 248)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1159, file: !1160, line: 426, baseType: !306, size: 8, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1159, file: !1160, line: 427, baseType: !306, size: 8, offset: 264)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1159, file: !1160, line: 428, baseType: !306, size: 8, offset: 272)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1159, file: !1160, line: 429, baseType: !306, size: 8, offset: 280)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1159, file: !1160, line: 430, baseType: !306, size: 8, offset: 288)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1159, file: !1160, line: 431, baseType: !306, size: 8, offset: 296)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1159, file: !1160, line: 432, baseType: !306, size: 8, offset: 304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1159, file: !1160, line: 433, baseType: !306, size: 8, offset: 312)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1159, file: !1160, line: 434, baseType: !306, size: 8, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1159, file: !1160, line: 435, baseType: !306, size: 8, offset: 328)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1159, file: !1160, line: 436, baseType: !306, size: 8, offset: 336)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1159, file: !1160, line: 437, baseType: !306, size: 8, offset: 344)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1159, file: !1160, line: 438, baseType: !306, size: 8, offset: 352)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1159, file: !1160, line: 439, baseType: !306, size: 8, offset: 360)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1159, file: !1160, line: 440, baseType: !306, size: 8, offset: 368)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1159, file: !1160, line: 441, baseType: !306, size: 8, offset: 376)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1159, file: !1160, line: 442, baseType: !306, size: 8, offset: 384)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1159, file: !1160, line: 443, baseType: !306, size: 8, offset: 392)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1159, file: !1160, line: 444, baseType: !306, size: 8, offset: 400)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1159, file: !1160, line: 445, baseType: !306, size: 8, offset: 408)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1159, file: !1160, line: 446, baseType: !306, size: 8, offset: 416)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1159, file: !1160, line: 447, baseType: !306, size: 8, offset: 424)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1159, file: !1160, line: 448, baseType: !306, size: 8, offset: 432)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1159, file: !1160, line: 449, baseType: !306, size: 8, offset: 440)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1159, file: !1160, line: 450, baseType: !306, size: 8, offset: 448)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1159, file: !1160, line: 451, baseType: !306, size: 8, offset: 456)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1159, file: !1160, line: 452, baseType: !306, size: 8, offset: 464)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1159, file: !1160, line: 453, baseType: !306, size: 8, offset: 472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1159, file: !1160, line: 454, baseType: !306, size: 8, offset: 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1159, file: !1160, line: 455, baseType: !306, size: 8, offset: 488)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1159, file: !1160, line: 456, baseType: !306, size: 8, offset: 496)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1159, file: !1160, line: 457, baseType: !306, size: 8, offset: 504)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1159, file: !1160, line: 458, baseType: !306, size: 8, offset: 512)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1159, file: !1160, line: 459, baseType: !306, size: 8, offset: 520)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1159, file: !1160, line: 460, baseType: !306, size: 8, offset: 528)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1159, file: !1160, line: 461, baseType: !306, size: 8, offset: 536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1159, file: !1160, line: 462, baseType: !306, size: 8, offset: 544)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1159, file: !1160, line: 463, baseType: !306, size: 8, offset: 552)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1159, file: !1160, line: 464, baseType: !306, size: 8, offset: 560)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1159, file: !1160, line: 465, baseType: !306, size: 8, offset: 568)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1159, file: !1160, line: 466, baseType: !306, size: 8, offset: 576)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1159, file: !1160, line: 467, baseType: !306, size: 8, offset: 584)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1159, file: !1160, line: 468, baseType: !306, size: 8, offset: 592)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1159, file: !1160, line: 469, baseType: !306, size: 8, offset: 600)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1159, file: !1160, line: 470, baseType: !306, size: 8, offset: 608)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1159, file: !1160, line: 471, baseType: !306, size: 8, offset: 616)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1159, file: !1160, line: 472, baseType: !306, size: 8, offset: 624)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1159, file: !1160, line: 473, baseType: !306, size: 8, offset: 632)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1159, file: !1160, line: 474, baseType: !306, size: 8, offset: 640)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1159, file: !1160, line: 475, baseType: !306, size: 8, offset: 648)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1159, file: !1160, line: 476, baseType: !306, size: 8, offset: 656)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1159, file: !1160, line: 477, baseType: !306, size: 8, offset: 664)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1159, file: !1160, line: 478, baseType: !306, size: 8, offset: 672)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1159, file: !1160, line: 479, baseType: !306, size: 8, offset: 680)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1159, file: !1160, line: 480, baseType: !306, size: 8, offset: 688)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1159, file: !1160, line: 481, baseType: !306, size: 8, offset: 696)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1159, file: !1160, line: 482, baseType: !306, size: 8, offset: 704)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1159, file: !1160, line: 483, baseType: !306, size: 8, offset: 712)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1159, file: !1160, line: 484, baseType: !306, size: 8, offset: 720)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1159, file: !1160, line: 485, baseType: !306, size: 8, offset: 728)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1159, file: !1160, line: 486, baseType: !306, size: 8, offset: 736)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1159, file: !1160, line: 487, baseType: !306, size: 8, offset: 744)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1159, file: !1160, line: 488, baseType: !306, size: 8, offset: 752)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1159, file: !1160, line: 489, baseType: !306, size: 8, offset: 760)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1159, file: !1160, line: 490, baseType: !306, size: 8, offset: 768)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1159, file: !1160, line: 491, baseType: !306, size: 8, offset: 776)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1159, file: !1160, line: 492, baseType: !306, size: 8, offset: 784)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1159, file: !1160, line: 493, baseType: !306, size: 8, offset: 792)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1159, file: !1160, line: 494, baseType: !306, size: 8, offset: 800)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1159, file: !1160, line: 495, baseType: !306, size: 8, offset: 808)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1159, file: !1160, line: 496, baseType: !306, size: 8, offset: 816)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1159, file: !1160, line: 497, baseType: !306, size: 8, offset: 824)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1159, file: !1160, line: 498, baseType: !306, size: 8, offset: 832)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1159, file: !1160, line: 499, baseType: !306, size: 8, offset: 840)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1159, file: !1160, line: 500, baseType: !306, size: 8, offset: 848)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1159, file: !1160, line: 501, baseType: !306, size: 8, offset: 856)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1159, file: !1160, line: 502, baseType: !306, size: 8, offset: 864)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1159, file: !1160, line: 503, baseType: !306, size: 8, offset: 872)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1159, file: !1160, line: 504, baseType: !306, size: 8, offset: 880)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1159, file: !1160, line: 505, baseType: !306, size: 8, offset: 888)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1159, file: !1160, line: 506, baseType: !306, size: 8, offset: 896)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1159, file: !1160, line: 507, baseType: !306, size: 8, offset: 904)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1159, file: !1160, line: 508, baseType: !306, size: 8, offset: 912)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1159, file: !1160, line: 509, baseType: !306, size: 8, offset: 920)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1159, file: !1160, line: 510, baseType: !306, size: 8, offset: 928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1159, file: !1160, line: 511, baseType: !306, size: 8, offset: 936)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1159, file: !1160, line: 512, baseType: !306, size: 8, offset: 944)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1159, file: !1160, line: 513, baseType: !306, size: 8, offset: 952)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1159, file: !1160, line: 514, baseType: !306, size: 8, offset: 960)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1159, file: !1160, line: 515, baseType: !306, size: 8, offset: 968)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1159, file: !1160, line: 516, baseType: !306, size: 8, offset: 976)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1159, file: !1160, line: 517, baseType: !306, size: 8, offset: 984)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1159, file: !1160, line: 518, baseType: !306, size: 8, offset: 992)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1159, file: !1160, line: 519, baseType: !306, size: 8, offset: 1000)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1159, file: !1160, line: 520, baseType: !306, size: 8, offset: 1008)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1159, file: !1160, line: 521, baseType: !306, size: 8, offset: 1016)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1159, file: !1160, line: 522, baseType: !306, size: 8, offset: 1024)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1159, file: !1160, line: 523, baseType: !306, size: 8, offset: 1032)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1159, file: !1160, line: 524, baseType: !306, size: 8, offset: 1040)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1159, file: !1160, line: 525, baseType: !306, size: 8, offset: 1048)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1159, file: !1160, line: 526, baseType: !306, size: 8, offset: 1056)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1159, file: !1160, line: 527, baseType: !306, size: 8, offset: 1064)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1159, file: !1160, line: 528, baseType: !306, size: 8, offset: 1072)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1159, file: !1160, line: 529, baseType: !306, size: 8, offset: 1080)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1159, file: !1160, line: 530, baseType: !306, size: 8, offset: 1088)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1159, file: !1160, line: 531, baseType: !306, size: 8, offset: 1096)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1159, file: !1160, line: 532, baseType: !306, size: 8, offset: 1104)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1159, file: !1160, line: 533, baseType: !306, size: 8, offset: 1112)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1159, file: !1160, line: 534, baseType: !306, size: 8, offset: 1120)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1159, file: !1160, line: 535, baseType: !306, size: 8, offset: 1128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1159, file: !1160, line: 536, baseType: !306, size: 8, offset: 1136)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1159, file: !1160, line: 537, baseType: !306, size: 8, offset: 1144)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1159, file: !1160, line: 538, baseType: !306, size: 8, offset: 1152)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1159, file: !1160, line: 539, baseType: !306, size: 8, offset: 1160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1159, file: !1160, line: 540, baseType: !306, size: 8, offset: 1168)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1159, file: !1160, line: 541, baseType: !306, size: 8, offset: 1176)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1159, file: !1160, line: 542, baseType: !306, size: 8, offset: 1184)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1159, file: !1160, line: 543, baseType: !306, size: 8, offset: 1192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1159, file: !1160, line: 544, baseType: !306, size: 8, offset: 1200)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1159, file: !1160, line: 545, baseType: !306, size: 8, offset: 1208)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1159, file: !1160, line: 546, baseType: !306, size: 8, offset: 1216)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1159, file: !1160, line: 547, baseType: !306, size: 8, offset: 1224)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1159, file: !1160, line: 548, baseType: !306, size: 8, offset: 1232)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1159, file: !1160, line: 549, baseType: !306, size: 8, offset: 1240)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1159, file: !1160, line: 550, baseType: !306, size: 8, offset: 1248)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1159, file: !1160, line: 551, baseType: !306, size: 8, offset: 1256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1159, file: !1160, line: 552, baseType: !306, size: 8, offset: 1264)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1159, file: !1160, line: 553, baseType: !306, size: 8, offset: 1272)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1159, file: !1160, line: 554, baseType: !306, size: 8, offset: 1280)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1159, file: !1160, line: 555, baseType: !306, size: 8, offset: 1288)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1159, file: !1160, line: 556, baseType: !306, size: 8, offset: 1296)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1159, file: !1160, line: 557, baseType: !306, size: 8, offset: 1304)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1159, file: !1160, line: 558, baseType: !306, size: 8, offset: 1312)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1159, file: !1160, line: 559, baseType: !306, size: 8, offset: 1320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1159, file: !1160, line: 560, baseType: !306, size: 8, offset: 1328)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1159, file: !1160, line: 561, baseType: !306, size: 8, offset: 1336)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1159, file: !1160, line: 562, baseType: !306, size: 8, offset: 1344)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1159, file: !1160, line: 563, baseType: !306, size: 8, offset: 1352)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1159, file: !1160, line: 564, baseType: !306, size: 8, offset: 1360)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1159, file: !1160, line: 565, baseType: !306, size: 8, offset: 1368)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1159, file: !1160, line: 566, baseType: !306, size: 8, offset: 1376)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1159, file: !1160, line: 567, baseType: !306, size: 8, offset: 1384)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1159, file: !1160, line: 568, baseType: !306, size: 8, offset: 1392)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1159, file: !1160, line: 569, baseType: !306, size: 8, offset: 1400)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1159, file: !1160, line: 570, baseType: !306, size: 8, offset: 1408)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1159, file: !1160, line: 571, baseType: !306, size: 8, offset: 1416)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1159, file: !1160, line: 572, baseType: !306, size: 8, offset: 1424)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1159, file: !1160, line: 573, baseType: !306, size: 8, offset: 1432)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1159, file: !1160, line: 574, baseType: !306, size: 8, offset: 1440)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !712, file: !4, line: 3405, baseType: !1326, size: 384)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1327)
!1327 = !{!1328, !1329}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1326, file: !4, line: 3353, baseType: !748, size: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1326, file: !4, line: 3356, baseType: !1330, size: 192, offset: 192)
!1330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1160, line: 578, size: 192, elements: !1331)
!1331 = !{!1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342}
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1330, file: !1160, line: 580, baseType: !234, size: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1330, file: !1160, line: 581, baseType: !234, size: 32, offset: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1330, file: !1160, line: 582, baseType: !234, size: 32, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1330, file: !1160, line: 583, baseType: !234, size: 32, offset: 96)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1330, file: !1160, line: 584, baseType: !233, size: 8, offset: 128)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1330, file: !1160, line: 585, baseType: !233, size: 8, offset: 136)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1330, file: !1160, line: 586, baseType: !233, size: 8, offset: 144)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1330, file: !1160, line: 587, baseType: !233, size: 8, offset: 152)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1330, file: !1160, line: 588, baseType: !233, size: 8, offset: 160)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1330, file: !1160, line: 589, baseType: !233, size: 8, offset: 168)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1330, file: !1160, line: 590, baseType: !233, size: 8, offset: 176)
!1343 = !{!1344}
!1344 = !DILocalVariable(name: "arg", arg: 1, scope: !706, file: !1, line: 30, type: !709)
!1345 = !DILocation(line: 0, scope: !706)
!1346 = !DILocation(line: 32, column: 3, scope: !706)
!1347 = distinct !DISubprogram(name: "objc_is_id", scope: !1, file: !1, line: 36, type: !707, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1348)
!1348 = !{!1349}
!1349 = !DILocalVariable(name: "arg", arg: 1, scope: !1347, file: !1, line: 36, type: !709)
!1350 = !DILocation(line: 0, scope: !1347)
!1351 = !DILocation(line: 38, column: 3, scope: !1347)
!1352 = distinct !DISubprogram(name: "objc_is_object_ptr", scope: !1, file: !1, line: 42, type: !707, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1353)
!1353 = !{!1354}
!1354 = !DILocalVariable(name: "arg", arg: 1, scope: !1352, file: !1, line: 42, type: !709)
!1355 = !DILocation(line: 0, scope: !1352)
!1356 = !DILocation(line: 44, column: 3, scope: !1352)
!1357 = distinct !DISubprogram(name: "objc_lookup_ivar", scope: !1, file: !1, line: 48, type: !1358, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1360)
!1358 = !DISubroutineType(types: !1359)
!1359 = !{!709, !709, !709}
!1360 = !{!1361, !1362}
!1361 = !DILocalVariable(name: "other", arg: 1, scope: !1357, file: !1, line: 48, type: !709)
!1362 = !DILocalVariable(name: "arg", arg: 2, scope: !1357, file: !1, line: 48, type: !709)
!1363 = !DILocation(line: 0, scope: !1357)
!1364 = !DILocation(line: 51, column: 3, scope: !1357)
!1365 = distinct !DISubprogram(name: "objc_check_decl", scope: !1, file: !1, line: 55, type: !1366, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1368)
!1366 = !DISubroutineType(types: !1367)
!1367 = !{null, !709}
!1368 = !{!1369}
!1369 = !DILocalVariable(name: "decl", arg: 1, scope: !1365, file: !1, line: 55, type: !709)
!1370 = !DILocation(line: 0, scope: !1365)
!1371 = !DILocation(line: 57, column: 1, scope: !1365)
!1372 = distinct !DISubprogram(name: "objc_is_reserved_word", scope: !1, file: !1, line: 60, type: !1373, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1375)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{!234, !709}
!1375 = !{!1376}
!1376 = !DILocalVariable(name: "ident", arg: 1, scope: !1372, file: !1, line: 60, type: !709)
!1377 = !DILocation(line: 0, scope: !1372)
!1378 = !DILocation(line: 62, column: 3, scope: !1372)
!1379 = distinct !DISubprogram(name: "objc_compare_types", scope: !1, file: !1, line: 66, type: !1380, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1382)
!1380 = !DISubroutineType(types: !1381)
!1381 = !{!233, !709, !709, !234, !709}
!1382 = !{!1383, !1384, !1385, !1386}
!1383 = !DILocalVariable(name: "ltyp", arg: 1, scope: !1379, file: !1, line: 66, type: !709)
!1384 = !DILocalVariable(name: "rtyp", arg: 2, scope: !1379, file: !1, line: 66, type: !709)
!1385 = !DILocalVariable(name: "argno", arg: 3, scope: !1379, file: !1, line: 67, type: !234)
!1386 = !DILocalVariable(name: "callee", arg: 4, scope: !1379, file: !1, line: 67, type: !709)
!1387 = !DILocation(line: 0, scope: !1379)
!1388 = !DILocation(line: 69, column: 3, scope: !1379)
!1389 = distinct !DISubprogram(name: "objc_volatilize_decl", scope: !1, file: !1, line: 73, type: !1366, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1390)
!1390 = !{!1391}
!1391 = !DILocalVariable(name: "decl", arg: 1, scope: !1389, file: !1, line: 73, type: !709)
!1392 = !DILocation(line: 0, scope: !1389)
!1393 = !DILocation(line: 75, column: 1, scope: !1389)
!1394 = distinct !DISubprogram(name: "objc_type_quals_match", scope: !1, file: !1, line: 78, type: !1395, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1397)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!233, !709, !709}
!1397 = !{!1398, !1399}
!1398 = !DILocalVariable(name: "ltyp", arg: 1, scope: !1394, file: !1, line: 78, type: !709)
!1399 = !DILocalVariable(name: "rtyp", arg: 2, scope: !1394, file: !1, line: 78, type: !709)
!1400 = !DILocation(line: 0, scope: !1394)
!1401 = !DILocation(line: 80, column: 3, scope: !1394)
!1402 = distinct !DISubprogram(name: "objc_rewrite_function_call", scope: !1, file: !1, line: 84, type: !1358, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1403)
!1403 = !{!1404, !1405}
!1404 = !DILocalVariable(name: "function", arg: 1, scope: !1402, file: !1, line: 84, type: !709)
!1405 = !DILocalVariable(name: "first_param", arg: 2, scope: !1402, file: !1, line: 84, type: !709)
!1406 = !DILocation(line: 0, scope: !1402)
!1407 = !DILocation(line: 86, column: 3, scope: !1402)
!1408 = distinct !DISubprogram(name: "objc_message_selector", scope: !1, file: !1, line: 90, type: !1409, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1409 = !DISubroutineType(types: !1410)
!1410 = !{!709}
!1411 = !DILocation(line: 92, column: 3, scope: !1408)
!1412 = distinct !DISubprogram(name: "objc_declare_alias", scope: !1, file: !1, line: 96, type: !1413, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1415)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{null, !709, !709}
!1415 = !{!1416, !1417}
!1416 = !DILocalVariable(name: "alias", arg: 1, scope: !1412, file: !1, line: 96, type: !709)
!1417 = !DILocalVariable(name: "orig", arg: 2, scope: !1412, file: !1, line: 96, type: !709)
!1418 = !DILocation(line: 0, scope: !1412)
!1419 = !DILocation(line: 98, column: 1, scope: !1412)
!1420 = distinct !DISubprogram(name: "objc_declare_class", scope: !1, file: !1, line: 101, type: !1366, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1421)
!1421 = !{!1422}
!1422 = !DILocalVariable(name: "list", arg: 1, scope: !1420, file: !1, line: 101, type: !709)
!1423 = !DILocation(line: 0, scope: !1420)
!1424 = !DILocation(line: 103, column: 1, scope: !1420)
!1425 = distinct !DISubprogram(name: "objc_declare_protocols", scope: !1, file: !1, line: 106, type: !1366, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1426)
!1426 = !{!1427}
!1427 = !DILocalVariable(name: "list", arg: 1, scope: !1425, file: !1, line: 106, type: !709)
!1428 = !DILocation(line: 0, scope: !1425)
!1429 = !DILocation(line: 108, column: 1, scope: !1425)
!1430 = distinct !DISubprogram(name: "objc_start_protocol", scope: !1, file: !1, line: 111, type: !1413, scopeLine: 113, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1431)
!1431 = !{!1432, !1433}
!1432 = !DILocalVariable(name: "proto", arg: 1, scope: !1430, file: !1, line: 111, type: !709)
!1433 = !DILocalVariable(name: "protorefs", arg: 2, scope: !1430, file: !1, line: 112, type: !709)
!1434 = !DILocation(line: 0, scope: !1430)
!1435 = !DILocation(line: 114, column: 1, scope: !1430)
!1436 = distinct !DISubprogram(name: "objc_start_class_interface", scope: !1, file: !1, line: 117, type: !1437, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1439)
!1437 = !DISubroutineType(types: !1438)
!1438 = !{null, !709, !709, !709}
!1439 = !{!1440, !1441, !1442}
!1440 = !DILocalVariable(name: "name", arg: 1, scope: !1436, file: !1, line: 117, type: !709)
!1441 = !DILocalVariable(name: "super", arg: 2, scope: !1436, file: !1, line: 118, type: !709)
!1442 = !DILocalVariable(name: "protos", arg: 3, scope: !1436, file: !1, line: 119, type: !709)
!1443 = !DILocation(line: 0, scope: !1436)
!1444 = !DILocation(line: 121, column: 1, scope: !1436)
!1445 = distinct !DISubprogram(name: "objc_start_category_interface", scope: !1, file: !1, line: 124, type: !1437, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1446)
!1446 = !{!1447, !1448, !1449}
!1447 = !DILocalVariable(name: "name", arg: 1, scope: !1445, file: !1, line: 124, type: !709)
!1448 = !DILocalVariable(name: "categ", arg: 2, scope: !1445, file: !1, line: 125, type: !709)
!1449 = !DILocalVariable(name: "protos", arg: 3, scope: !1445, file: !1, line: 126, type: !709)
!1450 = !DILocation(line: 0, scope: !1445)
!1451 = !DILocation(line: 128, column: 1, scope: !1445)
!1452 = distinct !DISubprogram(name: "objc_continue_interface", scope: !1, file: !1, line: 131, type: !1453, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null}
!1455 = !DILocation(line: 133, column: 1, scope: !1452)
!1456 = distinct !DISubprogram(name: "objc_finish_interface", scope: !1, file: !1, line: 136, type: !1453, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1457 = !DILocation(line: 138, column: 1, scope: !1456)
!1458 = distinct !DISubprogram(name: "objc_add_instance_variable", scope: !1, file: !1, line: 141, type: !1366, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1459)
!1459 = !{!1460}
!1460 = !DILocalVariable(name: "decl", arg: 1, scope: !1458, file: !1, line: 141, type: !709)
!1461 = !DILocation(line: 0, scope: !1458)
!1462 = !DILocation(line: 143, column: 1, scope: !1458)
!1463 = distinct !DISubprogram(name: "objc_set_visibility", scope: !1, file: !1, line: 146, type: !1464, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1466)
!1464 = !DISubroutineType(types: !1465)
!1465 = !{null, !234}
!1466 = !{!1467}
!1467 = !DILocalVariable(name: "vis", arg: 1, scope: !1463, file: !1, line: 146, type: !234)
!1468 = !DILocation(line: 0, scope: !1463)
!1469 = !DILocation(line: 148, column: 1, scope: !1463)
!1470 = distinct !DISubprogram(name: "objc_set_method_type", scope: !1, file: !1, line: 151, type: !1471, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1473)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{null, !37}
!1473 = !{!1474}
!1474 = !DILocalVariable(name: "code", arg: 1, scope: !1470, file: !1, line: 151, type: !37)
!1475 = !DILocation(line: 0, scope: !1470)
!1476 = !DILocation(line: 153, column: 1, scope: !1470)
!1477 = distinct !DISubprogram(name: "objc_start_class_implementation", scope: !1, file: !1, line: 156, type: !1413, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1478)
!1478 = !{!1479, !1480}
!1479 = !DILocalVariable(name: "name", arg: 1, scope: !1477, file: !1, line: 156, type: !709)
!1480 = !DILocalVariable(name: "super", arg: 2, scope: !1477, file: !1, line: 157, type: !709)
!1481 = !DILocation(line: 0, scope: !1477)
!1482 = !DILocation(line: 159, column: 1, scope: !1477)
!1483 = distinct !DISubprogram(name: "objc_start_category_implementation", scope: !1, file: !1, line: 162, type: !1413, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1484)
!1484 = !{!1485, !1486}
!1485 = !DILocalVariable(name: "name", arg: 1, scope: !1483, file: !1, line: 162, type: !709)
!1486 = !DILocalVariable(name: "categ", arg: 2, scope: !1483, file: !1, line: 163, type: !709)
!1487 = !DILocation(line: 0, scope: !1483)
!1488 = !DILocation(line: 165, column: 1, scope: !1483)
!1489 = distinct !DISubprogram(name: "objc_continue_implementation", scope: !1, file: !1, line: 168, type: !1453, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1490 = !DILocation(line: 170, column: 1, scope: !1489)
!1491 = distinct !DISubprogram(name: "objc_clear_super_receiver", scope: !1, file: !1, line: 173, type: !1453, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1492 = !DILocation(line: 175, column: 1, scope: !1491)
!1493 = distinct !DISubprogram(name: "objc_finish_implementation", scope: !1, file: !1, line: 178, type: !1453, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1494 = !DILocation(line: 180, column: 1, scope: !1493)
!1495 = distinct !DISubprogram(name: "objc_add_method_declaration", scope: !1, file: !1, line: 183, type: !1366, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1496)
!1496 = !{!1497}
!1497 = !DILocalVariable(name: "signature", arg: 1, scope: !1495, file: !1, line: 183, type: !709)
!1498 = !DILocation(line: 0, scope: !1495)
!1499 = !DILocation(line: 185, column: 1, scope: !1495)
!1500 = distinct !DISubprogram(name: "objc_start_method_definition", scope: !1, file: !1, line: 188, type: !1366, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1501)
!1501 = !{!1502}
!1502 = !DILocalVariable(name: "signature", arg: 1, scope: !1500, file: !1, line: 188, type: !709)
!1503 = !DILocation(line: 0, scope: !1500)
!1504 = !DILocation(line: 190, column: 1, scope: !1500)
!1505 = distinct !DISubprogram(name: "objc_finish_method_definition", scope: !1, file: !1, line: 193, type: !1366, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1506)
!1506 = !{!1507}
!1507 = !DILocalVariable(name: "fndecl", arg: 1, scope: !1505, file: !1, line: 193, type: !709)
!1508 = !DILocation(line: 0, scope: !1505)
!1509 = !DILocation(line: 195, column: 1, scope: !1505)
!1510 = distinct !DISubprogram(name: "objc_build_keyword_decl", scope: !1, file: !1, line: 198, type: !1511, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1513)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!709, !709, !709, !709}
!1513 = !{!1514, !1515, !1516}
!1514 = !DILocalVariable(name: "selector", arg: 1, scope: !1510, file: !1, line: 198, type: !709)
!1515 = !DILocalVariable(name: "type", arg: 2, scope: !1510, file: !1, line: 199, type: !709)
!1516 = !DILocalVariable(name: "identifier", arg: 3, scope: !1510, file: !1, line: 200, type: !709)
!1517 = !DILocation(line: 0, scope: !1510)
!1518 = !DILocation(line: 202, column: 3, scope: !1510)
!1519 = distinct !DISubprogram(name: "objc_build_method_signature", scope: !1, file: !1, line: 206, type: !1520, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1522)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!709, !709, !709, !709, !233}
!1522 = !{!1523, !1524, !1525, !1526}
!1523 = !DILocalVariable(name: "rettype", arg: 1, scope: !1519, file: !1, line: 206, type: !709)
!1524 = !DILocalVariable(name: "selectors", arg: 2, scope: !1519, file: !1, line: 207, type: !709)
!1525 = !DILocalVariable(name: "optparms", arg: 3, scope: !1519, file: !1, line: 208, type: !709)
!1526 = !DILocalVariable(name: "ellipsis", arg: 4, scope: !1519, file: !1, line: 209, type: !233)
!1527 = !DILocation(line: 0, scope: !1519)
!1528 = !DILocation(line: 211, column: 3, scope: !1519)
!1529 = distinct !DISubprogram(name: "objc_build_encode_expr", scope: !1, file: !1, line: 215, type: !707, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1530)
!1530 = !{!1531}
!1531 = !DILocalVariable(name: "expr", arg: 1, scope: !1529, file: !1, line: 215, type: !709)
!1532 = !DILocation(line: 0, scope: !1529)
!1533 = !DILocation(line: 217, column: 3, scope: !1529)
!1534 = distinct !DISubprogram(name: "objc_build_protocol_expr", scope: !1, file: !1, line: 221, type: !707, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1535)
!1535 = !{!1536}
!1536 = !DILocalVariable(name: "expr", arg: 1, scope: !1534, file: !1, line: 221, type: !709)
!1537 = !DILocation(line: 0, scope: !1534)
!1538 = !DILocation(line: 223, column: 3, scope: !1534)
!1539 = distinct !DISubprogram(name: "objc_build_selector_expr", scope: !1, file: !1, line: 227, type: !1540, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1542)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!709, !813, !709}
!1542 = !{!1543, !1544}
!1543 = !DILocalVariable(name: "loc", arg: 1, scope: !1539, file: !1, line: 227, type: !813)
!1544 = !DILocalVariable(name: "expr", arg: 2, scope: !1539, file: !1, line: 227, type: !709)
!1545 = !DILocation(line: 0, scope: !1539)
!1546 = !DILocation(line: 229, column: 3, scope: !1539)
!1547 = distinct !DISubprogram(name: "objc_build_message_expr", scope: !1, file: !1, line: 233, type: !707, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1548)
!1548 = !{!1549}
!1549 = !DILocalVariable(name: "expr", arg: 1, scope: !1547, file: !1, line: 233, type: !709)
!1550 = !DILocation(line: 0, scope: !1547)
!1551 = !DILocation(line: 235, column: 3, scope: !1547)
!1552 = distinct !DISubprogram(name: "objc_build_string_object", scope: !1, file: !1, line: 239, type: !707, scopeLine: 240, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1553)
!1553 = !{!1554}
!1554 = !DILocalVariable(name: "str", arg: 1, scope: !1552, file: !1, line: 239, type: !709)
!1555 = !DILocation(line: 0, scope: !1552)
!1556 = !DILocation(line: 241, column: 3, scope: !1552)
!1557 = distinct !DISubprogram(name: "objc_get_class_reference", scope: !1, file: !1, line: 245, type: !707, scopeLine: 246, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1558)
!1558 = !{!1559}
!1559 = !DILocalVariable(name: "name", arg: 1, scope: !1557, file: !1, line: 245, type: !709)
!1560 = !DILocation(line: 0, scope: !1557)
!1561 = !DILocation(line: 247, column: 3, scope: !1557)
!1562 = distinct !DISubprogram(name: "objc_get_protocol_qualified_type", scope: !1, file: !1, line: 251, type: !1358, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1563)
!1563 = !{!1564, !1565}
!1564 = !DILocalVariable(name: "name", arg: 1, scope: !1562, file: !1, line: 251, type: !709)
!1565 = !DILocalVariable(name: "protos", arg: 2, scope: !1562, file: !1, line: 252, type: !709)
!1566 = !DILocation(line: 0, scope: !1562)
!1567 = !DILocation(line: 254, column: 3, scope: !1562)
!1568 = distinct !DISubprogram(name: "objc_static_init_needed_p", scope: !1, file: !1, line: 258, type: !265, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1569 = !DILocation(line: 260, column: 3, scope: !1568)
!1570 = distinct !DISubprogram(name: "objc_generate_static_init_call", scope: !1, file: !1, line: 264, type: !707, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1571)
!1571 = !{!1572}
!1572 = !DILocalVariable(name: "ctors", arg: 1, scope: !1570, file: !1, line: 264, type: !709)
!1573 = !DILocation(line: 0, scope: !1570)
!1574 = !DILocation(line: 266, column: 3, scope: !1570)
!1575 = distinct !DISubprogram(name: "objc_is_public", scope: !1, file: !1, line: 270, type: !1576, scopeLine: 271, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1578)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!234, !709, !709}
!1578 = !{!1579, !1580}
!1579 = !DILocalVariable(name: "expr", arg: 1, scope: !1575, file: !1, line: 270, type: !709)
!1580 = !DILocalVariable(name: "identifier", arg: 2, scope: !1575, file: !1, line: 270, type: !709)
!1581 = !DILocation(line: 0, scope: !1575)
!1582 = !DILocation(line: 272, column: 3, scope: !1575)
!1583 = distinct !DISubprogram(name: "objc_get_class_ivars", scope: !1, file: !1, line: 276, type: !707, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1584)
!1584 = !{!1585}
!1585 = !DILocalVariable(name: "name", arg: 1, scope: !1583, file: !1, line: 276, type: !709)
!1586 = !DILocation(line: 0, scope: !1583)
!1587 = !DILocation(line: 278, column: 3, scope: !1583)
!1588 = distinct !DISubprogram(name: "objc_build_throw_stmt", scope: !1, file: !1, line: 282, type: !1540, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1589)
!1589 = !{!1590, !1591}
!1590 = !DILocalVariable(name: "loc", arg: 1, scope: !1588, file: !1, line: 282, type: !813)
!1591 = !DILocalVariable(name: "expr", arg: 2, scope: !1588, file: !1, line: 282, type: !709)
!1592 = !DILocation(line: 0, scope: !1588)
!1593 = !DILocation(line: 284, column: 3, scope: !1588)
!1594 = distinct !DISubprogram(name: "objc_build_synchronized", scope: !1, file: !1, line: 288, type: !1595, scopeLine: 290, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1597)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!709, !813, !709, !709}
!1597 = !{!1598, !1599, !1600}
!1598 = !DILocalVariable(name: "start_locus", arg: 1, scope: !1594, file: !1, line: 288, type: !813)
!1599 = !DILocalVariable(name: "mutex", arg: 2, scope: !1594, file: !1, line: 289, type: !709)
!1600 = !DILocalVariable(name: "body", arg: 3, scope: !1594, file: !1, line: 289, type: !709)
!1601 = !DILocation(line: 0, scope: !1594)
!1602 = !DILocation(line: 291, column: 3, scope: !1594)
!1603 = distinct !DISubprogram(name: "objc_begin_try_stmt", scope: !1, file: !1, line: 295, type: !1604, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1606)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !813, !709}
!1606 = !{!1607, !1608}
!1607 = !DILocalVariable(name: "try_locus", arg: 1, scope: !1603, file: !1, line: 295, type: !813)
!1608 = !DILocalVariable(name: "body", arg: 2, scope: !1603, file: !1, line: 295, type: !709)
!1609 = !DILocation(line: 0, scope: !1603)
!1610 = !DILocation(line: 297, column: 1, scope: !1603)
!1611 = distinct !DISubprogram(name: "objc_begin_catch_clause", scope: !1, file: !1, line: 300, type: !1366, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1612)
!1612 = !{!1613}
!1613 = !DILocalVariable(name: "decl", arg: 1, scope: !1611, file: !1, line: 300, type: !709)
!1614 = !DILocation(line: 0, scope: !1611)
!1615 = !DILocation(line: 302, column: 1, scope: !1611)
!1616 = distinct !DISubprogram(name: "objc_finish_catch_clause", scope: !1, file: !1, line: 305, type: !1453, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1617 = !DILocation(line: 307, column: 1, scope: !1616)
!1618 = distinct !DISubprogram(name: "objc_build_finally_clause", scope: !1, file: !1, line: 310, type: !1604, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1619)
!1619 = !{!1620, !1621}
!1620 = !DILocalVariable(name: "finally_locus", arg: 1, scope: !1618, file: !1, line: 310, type: !813)
!1621 = !DILocalVariable(name: "body", arg: 2, scope: !1618, file: !1, line: 311, type: !709)
!1622 = !DILocation(line: 0, scope: !1618)
!1623 = !DILocation(line: 313, column: 1, scope: !1618)
!1624 = distinct !DISubprogram(name: "objc_finish_try_stmt", scope: !1, file: !1, line: 316, type: !1409, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !267)
!1625 = !DILocation(line: 318, column: 3, scope: !1624)
!1626 = distinct !DISubprogram(name: "objc_generate_write_barrier", scope: !1, file: !1, line: 322, type: !1627, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1629)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!709, !709, !37, !709}
!1629 = !{!1630, !1631, !1632}
!1630 = !DILocalVariable(name: "lhs", arg: 1, scope: !1626, file: !1, line: 322, type: !709)
!1631 = !DILocalVariable(name: "modifycode", arg: 2, scope: !1626, file: !1, line: 323, type: !37)
!1632 = !DILocalVariable(name: "rhs", arg: 3, scope: !1626, file: !1, line: 324, type: !709)
!1633 = !DILocation(line: 0, scope: !1626)
!1634 = !DILocation(line: 326, column: 3, scope: !1626)
