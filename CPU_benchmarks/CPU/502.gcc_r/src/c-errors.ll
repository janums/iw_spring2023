; ModuleID = 'c-errors.bc'
source_filename = "c-errors.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.diagnostic_context = type { %struct.pretty_print_info*, [12 x i32], i8, i8, [870 x i32], i8, i8, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (%struct.diagnostic_context*, %struct.diagnostic_info*)*, void (i8*, [1 x %struct.__va_list_tag]*)*, %union.tree_node*, %struct.line_map*, i32, i8 }
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.diagnostic_info = type { %struct.text_info, i32, i32, %union.tree_node*, i32, i32 }
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
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@flag_isoc99 = external dso_local local_unnamed_addr global i32, align 4
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !261 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !274, metadata !DIExpression()), !dbg !276
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !275, metadata !DIExpression()), !dbg !276
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !277
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !278
  ret i32 %call, !dbg !279
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !280 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !284
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !285
  ret i32 %call, !dbg !286
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !287 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !350, metadata !DIExpression()), !dbg !351
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !352
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !352
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !352
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !352
  %cmp = icmp uge i8* %0, %1, !dbg !352
  %conv1 = zext i1 %cmp to i64, !dbg !352
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !352
  %tobool = icmp eq i64 %expval, 0, !dbg !352
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !352

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !352
  br label %cond.end, !dbg !352

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !352
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !352
  %2 = load i8, i8* %0, align 1, !dbg !352
  %conv3 = zext i8 %2 to i32, !dbg !352
  br label %cond.end, !dbg !352

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !352
  ret i32 %cond, !dbg !353
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !354 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !356, metadata !DIExpression()), !dbg !357
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !358
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !358
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !358
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !358
  %cmp = icmp uge i8* %0, %1, !dbg !358
  %conv1 = zext i1 %cmp to i64, !dbg !358
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !358
  %tobool = icmp eq i64 %expval, 0, !dbg !358
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !358

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !358
  br label %cond.end, !dbg !358

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !358
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !358
  %2 = load i8, i8* %0, align 1, !dbg !358
  %conv3 = zext i8 %2 to i32, !dbg !358
  br label %cond.end, !dbg !358

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !358
  ret i32 %cond, !dbg !359
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !360 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !361
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !361
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !361
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !361
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !361
  %cmp = icmp uge i8* %1, %2, !dbg !361
  %conv1 = zext i1 %cmp to i64, !dbg !361
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !361
  %tobool = icmp eq i64 %expval, 0, !dbg !361
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !361

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !361
  br label %cond.end, !dbg !361

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !361
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !361
  %3 = load i8, i8* %1, align 1, !dbg !361
  %conv3 = zext i8 %3 to i32, !dbg !361
  br label %cond.end, !dbg !361

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !361
  ret i32 %cond, !dbg !362
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !363 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !367, metadata !DIExpression()), !dbg !368
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !369
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !370
  ret i32 %call, !dbg !371
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !372 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !376, metadata !DIExpression()), !dbg !378
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !377, metadata !DIExpression()), !dbg !378
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !379
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !379
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !379
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !379
  %cmp = icmp uge i8* %0, %1, !dbg !379
  %conv1 = zext i1 %cmp to i64, !dbg !379
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !379
  %tobool = icmp eq i64 %expval, 0, !dbg !379
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !379

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !379
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !379
  br label %cond.end, !dbg !379

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !379
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !379
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !379
  store i8 %conv2, i8* %0, align 1, !dbg !379
  %conv6 = and i32 %__c, 255, !dbg !379
  br label %cond.end, !dbg !379

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !379
  ret i32 %cond, !dbg !380
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !381 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !383, metadata !DIExpression()), !dbg !385
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !384, metadata !DIExpression()), !dbg !385
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !386
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !386
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !386
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !386
  %cmp = icmp uge i8* %0, %1, !dbg !386
  %conv1 = zext i1 %cmp to i64, !dbg !386
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !386
  %tobool = icmp eq i64 %expval, 0, !dbg !386
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !386

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !386
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !386
  br label %cond.end, !dbg !386

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !386
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !386
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !386
  store i8 %conv2, i8* %0, align 1, !dbg !386
  %conv6 = and i32 %__c, 255, !dbg !386
  br label %cond.end, !dbg !386

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !386
  ret i32 %cond, !dbg !387
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !388 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !390, metadata !DIExpression()), !dbg !391
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !392
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !392
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !392
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !392
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !392
  %cmp = icmp uge i8* %1, %2, !dbg !392
  %conv1 = zext i1 %cmp to i64, !dbg !392
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !392
  %tobool = icmp eq i64 %expval, 0, !dbg !392
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !392

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !392
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !392
  br label %cond.end, !dbg !392

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !392
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !392
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !392
  store i8 %conv4, i8* %1, align 1, !dbg !392
  %conv6 = and i32 %__c, 255, !dbg !392
  br label %cond.end, !dbg !392

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !392
  ret i32 %cond, !dbg !393
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !394 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !400, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata i64* %__n, metadata !401, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !402, metadata !DIExpression()), !dbg !403
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !404
  ret i64 %call, !dbg !405
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !406 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !408, metadata !DIExpression()), !dbg !409
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !410
  %0 = load i32, i32* %_flags, align 8, !dbg !410
  %and = lshr i32 %0, 4, !dbg !410
  %and.lobit = and i32 %and, 1, !dbg !410
  ret i32 %and.lobit, !dbg !411
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !412 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !414, metadata !DIExpression()), !dbg !415
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !416
  %0 = load i32, i32* %_flags, align 8, !dbg !416
  %and = lshr i32 %0, 5, !dbg !416
  %and.lobit = and i32 %and, 1, !dbg !416
  ret i32 %and.lobit, !dbg !417
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !418 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !421, metadata !DIExpression()), !dbg !422
  %__c.off = add i32 %__c, 128, !dbg !423
  %0 = icmp ult i32 %__c.off, 384, !dbg !423
  br i1 %0, label %cond.true, label %cond.end, !dbg !423

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !424
  %1 = load i32*, i32** %call, align 8, !dbg !425
  %idxprom = sext i32 %__c to i64, !dbg !426
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !426
  %2 = load i32, i32* %arrayidx, align 4, !dbg !426
  br label %cond.end, !dbg !427

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !427
  ret i32 %cond, !dbg !428
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !429 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !431, metadata !DIExpression()), !dbg !432
  %__c.off = add i32 %__c, 128, !dbg !433
  %0 = icmp ult i32 %__c.off, 384, !dbg !433
  br i1 %0, label %cond.true, label %cond.end, !dbg !433

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !434
  %1 = load i32*, i32** %call, align 8, !dbg !435
  %idxprom = sext i32 %__c to i64, !dbg !436
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !436
  %2 = load i32, i32* %arrayidx, align 4, !dbg !436
  br label %cond.end, !dbg !437

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !437
  ret i32 %cond, !dbg !438
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !439 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !444, metadata !DIExpression()), !dbg !445
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !446
  %conv = trunc i64 %call to i32, !dbg !447
  ret i32 %conv, !dbg !448
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !449 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !453, metadata !DIExpression()), !dbg !454
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !455
  ret i64 %call, !dbg !456
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !457 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !462, metadata !DIExpression()), !dbg !463
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !464
  ret i64 %call, !dbg !465
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !466 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !477, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i8* %__base, metadata !478, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !479, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %__size, metadata !480, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !481, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 0, metadata !482, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !483, metadata !DIExpression()), !dbg !487
  br label %while.cond, !dbg !488

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !489
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !487
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !483, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !482, metadata !DIExpression()), !dbg !487
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !490
  br i1 %cmp, label %while.body, label %cleanup, !dbg !488

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !491
  %div = lshr i64 %add, 1, !dbg !493
  call void @llvm.dbg.value(metadata i64 %div, metadata !484, metadata !DIExpression()), !dbg !487
  %mul = mul i64 %div, %__size, !dbg !494
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !495
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !485, metadata !DIExpression()), !dbg !487
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !496
  call void @llvm.dbg.value(metadata i32 %call, metadata !486, metadata !DIExpression()), !dbg !487
  %cmp1 = icmp slt i32 %call, 0, !dbg !497
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !499

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !500
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !502

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !503
  call void @llvm.dbg.value(metadata i64 %add4, metadata !482, metadata !DIExpression()), !dbg !487
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !487
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !487
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !483, metadata !DIExpression()), !dbg !487
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !482, metadata !DIExpression()), !dbg !487
  br label %while.cond, !dbg !488, !llvm.loop !504

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !487
  ret i8* %retval.0, !dbg !506
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !507 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !513, metadata !DIExpression()), !dbg !514
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !515
  ret double %call, !dbg !516
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !517 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !526, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !527, metadata !DIExpression()), !dbg !529
  call void @llvm.dbg.value(metadata i32 %base, metadata !528, metadata !DIExpression()), !dbg !529
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !530
  ret i64 %call, !dbg !531
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !532 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !539, metadata !DIExpression()), !dbg !541
  call void @llvm.dbg.value(metadata i32 %base, metadata !540, metadata !DIExpression()), !dbg !541
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !542
  ret i64 %call, !dbg !543
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !544 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !555, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !556, metadata !DIExpression()), !dbg !558
  call void @llvm.dbg.value(metadata i32 %base, metadata !557, metadata !DIExpression()), !dbg !558
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !559
  ret i64 %call, !dbg !560
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !561 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !565, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !566, metadata !DIExpression()), !dbg !568
  call void @llvm.dbg.value(metadata i32 %base, metadata !567, metadata !DIExpression()), !dbg !568
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !569
  ret i64 %call, !dbg !570
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !571 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !613, metadata !DIExpression()), !dbg !615
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !614, metadata !DIExpression()), !dbg !615
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !616
  ret i32 %call, !dbg !617
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !618 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !620, metadata !DIExpression()), !dbg !622
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !621, metadata !DIExpression()), !dbg !622
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !623
  ret i32 %call, !dbg !624
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !625 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !629, metadata !DIExpression()), !dbg !631
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !630, metadata !DIExpression()), !dbg !631
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #7, !dbg !632
  ret i32 %call, !dbg !633
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !634 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !638, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !639, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !640, metadata !DIExpression()), !dbg !642
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !641, metadata !DIExpression()), !dbg !642
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #7, !dbg !643
  ret i32 %call, !dbg !644
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !645 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !649, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !650, metadata !DIExpression()), !dbg !652
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !651, metadata !DIExpression()), !dbg !652
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !651, metadata !DIExpression(DW_OP_deref)), !dbg !652
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !653
  ret i32 %call, !dbg !654
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !655 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !659, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i8* %__path, metadata !660, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !661, metadata !DIExpression()), !dbg !663
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !662, metadata !DIExpression()), !dbg !663
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !662, metadata !DIExpression(DW_OP_deref)), !dbg !663
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !664
  ret i32 %call, !dbg !665
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !666 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !690, metadata !DIExpression()), !dbg !692
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !691, metadata !DIExpression()), !dbg !692
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !693
  ret i32 %call, !dbg !694
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !695 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !697, metadata !DIExpression()), !dbg !699
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !698, metadata !DIExpression()), !dbg !699
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !700
  ret i32 %call, !dbg !701
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !702 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !706, metadata !DIExpression()), !dbg !708
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !707, metadata !DIExpression()), !dbg !708
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #7, !dbg !709
  ret i32 %call, !dbg !710
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !711 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !715, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !716, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !717, metadata !DIExpression()), !dbg !719
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !718, metadata !DIExpression()), !dbg !719
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #7, !dbg !720
  ret i32 %call, !dbg !721
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pedwarn_c99(i32 %location, i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !722 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !730, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i32 %opt, metadata !731, metadata !DIExpression()), !dbg !1392
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !732, metadata !DIExpression()), !dbg !1392
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !1393
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1393
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1394
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1394
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1391, metadata !DIExpression()), !dbg !1395
  call void @llvm.va_start(i8* %1), !dbg !1396
  %2 = load i32, i32* @flag_isoc99, align 4, !dbg !1397
  %tobool = icmp eq i32 %2, 0, !dbg !1397
  %cond = select i1 %tobool, i32 6, i32 10, !dbg !1397
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 %cond) #7, !dbg !1398
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !1399
  store i32 %opt, i32* %option_index, align 4, !dbg !1400
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !1401
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !733, metadata !DIExpression(DW_OP_deref)), !dbg !1392
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #7, !dbg !1401
  call void @llvm.va_end(i8* nonnull %1), !dbg !1402
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1403
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1403
  ret void, !dbg !1403
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare dso_local void @diagnostic_set_info(%struct.diagnostic_info*, i8*, [1 x %struct.__va_list_tag]*, i32, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context*, %struct.diagnostic_info*) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local void @pedwarn_c90(i32 %location, i32 %opt, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !1404 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata i32 %location, metadata !1406, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i32 %opt, metadata !1407, metadata !DIExpression()), !dbg !1411
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !1408, metadata !DIExpression()), !dbg !1411
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !1412
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1412
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !1413
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1413
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !1410, metadata !DIExpression()), !dbg !1414
  call void @llvm.va_start(i8* %1), !dbg !1415
  %2 = load i32, i32* @flag_isoc99, align 4, !dbg !1416
  %tobool = icmp eq i32 %2, 0, !dbg !1416
  %cond = select i1 %tobool, i32 10, i32 6, !dbg !1416
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1409, metadata !DIExpression(DW_OP_deref)), !dbg !1411
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 %location, i32 %cond) #7, !dbg !1417
  %option_index = getelementptr inbounds %struct.diagnostic_info, %struct.diagnostic_info* %diagnostic, i64 0, i32 5, !dbg !1418
  store i32 %opt, i32* %option_index, align 4, !dbg !1419
  %3 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !1420
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !1409, metadata !DIExpression(DW_OP_deref)), !dbg !1411
  %call = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %3, %struct.diagnostic_info* nonnull %diagnostic) #7, !dbg !1420
  call void @llvm.va_end(i8* nonnull %1), !dbg !1421
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !1422
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !1422
  ret void, !dbg !1422
}

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!257, !258, !259}
!llvm.ident = !{!260}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !247, nameTableKind: None)
!1 = !DIFile(filename: "c-errors.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !23, !30, !37, !231}
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
!231 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !232, line: 29, baseType: !5, size: 32, elements: !233)
!232 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!233 = !{!234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246}
!234 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!235 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!236 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!237 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!238 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!239 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!240 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!241 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!242 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!243 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!244 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!245 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!246 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!247 = !{!248, !249, !250, !251, !254, !255}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!250 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!257 = !{i32 2, !"Dwarf Version", i32 4}
!258 = !{i32 2, !"Debug Info Version", i32 3}
!259 = !{i32 1, !"wchar_size", i32 4}
!260 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!261 = distinct !DISubprogram(name: "vprintf", scope: !262, file: !262, line: 39, type: !263, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !273)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!263 = !DISubroutineType(types: !264)
!264 = !{!250, !265, !266}
!265 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !255)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !268)
!268 = !{!269, !270, !271, !272}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !267, file: !1, baseType: !5, size: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !267, file: !1, baseType: !5, size: 32, offset: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !267, file: !1, baseType: !254, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !267, file: !1, baseType: !254, size: 64, offset: 128)
!273 = !{!274, !275}
!274 = !DILocalVariable(name: "__fmt", arg: 1, scope: !261, file: !262, line: 39, type: !265)
!275 = !DILocalVariable(name: "__arg", arg: 2, scope: !261, file: !262, line: 39, type: !266)
!276 = !DILocation(line: 0, scope: !261)
!277 = !DILocation(line: 41, column: 20, scope: !261)
!278 = !DILocation(line: 41, column: 10, scope: !261)
!279 = !DILocation(line: 41, column: 3, scope: !261)
!280 = distinct !DISubprogram(name: "getchar", scope: !262, file: !262, line: 47, type: !281, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!250}
!283 = !{}
!284 = !DILocation(line: 49, column: 16, scope: !280)
!285 = !DILocation(line: 49, column: 10, scope: !280)
!286 = !DILocation(line: 49, column: 3, scope: !280)
!287 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !262, file: !262, line: 56, type: !288, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !349)
!288 = !DISubroutineType(types: !289)
!289 = !{!250, !290}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !292, line: 7, baseType: !293)
!292 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !294, line: 49, size: 1728, elements: !295)
!294 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!295 = !{!296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !311, !313, !314, !315, !319, !321, !323, !327, !330, !332, !335, !338, !339, !340, !344, !345}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !293, file: !294, line: 51, baseType: !250, size: 32)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !293, file: !294, line: 54, baseType: !252, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !293, file: !294, line: 55, baseType: !252, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !293, file: !294, line: 56, baseType: !252, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !293, file: !294, line: 57, baseType: !252, size: 64, offset: 256)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !293, file: !294, line: 58, baseType: !252, size: 64, offset: 320)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !293, file: !294, line: 59, baseType: !252, size: 64, offset: 384)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !293, file: !294, line: 60, baseType: !252, size: 64, offset: 448)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !293, file: !294, line: 61, baseType: !252, size: 64, offset: 512)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !293, file: !294, line: 64, baseType: !252, size: 64, offset: 576)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !293, file: !294, line: 65, baseType: !252, size: 64, offset: 640)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !293, file: !294, line: 66, baseType: !252, size: 64, offset: 704)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !293, file: !294, line: 68, baseType: !309, size: 64, offset: 768)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !294, line: 36, flags: DIFlagFwdDecl)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !293, file: !294, line: 70, baseType: !312, size: 64, offset: 832)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !293, file: !294, line: 72, baseType: !250, size: 32, offset: 896)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !293, file: !294, line: 73, baseType: !250, size: 32, offset: 928)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !293, file: !294, line: 74, baseType: !316, size: 64, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !317, line: 152, baseType: !318)
!317 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!318 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !293, file: !294, line: 77, baseType: !320, size: 16, offset: 1024)
!320 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !293, file: !294, line: 78, baseType: !322, size: 8, offset: 1040)
!322 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !293, file: !294, line: 79, baseType: !324, size: 8, offset: 1048)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 8, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 1)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !293, file: !294, line: 81, baseType: !328, size: 64, offset: 1088)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !294, line: 43, baseType: null)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !293, file: !294, line: 89, baseType: !331, size: 64, offset: 1152)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !317, line: 153, baseType: !318)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !293, file: !294, line: 91, baseType: !333, size: 64, offset: 1216)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !294, line: 37, flags: DIFlagFwdDecl)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !293, file: !294, line: 92, baseType: !336, size: 64, offset: 1280)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !294, line: 38, flags: DIFlagFwdDecl)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !293, file: !294, line: 93, baseType: !312, size: 64, offset: 1344)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !293, file: !294, line: 94, baseType: !254, size: 64, offset: 1408)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !293, file: !294, line: 95, baseType: !341, size: 64, offset: 1472)
!341 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !342, line: 46, baseType: !343)
!342 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!343 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !293, file: !294, line: 96, baseType: !250, size: 32, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !293, file: !294, line: 98, baseType: !346, size: 160, offset: 1568)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 160, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 20)
!349 = !{!350}
!350 = !DILocalVariable(name: "__fp", arg: 1, scope: !287, file: !262, line: 56, type: !290)
!351 = !DILocation(line: 0, scope: !287)
!352 = !DILocation(line: 58, column: 10, scope: !287)
!353 = !DILocation(line: 58, column: 3, scope: !287)
!354 = distinct !DISubprogram(name: "getc_unlocked", scope: !262, file: !262, line: 66, type: !288, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !355)
!355 = !{!356}
!356 = !DILocalVariable(name: "__fp", arg: 1, scope: !354, file: !262, line: 66, type: !290)
!357 = !DILocation(line: 0, scope: !354)
!358 = !DILocation(line: 68, column: 10, scope: !354)
!359 = !DILocation(line: 68, column: 3, scope: !354)
!360 = distinct !DISubprogram(name: "getchar_unlocked", scope: !262, file: !262, line: 73, type: !281, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !283)
!361 = !DILocation(line: 75, column: 10, scope: !360)
!362 = !DILocation(line: 75, column: 3, scope: !360)
!363 = distinct !DISubprogram(name: "putchar", scope: !262, file: !262, line: 82, type: !364, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !366)
!364 = !DISubroutineType(types: !365)
!365 = !{!250, !250}
!366 = !{!367}
!367 = !DILocalVariable(name: "__c", arg: 1, scope: !363, file: !262, line: 82, type: !250)
!368 = !DILocation(line: 0, scope: !363)
!369 = !DILocation(line: 84, column: 21, scope: !363)
!370 = !DILocation(line: 84, column: 10, scope: !363)
!371 = !DILocation(line: 84, column: 3, scope: !363)
!372 = distinct !DISubprogram(name: "fputc_unlocked", scope: !262, file: !262, line: 91, type: !373, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !375)
!373 = !DISubroutineType(types: !374)
!374 = !{!250, !250, !290}
!375 = !{!376, !377}
!376 = !DILocalVariable(name: "__c", arg: 1, scope: !372, file: !262, line: 91, type: !250)
!377 = !DILocalVariable(name: "__stream", arg: 2, scope: !372, file: !262, line: 91, type: !290)
!378 = !DILocation(line: 0, scope: !372)
!379 = !DILocation(line: 93, column: 10, scope: !372)
!380 = !DILocation(line: 93, column: 3, scope: !372)
!381 = distinct !DISubprogram(name: "putc_unlocked", scope: !262, file: !262, line: 101, type: !373, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !382)
!382 = !{!383, !384}
!383 = !DILocalVariable(name: "__c", arg: 1, scope: !381, file: !262, line: 101, type: !250)
!384 = !DILocalVariable(name: "__stream", arg: 2, scope: !381, file: !262, line: 101, type: !290)
!385 = !DILocation(line: 0, scope: !381)
!386 = !DILocation(line: 103, column: 10, scope: !381)
!387 = !DILocation(line: 103, column: 3, scope: !381)
!388 = distinct !DISubprogram(name: "putchar_unlocked", scope: !262, file: !262, line: 108, type: !364, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !389)
!389 = !{!390}
!390 = !DILocalVariable(name: "__c", arg: 1, scope: !388, file: !262, line: 108, type: !250)
!391 = !DILocation(line: 0, scope: !388)
!392 = !DILocation(line: 110, column: 10, scope: !388)
!393 = !DILocation(line: 110, column: 3, scope: !388)
!394 = distinct !DISubprogram(name: "getline", scope: !262, file: !262, line: 118, type: !395, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!395 = !DISubroutineType(types: !396)
!396 = !{!397, !251, !398, !290}
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !317, line: 193, baseType: !318)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!399 = !{!400, !401, !402}
!400 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !394, file: !262, line: 118, type: !251)
!401 = !DILocalVariable(name: "__n", arg: 2, scope: !394, file: !262, line: 118, type: !398)
!402 = !DILocalVariable(name: "__stream", arg: 3, scope: !394, file: !262, line: 118, type: !290)
!403 = !DILocation(line: 0, scope: !394)
!404 = !DILocation(line: 120, column: 10, scope: !394)
!405 = !DILocation(line: 120, column: 3, scope: !394)
!406 = distinct !DISubprogram(name: "feof_unlocked", scope: !262, file: !262, line: 128, type: !288, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !407)
!407 = !{!408}
!408 = !DILocalVariable(name: "__stream", arg: 1, scope: !406, file: !262, line: 128, type: !290)
!409 = !DILocation(line: 0, scope: !406)
!410 = !DILocation(line: 130, column: 10, scope: !406)
!411 = !DILocation(line: 130, column: 3, scope: !406)
!412 = distinct !DISubprogram(name: "ferror_unlocked", scope: !262, file: !262, line: 135, type: !288, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !413)
!413 = !{!414}
!414 = !DILocalVariable(name: "__stream", arg: 1, scope: !412, file: !262, line: 135, type: !290)
!415 = !DILocation(line: 0, scope: !412)
!416 = !DILocation(line: 137, column: 10, scope: !412)
!417 = !DILocation(line: 137, column: 3, scope: !412)
!418 = distinct !DISubprogram(name: "tolower", scope: !419, file: !419, line: 207, type: !364, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !420)
!419 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!420 = !{!421}
!421 = !DILocalVariable(name: "__c", arg: 1, scope: !418, file: !419, line: 207, type: !250)
!422 = !DILocation(line: 0, scope: !418)
!423 = !DILocation(line: 209, column: 22, scope: !418)
!424 = !DILocation(line: 209, column: 39, scope: !418)
!425 = !DILocation(line: 209, column: 38, scope: !418)
!426 = !DILocation(line: 209, column: 37, scope: !418)
!427 = !DILocation(line: 209, column: 10, scope: !418)
!428 = !DILocation(line: 209, column: 3, scope: !418)
!429 = distinct !DISubprogram(name: "toupper", scope: !419, file: !419, line: 213, type: !364, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !430)
!430 = !{!431}
!431 = !DILocalVariable(name: "__c", arg: 1, scope: !429, file: !419, line: 213, type: !250)
!432 = !DILocation(line: 0, scope: !429)
!433 = !DILocation(line: 215, column: 22, scope: !429)
!434 = !DILocation(line: 215, column: 39, scope: !429)
!435 = !DILocation(line: 215, column: 38, scope: !429)
!436 = !DILocation(line: 215, column: 37, scope: !429)
!437 = !DILocation(line: 215, column: 10, scope: !429)
!438 = !DILocation(line: 215, column: 3, scope: !429)
!439 = distinct !DISubprogram(name: "atoi", scope: !440, file: !440, line: 361, type: !441, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !443)
!440 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!441 = !DISubroutineType(types: !442)
!442 = !{!250, !255}
!443 = !{!444}
!444 = !DILocalVariable(name: "__nptr", arg: 1, scope: !439, file: !440, line: 361, type: !255)
!445 = !DILocation(line: 0, scope: !439)
!446 = !DILocation(line: 363, column: 16, scope: !439)
!447 = !DILocation(line: 363, column: 10, scope: !439)
!448 = !DILocation(line: 363, column: 3, scope: !439)
!449 = distinct !DISubprogram(name: "atol", scope: !440, file: !440, line: 366, type: !450, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !452)
!450 = !DISubroutineType(types: !451)
!451 = !{!318, !255}
!452 = !{!453}
!453 = !DILocalVariable(name: "__nptr", arg: 1, scope: !449, file: !440, line: 366, type: !255)
!454 = !DILocation(line: 0, scope: !449)
!455 = !DILocation(line: 368, column: 10, scope: !449)
!456 = !DILocation(line: 368, column: 3, scope: !449)
!457 = distinct !DISubprogram(name: "atoll", scope: !440, file: !440, line: 373, type: !458, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !461)
!458 = !DISubroutineType(types: !459)
!459 = !{!460, !255}
!460 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!461 = !{!462}
!462 = !DILocalVariable(name: "__nptr", arg: 1, scope: !457, file: !440, line: 373, type: !255)
!463 = !DILocation(line: 0, scope: !457)
!464 = !DILocation(line: 375, column: 10, scope: !457)
!465 = !DILocation(line: 375, column: 3, scope: !457)
!466 = distinct !DISubprogram(name: "bsearch", scope: !467, file: !467, line: 20, type: !468, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !476)
!467 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!468 = !DISubroutineType(types: !469)
!469 = !{!254, !470, !470, !341, !341, !472}
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !440, line: 808, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DISubroutineType(types: !475)
!475 = !{!250, !470, !470}
!476 = !{!477, !478, !479, !480, !481, !482, !483, !484, !485, !486}
!477 = !DILocalVariable(name: "__key", arg: 1, scope: !466, file: !467, line: 20, type: !470)
!478 = !DILocalVariable(name: "__base", arg: 2, scope: !466, file: !467, line: 20, type: !470)
!479 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !466, file: !467, line: 20, type: !341)
!480 = !DILocalVariable(name: "__size", arg: 4, scope: !466, file: !467, line: 20, type: !341)
!481 = !DILocalVariable(name: "__compar", arg: 5, scope: !466, file: !467, line: 21, type: !472)
!482 = !DILocalVariable(name: "__l", scope: !466, file: !467, line: 23, type: !341)
!483 = !DILocalVariable(name: "__u", scope: !466, file: !467, line: 23, type: !341)
!484 = !DILocalVariable(name: "__idx", scope: !466, file: !467, line: 23, type: !341)
!485 = !DILocalVariable(name: "__p", scope: !466, file: !467, line: 24, type: !470)
!486 = !DILocalVariable(name: "__comparison", scope: !466, file: !467, line: 25, type: !250)
!487 = !DILocation(line: 0, scope: !466)
!488 = !DILocation(line: 29, column: 3, scope: !466)
!489 = !DILocation(line: 27, column: 7, scope: !466)
!490 = !DILocation(line: 29, column: 14, scope: !466)
!491 = !DILocation(line: 31, column: 20, scope: !492)
!492 = distinct !DILexicalBlock(scope: !466, file: !467, line: 30, column: 5)
!493 = !DILocation(line: 31, column: 27, scope: !492)
!494 = !DILocation(line: 32, column: 56, scope: !492)
!495 = !DILocation(line: 32, column: 47, scope: !492)
!496 = !DILocation(line: 33, column: 22, scope: !492)
!497 = !DILocation(line: 34, column: 24, scope: !498)
!498 = distinct !DILexicalBlock(scope: !492, file: !467, line: 34, column: 11)
!499 = !DILocation(line: 34, column: 11, scope: !492)
!500 = !DILocation(line: 36, column: 29, scope: !501)
!501 = distinct !DILexicalBlock(scope: !498, file: !467, line: 36, column: 16)
!502 = !DILocation(line: 36, column: 16, scope: !498)
!503 = !DILocation(line: 37, column: 14, scope: !501)
!504 = distinct !{!504, !488, !505}
!505 = !DILocation(line: 40, column: 5, scope: !466)
!506 = !DILocation(line: 43, column: 1, scope: !466)
!507 = distinct !DISubprogram(name: "atof", scope: !508, file: !508, line: 25, type: !509, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!508 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!509 = !DISubroutineType(types: !510)
!510 = !{!511, !255}
!511 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!512 = !{!513}
!513 = !DILocalVariable(name: "__nptr", arg: 1, scope: !507, file: !508, line: 25, type: !255)
!514 = !DILocation(line: 0, scope: !507)
!515 = !DILocation(line: 27, column: 10, scope: !507)
!516 = !DILocation(line: 27, column: 3, scope: !507)
!517 = distinct !DISubprogram(name: "strtoimax", scope: !518, file: !518, line: 324, type: !519, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !525)
!518 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!519 = !DISubroutineType(types: !520)
!520 = !{!521, !265, !524, !250}
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !522, line: 101, baseType: !523)
!522 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !317, line: 72, baseType: !318)
!524 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !251)
!525 = !{!526, !527, !528}
!526 = !DILocalVariable(name: "nptr", arg: 1, scope: !517, file: !518, line: 324, type: !265)
!527 = !DILocalVariable(name: "endptr", arg: 2, scope: !517, file: !518, line: 324, type: !524)
!528 = !DILocalVariable(name: "base", arg: 3, scope: !517, file: !518, line: 324, type: !250)
!529 = !DILocation(line: 0, scope: !517)
!530 = !DILocation(line: 327, column: 10, scope: !517)
!531 = !DILocation(line: 327, column: 3, scope: !517)
!532 = distinct !DISubprogram(name: "strtoumax", scope: !518, file: !518, line: 336, type: !533, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !537)
!533 = !DISubroutineType(types: !534)
!534 = !{!535, !265, !524, !250}
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !522, line: 102, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !317, line: 73, baseType: !343)
!537 = !{!538, !539, !540}
!538 = !DILocalVariable(name: "nptr", arg: 1, scope: !532, file: !518, line: 336, type: !265)
!539 = !DILocalVariable(name: "endptr", arg: 2, scope: !532, file: !518, line: 336, type: !524)
!540 = !DILocalVariable(name: "base", arg: 3, scope: !532, file: !518, line: 336, type: !250)
!541 = !DILocation(line: 0, scope: !532)
!542 = !DILocation(line: 339, column: 10, scope: !532)
!543 = !DILocation(line: 339, column: 3, scope: !532)
!544 = distinct !DISubprogram(name: "wcstoimax", scope: !518, file: !518, line: 348, type: !545, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !554)
!545 = !DISubroutineType(types: !546)
!546 = !{!521, !547, !551, !250}
!547 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !518, line: 34, baseType: !250)
!551 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !552)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!554 = !{!555, !556, !557}
!555 = !DILocalVariable(name: "nptr", arg: 1, scope: !544, file: !518, line: 348, type: !547)
!556 = !DILocalVariable(name: "endptr", arg: 2, scope: !544, file: !518, line: 348, type: !551)
!557 = !DILocalVariable(name: "base", arg: 3, scope: !544, file: !518, line: 348, type: !250)
!558 = !DILocation(line: 0, scope: !544)
!559 = !DILocation(line: 351, column: 10, scope: !544)
!560 = !DILocation(line: 351, column: 3, scope: !544)
!561 = distinct !DISubprogram(name: "wcstoumax", scope: !518, file: !518, line: 362, type: !562, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !564)
!562 = !DISubroutineType(types: !563)
!563 = !{!535, !547, !551, !250}
!564 = !{!565, !566, !567}
!565 = !DILocalVariable(name: "nptr", arg: 1, scope: !561, file: !518, line: 362, type: !547)
!566 = !DILocalVariable(name: "endptr", arg: 2, scope: !561, file: !518, line: 362, type: !551)
!567 = !DILocalVariable(name: "base", arg: 3, scope: !561, file: !518, line: 362, type: !250)
!568 = !DILocation(line: 0, scope: !561)
!569 = !DILocation(line: 365, column: 10, scope: !561)
!570 = !DILocation(line: 365, column: 3, scope: !561)
!571 = distinct !DISubprogram(name: "stat", scope: !572, file: !572, line: 453, type: !573, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !612)
!572 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!573 = !DISubroutineType(types: !574)
!574 = !{!250, !255, !575}
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !577, line: 46, size: 1152, elements: !578)
!577 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!578 = !{!579, !581, !583, !585, !587, !589, !591, !592, !593, !594, !596, !598, !606, !607, !608}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !576, file: !577, line: 48, baseType: !580, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !317, line: 145, baseType: !343)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !576, file: !577, line: 53, baseType: !582, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !317, line: 148, baseType: !343)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !576, file: !577, line: 61, baseType: !584, size: 64, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !317, line: 151, baseType: !343)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !576, file: !577, line: 62, baseType: !586, size: 32, offset: 192)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !317, line: 150, baseType: !5)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !576, file: !577, line: 64, baseType: !588, size: 32, offset: 224)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !317, line: 146, baseType: !5)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !576, file: !577, line: 65, baseType: !590, size: 32, offset: 256)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !317, line: 147, baseType: !5)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !576, file: !577, line: 67, baseType: !250, size: 32, offset: 288)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !576, file: !577, line: 69, baseType: !580, size: 64, offset: 320)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !576, file: !577, line: 74, baseType: !316, size: 64, offset: 384)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !576, file: !577, line: 78, baseType: !595, size: 64, offset: 448)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !317, line: 174, baseType: !318)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !576, file: !577, line: 80, baseType: !597, size: 64, offset: 512)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !317, line: 179, baseType: !318)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !576, file: !577, line: 91, baseType: !599, size: 128, offset: 576)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !600, line: 10, size: 128, elements: !601)
!600 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!601 = !{!602, !604}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !599, file: !600, line: 12, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !317, line: 160, baseType: !318)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !599, file: !600, line: 16, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !317, line: 196, baseType: !318)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !576, file: !577, line: 92, baseType: !599, size: 128, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !576, file: !577, line: 93, baseType: !599, size: 128, offset: 832)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !576, file: !577, line: 106, baseType: !609, size: 192, offset: 960)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !605, size: 192, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 3)
!612 = !{!613, !614}
!613 = !DILocalVariable(name: "__path", arg: 1, scope: !571, file: !572, line: 453, type: !255)
!614 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !571, file: !572, line: 453, type: !575)
!615 = !DILocation(line: 0, scope: !571)
!616 = !DILocation(line: 455, column: 10, scope: !571)
!617 = !DILocation(line: 455, column: 3, scope: !571)
!618 = distinct !DISubprogram(name: "lstat", scope: !572, file: !572, line: 460, type: !573, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !619)
!619 = !{!620, !621}
!620 = !DILocalVariable(name: "__path", arg: 1, scope: !618, file: !572, line: 460, type: !255)
!621 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !618, file: !572, line: 460, type: !575)
!622 = !DILocation(line: 0, scope: !618)
!623 = !DILocation(line: 462, column: 10, scope: !618)
!624 = !DILocation(line: 462, column: 3, scope: !618)
!625 = distinct !DISubprogram(name: "fstat", scope: !572, file: !572, line: 467, type: !626, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !628)
!626 = !DISubroutineType(types: !627)
!627 = !{!250, !250, !575}
!628 = !{!629, !630}
!629 = !DILocalVariable(name: "__fd", arg: 1, scope: !625, file: !572, line: 467, type: !250)
!630 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !625, file: !572, line: 467, type: !575)
!631 = !DILocation(line: 0, scope: !625)
!632 = !DILocation(line: 469, column: 10, scope: !625)
!633 = !DILocation(line: 469, column: 3, scope: !625)
!634 = distinct !DISubprogram(name: "fstatat", scope: !572, file: !572, line: 474, type: !635, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !637)
!635 = !DISubroutineType(types: !636)
!636 = !{!250, !250, !255, !575, !250}
!637 = !{!638, !639, !640, !641}
!638 = !DILocalVariable(name: "__fd", arg: 1, scope: !634, file: !572, line: 474, type: !250)
!639 = !DILocalVariable(name: "__filename", arg: 2, scope: !634, file: !572, line: 474, type: !255)
!640 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !634, file: !572, line: 474, type: !575)
!641 = !DILocalVariable(name: "__flag", arg: 4, scope: !634, file: !572, line: 474, type: !250)
!642 = !DILocation(line: 0, scope: !634)
!643 = !DILocation(line: 477, column: 10, scope: !634)
!644 = !DILocation(line: 477, column: 3, scope: !634)
!645 = distinct !DISubprogram(name: "mknod", scope: !572, file: !572, line: 483, type: !646, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !648)
!646 = !DISubroutineType(types: !647)
!647 = !{!250, !255, !586, !580}
!648 = !{!649, !650, !651}
!649 = !DILocalVariable(name: "__path", arg: 1, scope: !645, file: !572, line: 483, type: !255)
!650 = !DILocalVariable(name: "__mode", arg: 2, scope: !645, file: !572, line: 483, type: !586)
!651 = !DILocalVariable(name: "__dev", arg: 3, scope: !645, file: !572, line: 483, type: !580)
!652 = !DILocation(line: 0, scope: !645)
!653 = !DILocation(line: 485, column: 10, scope: !645)
!654 = !DILocation(line: 485, column: 3, scope: !645)
!655 = distinct !DISubprogram(name: "mknodat", scope: !572, file: !572, line: 491, type: !656, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !658)
!656 = !DISubroutineType(types: !657)
!657 = !{!250, !250, !255, !586, !580}
!658 = !{!659, !660, !661, !662}
!659 = !DILocalVariable(name: "__fd", arg: 1, scope: !655, file: !572, line: 491, type: !250)
!660 = !DILocalVariable(name: "__path", arg: 2, scope: !655, file: !572, line: 491, type: !255)
!661 = !DILocalVariable(name: "__mode", arg: 3, scope: !655, file: !572, line: 491, type: !586)
!662 = !DILocalVariable(name: "__dev", arg: 4, scope: !655, file: !572, line: 491, type: !580)
!663 = !DILocation(line: 0, scope: !655)
!664 = !DILocation(line: 494, column: 10, scope: !655)
!665 = !DILocation(line: 494, column: 3, scope: !655)
!666 = distinct !DISubprogram(name: "stat64", scope: !572, file: !572, line: 502, type: !667, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !689)
!667 = !DISubroutineType(types: !668)
!668 = !{!250, !255, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !577, line: 119, size: 1152, elements: !671)
!671 = !{!672, !673, !675, !676, !677, !678, !679, !680, !681, !682, !683, !685, !686, !687, !688}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !670, file: !577, line: 121, baseType: !580, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !670, file: !577, line: 123, baseType: !674, size: 64, offset: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !317, line: 149, baseType: !343)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !670, file: !577, line: 124, baseType: !584, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !670, file: !577, line: 125, baseType: !586, size: 32, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !670, file: !577, line: 132, baseType: !588, size: 32, offset: 224)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !670, file: !577, line: 133, baseType: !590, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !670, file: !577, line: 135, baseType: !250, size: 32, offset: 288)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !670, file: !577, line: 136, baseType: !580, size: 64, offset: 320)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !670, file: !577, line: 137, baseType: !316, size: 64, offset: 384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !670, file: !577, line: 143, baseType: !595, size: 64, offset: 448)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !670, file: !577, line: 144, baseType: !684, size: 64, offset: 512)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !317, line: 180, baseType: !318)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !670, file: !577, line: 152, baseType: !599, size: 128, offset: 576)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !670, file: !577, line: 153, baseType: !599, size: 128, offset: 704)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !670, file: !577, line: 154, baseType: !599, size: 128, offset: 832)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !670, file: !577, line: 164, baseType: !609, size: 192, offset: 960)
!689 = !{!690, !691}
!690 = !DILocalVariable(name: "__path", arg: 1, scope: !666, file: !572, line: 502, type: !255)
!691 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !666, file: !572, line: 502, type: !669)
!692 = !DILocation(line: 0, scope: !666)
!693 = !DILocation(line: 504, column: 10, scope: !666)
!694 = !DILocation(line: 504, column: 3, scope: !666)
!695 = distinct !DISubprogram(name: "lstat64", scope: !572, file: !572, line: 509, type: !667, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !696)
!696 = !{!697, !698}
!697 = !DILocalVariable(name: "__path", arg: 1, scope: !695, file: !572, line: 509, type: !255)
!698 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !695, file: !572, line: 509, type: !669)
!699 = !DILocation(line: 0, scope: !695)
!700 = !DILocation(line: 511, column: 10, scope: !695)
!701 = !DILocation(line: 511, column: 3, scope: !695)
!702 = distinct !DISubprogram(name: "fstat64", scope: !572, file: !572, line: 516, type: !703, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !705)
!703 = !DISubroutineType(types: !704)
!704 = !{!250, !250, !669}
!705 = !{!706, !707}
!706 = !DILocalVariable(name: "__fd", arg: 1, scope: !702, file: !572, line: 516, type: !250)
!707 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !702, file: !572, line: 516, type: !669)
!708 = !DILocation(line: 0, scope: !702)
!709 = !DILocation(line: 518, column: 10, scope: !702)
!710 = !DILocation(line: 518, column: 3, scope: !702)
!711 = distinct !DISubprogram(name: "fstatat64", scope: !572, file: !572, line: 523, type: !712, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{!250, !250, !255, !669, !250}
!714 = !{!715, !716, !717, !718}
!715 = !DILocalVariable(name: "__fd", arg: 1, scope: !711, file: !572, line: 523, type: !250)
!716 = !DILocalVariable(name: "__filename", arg: 2, scope: !711, file: !572, line: 523, type: !255)
!717 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !711, file: !572, line: 523, type: !669)
!718 = !DILocalVariable(name: "__flag", arg: 4, scope: !711, file: !572, line: 523, type: !250)
!719 = !DILocation(line: 0, scope: !711)
!720 = !DILocation(line: 526, column: 10, scope: !711)
!721 = !DILocation(line: 526, column: 3, scope: !711)
!722 = distinct !DISubprogram(name: "pedwarn_c99", scope: !1, file: !1, line: 34, type: !723, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !729)
!723 = !DISubroutineType(types: !724)
!724 = !{null, !725, !250, !255, null}
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !726, line: 58, baseType: !727)
!726 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !728, line: 44, baseType: !5)
!728 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!729 = !{!730, !731, !732, !733, !1391}
!730 = !DILocalVariable(name: "location", arg: 1, scope: !722, file: !1, line: 34, type: !725)
!731 = !DILocalVariable(name: "opt", arg: 2, scope: !722, file: !1, line: 34, type: !250)
!732 = !DILocalVariable(name: "gmsgid", arg: 3, scope: !722, file: !1, line: 34, type: !255)
!733 = !DILocalVariable(name: "diagnostic", scope: !722, file: !1, line: 36, type: !734)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !232, line: 52, baseType: !735)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !232, line: 40, size: 512, elements: !736)
!736 = !{!737, !1385, !1386, !1387, !1388, !1390}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !735, file: !232, line: 42, baseType: !738, size: 320)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !739, line: 39, baseType: !740)
!739 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !739, line: 32, size: 320, elements: !741)
!741 = !{!742, !743, !751, !752, !754}
!742 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !740, file: !739, line: 34, baseType: !255, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !740, file: !739, line: 35, baseType: !744, size: 64, offset: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !746, line: 52, baseType: !747)
!746 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!747 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !748, line: 32, baseType: !749)
!748 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 36, baseType: !750)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 192, elements: !325)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !740, file: !739, line: 36, baseType: !250, size: 32, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !740, file: !739, line: 37, baseType: !753, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !740, file: !739, line: 38, baseType: !755, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !757, line: 56, baseType: !758)
!757 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !760)
!760 = !{!761, !794, !800, !811, !818, !825, !830, !836, !842, !855, !863, !901, !909, !937, !945, !946, !951, !960, !966, !971, !975, !979, !1008, !1057, !1063, !1070, !1077, !1102, !1127, !1144, !1156, !1178, !1196, !1367}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !759, file: !4, line: 3372, baseType: !762, size: 64)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !763)
!763 = !{!764, !765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !762, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !762, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !762, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !762, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !762, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !762, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !762, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !762, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !762, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !762, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !762, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !762, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !762, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !762, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !762, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !762, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !762, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !762, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !762, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !762, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !762, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !762, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !762, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !762, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !762, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !762, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !762, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !762, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !762, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !762, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !759, file: !4, line: 3373, baseType: !795, size: 192)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !795, file: !4, line: 403, baseType: !762, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !795, file: !4, line: 404, baseType: !756, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !795, file: !4, line: 405, baseType: !756, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !759, file: !4, line: 3374, baseType: !801, size: 320)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !801, file: !4, line: 1385, baseType: !795, size: 192)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !801, file: !4, line: 1386, baseType: !805, size: 128, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !806, line: 58, baseType: !807)
!806 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !806, line: 54, size: 128, elements: !808)
!808 = !{!809, !810}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !807, file: !806, line: 56, baseType: !343, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !807, file: !806, line: 57, baseType: !318, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !759, file: !4, line: 3375, baseType: !812, size: 256)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !812, file: !4, line: 1398, baseType: !795, size: 192)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !812, file: !4, line: 1399, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !759, file: !4, line: 3376, baseType: !819, size: 256)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !819, file: !4, line: 1409, baseType: !795, size: 192)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !819, file: !4, line: 1410, baseType: !823, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !759, file: !4, line: 3377, baseType: !826, size: 256)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !827)
!827 = !{!828, !829}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !826, file: !4, line: 1438, baseType: !795, size: 192)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !826, file: !4, line: 1439, baseType: !756, size: 64, offset: 192)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !759, file: !4, line: 3378, baseType: !831, size: 256)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !832)
!832 = !{!833, !834, !835}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !831, file: !4, line: 1419, baseType: !795, size: 192)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !831, file: !4, line: 1420, baseType: !250, size: 32, offset: 192)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !831, file: !4, line: 1421, baseType: !324, size: 8, offset: 224)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !759, file: !4, line: 3379, baseType: !837, size: 320)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !838)
!838 = !{!839, !840, !841}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !837, file: !4, line: 1429, baseType: !795, size: 192)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !837, file: !4, line: 1430, baseType: !756, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !837, file: !4, line: 1431, baseType: !756, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !759, file: !4, line: 3380, baseType: !843, size: 320)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !844)
!844 = !{!845, !846}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !843, file: !4, line: 1461, baseType: !795, size: 192)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !843, file: !4, line: 1462, baseType: !847, size: 128, offset: 192)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !848, line: 31, size: 128, elements: !849)
!848 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!849 = !{!850, !853, !854}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !847, file: !848, line: 32, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !847, file: !848, line: 33, baseType: !5, size: 32, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !847, file: !848, line: 34, baseType: !5, size: 32, offset: 96)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !759, file: !4, line: 3381, baseType: !856, size: 384)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !857)
!857 = !{!858, !859, !860, !861, !862}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !856, file: !4, line: 2508, baseType: !795, size: 192)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !856, file: !4, line: 2509, baseType: !725, size: 32, offset: 192)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !856, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !856, file: !4, line: 2511, baseType: !756, size: 64, offset: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !856, file: !4, line: 2512, baseType: !756, size: 64, offset: 320)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !759, file: !4, line: 3382, baseType: !864, size: 896)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !865)
!865 = !{!866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !864, file: !4, line: 2653, baseType: !856, size: 384)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !864, file: !4, line: 2654, baseType: !756, size: 64, offset: 384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !864, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !864, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !864, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !864, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !864, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !864, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !864, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !864, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !864, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !864, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !864, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !864, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !864, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !864, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !864, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !864, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !864, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !864, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !864, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !864, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !864, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !864, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !864, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !864, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !864, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !864, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !864, file: !4, line: 2705, baseType: !756, size: 64, offset: 576)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !864, file: !4, line: 2706, baseType: !756, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !864, file: !4, line: 2707, baseType: !756, size: 64, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !864, file: !4, line: 2708, baseType: !756, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !864, file: !4, line: 2711, baseType: !899, size: 64, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !759, file: !4, line: 3383, baseType: !902, size: 960)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !4, line: 2757, baseType: !864, size: 896)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !902, file: !4, line: 2758, baseType: !906, size: 64, offset: 896)
!906 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !757, line: 50, baseType: !907)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !757, line: 49, flags: DIFlagFwdDecl)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !759, file: !4, line: 3384, baseType: !910, size: 1472)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !911)
!911 = !{!912, !933, !934, !935, !936}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !910, file: !4, line: 3115, baseType: !913, size: 1216)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !914)
!914 = !{!915, !916, !917, !918, !919, !920, !921, !922, !923, !924, !925, !926, !927, !928, !929, !930, !931, !932}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !913, file: !4, line: 2985, baseType: !902, size: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !913, file: !4, line: 2986, baseType: !756, size: 64, offset: 960)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !913, file: !4, line: 2987, baseType: !756, size: 64, offset: 1024)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !913, file: !4, line: 2988, baseType: !756, size: 64, offset: 1088)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !913, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !913, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !913, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !913, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !913, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !913, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !913, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !913, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !913, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !913, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !913, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !913, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !913, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !913, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !910, file: !4, line: 3117, baseType: !756, size: 64, offset: 1216)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !910, file: !4, line: 3119, baseType: !756, size: 64, offset: 1280)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !910, file: !4, line: 3121, baseType: !756, size: 64, offset: 1344)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !910, file: !4, line: 3123, baseType: !756, size: 64, offset: 1408)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !759, file: !4, line: 3385, baseType: !938, size: 1088)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !939)
!939 = !{!940, !941, !942}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !938, file: !4, line: 2875, baseType: !902, size: 960)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !938, file: !4, line: 2876, baseType: !906, size: 64, offset: 960)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !938, file: !4, line: 2877, baseType: !943, size: 64, offset: 1024)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !4, line: 2856, flags: DIFlagFwdDecl)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !759, file: !4, line: 3386, baseType: !913, size: 1216)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !759, file: !4, line: 3387, baseType: !947, size: 1280)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !947, file: !4, line: 3094, baseType: !913, size: 1216)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !947, file: !4, line: 3095, baseType: !943, size: 64, offset: 1216)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !759, file: !4, line: 3388, baseType: !952, size: 1216)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !953)
!953 = !{!954, !955, !956, !957, !958, !959}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !952, file: !4, line: 2825, baseType: !864, size: 896)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !952, file: !4, line: 2827, baseType: !756, size: 64, offset: 896)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !952, file: !4, line: 2828, baseType: !756, size: 64, offset: 960)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !952, file: !4, line: 2829, baseType: !756, size: 64, offset: 1024)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !952, file: !4, line: 2830, baseType: !756, size: 64, offset: 1088)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !952, file: !4, line: 2831, baseType: !756, size: 64, offset: 1152)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !759, file: !4, line: 3389, baseType: !961, size: 1024)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !961, file: !4, line: 2851, baseType: !902, size: 960)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !961, file: !4, line: 2852, baseType: !250, size: 32, offset: 960)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !961, file: !4, line: 2853, baseType: !250, size: 32, offset: 992)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !759, file: !4, line: 3390, baseType: !967, size: 1024)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !968)
!968 = !{!969, !970}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !967, file: !4, line: 2858, baseType: !902, size: 960)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !967, file: !4, line: 2859, baseType: !943, size: 64, offset: 960)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !759, file: !4, line: 3391, baseType: !972, size: 960)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !972, file: !4, line: 2863, baseType: !902, size: 960)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !759, file: !4, line: 3392, baseType: !976, size: 1472)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !977)
!977 = !{!978}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !976, file: !4, line: 3305, baseType: !910, size: 1472)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !759, file: !4, line: 3393, baseType: !980, size: 1792)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !981)
!981 = !{!982, !983, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1005, !1006, !1007}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !980, file: !4, line: 3249, baseType: !910, size: 1472)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !980, file: !4, line: 3251, baseType: !984, size: 64, offset: 1472)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !986, line: 41, flags: DIFlagFwdDecl)
!986 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!987 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !980, file: !4, line: 3254, baseType: !756, size: 64, offset: 1536)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !980, file: !4, line: 3257, baseType: !756, size: 64, offset: 1600)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !980, file: !4, line: 3258, baseType: !756, size: 64, offset: 1664)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !980, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !980, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !980, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !980, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !980, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !980, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !980, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !980, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !980, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !980, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !980, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !980, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !980, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !980, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !980, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !980, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !980, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !980, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !759, file: !4, line: 3394, baseType: !1009, size: 1344)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1036, !1037, !1038, !1046, !1047, !1048, !1049, !1050, !1051, !1052, !1053, !1054}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1009, file: !4, line: 2280, baseType: !795, size: 192)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1009, file: !4, line: 2281, baseType: !756, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1009, file: !4, line: 2282, baseType: !756, size: 64, offset: 256)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1009, file: !4, line: 2283, baseType: !756, size: 64, offset: 320)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1009, file: !4, line: 2284, baseType: !756, size: 64, offset: 384)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1009, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1009, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1009, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1009, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1009, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1009, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1009, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1009, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1009, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1009, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1009, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1009, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1009, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1009, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1009, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1009, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1009, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1009, file: !4, line: 2306, baseType: !1034, size: 32, offset: 544)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1035, line: 31, baseType: !250)
!1035 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1009, file: !4, line: 2307, baseType: !756, size: 64, offset: 576)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1009, file: !4, line: 2308, baseType: !756, size: 64, offset: 640)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1009, file: !4, line: 2314, baseType: !1039, size: 64, offset: 704)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1039, file: !4, line: 2310, baseType: !250, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1039, file: !4, line: 2311, baseType: !255, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1039, file: !4, line: 2312, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1009, file: !4, line: 2315, baseType: !756, size: 64, offset: 768)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1009, file: !4, line: 2316, baseType: !756, size: 64, offset: 832)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1009, file: !4, line: 2317, baseType: !756, size: 64, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1009, file: !4, line: 2318, baseType: !756, size: 64, offset: 960)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1009, file: !4, line: 2319, baseType: !756, size: 64, offset: 1024)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1009, file: !4, line: 2320, baseType: !756, size: 64, offset: 1088)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1009, file: !4, line: 2321, baseType: !756, size: 64, offset: 1152)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1009, file: !4, line: 2322, baseType: !756, size: 64, offset: 1216)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1009, file: !4, line: 2324, baseType: !1055, size: 64, offset: 1280)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !759, file: !4, line: 3395, baseType: !1058, size: 320)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1058, file: !4, line: 1470, baseType: !795, size: 192)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1058, file: !4, line: 1471, baseType: !756, size: 64, offset: 192)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1058, file: !4, line: 1472, baseType: !756, size: 64, offset: 256)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !759, file: !4, line: 3396, baseType: !1064, size: 320)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1064, file: !4, line: 1483, baseType: !795, size: 192)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1064, file: !4, line: 1484, baseType: !250, size: 32, offset: 192)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1064, file: !4, line: 1485, baseType: !1069, size: 64, offset: 256)
!1069 = !DICompositeType(tag: DW_TAG_array_type, baseType: !756, size: 64, elements: !325)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !759, file: !4, line: 3397, baseType: !1071, size: 384)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1071, file: !4, line: 1830, baseType: !795, size: 192)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1071, file: !4, line: 1831, baseType: !725, size: 32, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1071, file: !4, line: 1832, baseType: !756, size: 64, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1071, file: !4, line: 1835, baseType: !1069, size: 64, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !759, file: !4, line: 3398, baseType: !1078, size: 704)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1086, !1087, !1090}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1078, file: !4, line: 1899, baseType: !795, size: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1078, file: !4, line: 1902, baseType: !756, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1078, file: !4, line: 1905, baseType: !1083, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !757, line: 58, baseType: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !757, line: 57, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1078, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1078, file: !4, line: 1911, baseType: !1088, size: 64, offset: 384)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !4, line: 1876, flags: DIFlagFwdDecl)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1078, file: !4, line: 1914, baseType: !1091, size: 256, offset: 448)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !1092)
!1092 = !{!1093, !1095, !1096, !1101}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1091, file: !4, line: 1884, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1091, file: !4, line: 1885, baseType: !1094, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1091, file: !4, line: 1891, baseType: !1097, size: 64, offset: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1091, file: !4, line: 1891, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1097, file: !4, line: 1891, baseType: !1083, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1097, file: !4, line: 1891, baseType: !756, size: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1091, file: !4, line: 1892, baseType: !755, size: 64, offset: 192)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !759, file: !4, line: 3399, baseType: !1103, size: 704)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1104)
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110, !1122, !1123, !1124, !1125, !1126}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1103, file: !4, line: 2009, baseType: !795, size: 192)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1103, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1103, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1103, file: !4, line: 2014, baseType: !725, size: 32, offset: 224)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1103, file: !4, line: 2016, baseType: !756, size: 64, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1103, file: !4, line: 2017, baseType: !1111, size: 64, offset: 320)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1114)
!1114 = !{!1115}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1113, file: !4, line: 183, baseType: !1116, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1117, file: !4, line: 182, baseType: !5, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1117, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1117, file: !4, line: 182, baseType: !1069, size: 64, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1103, file: !4, line: 2019, baseType: !756, size: 64, offset: 384)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1103, file: !4, line: 2020, baseType: !756, size: 64, offset: 448)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1103, file: !4, line: 2021, baseType: !756, size: 64, offset: 512)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1103, file: !4, line: 2022, baseType: !756, size: 64, offset: 576)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1103, file: !4, line: 2023, baseType: !756, size: 64, offset: 640)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !759, file: !4, line: 3400, baseType: !1128, size: 832)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1129)
!1129 = !{!1130, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1139}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1128, file: !4, line: 2431, baseType: !795, size: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1128, file: !4, line: 2433, baseType: !756, size: 64, offset: 192)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1128, file: !4, line: 2434, baseType: !756, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1128, file: !4, line: 2435, baseType: !756, size: 64, offset: 320)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1128, file: !4, line: 2436, baseType: !756, size: 64, offset: 384)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1128, file: !4, line: 2437, baseType: !1111, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1128, file: !4, line: 2438, baseType: !756, size: 64, offset: 512)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1128, file: !4, line: 2440, baseType: !756, size: 64, offset: 576)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1128, file: !4, line: 2441, baseType: !756, size: 64, offset: 640)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1128, file: !4, line: 2443, baseType: !1140, size: 128, offset: 704)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1142)
!1142 = !{!1143}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1141, file: !4, line: 182, baseType: !1116, size: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !759, file: !4, line: 3401, baseType: !1145, size: 320)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1146)
!1146 = !{!1147, !1148, !1155}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1145, file: !4, line: 3329, baseType: !795, size: 192)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1145, file: !4, line: 3330, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1151)
!1151 = !{!1152, !1153, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1150, file: !4, line: 3322, baseType: !1149, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !4, line: 3323, baseType: !1149, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1150, file: !4, line: 3324, baseType: !756, size: 64, offset: 128)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1145, file: !4, line: 3331, baseType: !1149, size: 64, offset: 256)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !759, file: !4, line: 3402, baseType: !1157, size: 256)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1158)
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1157, file: !4, line: 1541, baseType: !795, size: 192)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1157, file: !4, line: 1542, baseType: !1161, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1164)
!1164 = !{!1165}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1163, file: !4, line: 1538, baseType: !1166, size: 192)
!1166 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1167)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1168)
!1168 = !{!1169, !1170, !1171}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1167, file: !4, line: 1537, baseType: !5, size: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1167, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1167, file: !4, line: 1537, baseType: !1172, size: 128, offset: 64)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 128, elements: !325)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1174, file: !4, line: 1533, baseType: !756, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1174, file: !4, line: 1534, baseType: !756, size: 64, offset: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !759, file: !4, line: 3403, baseType: !1179, size: 512)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1190, !1194, !1195}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1179, file: !4, line: 1939, baseType: !795, size: 192)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1179, file: !4, line: 1940, baseType: !725, size: 32, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1179, file: !4, line: 1941, baseType: !3, size: 32, offset: 224)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1179, file: !4, line: 1946, baseType: !1185, size: 32, offset: 256)
!1185 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1186)
!1186 = !{!1187, !1188, !1189}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1185, file: !4, line: 1943, baseType: !23, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1185, file: !4, line: 1944, baseType: !30, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1185, file: !4, line: 1945, baseType: !37, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1179, file: !4, line: 1950, baseType: !1191, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !757, line: 66, baseType: !1192)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !757, line: 65, flags: DIFlagFwdDecl)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1179, file: !4, line: 1951, baseType: !1191, size: 64, offset: 384)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1179, file: !4, line: 1953, baseType: !1069, size: 64, offset: 448)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !759, file: !4, line: 3404, baseType: !1197, size: 1664)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1198)
!1198 = !{!1199, !1200}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !4, line: 3338, baseType: !795, size: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1197, file: !4, line: 3341, baseType: !1201, size: 1472, offset: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1202, line: 410, size: 1472, elements: !1203)
!1202 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1203 = !{!1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1201, file: !1202, line: 412, baseType: !250, size: 32)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1201, file: !1202, line: 413, baseType: !250, size: 32, offset: 32)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1201, file: !1202, line: 414, baseType: !250, size: 32, offset: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1201, file: !1202, line: 415, baseType: !250, size: 32, offset: 96)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1201, file: !1202, line: 416, baseType: !250, size: 32, offset: 128)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1201, file: !1202, line: 417, baseType: !250, size: 32, offset: 160)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1201, file: !1202, line: 418, baseType: !249, size: 8, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1201, file: !1202, line: 419, baseType: !249, size: 8, offset: 200)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1201, file: !1202, line: 420, baseType: !322, size: 8, offset: 208)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1201, file: !1202, line: 421, baseType: !322, size: 8, offset: 216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1201, file: !1202, line: 422, baseType: !322, size: 8, offset: 224)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1201, file: !1202, line: 423, baseType: !322, size: 8, offset: 232)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1201, file: !1202, line: 424, baseType: !322, size: 8, offset: 240)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1201, file: !1202, line: 425, baseType: !322, size: 8, offset: 248)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1201, file: !1202, line: 426, baseType: !322, size: 8, offset: 256)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1201, file: !1202, line: 427, baseType: !322, size: 8, offset: 264)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1201, file: !1202, line: 428, baseType: !322, size: 8, offset: 272)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1201, file: !1202, line: 429, baseType: !322, size: 8, offset: 280)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1201, file: !1202, line: 430, baseType: !322, size: 8, offset: 288)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1201, file: !1202, line: 431, baseType: !322, size: 8, offset: 296)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1201, file: !1202, line: 432, baseType: !322, size: 8, offset: 304)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1201, file: !1202, line: 433, baseType: !322, size: 8, offset: 312)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1201, file: !1202, line: 434, baseType: !322, size: 8, offset: 320)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1201, file: !1202, line: 435, baseType: !322, size: 8, offset: 328)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1201, file: !1202, line: 436, baseType: !322, size: 8, offset: 336)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1201, file: !1202, line: 437, baseType: !322, size: 8, offset: 344)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1201, file: !1202, line: 438, baseType: !322, size: 8, offset: 352)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1201, file: !1202, line: 439, baseType: !322, size: 8, offset: 360)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1201, file: !1202, line: 440, baseType: !322, size: 8, offset: 368)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1201, file: !1202, line: 441, baseType: !322, size: 8, offset: 376)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1201, file: !1202, line: 442, baseType: !322, size: 8, offset: 384)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1201, file: !1202, line: 443, baseType: !322, size: 8, offset: 392)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1201, file: !1202, line: 444, baseType: !322, size: 8, offset: 400)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1201, file: !1202, line: 445, baseType: !322, size: 8, offset: 408)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1201, file: !1202, line: 446, baseType: !322, size: 8, offset: 416)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1201, file: !1202, line: 447, baseType: !322, size: 8, offset: 424)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1201, file: !1202, line: 448, baseType: !322, size: 8, offset: 432)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1201, file: !1202, line: 449, baseType: !322, size: 8, offset: 440)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1201, file: !1202, line: 450, baseType: !322, size: 8, offset: 448)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1201, file: !1202, line: 451, baseType: !322, size: 8, offset: 456)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1201, file: !1202, line: 452, baseType: !322, size: 8, offset: 464)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1201, file: !1202, line: 453, baseType: !322, size: 8, offset: 472)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1201, file: !1202, line: 454, baseType: !322, size: 8, offset: 480)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1201, file: !1202, line: 455, baseType: !322, size: 8, offset: 488)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1201, file: !1202, line: 456, baseType: !322, size: 8, offset: 496)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1201, file: !1202, line: 457, baseType: !322, size: 8, offset: 504)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1201, file: !1202, line: 458, baseType: !322, size: 8, offset: 512)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1201, file: !1202, line: 459, baseType: !322, size: 8, offset: 520)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1201, file: !1202, line: 460, baseType: !322, size: 8, offset: 528)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1201, file: !1202, line: 461, baseType: !322, size: 8, offset: 536)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1201, file: !1202, line: 462, baseType: !322, size: 8, offset: 544)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1201, file: !1202, line: 463, baseType: !322, size: 8, offset: 552)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1201, file: !1202, line: 464, baseType: !322, size: 8, offset: 560)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1201, file: !1202, line: 465, baseType: !322, size: 8, offset: 568)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1201, file: !1202, line: 466, baseType: !322, size: 8, offset: 576)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1201, file: !1202, line: 467, baseType: !322, size: 8, offset: 584)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1201, file: !1202, line: 468, baseType: !322, size: 8, offset: 592)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1201, file: !1202, line: 469, baseType: !322, size: 8, offset: 600)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1201, file: !1202, line: 470, baseType: !322, size: 8, offset: 608)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1201, file: !1202, line: 471, baseType: !322, size: 8, offset: 616)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1201, file: !1202, line: 472, baseType: !322, size: 8, offset: 624)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1201, file: !1202, line: 473, baseType: !322, size: 8, offset: 632)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1201, file: !1202, line: 474, baseType: !322, size: 8, offset: 640)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1201, file: !1202, line: 475, baseType: !322, size: 8, offset: 648)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1201, file: !1202, line: 476, baseType: !322, size: 8, offset: 656)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1201, file: !1202, line: 477, baseType: !322, size: 8, offset: 664)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1201, file: !1202, line: 478, baseType: !322, size: 8, offset: 672)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1201, file: !1202, line: 479, baseType: !322, size: 8, offset: 680)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1201, file: !1202, line: 480, baseType: !322, size: 8, offset: 688)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1201, file: !1202, line: 481, baseType: !322, size: 8, offset: 696)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1201, file: !1202, line: 482, baseType: !322, size: 8, offset: 704)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1201, file: !1202, line: 483, baseType: !322, size: 8, offset: 712)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1201, file: !1202, line: 484, baseType: !322, size: 8, offset: 720)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1201, file: !1202, line: 485, baseType: !322, size: 8, offset: 728)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1201, file: !1202, line: 486, baseType: !322, size: 8, offset: 736)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1201, file: !1202, line: 487, baseType: !322, size: 8, offset: 744)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1201, file: !1202, line: 488, baseType: !322, size: 8, offset: 752)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1201, file: !1202, line: 489, baseType: !322, size: 8, offset: 760)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1201, file: !1202, line: 490, baseType: !322, size: 8, offset: 768)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1201, file: !1202, line: 491, baseType: !322, size: 8, offset: 776)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1201, file: !1202, line: 492, baseType: !322, size: 8, offset: 784)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1201, file: !1202, line: 493, baseType: !322, size: 8, offset: 792)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1201, file: !1202, line: 494, baseType: !322, size: 8, offset: 800)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1201, file: !1202, line: 495, baseType: !322, size: 8, offset: 808)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1201, file: !1202, line: 496, baseType: !322, size: 8, offset: 816)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1201, file: !1202, line: 497, baseType: !322, size: 8, offset: 824)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1201, file: !1202, line: 498, baseType: !322, size: 8, offset: 832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1201, file: !1202, line: 499, baseType: !322, size: 8, offset: 840)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1201, file: !1202, line: 500, baseType: !322, size: 8, offset: 848)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1201, file: !1202, line: 501, baseType: !322, size: 8, offset: 856)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1201, file: !1202, line: 502, baseType: !322, size: 8, offset: 864)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1201, file: !1202, line: 503, baseType: !322, size: 8, offset: 872)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1201, file: !1202, line: 504, baseType: !322, size: 8, offset: 880)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1201, file: !1202, line: 505, baseType: !322, size: 8, offset: 888)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1201, file: !1202, line: 506, baseType: !322, size: 8, offset: 896)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1201, file: !1202, line: 507, baseType: !322, size: 8, offset: 904)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1201, file: !1202, line: 508, baseType: !322, size: 8, offset: 912)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1201, file: !1202, line: 509, baseType: !322, size: 8, offset: 920)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1201, file: !1202, line: 510, baseType: !322, size: 8, offset: 928)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1201, file: !1202, line: 511, baseType: !322, size: 8, offset: 936)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1201, file: !1202, line: 512, baseType: !322, size: 8, offset: 944)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1201, file: !1202, line: 513, baseType: !322, size: 8, offset: 952)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1201, file: !1202, line: 514, baseType: !322, size: 8, offset: 960)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1201, file: !1202, line: 515, baseType: !322, size: 8, offset: 968)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1201, file: !1202, line: 516, baseType: !322, size: 8, offset: 976)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1201, file: !1202, line: 517, baseType: !322, size: 8, offset: 984)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1201, file: !1202, line: 518, baseType: !322, size: 8, offset: 992)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1201, file: !1202, line: 519, baseType: !322, size: 8, offset: 1000)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1201, file: !1202, line: 520, baseType: !322, size: 8, offset: 1008)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1201, file: !1202, line: 521, baseType: !322, size: 8, offset: 1016)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1201, file: !1202, line: 522, baseType: !322, size: 8, offset: 1024)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1201, file: !1202, line: 523, baseType: !322, size: 8, offset: 1032)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1201, file: !1202, line: 524, baseType: !322, size: 8, offset: 1040)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1201, file: !1202, line: 525, baseType: !322, size: 8, offset: 1048)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1201, file: !1202, line: 526, baseType: !322, size: 8, offset: 1056)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1201, file: !1202, line: 527, baseType: !322, size: 8, offset: 1064)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1201, file: !1202, line: 528, baseType: !322, size: 8, offset: 1072)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1201, file: !1202, line: 529, baseType: !322, size: 8, offset: 1080)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1201, file: !1202, line: 530, baseType: !322, size: 8, offset: 1088)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1201, file: !1202, line: 531, baseType: !322, size: 8, offset: 1096)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1201, file: !1202, line: 532, baseType: !322, size: 8, offset: 1104)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1201, file: !1202, line: 533, baseType: !322, size: 8, offset: 1112)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1201, file: !1202, line: 534, baseType: !322, size: 8, offset: 1120)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1201, file: !1202, line: 535, baseType: !322, size: 8, offset: 1128)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1201, file: !1202, line: 536, baseType: !322, size: 8, offset: 1136)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1201, file: !1202, line: 537, baseType: !322, size: 8, offset: 1144)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1201, file: !1202, line: 538, baseType: !322, size: 8, offset: 1152)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1201, file: !1202, line: 539, baseType: !322, size: 8, offset: 1160)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1201, file: !1202, line: 540, baseType: !322, size: 8, offset: 1168)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1201, file: !1202, line: 541, baseType: !322, size: 8, offset: 1176)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1201, file: !1202, line: 542, baseType: !322, size: 8, offset: 1184)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1201, file: !1202, line: 543, baseType: !322, size: 8, offset: 1192)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1201, file: !1202, line: 544, baseType: !322, size: 8, offset: 1200)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1201, file: !1202, line: 545, baseType: !322, size: 8, offset: 1208)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1201, file: !1202, line: 546, baseType: !322, size: 8, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1201, file: !1202, line: 547, baseType: !322, size: 8, offset: 1224)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1201, file: !1202, line: 548, baseType: !322, size: 8, offset: 1232)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1201, file: !1202, line: 549, baseType: !322, size: 8, offset: 1240)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1201, file: !1202, line: 550, baseType: !322, size: 8, offset: 1248)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1201, file: !1202, line: 551, baseType: !322, size: 8, offset: 1256)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1201, file: !1202, line: 552, baseType: !322, size: 8, offset: 1264)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1201, file: !1202, line: 553, baseType: !322, size: 8, offset: 1272)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1201, file: !1202, line: 554, baseType: !322, size: 8, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1201, file: !1202, line: 555, baseType: !322, size: 8, offset: 1288)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1201, file: !1202, line: 556, baseType: !322, size: 8, offset: 1296)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1201, file: !1202, line: 557, baseType: !322, size: 8, offset: 1304)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1201, file: !1202, line: 558, baseType: !322, size: 8, offset: 1312)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1201, file: !1202, line: 559, baseType: !322, size: 8, offset: 1320)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1201, file: !1202, line: 560, baseType: !322, size: 8, offset: 1328)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1201, file: !1202, line: 561, baseType: !322, size: 8, offset: 1336)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1201, file: !1202, line: 562, baseType: !322, size: 8, offset: 1344)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1201, file: !1202, line: 563, baseType: !322, size: 8, offset: 1352)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1201, file: !1202, line: 564, baseType: !322, size: 8, offset: 1360)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1201, file: !1202, line: 565, baseType: !322, size: 8, offset: 1368)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1201, file: !1202, line: 566, baseType: !322, size: 8, offset: 1376)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1201, file: !1202, line: 567, baseType: !322, size: 8, offset: 1384)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1201, file: !1202, line: 568, baseType: !322, size: 8, offset: 1392)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1201, file: !1202, line: 569, baseType: !322, size: 8, offset: 1400)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1201, file: !1202, line: 570, baseType: !322, size: 8, offset: 1408)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1201, file: !1202, line: 571, baseType: !322, size: 8, offset: 1416)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1201, file: !1202, line: 572, baseType: !322, size: 8, offset: 1424)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1201, file: !1202, line: 573, baseType: !322, size: 8, offset: 1432)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1201, file: !1202, line: 574, baseType: !322, size: 8, offset: 1440)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !759, file: !4, line: 3405, baseType: !1368, size: 384)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1368, file: !4, line: 3353, baseType: !795, size: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1368, file: !4, line: 3356, baseType: !1372, size: 192, offset: 192)
!1372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1202, line: 578, size: 192, elements: !1373)
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1372, file: !1202, line: 580, baseType: !250, size: 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1372, file: !1202, line: 581, baseType: !250, size: 32, offset: 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1372, file: !1202, line: 582, baseType: !250, size: 32, offset: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1372, file: !1202, line: 583, baseType: !250, size: 32, offset: 96)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1372, file: !1202, line: 584, baseType: !249, size: 8, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1372, file: !1202, line: 585, baseType: !249, size: 8, offset: 136)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1372, file: !1202, line: 586, baseType: !249, size: 8, offset: 144)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1372, file: !1202, line: 587, baseType: !249, size: 8, offset: 152)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1372, file: !1202, line: 588, baseType: !249, size: 8, offset: 160)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1372, file: !1202, line: 589, baseType: !249, size: 8, offset: 168)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1372, file: !1202, line: 590, baseType: !249, size: 8, offset: 176)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !735, file: !232, line: 43, baseType: !725, size: 32, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !735, file: !232, line: 44, baseType: !5, size: 32, offset: 352)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !735, file: !232, line: 47, baseType: !756, size: 64, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !735, file: !232, line: 49, baseType: !1389, size: 32, offset: 448)
!1389 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !232, line: 35, baseType: !231)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !735, file: !232, line: 51, baseType: !250, size: 32, offset: 480)
!1391 = !DILocalVariable(name: "ap", scope: !722, file: !1, line: 37, type: !745)
!1392 = !DILocation(line: 0, scope: !722)
!1393 = !DILocation(line: 36, column: 3, scope: !722)
!1394 = !DILocation(line: 37, column: 3, scope: !722)
!1395 = !DILocation(line: 37, column: 11, scope: !722)
!1396 = !DILocation(line: 39, column: 3, scope: !722)
!1397 = !DILocation(line: 41, column: 10, scope: !722)
!1398 = !DILocation(line: 40, column: 3, scope: !722)
!1399 = !DILocation(line: 42, column: 14, scope: !722)
!1400 = !DILocation(line: 42, column: 27, scope: !722)
!1401 = !DILocation(line: 43, column: 3, scope: !722)
!1402 = !DILocation(line: 44, column: 3, scope: !722)
!1403 = !DILocation(line: 45, column: 1, scope: !722)
!1404 = distinct !DISubprogram(name: "pedwarn_c90", scope: !1, file: !1, line: 53, type: !723, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1405)
!1405 = !{!1406, !1407, !1408, !1409, !1410}
!1406 = !DILocalVariable(name: "location", arg: 1, scope: !1404, file: !1, line: 53, type: !725)
!1407 = !DILocalVariable(name: "opt", arg: 2, scope: !1404, file: !1, line: 53, type: !250)
!1408 = !DILocalVariable(name: "gmsgid", arg: 3, scope: !1404, file: !1, line: 53, type: !255)
!1409 = !DILocalVariable(name: "diagnostic", scope: !1404, file: !1, line: 55, type: !734)
!1410 = !DILocalVariable(name: "ap", scope: !1404, file: !1, line: 56, type: !745)
!1411 = !DILocation(line: 0, scope: !1404)
!1412 = !DILocation(line: 55, column: 3, scope: !1404)
!1413 = !DILocation(line: 56, column: 3, scope: !1404)
!1414 = !DILocation(line: 56, column: 11, scope: !1404)
!1415 = !DILocation(line: 58, column: 3, scope: !1404)
!1416 = !DILocation(line: 60, column: 10, scope: !1404)
!1417 = !DILocation(line: 59, column: 3, scope: !1404)
!1418 = !DILocation(line: 61, column: 14, scope: !1404)
!1419 = !DILocation(line: 61, column: 27, scope: !1404)
!1420 = !DILocation(line: 62, column: 3, scope: !1404)
!1421 = !DILocation(line: 63, column: 3, scope: !1404)
!1422 = !DILocation(line: 64, column: 1, scope: !1404)
