; ModuleID = 'rtl-error.bc'
source_filename = "rtl-error.c"
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
%union.tree_node = type opaque
%struct.line_map = type { i8*, i32, i32, i32, i8, i8, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.rtvec_def = type { i32, [1 x %struct.rtx_def*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@global_dc = external dso_local local_unnamed_addr global %struct.diagnostic_context*, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"unrecognizable insn:\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"insn does not satisfy its constraints:\00", align 1
@input_location = external dso_local local_unnamed_addr global i32, align 4

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !305 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !318, metadata !DIExpression()), !dbg !320
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !319, metadata !DIExpression()), !dbg !320
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !321
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !322
  ret i32 %call, !dbg !323
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !324 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !328
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !329
  ret i32 %call, !dbg !330
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !331 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !394, metadata !DIExpression()), !dbg !395
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !396
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !396
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !396
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !396
  %cmp = icmp uge i8* %0, %1, !dbg !396
  %conv1 = zext i1 %cmp to i64, !dbg !396
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !396
  %tobool = icmp eq i64 %expval, 0, !dbg !396
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !396

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !396
  br label %cond.end, !dbg !396

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !396
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !396
  %2 = load i8, i8* %0, align 1, !dbg !396
  %conv3 = zext i8 %2 to i32, !dbg !396
  br label %cond.end, !dbg !396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !396
  ret i32 %cond, !dbg !397
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !398 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !400, metadata !DIExpression()), !dbg !401
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !402
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !402
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !402
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !402
  %cmp = icmp uge i8* %0, %1, !dbg !402
  %conv1 = zext i1 %cmp to i64, !dbg !402
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !402
  %tobool = icmp eq i64 %expval, 0, !dbg !402
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !402

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !402
  br label %cond.end, !dbg !402

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !402
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !402
  %2 = load i8, i8* %0, align 1, !dbg !402
  %conv3 = zext i8 %2 to i32, !dbg !402
  br label %cond.end, !dbg !402

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !402
  ret i32 %cond, !dbg !403
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !404 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !405
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !405
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !405
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !405
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !405
  %cmp = icmp uge i8* %1, %2, !dbg !405
  %conv1 = zext i1 %cmp to i64, !dbg !405
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !405
  %tobool = icmp eq i64 %expval, 0, !dbg !405
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !405

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !405
  br label %cond.end, !dbg !405

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !405
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !405
  %3 = load i8, i8* %1, align 1, !dbg !405
  %conv3 = zext i8 %3 to i32, !dbg !405
  br label %cond.end, !dbg !405

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !405
  ret i32 %cond, !dbg !406
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !407 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !411, metadata !DIExpression()), !dbg !412
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !413
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !414
  ret i32 %call, !dbg !415
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !416 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !420, metadata !DIExpression()), !dbg !422
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !421, metadata !DIExpression()), !dbg !422
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !423
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !423
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !423
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !423
  %cmp = icmp uge i8* %0, %1, !dbg !423
  %conv1 = zext i1 %cmp to i64, !dbg !423
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !423
  %tobool = icmp eq i64 %expval, 0, !dbg !423
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !423

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !423
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !423
  br label %cond.end, !dbg !423

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !423
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !423
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !423
  store i8 %conv2, i8* %0, align 1, !dbg !423
  %conv6 = and i32 %__c, 255, !dbg !423
  br label %cond.end, !dbg !423

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !423
  ret i32 %cond, !dbg !424
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !425 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !427, metadata !DIExpression()), !dbg !429
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !428, metadata !DIExpression()), !dbg !429
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !430
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !430
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !430
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !430
  %cmp = icmp uge i8* %0, %1, !dbg !430
  %conv1 = zext i1 %cmp to i64, !dbg !430
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !430
  %tobool = icmp eq i64 %expval, 0, !dbg !430
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !430

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !430
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !430
  br label %cond.end, !dbg !430

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !430
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !430
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !430
  store i8 %conv2, i8* %0, align 1, !dbg !430
  %conv6 = and i32 %__c, 255, !dbg !430
  br label %cond.end, !dbg !430

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !430
  ret i32 %cond, !dbg !431
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !434, metadata !DIExpression()), !dbg !435
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !436
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !436
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !436
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !436
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !436
  %cmp = icmp uge i8* %1, %2, !dbg !436
  %conv1 = zext i1 %cmp to i64, !dbg !436
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !436
  %tobool = icmp eq i64 %expval, 0, !dbg !436
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !436

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !436
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !436
  br label %cond.end, !dbg !436

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !436
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !436
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !436
  store i8 %conv4, i8* %1, align 1, !dbg !436
  %conv6 = and i32 %__c, 255, !dbg !436
  br label %cond.end, !dbg !436

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !436
  ret i32 %cond, !dbg !437
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !438 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !444, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata i64* %__n, metadata !445, metadata !DIExpression()), !dbg !447
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !446, metadata !DIExpression()), !dbg !447
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !448
  ret i64 %call, !dbg !449
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !450 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !452, metadata !DIExpression()), !dbg !453
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !454
  %0 = load i32, i32* %_flags, align 8, !dbg !454
  %and = lshr i32 %0, 4, !dbg !454
  %and.lobit = and i32 %and, 1, !dbg !454
  ret i32 %and.lobit, !dbg !455
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !456 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !458, metadata !DIExpression()), !dbg !459
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !460
  %0 = load i32, i32* %_flags, align 8, !dbg !460
  %and = lshr i32 %0, 5, !dbg !460
  %and.lobit = and i32 %and, 1, !dbg !460
  ret i32 %and.lobit, !dbg !461
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !462 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !465, metadata !DIExpression()), !dbg !466
  %__c.off = add i32 %__c, 128, !dbg !467
  %0 = icmp ult i32 %__c.off, 384, !dbg !467
  br i1 %0, label %cond.true, label %cond.end, !dbg !467

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !468
  %1 = load i32*, i32** %call, align 8, !dbg !469
  %idxprom = sext i32 %__c to i64, !dbg !470
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !470
  %2 = load i32, i32* %arrayidx, align 4, !dbg !470
  br label %cond.end, !dbg !471

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !471
  ret i32 %cond, !dbg !472
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !473 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !475, metadata !DIExpression()), !dbg !476
  %__c.off = add i32 %__c, 128, !dbg !477
  %0 = icmp ult i32 %__c.off, 384, !dbg !477
  br i1 %0, label %cond.true, label %cond.end, !dbg !477

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !478
  %1 = load i32*, i32** %call, align 8, !dbg !479
  %idxprom = sext i32 %__c to i64, !dbg !480
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !480
  %2 = load i32, i32* %arrayidx, align 4, !dbg !480
  br label %cond.end, !dbg !481

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !481
  ret i32 %cond, !dbg !482
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !483 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !488, metadata !DIExpression()), !dbg !489
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !490
  %conv = trunc i64 %call to i32, !dbg !491
  ret i32 %conv, !dbg !492
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !493 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !497, metadata !DIExpression()), !dbg !498
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !499
  ret i64 %call, !dbg !500
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !501 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !506, metadata !DIExpression()), !dbg !507
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !508
  ret i64 %call, !dbg !509
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !510 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !521, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i8* %__base, metadata !522, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !523, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %__size, metadata !524, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !525, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 0, metadata !526, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !527, metadata !DIExpression()), !dbg !531
  br label %while.cond, !dbg !532

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !533
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !531
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !527, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !526, metadata !DIExpression()), !dbg !531
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !534
  br i1 %cmp, label %while.body, label %cleanup, !dbg !532

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !535
  %div = lshr i64 %add, 1, !dbg !537
  call void @llvm.dbg.value(metadata i64 %div, metadata !528, metadata !DIExpression()), !dbg !531
  %mul = mul i64 %div, %__size, !dbg !538
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !539
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !529, metadata !DIExpression()), !dbg !531
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !540
  call void @llvm.dbg.value(metadata i32 %call, metadata !530, metadata !DIExpression()), !dbg !531
  %cmp1 = icmp slt i32 %call, 0, !dbg !541
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !543

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !544
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !546

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !547
  call void @llvm.dbg.value(metadata i64 %add4, metadata !526, metadata !DIExpression()), !dbg !531
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !531
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !531
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !527, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !526, metadata !DIExpression()), !dbg !531
  br label %while.cond, !dbg !532, !llvm.loop !548

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !531
  ret i8* %retval.0, !dbg !550
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !551 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !557, metadata !DIExpression()), !dbg !558
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !559
  ret double %call, !dbg !560
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !561 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !570, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !571, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.value(metadata i32 %base, metadata !572, metadata !DIExpression()), !dbg !573
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !574
  ret i64 %call, !dbg !575
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !576 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !582, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !583, metadata !DIExpression()), !dbg !585
  call void @llvm.dbg.value(metadata i32 %base, metadata !584, metadata !DIExpression()), !dbg !585
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !586
  ret i64 %call, !dbg !587
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !588 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !599, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !600, metadata !DIExpression()), !dbg !602
  call void @llvm.dbg.value(metadata i32 %base, metadata !601, metadata !DIExpression()), !dbg !602
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !603
  ret i64 %call, !dbg !604
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !605 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !609, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !610, metadata !DIExpression()), !dbg !612
  call void @llvm.dbg.value(metadata i32 %base, metadata !611, metadata !DIExpression()), !dbg !612
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !613
  ret i64 %call, !dbg !614
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !615 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !657, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !658, metadata !DIExpression()), !dbg !659
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !660
  ret i32 %call, !dbg !661
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !662 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !664, metadata !DIExpression()), !dbg !666
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !665, metadata !DIExpression()), !dbg !666
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !667
  ret i32 %call, !dbg !668
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !669 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !674, metadata !DIExpression()), !dbg !675
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #7, !dbg !676
  ret i32 %call, !dbg !677
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !678 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !682, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !683, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !684, metadata !DIExpression()), !dbg !686
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !685, metadata !DIExpression()), !dbg !686
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #7, !dbg !687
  ret i32 %call, !dbg !688
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !689 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !693, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !694, metadata !DIExpression()), !dbg !696
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !695, metadata !DIExpression()), !dbg !696
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !695, metadata !DIExpression(DW_OP_deref)), !dbg !696
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !697
  ret i32 %call, !dbg !698
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !699 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !703, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i8* %__path, metadata !704, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !705, metadata !DIExpression()), !dbg !707
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !706, metadata !DIExpression()), !dbg !707
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !706, metadata !DIExpression(DW_OP_deref)), !dbg !707
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !708
  ret i32 %call, !dbg !709
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !710 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !734, metadata !DIExpression()), !dbg !736
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !735, metadata !DIExpression()), !dbg !736
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !737
  ret i32 %call, !dbg !738
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !739 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !741, metadata !DIExpression()), !dbg !743
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !742, metadata !DIExpression()), !dbg !743
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !744
  ret i32 %call, !dbg !745
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !746 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !750, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !751, metadata !DIExpression()), !dbg !752
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #7, !dbg !753
  ret i32 %call, !dbg !754
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !755 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !759, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !760, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !761, metadata !DIExpression()), !dbg !763
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !762, metadata !DIExpression()), !dbg !763
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #7, !dbg !764
  ret i32 %call, !dbg !765
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @error_for_asm(%struct.rtx_def* %insn, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !766 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !912, metadata !DIExpression()), !dbg !921
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !913, metadata !DIExpression()), !dbg !921
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !922
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !922
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !914, metadata !DIExpression()), !dbg !923
  call void @llvm.va_start(i8* %0), !dbg !924
  call fastcc void @diagnostic_for_asm(%struct.rtx_def* %insn, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 4) #8, !dbg !925
  call void @llvm.va_end(i8* nonnull %0), !dbg !926
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !927
  ret void, !dbg !927
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: nounwind uwtable
define internal fastcc void @diagnostic_for_asm(%struct.rtx_def* %insn, i8* %msg, [1 x %struct.__va_list_tag]* %args_ptr, i32 %kind) unnamed_addr #5 !dbg !928 {
entry:
  %diagnostic = alloca %struct.diagnostic_info, align 8
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !934, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i8* %msg, metadata !935, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata [1 x %struct.__va_list_tag]* %args_ptr, metadata !936, metadata !DIExpression()), !dbg !963
  call void @llvm.dbg.value(metadata i32 %kind, metadata !937, metadata !DIExpression()), !dbg !963
  %0 = bitcast %struct.diagnostic_info* %diagnostic to i8*, !dbg !964
  call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #6, !dbg !964
  %call = tail call fastcc i32 @location_for_asm(%struct.rtx_def* %insn) #8, !dbg !965
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !938, metadata !DIExpression(DW_OP_deref)), !dbg !963
  call void @diagnostic_set_info(%struct.diagnostic_info* nonnull %diagnostic, i8* %msg, [1 x %struct.__va_list_tag]* %args_ptr, i32 %call, i32 %kind) #7, !dbg !966
  %1 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !967
  call void @llvm.dbg.value(metadata %struct.diagnostic_info* %diagnostic, metadata !938, metadata !DIExpression(DW_OP_deref)), !dbg !963
  %call1 = call zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context* %1, %struct.diagnostic_info* nonnull %diagnostic) #7, !dbg !967
  call void @llvm.lifetime.end.p0i8(i64 64, i8* nonnull %0) #6, !dbg !968
  ret void, !dbg !968
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local void @warning_for_asm(%struct.rtx_def* %insn, i8* %gmsgid, ...) local_unnamed_addr #5 !dbg !969 {
entry:
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !971, metadata !DIExpression()), !dbg !974
  call void @llvm.dbg.value(metadata i8* %gmsgid, metadata !972, metadata !DIExpression()), !dbg !974
  %0 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !975
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #6, !dbg !975
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !973, metadata !DIExpression()), !dbg !976
  call void @llvm.va_start(i8* %0), !dbg !977
  call fastcc void @diagnostic_for_asm(%struct.rtx_def* %insn, i8* %gmsgid, [1 x %struct.__va_list_tag]* nonnull %ap, i32 6) #8, !dbg !978
  call void @llvm.va_end(i8* nonnull %0), !dbg !979
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #6, !dbg !980
  ret void, !dbg !980
}

; Function Attrs: nounwind uwtable
define dso_local void @_fatal_insn(i8* %msgid, %struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) local_unnamed_addr #5 !dbg !981 {
entry:
  call void @llvm.dbg.value(metadata i8* %msgid, metadata !985, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !986, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %file, metadata !987, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i32 %line, metadata !988, metadata !DIExpression()), !dbg !990
  call void @llvm.dbg.value(metadata i8* %function, metadata !989, metadata !DIExpression()), !dbg !990
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %msgid) #7, !dbg !991
  %0 = load %struct.diagnostic_context*, %struct.diagnostic_context** @global_dc, align 8, !dbg !992
  %arrayidx = getelementptr inbounds %struct.diagnostic_context, %struct.diagnostic_context* %0, i64 0, i32 1, i64 4, !dbg !992
  %1 = load i32, i32* %arrayidx, align 8, !dbg !993
  %dec = add nsw i32 %1, -1, !dbg !993
  store i32 %dec, i32* %arrayidx, align 8, !dbg !993
  tail call void @debug_rtx(%struct.rtx_def* %insn) #7, !dbg !994
  tail call void @fancy_abort(i8* %file, i32 %line, i8* %function) #7, !dbg !995
  ret void, !dbg !996
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

declare dso_local void @debug_rtx(%struct.rtx_def*) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @_fatal_insn_not_found(%struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) local_unnamed_addr #5 !dbg !997 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !1001, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %file, metadata !1002, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i32 %line, metadata !1003, metadata !DIExpression()), !dbg !1005
  call void @llvm.dbg.value(metadata i8* %function, metadata !1004, metadata !DIExpression()), !dbg !1005
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !1006
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 1, !dbg !1006
  %rt_int = bitcast %union.rtunion_def* %0 to i32*, !dbg !1006
  %1 = load i32, i32* %rt_int, align 8, !dbg !1006
  %cmp = icmp slt i32 %1, 0, !dbg !1008
  br i1 %cmp, label %if.then, label %if.else, !dbg !1009

if.then:                                          ; preds = %entry
  tail call void @_fatal_insn(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) #8, !dbg !1010
  br label %if.end, !dbg !1010

if.else:                                          ; preds = %entry
  tail call void @_fatal_insn(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), %struct.rtx_def* %insn, i8* %file, i32 %line, i8* %function) #8, !dbg !1011
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !1012
}

declare dso_local void @diagnostic_set_info(%struct.diagnostic_info*, i8*, [1 x %struct.__va_list_tag]*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @location_for_asm(%struct.rtx_def* %insn) unnamed_addr #5 !dbg !1013 {
entry:
  call void @llvm.dbg.value(metadata %struct.rtx_def* %insn, metadata !1017, metadata !DIExpression()), !dbg !1021
  %u = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %insn, i64 0, i32 1, !dbg !1022
  %0 = getelementptr inbounds %union.u, %union.u* %u, i64 1, i32 0, i32 0, i64 0, !dbg !1022
  %rt_rtx = bitcast %union.rtunion_def* %0 to %struct.rtx_def**, !dbg !1022
  %1 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx, align 8, !dbg !1022
  call void @llvm.dbg.value(metadata %struct.rtx_def* %1, metadata !1018, metadata !DIExpression()), !dbg !1021
  %2 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 0, !dbg !1023
  %bf.load = load i32, i32* %2, align 8, !dbg !1023
  %bf.clear = and i32 %bf.load, 65535, !dbg !1023
  %cmp = icmp eq i32 %bf.clear, 23, !dbg !1025
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !1026

land.lhs.true:                                    ; preds = %entry
  %3 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 1, !dbg !1027
  %4 = bitcast %union.rtunion_def* %3 to i32**, !dbg !1027
  %5 = load i32*, i32** %4, align 8, !dbg !1027
  %bf.load5 = load i32, i32* %5, align 8, !dbg !1027
  %bf.clear6 = and i32 %bf.load5, 65535, !dbg !1027
  %cmp7 = icmp eq i32 %bf.clear6, 17, !dbg !1028
  br i1 %cmp7, label %if.then, label %if.else, !dbg !1029

if.then:                                          ; preds = %land.lhs.true
  %6 = bitcast i32* %5 to %struct.rtx_def*, !dbg !1029
  call void @llvm.dbg.value(metadata %struct.rtx_def* %6, metadata !1019, metadata !DIExpression()), !dbg !1021
  br label %if.end63, !dbg !1030

if.else:                                          ; preds = %land.lhs.true, %entry
  %cmp14 = icmp eq i32 %bf.clear, 17, !dbg !1031
  br i1 %cmp14, label %if.end63, label %if.else16, !dbg !1033

if.else16:                                        ; preds = %if.else
  %cmp19 = icmp eq i32 %bf.clear, 15, !dbg !1034
  br i1 %cmp19, label %land.lhs.true20, label %if.else39, !dbg !1036

land.lhs.true20:                                  ; preds = %if.else16
  %arrayidx23 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1037
  %rt_rtvec = bitcast %union.rtunion_def* %arrayidx23 to %struct.rtvec_def**, !dbg !1037
  %7 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec, align 8, !dbg !1037
  %arrayidx24 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %7, i64 0, i32 1, i64 0, !dbg !1037
  %8 = bitcast %struct.rtx_def** %arrayidx24 to i32**, !dbg !1037
  %9 = load i32*, i32** %8, align 8, !dbg !1037
  %bf.load25 = load i32, i32* %9, align 8, !dbg !1037
  %bf.clear26 = and i32 %bf.load25, 65535, !dbg !1037
  %cmp27 = icmp eq i32 %bf.clear26, 23, !dbg !1038
  br i1 %cmp27, label %if.then28, label %if.else39, !dbg !1039

if.then28:                                        ; preds = %land.lhs.true20
  %10 = getelementptr inbounds i32, i32* %9, i64 4, !dbg !1040
  %rt_rtx38 = bitcast i32* %10 to %struct.rtx_def**, !dbg !1040
  %11 = load %struct.rtx_def*, %struct.rtx_def** %rt_rtx38, align 8, !dbg !1040
  call void @llvm.dbg.value(metadata %struct.rtx_def* %11, metadata !1019, metadata !DIExpression()), !dbg !1021
  br label %if.end63, !dbg !1041

if.else39:                                        ; preds = %land.lhs.true20, %if.else16
  br i1 %cmp19, label %land.lhs.true43, label %if.end63, !dbg !1042

land.lhs.true43:                                  ; preds = %if.else39
  %arrayidx46 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %1, i64 0, i32 1, i32 0, i32 0, i64 0, !dbg !1044
  %rt_rtvec47 = bitcast %union.rtunion_def* %arrayidx46 to %struct.rtvec_def**, !dbg !1044
  %12 = load %struct.rtvec_def*, %struct.rtvec_def** %rt_rtvec47, align 8, !dbg !1044
  %arrayidx49 = getelementptr inbounds %struct.rtvec_def, %struct.rtvec_def* %12, i64 0, i32 1, i64 0, !dbg !1044
  %13 = bitcast %struct.rtx_def** %arrayidx49 to i32**, !dbg !1044
  %14 = load i32*, i32** %13, align 8, !dbg !1044
  %bf.load50 = load i32, i32* %14, align 8, !dbg !1044
  %bf.clear51 = and i32 %bf.load50, 65535, !dbg !1044
  %cmp52 = icmp eq i32 %bf.clear51, 17, !dbg !1045
  br i1 %cmp52, label %if.then53, label %if.end63, !dbg !1046

if.then53:                                        ; preds = %land.lhs.true43
  %15 = bitcast i32* %14 to %struct.rtx_def*, !dbg !1046
  call void @llvm.dbg.value(metadata %struct.rtx_def* %15, metadata !1019, metadata !DIExpression()), !dbg !1021
  br label %if.end63, !dbg !1047

if.end63:                                         ; preds = %if.else, %if.then53, %land.lhs.true43, %if.else39, %if.then28, %if.then
  %asmop.3 = phi %struct.rtx_def* [ %6, %if.then ], [ %1, %if.else ], [ %11, %if.then28 ], [ %15, %if.then53 ], [ null, %land.lhs.true43 ], [ null, %if.else39 ], !dbg !1048
  call void @llvm.dbg.value(metadata %struct.rtx_def* %asmop.3, metadata !1019, metadata !DIExpression()), !dbg !1021
  %tobool = icmp eq %struct.rtx_def* %asmop.3, null, !dbg !1049
  br i1 %tobool, label %if.else68, label %if.then64, !dbg !1051

if.then64:                                        ; preds = %if.end63
  %u65 = getelementptr inbounds %struct.rtx_def, %struct.rtx_def* %asmop.3, i64 0, i32 1, !dbg !1052
  %16 = getelementptr inbounds %union.u, %union.u* %u65, i64 1, i32 0, i32 0, i64 1, !dbg !1052
  %rt_uint = bitcast %union.rtunion_def* %16 to i32*, !dbg !1052
  br label %if.end69, !dbg !1053

if.else68:                                        ; preds = %if.end63
  br label %if.end69

if.end69:                                         ; preds = %if.else68, %if.then64
  %loc.0.in = phi i32* [ %rt_uint, %if.then64 ], [ @input_location, %if.else68 ]
  %loc.0 = load i32, i32* %loc.0.in, align 4, !dbg !1054
  call void @llvm.dbg.value(metadata i32 %loc.0, metadata !1020, metadata !DIExpression()), !dbg !1021
  ret i32 %loc.0, !dbg !1055
}

declare dso_local zeroext i8 @diagnostic_report_diagnostic(%struct.diagnostic_context*, %struct.diagnostic_info*) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!301, !302, !303}
!llvm.ident = !{!304}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !291, nameTableKind: None)
!1 = !DIFile(filename: "rtl-error.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !132, !148}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !4, line: 7, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131}
!7 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!131 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!132 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !133, line: 29, baseType: !5, size: 32, elements: !134)
!133 = !DIFile(filename: "./diagnostic.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147}
!135 = !DIEnumerator(name: "DK_UNSPECIFIED", value: 0, isUnsigned: true)
!136 = !DIEnumerator(name: "DK_IGNORED", value: 1, isUnsigned: true)
!137 = !DIEnumerator(name: "DK_FATAL", value: 2, isUnsigned: true)
!138 = !DIEnumerator(name: "DK_ICE", value: 3, isUnsigned: true)
!139 = !DIEnumerator(name: "DK_ERROR", value: 4, isUnsigned: true)
!140 = !DIEnumerator(name: "DK_SORRY", value: 5, isUnsigned: true)
!141 = !DIEnumerator(name: "DK_WARNING", value: 6, isUnsigned: true)
!142 = !DIEnumerator(name: "DK_ANACHRONISM", value: 7, isUnsigned: true)
!143 = !DIEnumerator(name: "DK_NOTE", value: 8, isUnsigned: true)
!144 = !DIEnumerator(name: "DK_DEBUG", value: 9, isUnsigned: true)
!145 = !DIEnumerator(name: "DK_PEDWARN", value: 10, isUnsigned: true)
!146 = !DIEnumerator(name: "DK_PERMERROR", value: 11, isUnsigned: true)
!147 = !DIEnumerator(name: "DK_LAST_DIAGNOSTIC_KIND", value: 12, isUnsigned: true)
!148 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtx_code", file: !149, line: 45, baseType: !5, size: 32, elements: !150)
!149 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290}
!151 = !DIEnumerator(name: "UNKNOWN", value: 0, isUnsigned: true)
!152 = !DIEnumerator(name: "VALUE", value: 1, isUnsigned: true)
!153 = !DIEnumerator(name: "DEBUG_EXPR", value: 2, isUnsigned: true)
!154 = !DIEnumerator(name: "EXPR_LIST", value: 3, isUnsigned: true)
!155 = !DIEnumerator(name: "INSN_LIST", value: 4, isUnsigned: true)
!156 = !DIEnumerator(name: "SEQUENCE", value: 5, isUnsigned: true)
!157 = !DIEnumerator(name: "ADDRESS", value: 6, isUnsigned: true)
!158 = !DIEnumerator(name: "DEBUG_INSN", value: 7, isUnsigned: true)
!159 = !DIEnumerator(name: "INSN", value: 8, isUnsigned: true)
!160 = !DIEnumerator(name: "JUMP_INSN", value: 9, isUnsigned: true)
!161 = !DIEnumerator(name: "CALL_INSN", value: 10, isUnsigned: true)
!162 = !DIEnumerator(name: "BARRIER", value: 11, isUnsigned: true)
!163 = !DIEnumerator(name: "CODE_LABEL", value: 12, isUnsigned: true)
!164 = !DIEnumerator(name: "NOTE", value: 13, isUnsigned: true)
!165 = !DIEnumerator(name: "COND_EXEC", value: 14, isUnsigned: true)
!166 = !DIEnumerator(name: "PARALLEL", value: 15, isUnsigned: true)
!167 = !DIEnumerator(name: "ASM_INPUT", value: 16, isUnsigned: true)
!168 = !DIEnumerator(name: "ASM_OPERANDS", value: 17, isUnsigned: true)
!169 = !DIEnumerator(name: "UNSPEC", value: 18, isUnsigned: true)
!170 = !DIEnumerator(name: "UNSPEC_VOLATILE", value: 19, isUnsigned: true)
!171 = !DIEnumerator(name: "ADDR_VEC", value: 20, isUnsigned: true)
!172 = !DIEnumerator(name: "ADDR_DIFF_VEC", value: 21, isUnsigned: true)
!173 = !DIEnumerator(name: "PREFETCH", value: 22, isUnsigned: true)
!174 = !DIEnumerator(name: "SET", value: 23, isUnsigned: true)
!175 = !DIEnumerator(name: "USE", value: 24, isUnsigned: true)
!176 = !DIEnumerator(name: "CLOBBER", value: 25, isUnsigned: true)
!177 = !DIEnumerator(name: "CALL", value: 26, isUnsigned: true)
!178 = !DIEnumerator(name: "RETURN", value: 27, isUnsigned: true)
!179 = !DIEnumerator(name: "EH_RETURN", value: 28, isUnsigned: true)
!180 = !DIEnumerator(name: "TRAP_IF", value: 29, isUnsigned: true)
!181 = !DIEnumerator(name: "CONST_INT", value: 30, isUnsigned: true)
!182 = !DIEnumerator(name: "CONST_FIXED", value: 31, isUnsigned: true)
!183 = !DIEnumerator(name: "CONST_DOUBLE", value: 32, isUnsigned: true)
!184 = !DIEnumerator(name: "CONST_VECTOR", value: 33, isUnsigned: true)
!185 = !DIEnumerator(name: "CONST_STRING", value: 34, isUnsigned: true)
!186 = !DIEnumerator(name: "CONST", value: 35, isUnsigned: true)
!187 = !DIEnumerator(name: "PC", value: 36, isUnsigned: true)
!188 = !DIEnumerator(name: "REG", value: 37, isUnsigned: true)
!189 = !DIEnumerator(name: "SCRATCH", value: 38, isUnsigned: true)
!190 = !DIEnumerator(name: "SUBREG", value: 39, isUnsigned: true)
!191 = !DIEnumerator(name: "STRICT_LOW_PART", value: 40, isUnsigned: true)
!192 = !DIEnumerator(name: "CONCAT", value: 41, isUnsigned: true)
!193 = !DIEnumerator(name: "CONCATN", value: 42, isUnsigned: true)
!194 = !DIEnumerator(name: "MEM", value: 43, isUnsigned: true)
!195 = !DIEnumerator(name: "LABEL_REF", value: 44, isUnsigned: true)
!196 = !DIEnumerator(name: "SYMBOL_REF", value: 45, isUnsigned: true)
!197 = !DIEnumerator(name: "CC0", value: 46, isUnsigned: true)
!198 = !DIEnumerator(name: "IF_THEN_ELSE", value: 47, isUnsigned: true)
!199 = !DIEnumerator(name: "COMPARE", value: 48, isUnsigned: true)
!200 = !DIEnumerator(name: "PLUS", value: 49, isUnsigned: true)
!201 = !DIEnumerator(name: "MINUS", value: 50, isUnsigned: true)
!202 = !DIEnumerator(name: "NEG", value: 51, isUnsigned: true)
!203 = !DIEnumerator(name: "MULT", value: 52, isUnsigned: true)
!204 = !DIEnumerator(name: "SS_MULT", value: 53, isUnsigned: true)
!205 = !DIEnumerator(name: "US_MULT", value: 54, isUnsigned: true)
!206 = !DIEnumerator(name: "DIV", value: 55, isUnsigned: true)
!207 = !DIEnumerator(name: "SS_DIV", value: 56, isUnsigned: true)
!208 = !DIEnumerator(name: "US_DIV", value: 57, isUnsigned: true)
!209 = !DIEnumerator(name: "MOD", value: 58, isUnsigned: true)
!210 = !DIEnumerator(name: "UDIV", value: 59, isUnsigned: true)
!211 = !DIEnumerator(name: "UMOD", value: 60, isUnsigned: true)
!212 = !DIEnumerator(name: "AND", value: 61, isUnsigned: true)
!213 = !DIEnumerator(name: "IOR", value: 62, isUnsigned: true)
!214 = !DIEnumerator(name: "XOR", value: 63, isUnsigned: true)
!215 = !DIEnumerator(name: "NOT", value: 64, isUnsigned: true)
!216 = !DIEnumerator(name: "ASHIFT", value: 65, isUnsigned: true)
!217 = !DIEnumerator(name: "ROTATE", value: 66, isUnsigned: true)
!218 = !DIEnumerator(name: "ASHIFTRT", value: 67, isUnsigned: true)
!219 = !DIEnumerator(name: "LSHIFTRT", value: 68, isUnsigned: true)
!220 = !DIEnumerator(name: "ROTATERT", value: 69, isUnsigned: true)
!221 = !DIEnumerator(name: "SMIN", value: 70, isUnsigned: true)
!222 = !DIEnumerator(name: "SMAX", value: 71, isUnsigned: true)
!223 = !DIEnumerator(name: "UMIN", value: 72, isUnsigned: true)
!224 = !DIEnumerator(name: "UMAX", value: 73, isUnsigned: true)
!225 = !DIEnumerator(name: "PRE_DEC", value: 74, isUnsigned: true)
!226 = !DIEnumerator(name: "PRE_INC", value: 75, isUnsigned: true)
!227 = !DIEnumerator(name: "POST_DEC", value: 76, isUnsigned: true)
!228 = !DIEnumerator(name: "POST_INC", value: 77, isUnsigned: true)
!229 = !DIEnumerator(name: "PRE_MODIFY", value: 78, isUnsigned: true)
!230 = !DIEnumerator(name: "POST_MODIFY", value: 79, isUnsigned: true)
!231 = !DIEnumerator(name: "NE", value: 80, isUnsigned: true)
!232 = !DIEnumerator(name: "EQ", value: 81, isUnsigned: true)
!233 = !DIEnumerator(name: "GE", value: 82, isUnsigned: true)
!234 = !DIEnumerator(name: "GT", value: 83, isUnsigned: true)
!235 = !DIEnumerator(name: "LE", value: 84, isUnsigned: true)
!236 = !DIEnumerator(name: "LT", value: 85, isUnsigned: true)
!237 = !DIEnumerator(name: "GEU", value: 86, isUnsigned: true)
!238 = !DIEnumerator(name: "GTU", value: 87, isUnsigned: true)
!239 = !DIEnumerator(name: "LEU", value: 88, isUnsigned: true)
!240 = !DIEnumerator(name: "LTU", value: 89, isUnsigned: true)
!241 = !DIEnumerator(name: "UNORDERED", value: 90, isUnsigned: true)
!242 = !DIEnumerator(name: "ORDERED", value: 91, isUnsigned: true)
!243 = !DIEnumerator(name: "UNEQ", value: 92, isUnsigned: true)
!244 = !DIEnumerator(name: "UNGE", value: 93, isUnsigned: true)
!245 = !DIEnumerator(name: "UNGT", value: 94, isUnsigned: true)
!246 = !DIEnumerator(name: "UNLE", value: 95, isUnsigned: true)
!247 = !DIEnumerator(name: "UNLT", value: 96, isUnsigned: true)
!248 = !DIEnumerator(name: "LTGT", value: 97, isUnsigned: true)
!249 = !DIEnumerator(name: "SIGN_EXTEND", value: 98, isUnsigned: true)
!250 = !DIEnumerator(name: "ZERO_EXTEND", value: 99, isUnsigned: true)
!251 = !DIEnumerator(name: "TRUNCATE", value: 100, isUnsigned: true)
!252 = !DIEnumerator(name: "FLOAT_EXTEND", value: 101, isUnsigned: true)
!253 = !DIEnumerator(name: "FLOAT_TRUNCATE", value: 102, isUnsigned: true)
!254 = !DIEnumerator(name: "FLOAT", value: 103, isUnsigned: true)
!255 = !DIEnumerator(name: "FIX", value: 104, isUnsigned: true)
!256 = !DIEnumerator(name: "UNSIGNED_FLOAT", value: 105, isUnsigned: true)
!257 = !DIEnumerator(name: "UNSIGNED_FIX", value: 106, isUnsigned: true)
!258 = !DIEnumerator(name: "FRACT_CONVERT", value: 107, isUnsigned: true)
!259 = !DIEnumerator(name: "UNSIGNED_FRACT_CONVERT", value: 108, isUnsigned: true)
!260 = !DIEnumerator(name: "SAT_FRACT", value: 109, isUnsigned: true)
!261 = !DIEnumerator(name: "UNSIGNED_SAT_FRACT", value: 110, isUnsigned: true)
!262 = !DIEnumerator(name: "ABS", value: 111, isUnsigned: true)
!263 = !DIEnumerator(name: "SQRT", value: 112, isUnsigned: true)
!264 = !DIEnumerator(name: "BSWAP", value: 113, isUnsigned: true)
!265 = !DIEnumerator(name: "FFS", value: 114, isUnsigned: true)
!266 = !DIEnumerator(name: "CLZ", value: 115, isUnsigned: true)
!267 = !DIEnumerator(name: "CTZ", value: 116, isUnsigned: true)
!268 = !DIEnumerator(name: "POPCOUNT", value: 117, isUnsigned: true)
!269 = !DIEnumerator(name: "PARITY", value: 118, isUnsigned: true)
!270 = !DIEnumerator(name: "SIGN_EXTRACT", value: 119, isUnsigned: true)
!271 = !DIEnumerator(name: "ZERO_EXTRACT", value: 120, isUnsigned: true)
!272 = !DIEnumerator(name: "HIGH", value: 121, isUnsigned: true)
!273 = !DIEnumerator(name: "LO_SUM", value: 122, isUnsigned: true)
!274 = !DIEnumerator(name: "VEC_MERGE", value: 123, isUnsigned: true)
!275 = !DIEnumerator(name: "VEC_SELECT", value: 124, isUnsigned: true)
!276 = !DIEnumerator(name: "VEC_CONCAT", value: 125, isUnsigned: true)
!277 = !DIEnumerator(name: "VEC_DUPLICATE", value: 126, isUnsigned: true)
!278 = !DIEnumerator(name: "SS_PLUS", value: 127, isUnsigned: true)
!279 = !DIEnumerator(name: "US_PLUS", value: 128, isUnsigned: true)
!280 = !DIEnumerator(name: "SS_MINUS", value: 129, isUnsigned: true)
!281 = !DIEnumerator(name: "SS_NEG", value: 130, isUnsigned: true)
!282 = !DIEnumerator(name: "US_NEG", value: 131, isUnsigned: true)
!283 = !DIEnumerator(name: "SS_ABS", value: 132, isUnsigned: true)
!284 = !DIEnumerator(name: "SS_ASHIFT", value: 133, isUnsigned: true)
!285 = !DIEnumerator(name: "US_ASHIFT", value: 134, isUnsigned: true)
!286 = !DIEnumerator(name: "US_MINUS", value: 135, isUnsigned: true)
!287 = !DIEnumerator(name: "SS_TRUNCATE", value: 136, isUnsigned: true)
!288 = !DIEnumerator(name: "US_TRUNCATE", value: 137, isUnsigned: true)
!289 = !DIEnumerator(name: "VAR_LOCATION", value: 138, isUnsigned: true)
!290 = !DIEnumerator(name: "LAST_AND_UNUSED_RTX_CODE", value: 139, isUnsigned: true)
!291 = !{!292, !293, !294, !295, !298, !299, !148}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!294 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !297)
!301 = !{i32 2, !"Dwarf Version", i32 4}
!302 = !{i32 2, !"Debug Info Version", i32 3}
!303 = !{i32 1, !"wchar_size", i32 4}
!304 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!305 = distinct !DISubprogram(name: "vprintf", scope: !306, file: !306, line: 39, type: !307, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !317)
!306 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!307 = !DISubroutineType(types: !308)
!308 = !{!294, !309, !310}
!309 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !299)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !312)
!312 = !{!313, !314, !315, !316}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !311, file: !1, baseType: !5, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !311, file: !1, baseType: !5, size: 32, offset: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !311, file: !1, baseType: !298, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !311, file: !1, baseType: !298, size: 64, offset: 128)
!317 = !{!318, !319}
!318 = !DILocalVariable(name: "__fmt", arg: 1, scope: !305, file: !306, line: 39, type: !309)
!319 = !DILocalVariable(name: "__arg", arg: 2, scope: !305, file: !306, line: 39, type: !310)
!320 = !DILocation(line: 0, scope: !305)
!321 = !DILocation(line: 41, column: 20, scope: !305)
!322 = !DILocation(line: 41, column: 10, scope: !305)
!323 = !DILocation(line: 41, column: 3, scope: !305)
!324 = distinct !DISubprogram(name: "getchar", scope: !306, file: !306, line: 47, type: !325, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !327)
!325 = !DISubroutineType(types: !326)
!326 = !{!294}
!327 = !{}
!328 = !DILocation(line: 49, column: 16, scope: !324)
!329 = !DILocation(line: 49, column: 10, scope: !324)
!330 = !DILocation(line: 49, column: 3, scope: !324)
!331 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !306, file: !306, line: 56, type: !332, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !393)
!332 = !DISubroutineType(types: !333)
!333 = !{!294, !334}
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !336, line: 7, baseType: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !338, line: 49, size: 1728, elements: !339)
!338 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!339 = !{!340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !355, !357, !358, !359, !363, !365, !367, !371, !374, !376, !379, !382, !383, !384, !388, !389}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !337, file: !338, line: 51, baseType: !294, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !337, file: !338, line: 54, baseType: !296, size: 64, offset: 64)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !337, file: !338, line: 55, baseType: !296, size: 64, offset: 128)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !337, file: !338, line: 56, baseType: !296, size: 64, offset: 192)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !337, file: !338, line: 57, baseType: !296, size: 64, offset: 256)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !337, file: !338, line: 58, baseType: !296, size: 64, offset: 320)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !337, file: !338, line: 59, baseType: !296, size: 64, offset: 384)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !337, file: !338, line: 60, baseType: !296, size: 64, offset: 448)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !337, file: !338, line: 61, baseType: !296, size: 64, offset: 512)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !337, file: !338, line: 64, baseType: !296, size: 64, offset: 576)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !337, file: !338, line: 65, baseType: !296, size: 64, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !337, file: !338, line: 66, baseType: !296, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !337, file: !338, line: 68, baseType: !353, size: 64, offset: 768)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !338, line: 36, flags: DIFlagFwdDecl)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !337, file: !338, line: 70, baseType: !356, size: 64, offset: 832)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !337, file: !338, line: 72, baseType: !294, size: 32, offset: 896)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !337, file: !338, line: 73, baseType: !294, size: 32, offset: 928)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !337, file: !338, line: 74, baseType: !360, size: 64, offset: 960)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !361, line: 152, baseType: !362)
!361 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!362 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !337, file: !338, line: 77, baseType: !364, size: 16, offset: 1024)
!364 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !337, file: !338, line: 78, baseType: !366, size: 8, offset: 1040)
!366 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !337, file: !338, line: 79, baseType: !368, size: 8, offset: 1048)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 8, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 1)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !337, file: !338, line: 81, baseType: !372, size: 64, offset: 1088)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !338, line: 43, baseType: null)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !337, file: !338, line: 89, baseType: !375, size: 64, offset: 1152)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !361, line: 153, baseType: !362)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !337, file: !338, line: 91, baseType: !377, size: 64, offset: 1216)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!378 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !338, line: 37, flags: DIFlagFwdDecl)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !337, file: !338, line: 92, baseType: !380, size: 64, offset: 1280)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !338, line: 38, flags: DIFlagFwdDecl)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !337, file: !338, line: 93, baseType: !356, size: 64, offset: 1344)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !337, file: !338, line: 94, baseType: !298, size: 64, offset: 1408)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !337, file: !338, line: 95, baseType: !385, size: 64, offset: 1472)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !386, line: 46, baseType: !387)
!386 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!387 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !337, file: !338, line: 96, baseType: !294, size: 32, offset: 1536)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !337, file: !338, line: 98, baseType: !390, size: 160, offset: 1568)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 160, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 20)
!393 = !{!394}
!394 = !DILocalVariable(name: "__fp", arg: 1, scope: !331, file: !306, line: 56, type: !334)
!395 = !DILocation(line: 0, scope: !331)
!396 = !DILocation(line: 58, column: 10, scope: !331)
!397 = !DILocation(line: 58, column: 3, scope: !331)
!398 = distinct !DISubprogram(name: "getc_unlocked", scope: !306, file: !306, line: 66, type: !332, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !399)
!399 = !{!400}
!400 = !DILocalVariable(name: "__fp", arg: 1, scope: !398, file: !306, line: 66, type: !334)
!401 = !DILocation(line: 0, scope: !398)
!402 = !DILocation(line: 68, column: 10, scope: !398)
!403 = !DILocation(line: 68, column: 3, scope: !398)
!404 = distinct !DISubprogram(name: "getchar_unlocked", scope: !306, file: !306, line: 73, type: !325, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !327)
!405 = !DILocation(line: 75, column: 10, scope: !404)
!406 = !DILocation(line: 75, column: 3, scope: !404)
!407 = distinct !DISubprogram(name: "putchar", scope: !306, file: !306, line: 82, type: !408, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !410)
!408 = !DISubroutineType(types: !409)
!409 = !{!294, !294}
!410 = !{!411}
!411 = !DILocalVariable(name: "__c", arg: 1, scope: !407, file: !306, line: 82, type: !294)
!412 = !DILocation(line: 0, scope: !407)
!413 = !DILocation(line: 84, column: 21, scope: !407)
!414 = !DILocation(line: 84, column: 10, scope: !407)
!415 = !DILocation(line: 84, column: 3, scope: !407)
!416 = distinct !DISubprogram(name: "fputc_unlocked", scope: !306, file: !306, line: 91, type: !417, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !419)
!417 = !DISubroutineType(types: !418)
!418 = !{!294, !294, !334}
!419 = !{!420, !421}
!420 = !DILocalVariable(name: "__c", arg: 1, scope: !416, file: !306, line: 91, type: !294)
!421 = !DILocalVariable(name: "__stream", arg: 2, scope: !416, file: !306, line: 91, type: !334)
!422 = !DILocation(line: 0, scope: !416)
!423 = !DILocation(line: 93, column: 10, scope: !416)
!424 = !DILocation(line: 93, column: 3, scope: !416)
!425 = distinct !DISubprogram(name: "putc_unlocked", scope: !306, file: !306, line: 101, type: !417, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !426)
!426 = !{!427, !428}
!427 = !DILocalVariable(name: "__c", arg: 1, scope: !425, file: !306, line: 101, type: !294)
!428 = !DILocalVariable(name: "__stream", arg: 2, scope: !425, file: !306, line: 101, type: !334)
!429 = !DILocation(line: 0, scope: !425)
!430 = !DILocation(line: 103, column: 10, scope: !425)
!431 = !DILocation(line: 103, column: 3, scope: !425)
!432 = distinct !DISubprogram(name: "putchar_unlocked", scope: !306, file: !306, line: 108, type: !408, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !433)
!433 = !{!434}
!434 = !DILocalVariable(name: "__c", arg: 1, scope: !432, file: !306, line: 108, type: !294)
!435 = !DILocation(line: 0, scope: !432)
!436 = !DILocation(line: 110, column: 10, scope: !432)
!437 = !DILocation(line: 110, column: 3, scope: !432)
!438 = distinct !DISubprogram(name: "getline", scope: !306, file: !306, line: 118, type: !439, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !443)
!439 = !DISubroutineType(types: !440)
!440 = !{!441, !295, !442, !334}
!441 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !361, line: 193, baseType: !362)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!443 = !{!444, !445, !446}
!444 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !438, file: !306, line: 118, type: !295)
!445 = !DILocalVariable(name: "__n", arg: 2, scope: !438, file: !306, line: 118, type: !442)
!446 = !DILocalVariable(name: "__stream", arg: 3, scope: !438, file: !306, line: 118, type: !334)
!447 = !DILocation(line: 0, scope: !438)
!448 = !DILocation(line: 120, column: 10, scope: !438)
!449 = !DILocation(line: 120, column: 3, scope: !438)
!450 = distinct !DISubprogram(name: "feof_unlocked", scope: !306, file: !306, line: 128, type: !332, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !451)
!451 = !{!452}
!452 = !DILocalVariable(name: "__stream", arg: 1, scope: !450, file: !306, line: 128, type: !334)
!453 = !DILocation(line: 0, scope: !450)
!454 = !DILocation(line: 130, column: 10, scope: !450)
!455 = !DILocation(line: 130, column: 3, scope: !450)
!456 = distinct !DISubprogram(name: "ferror_unlocked", scope: !306, file: !306, line: 135, type: !332, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !457)
!457 = !{!458}
!458 = !DILocalVariable(name: "__stream", arg: 1, scope: !456, file: !306, line: 135, type: !334)
!459 = !DILocation(line: 0, scope: !456)
!460 = !DILocation(line: 137, column: 10, scope: !456)
!461 = !DILocation(line: 137, column: 3, scope: !456)
!462 = distinct !DISubprogram(name: "tolower", scope: !463, file: !463, line: 207, type: !408, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !464)
!463 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!464 = !{!465}
!465 = !DILocalVariable(name: "__c", arg: 1, scope: !462, file: !463, line: 207, type: !294)
!466 = !DILocation(line: 0, scope: !462)
!467 = !DILocation(line: 209, column: 22, scope: !462)
!468 = !DILocation(line: 209, column: 39, scope: !462)
!469 = !DILocation(line: 209, column: 38, scope: !462)
!470 = !DILocation(line: 209, column: 37, scope: !462)
!471 = !DILocation(line: 209, column: 10, scope: !462)
!472 = !DILocation(line: 209, column: 3, scope: !462)
!473 = distinct !DISubprogram(name: "toupper", scope: !463, file: !463, line: 213, type: !408, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !474)
!474 = !{!475}
!475 = !DILocalVariable(name: "__c", arg: 1, scope: !473, file: !463, line: 213, type: !294)
!476 = !DILocation(line: 0, scope: !473)
!477 = !DILocation(line: 215, column: 22, scope: !473)
!478 = !DILocation(line: 215, column: 39, scope: !473)
!479 = !DILocation(line: 215, column: 38, scope: !473)
!480 = !DILocation(line: 215, column: 37, scope: !473)
!481 = !DILocation(line: 215, column: 10, scope: !473)
!482 = !DILocation(line: 215, column: 3, scope: !473)
!483 = distinct !DISubprogram(name: "atoi", scope: !484, file: !484, line: 361, type: !485, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !487)
!484 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!485 = !DISubroutineType(types: !486)
!486 = !{!294, !299}
!487 = !{!488}
!488 = !DILocalVariable(name: "__nptr", arg: 1, scope: !483, file: !484, line: 361, type: !299)
!489 = !DILocation(line: 0, scope: !483)
!490 = !DILocation(line: 363, column: 16, scope: !483)
!491 = !DILocation(line: 363, column: 10, scope: !483)
!492 = !DILocation(line: 363, column: 3, scope: !483)
!493 = distinct !DISubprogram(name: "atol", scope: !484, file: !484, line: 366, type: !494, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !496)
!494 = !DISubroutineType(types: !495)
!495 = !{!362, !299}
!496 = !{!497}
!497 = !DILocalVariable(name: "__nptr", arg: 1, scope: !493, file: !484, line: 366, type: !299)
!498 = !DILocation(line: 0, scope: !493)
!499 = !DILocation(line: 368, column: 10, scope: !493)
!500 = !DILocation(line: 368, column: 3, scope: !493)
!501 = distinct !DISubprogram(name: "atoll", scope: !484, file: !484, line: 373, type: !502, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !505)
!502 = !DISubroutineType(types: !503)
!503 = !{!504, !299}
!504 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!505 = !{!506}
!506 = !DILocalVariable(name: "__nptr", arg: 1, scope: !501, file: !484, line: 373, type: !299)
!507 = !DILocation(line: 0, scope: !501)
!508 = !DILocation(line: 375, column: 10, scope: !501)
!509 = !DILocation(line: 375, column: 3, scope: !501)
!510 = distinct !DISubprogram(name: "bsearch", scope: !511, file: !511, line: 20, type: !512, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !520)
!511 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!512 = !DISubroutineType(types: !513)
!513 = !{!298, !514, !514, !385, !385, !516}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !484, line: 808, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!294, !514, !514}
!520 = !{!521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!521 = !DILocalVariable(name: "__key", arg: 1, scope: !510, file: !511, line: 20, type: !514)
!522 = !DILocalVariable(name: "__base", arg: 2, scope: !510, file: !511, line: 20, type: !514)
!523 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !510, file: !511, line: 20, type: !385)
!524 = !DILocalVariable(name: "__size", arg: 4, scope: !510, file: !511, line: 20, type: !385)
!525 = !DILocalVariable(name: "__compar", arg: 5, scope: !510, file: !511, line: 21, type: !516)
!526 = !DILocalVariable(name: "__l", scope: !510, file: !511, line: 23, type: !385)
!527 = !DILocalVariable(name: "__u", scope: !510, file: !511, line: 23, type: !385)
!528 = !DILocalVariable(name: "__idx", scope: !510, file: !511, line: 23, type: !385)
!529 = !DILocalVariable(name: "__p", scope: !510, file: !511, line: 24, type: !514)
!530 = !DILocalVariable(name: "__comparison", scope: !510, file: !511, line: 25, type: !294)
!531 = !DILocation(line: 0, scope: !510)
!532 = !DILocation(line: 29, column: 3, scope: !510)
!533 = !DILocation(line: 27, column: 7, scope: !510)
!534 = !DILocation(line: 29, column: 14, scope: !510)
!535 = !DILocation(line: 31, column: 20, scope: !536)
!536 = distinct !DILexicalBlock(scope: !510, file: !511, line: 30, column: 5)
!537 = !DILocation(line: 31, column: 27, scope: !536)
!538 = !DILocation(line: 32, column: 56, scope: !536)
!539 = !DILocation(line: 32, column: 47, scope: !536)
!540 = !DILocation(line: 33, column: 22, scope: !536)
!541 = !DILocation(line: 34, column: 24, scope: !542)
!542 = distinct !DILexicalBlock(scope: !536, file: !511, line: 34, column: 11)
!543 = !DILocation(line: 34, column: 11, scope: !536)
!544 = !DILocation(line: 36, column: 29, scope: !545)
!545 = distinct !DILexicalBlock(scope: !542, file: !511, line: 36, column: 16)
!546 = !DILocation(line: 36, column: 16, scope: !542)
!547 = !DILocation(line: 37, column: 14, scope: !545)
!548 = distinct !{!548, !532, !549}
!549 = !DILocation(line: 40, column: 5, scope: !510)
!550 = !DILocation(line: 43, column: 1, scope: !510)
!551 = distinct !DISubprogram(name: "atof", scope: !552, file: !552, line: 25, type: !553, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !556)
!552 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!553 = !DISubroutineType(types: !554)
!554 = !{!555, !299}
!555 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!556 = !{!557}
!557 = !DILocalVariable(name: "__nptr", arg: 1, scope: !551, file: !552, line: 25, type: !299)
!558 = !DILocation(line: 0, scope: !551)
!559 = !DILocation(line: 27, column: 10, scope: !551)
!560 = !DILocation(line: 27, column: 3, scope: !551)
!561 = distinct !DISubprogram(name: "strtoimax", scope: !562, file: !562, line: 324, type: !563, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !569)
!562 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!563 = !DISubroutineType(types: !564)
!564 = !{!565, !309, !568, !294}
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !566, line: 101, baseType: !567)
!566 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !361, line: 72, baseType: !362)
!568 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !295)
!569 = !{!570, !571, !572}
!570 = !DILocalVariable(name: "nptr", arg: 1, scope: !561, file: !562, line: 324, type: !309)
!571 = !DILocalVariable(name: "endptr", arg: 2, scope: !561, file: !562, line: 324, type: !568)
!572 = !DILocalVariable(name: "base", arg: 3, scope: !561, file: !562, line: 324, type: !294)
!573 = !DILocation(line: 0, scope: !561)
!574 = !DILocation(line: 327, column: 10, scope: !561)
!575 = !DILocation(line: 327, column: 3, scope: !561)
!576 = distinct !DISubprogram(name: "strtoumax", scope: !562, file: !562, line: 336, type: !577, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !581)
!577 = !DISubroutineType(types: !578)
!578 = !{!579, !309, !568, !294}
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !566, line: 102, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !361, line: 73, baseType: !387)
!581 = !{!582, !583, !584}
!582 = !DILocalVariable(name: "nptr", arg: 1, scope: !576, file: !562, line: 336, type: !309)
!583 = !DILocalVariable(name: "endptr", arg: 2, scope: !576, file: !562, line: 336, type: !568)
!584 = !DILocalVariable(name: "base", arg: 3, scope: !576, file: !562, line: 336, type: !294)
!585 = !DILocation(line: 0, scope: !576)
!586 = !DILocation(line: 339, column: 10, scope: !576)
!587 = !DILocation(line: 339, column: 3, scope: !576)
!588 = distinct !DISubprogram(name: "wcstoimax", scope: !562, file: !562, line: 348, type: !589, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !598)
!589 = !DISubroutineType(types: !590)
!590 = !{!565, !591, !595, !294}
!591 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !562, line: 34, baseType: !294)
!595 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !594, size: 64)
!598 = !{!599, !600, !601}
!599 = !DILocalVariable(name: "nptr", arg: 1, scope: !588, file: !562, line: 348, type: !591)
!600 = !DILocalVariable(name: "endptr", arg: 2, scope: !588, file: !562, line: 348, type: !595)
!601 = !DILocalVariable(name: "base", arg: 3, scope: !588, file: !562, line: 348, type: !294)
!602 = !DILocation(line: 0, scope: !588)
!603 = !DILocation(line: 351, column: 10, scope: !588)
!604 = !DILocation(line: 351, column: 3, scope: !588)
!605 = distinct !DISubprogram(name: "wcstoumax", scope: !562, file: !562, line: 362, type: !606, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !608)
!606 = !DISubroutineType(types: !607)
!607 = !{!579, !591, !595, !294}
!608 = !{!609, !610, !611}
!609 = !DILocalVariable(name: "nptr", arg: 1, scope: !605, file: !562, line: 362, type: !591)
!610 = !DILocalVariable(name: "endptr", arg: 2, scope: !605, file: !562, line: 362, type: !595)
!611 = !DILocalVariable(name: "base", arg: 3, scope: !605, file: !562, line: 362, type: !294)
!612 = !DILocation(line: 0, scope: !605)
!613 = !DILocation(line: 365, column: 10, scope: !605)
!614 = !DILocation(line: 365, column: 3, scope: !605)
!615 = distinct !DISubprogram(name: "stat", scope: !616, file: !616, line: 453, type: !617, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !656)
!616 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!617 = !DISubroutineType(types: !618)
!618 = !{!294, !299, !619}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !621, line: 46, size: 1152, elements: !622)
!621 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!622 = !{!623, !625, !627, !629, !631, !633, !635, !636, !637, !638, !640, !642, !650, !651, !652}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !620, file: !621, line: 48, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !361, line: 145, baseType: !387)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !620, file: !621, line: 53, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !361, line: 148, baseType: !387)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !620, file: !621, line: 61, baseType: !628, size: 64, offset: 128)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !361, line: 151, baseType: !387)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !620, file: !621, line: 62, baseType: !630, size: 32, offset: 192)
!630 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !361, line: 150, baseType: !5)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !620, file: !621, line: 64, baseType: !632, size: 32, offset: 224)
!632 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !361, line: 146, baseType: !5)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !620, file: !621, line: 65, baseType: !634, size: 32, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !361, line: 147, baseType: !5)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !620, file: !621, line: 67, baseType: !294, size: 32, offset: 288)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !620, file: !621, line: 69, baseType: !624, size: 64, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !620, file: !621, line: 74, baseType: !360, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !620, file: !621, line: 78, baseType: !639, size: 64, offset: 448)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !361, line: 174, baseType: !362)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !620, file: !621, line: 80, baseType: !641, size: 64, offset: 512)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !361, line: 179, baseType: !362)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !620, file: !621, line: 91, baseType: !643, size: 128, offset: 576)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !644, line: 10, size: 128, elements: !645)
!644 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!645 = !{!646, !648}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !643, file: !644, line: 12, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !361, line: 160, baseType: !362)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !643, file: !644, line: 16, baseType: !649, size: 64, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !361, line: 196, baseType: !362)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !620, file: !621, line: 92, baseType: !643, size: 128, offset: 704)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !620, file: !621, line: 93, baseType: !643, size: 128, offset: 832)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !620, file: !621, line: 106, baseType: !653, size: 192, offset: 960)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !649, size: 192, elements: !654)
!654 = !{!655}
!655 = !DISubrange(count: 3)
!656 = !{!657, !658}
!657 = !DILocalVariable(name: "__path", arg: 1, scope: !615, file: !616, line: 453, type: !299)
!658 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !615, file: !616, line: 453, type: !619)
!659 = !DILocation(line: 0, scope: !615)
!660 = !DILocation(line: 455, column: 10, scope: !615)
!661 = !DILocation(line: 455, column: 3, scope: !615)
!662 = distinct !DISubprogram(name: "lstat", scope: !616, file: !616, line: 460, type: !617, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !663)
!663 = !{!664, !665}
!664 = !DILocalVariable(name: "__path", arg: 1, scope: !662, file: !616, line: 460, type: !299)
!665 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !662, file: !616, line: 460, type: !619)
!666 = !DILocation(line: 0, scope: !662)
!667 = !DILocation(line: 462, column: 10, scope: !662)
!668 = !DILocation(line: 462, column: 3, scope: !662)
!669 = distinct !DISubprogram(name: "fstat", scope: !616, file: !616, line: 467, type: !670, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !672)
!670 = !DISubroutineType(types: !671)
!671 = !{!294, !294, !619}
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "__fd", arg: 1, scope: !669, file: !616, line: 467, type: !294)
!674 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !669, file: !616, line: 467, type: !619)
!675 = !DILocation(line: 0, scope: !669)
!676 = !DILocation(line: 469, column: 10, scope: !669)
!677 = !DILocation(line: 469, column: 3, scope: !669)
!678 = distinct !DISubprogram(name: "fstatat", scope: !616, file: !616, line: 474, type: !679, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !681)
!679 = !DISubroutineType(types: !680)
!680 = !{!294, !294, !299, !619, !294}
!681 = !{!682, !683, !684, !685}
!682 = !DILocalVariable(name: "__fd", arg: 1, scope: !678, file: !616, line: 474, type: !294)
!683 = !DILocalVariable(name: "__filename", arg: 2, scope: !678, file: !616, line: 474, type: !299)
!684 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !678, file: !616, line: 474, type: !619)
!685 = !DILocalVariable(name: "__flag", arg: 4, scope: !678, file: !616, line: 474, type: !294)
!686 = !DILocation(line: 0, scope: !678)
!687 = !DILocation(line: 477, column: 10, scope: !678)
!688 = !DILocation(line: 477, column: 3, scope: !678)
!689 = distinct !DISubprogram(name: "mknod", scope: !616, file: !616, line: 483, type: !690, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !692)
!690 = !DISubroutineType(types: !691)
!691 = !{!294, !299, !630, !624}
!692 = !{!693, !694, !695}
!693 = !DILocalVariable(name: "__path", arg: 1, scope: !689, file: !616, line: 483, type: !299)
!694 = !DILocalVariable(name: "__mode", arg: 2, scope: !689, file: !616, line: 483, type: !630)
!695 = !DILocalVariable(name: "__dev", arg: 3, scope: !689, file: !616, line: 483, type: !624)
!696 = !DILocation(line: 0, scope: !689)
!697 = !DILocation(line: 485, column: 10, scope: !689)
!698 = !DILocation(line: 485, column: 3, scope: !689)
!699 = distinct !DISubprogram(name: "mknodat", scope: !616, file: !616, line: 491, type: !700, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{!294, !294, !299, !630, !624}
!702 = !{!703, !704, !705, !706}
!703 = !DILocalVariable(name: "__fd", arg: 1, scope: !699, file: !616, line: 491, type: !294)
!704 = !DILocalVariable(name: "__path", arg: 2, scope: !699, file: !616, line: 491, type: !299)
!705 = !DILocalVariable(name: "__mode", arg: 3, scope: !699, file: !616, line: 491, type: !630)
!706 = !DILocalVariable(name: "__dev", arg: 4, scope: !699, file: !616, line: 491, type: !624)
!707 = !DILocation(line: 0, scope: !699)
!708 = !DILocation(line: 494, column: 10, scope: !699)
!709 = !DILocation(line: 494, column: 3, scope: !699)
!710 = distinct !DISubprogram(name: "stat64", scope: !616, file: !616, line: 502, type: !711, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !733)
!711 = !DISubroutineType(types: !712)
!712 = !{!294, !299, !713}
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !621, line: 119, size: 1152, elements: !715)
!715 = !{!716, !717, !719, !720, !721, !722, !723, !724, !725, !726, !727, !729, !730, !731, !732}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !714, file: !621, line: 121, baseType: !624, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !714, file: !621, line: 123, baseType: !718, size: 64, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !361, line: 149, baseType: !387)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !714, file: !621, line: 124, baseType: !628, size: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !714, file: !621, line: 125, baseType: !630, size: 32, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !714, file: !621, line: 132, baseType: !632, size: 32, offset: 224)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !714, file: !621, line: 133, baseType: !634, size: 32, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !714, file: !621, line: 135, baseType: !294, size: 32, offset: 288)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !714, file: !621, line: 136, baseType: !624, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !714, file: !621, line: 137, baseType: !360, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !714, file: !621, line: 143, baseType: !639, size: 64, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !714, file: !621, line: 144, baseType: !728, size: 64, offset: 512)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !361, line: 180, baseType: !362)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !714, file: !621, line: 152, baseType: !643, size: 128, offset: 576)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !714, file: !621, line: 153, baseType: !643, size: 128, offset: 704)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !714, file: !621, line: 154, baseType: !643, size: 128, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !714, file: !621, line: 164, baseType: !653, size: 192, offset: 960)
!733 = !{!734, !735}
!734 = !DILocalVariable(name: "__path", arg: 1, scope: !710, file: !616, line: 502, type: !299)
!735 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !710, file: !616, line: 502, type: !713)
!736 = !DILocation(line: 0, scope: !710)
!737 = !DILocation(line: 504, column: 10, scope: !710)
!738 = !DILocation(line: 504, column: 3, scope: !710)
!739 = distinct !DISubprogram(name: "lstat64", scope: !616, file: !616, line: 509, type: !711, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !740)
!740 = !{!741, !742}
!741 = !DILocalVariable(name: "__path", arg: 1, scope: !739, file: !616, line: 509, type: !299)
!742 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !739, file: !616, line: 509, type: !713)
!743 = !DILocation(line: 0, scope: !739)
!744 = !DILocation(line: 511, column: 10, scope: !739)
!745 = !DILocation(line: 511, column: 3, scope: !739)
!746 = distinct !DISubprogram(name: "fstat64", scope: !616, file: !616, line: 516, type: !747, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !749)
!747 = !DISubroutineType(types: !748)
!748 = !{!294, !294, !713}
!749 = !{!750, !751}
!750 = !DILocalVariable(name: "__fd", arg: 1, scope: !746, file: !616, line: 516, type: !294)
!751 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !746, file: !616, line: 516, type: !713)
!752 = !DILocation(line: 0, scope: !746)
!753 = !DILocation(line: 518, column: 10, scope: !746)
!754 = !DILocation(line: 518, column: 3, scope: !746)
!755 = distinct !DISubprogram(name: "fstatat64", scope: !616, file: !616, line: 523, type: !756, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !758)
!756 = !DISubroutineType(types: !757)
!757 = !{!294, !294, !299, !713, !294}
!758 = !{!759, !760, !761, !762}
!759 = !DILocalVariable(name: "__fd", arg: 1, scope: !755, file: !616, line: 523, type: !294)
!760 = !DILocalVariable(name: "__filename", arg: 2, scope: !755, file: !616, line: 523, type: !299)
!761 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !755, file: !616, line: 523, type: !713)
!762 = !DILocalVariable(name: "__flag", arg: 4, scope: !755, file: !616, line: 523, type: !294)
!763 = !DILocation(line: 0, scope: !755)
!764 = !DILocation(line: 526, column: 10, scope: !755)
!765 = !DILocation(line: 526, column: 3, scope: !755)
!766 = distinct !DISubprogram(name: "error_for_asm", scope: !1, file: !1, line: 82, type: !767, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !911)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !769, !299, null}
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_rtx", file: !770, line: 51, baseType: !771)
!770 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !149, line: 240, size: 384, elements: !774)
!774 = !{!775, !776, !777, !778, !779, !780, !781, !782, !783, !784, !785}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !773, file: !149, line: 242, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !773, file: !149, line: 245, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !773, file: !149, line: 252, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !773, file: !149, line: 257, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !773, file: !149, line: 265, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !773, file: !149, line: 277, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !773, file: !149, line: 291, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !773, file: !149, line: 298, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !773, file: !149, line: 305, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !773, file: !149, line: 310, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !773, file: !149, line: 321, baseType: !786, size: 320, offset: 64)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !149, line: 315, size: 320, elements: !787)
!787 = !{!788, !856, !858, !887, !899}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !786, file: !149, line: 316, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 64, elements: !369)
!790 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !149, line: 183, baseType: !791)
!791 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !149, line: 166, size: 64, elements: !792)
!792 = !{!793, !794, !795, !796, !799, !807, !808, !820, !823, !826, !830, !833, !846, !853}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !791, file: !149, line: 168, baseType: !294, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !791, file: !149, line: 169, baseType: !5, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !791, file: !149, line: 170, baseType: !299, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !791, file: !149, line: 171, baseType: !797, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !770, line: 50, baseType: !798)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !791, file: !149, line: 172, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !770, line: 53, baseType: !801)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !149, line: 359, size: 128, elements: !803)
!803 = !{!804, !805}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !802, file: !149, line: 360, baseType: !294, size: 32)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !802, file: !149, line: 361, baseType: !806, size: 64, offset: 64)
!806 = !DICompositeType(tag: DW_TAG_array_type, baseType: !797, size: 64, elements: !369)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !791, file: !149, line: 173, baseType: !3, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !791, file: !149, line: 174, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !149, line: 133, baseType: !810)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !149, line: 115, size: 32, elements: !811)
!811 = !{!812, !813, !814, !815, !816, !817, !818, !819}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !810, file: !149, line: 118, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !810, file: !149, line: 120, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !810, file: !149, line: 121, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !810, file: !149, line: 123, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !810, file: !149, line: 125, baseType: !5, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !810, file: !149, line: 127, baseType: !5, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !810, file: !149, line: 130, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !810, file: !149, line: 132, baseType: !5, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !791, file: !149, line: 175, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !149, line: 175, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !791, file: !149, line: 176, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !770, line: 46, flags: DIFlagFwdDecl)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !791, file: !149, line: 177, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !770, line: 56, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !770, line: 55, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !791, file: !149, line: 178, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !770, line: 110, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !791, file: !149, line: 179, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !149, line: 150, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !149, line: 142, size: 320, elements: !837)
!837 = !{!838, !839, !840, !841, !844, !845}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !836, file: !149, line: 144, baseType: !827, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !836, file: !149, line: 145, baseType: !797, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !836, file: !149, line: 146, baseType: !797, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !836, file: !149, line: 147, baseType: !842, size: 32, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !843, line: 31, baseType: !294)
!843 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!844 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !836, file: !149, line: 148, baseType: !5, size: 32, offset: 224)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !836, file: !149, line: 149, baseType: !293, size: 8, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !791, file: !149, line: 180, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !149, line: 162, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !149, line: 159, size: 128, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !849, file: !149, line: 160, baseType: !827, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !849, file: !149, line: 161, baseType: !362, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !791, file: !149, line: 181, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !149, line: 181, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !786, file: !149, line: 317, baseType: !857, size: 64)
!857 = !DICompositeType(tag: DW_TAG_array_type, baseType: !362, size: 64, elements: !369)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !786, file: !149, line: 318, baseType: !859, size: 320)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !149, line: 188, size: 320, elements: !860)
!860 = !{!861, !863, !886}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !859, file: !149, line: 190, baseType: !862, size: 192)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !790, size: 192, elements: !654)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !859, file: !149, line: 193, baseType: !864, size: 64, offset: 192)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !149, line: 206, size: 320, elements: !866)
!866 = !{!867, !871, !872, !873, !885}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !865, file: !149, line: 208, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !770, line: 62, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !770, line: 61, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !865, file: !149, line: 211, baseType: !5, size: 32, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !865, file: !149, line: 214, baseType: !362, size: 64, offset: 128)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !865, file: !149, line: 224, baseType: !874, size: 64, offset: 192)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !149, line: 202, baseType: !876)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !149, line: 202, size: 128, elements: !877)
!877 = !{!878}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !876, file: !149, line: 202, baseType: !879, size: 128)
!879 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !149, line: 200, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !149, line: 200, size: 128, elements: !881)
!881 = !{!882, !883, !884}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !880, file: !149, line: 200, baseType: !5, size: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !880, file: !149, line: 200, baseType: !5, size: 32, offset: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !880, file: !149, line: 200, baseType: !806, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !865, file: !149, line: 234, baseType: !874, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !859, file: !149, line: 197, baseType: !362, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !786, file: !149, line: 319, baseType: !888, size: 256)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !889, line: 52, size: 256, elements: !890)
!889 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!890 = !{!891, !892, !893, !894, !895, !896, !897}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !888, file: !889, line: 56, baseType: !5, size: 2, flags: DIFlagBitField, extraData: i64 0)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !888, file: !889, line: 57, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !888, file: !889, line: 58, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !888, file: !889, line: 59, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !888, file: !889, line: 60, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !888, file: !889, line: 61, baseType: !5, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !888, file: !889, line: 62, baseType: !898, size: 192, offset: 64)
!898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 192, elements: !654)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !786, file: !149, line: 320, baseType: !900, size: 192)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !901, line: 27, size: 192, elements: !902)
!901 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!902 = !{!903, !910}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !900, file: !901, line: 29, baseType: !904, size: 128)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !905, line: 58, baseType: !906)
!905 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !905, line: 54, size: 128, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !906, file: !905, line: 56, baseType: !387, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !906, file: !905, line: 57, baseType: !362, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !900, file: !901, line: 30, baseType: !3, size: 32, offset: 128)
!911 = !{!912, !913, !914}
!912 = !DILocalVariable(name: "insn", arg: 1, scope: !766, file: !1, line: 82, type: !769)
!913 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !766, file: !1, line: 82, type: !299)
!914 = !DILocalVariable(name: "ap", scope: !766, file: !1, line: 84, type: !915)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !916, line: 52, baseType: !917)
!916 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !918, line: 32, baseType: !919)
!918 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 84, baseType: !920)
!920 = !DICompositeType(tag: DW_TAG_array_type, baseType: !311, size: 192, elements: !369)
!921 = !DILocation(line: 0, scope: !766)
!922 = !DILocation(line: 84, column: 3, scope: !766)
!923 = !DILocation(line: 84, column: 11, scope: !766)
!924 = !DILocation(line: 86, column: 3, scope: !766)
!925 = !DILocation(line: 87, column: 3, scope: !766)
!926 = !DILocation(line: 88, column: 3, scope: !766)
!927 = !DILocation(line: 89, column: 1, scope: !766)
!928 = distinct !DISubprogram(name: "diagnostic_for_asm", scope: !1, file: !1, line: 71, type: !929, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !933)
!929 = !DISubroutineType(types: !930)
!930 = !{null, !769, !299, !931, !932}
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_t", file: !133, line: 35, baseType: !132)
!933 = !{!934, !935, !936, !937, !938}
!934 = !DILocalVariable(name: "insn", arg: 1, scope: !928, file: !1, line: 71, type: !769)
!935 = !DILocalVariable(name: "msg", arg: 2, scope: !928, file: !1, line: 71, type: !299)
!936 = !DILocalVariable(name: "args_ptr", arg: 3, scope: !928, file: !1, line: 71, type: !931)
!937 = !DILocalVariable(name: "kind", arg: 4, scope: !928, file: !1, line: 72, type: !932)
!938 = !DILocalVariable(name: "diagnostic", scope: !928, file: !1, line: 74, type: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_info", file: !133, line: 52, baseType: !940)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "diagnostic_info", file: !133, line: 40, size: 512, elements: !941)
!941 = !{!942, !958, !959, !960, !961, !962}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !940, file: !133, line: 42, baseType: !943, size: 320)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !944, line: 39, baseType: !945)
!944 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !944, line: 32, size: 320, elements: !946)
!946 = !{!947, !948, !949, !950, !956}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !945, file: !944, line: 34, baseType: !299, size: 64)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !945, file: !944, line: 35, baseType: !931, size: 64, offset: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !945, file: !944, line: 36, baseType: !294, size: 32, offset: 128)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !945, file: !944, line: 37, baseType: !951, size: 64, offset: 192)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !953, line: 58, baseType: !954)
!953 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !955, line: 44, baseType: !5)
!955 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!956 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !945, file: !944, line: 38, baseType: !957, size: 64, offset: 256)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !940, file: !133, line: 43, baseType: !952, size: 32, offset: 320)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "override_column", scope: !940, file: !133, line: 44, baseType: !5, size: 32, offset: 352)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !940, file: !133, line: 47, baseType: !827, size: 64, offset: 384)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !940, file: !133, line: 49, baseType: !932, size: 32, offset: 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "option_index", scope: !940, file: !133, line: 51, baseType: !294, size: 32, offset: 480)
!963 = !DILocation(line: 0, scope: !928)
!964 = !DILocation(line: 74, column: 3, scope: !928)
!965 = !DILocation(line: 77, column: 10, scope: !928)
!966 = !DILocation(line: 76, column: 3, scope: !928)
!967 = !DILocation(line: 78, column: 3, scope: !928)
!968 = !DILocation(line: 79, column: 1, scope: !928)
!969 = distinct !DISubprogram(name: "warning_for_asm", scope: !1, file: !1, line: 92, type: !767, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !970)
!970 = !{!971, !972, !973}
!971 = !DILocalVariable(name: "insn", arg: 1, scope: !969, file: !1, line: 92, type: !769)
!972 = !DILocalVariable(name: "gmsgid", arg: 2, scope: !969, file: !1, line: 92, type: !299)
!973 = !DILocalVariable(name: "ap", scope: !969, file: !1, line: 94, type: !915)
!974 = !DILocation(line: 0, scope: !969)
!975 = !DILocation(line: 94, column: 3, scope: !969)
!976 = !DILocation(line: 94, column: 11, scope: !969)
!977 = !DILocation(line: 96, column: 3, scope: !969)
!978 = !DILocation(line: 97, column: 3, scope: !969)
!979 = !DILocation(line: 98, column: 3, scope: !969)
!980 = !DILocation(line: 99, column: 1, scope: !969)
!981 = distinct !DISubprogram(name: "_fatal_insn", scope: !1, file: !1, line: 102, type: !982, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !984)
!982 = !DISubroutineType(types: !983)
!983 = !{null, !299, !769, !299, !294, !299}
!984 = !{!985, !986, !987, !988, !989}
!985 = !DILocalVariable(name: "msgid", arg: 1, scope: !981, file: !1, line: 102, type: !299)
!986 = !DILocalVariable(name: "insn", arg: 2, scope: !981, file: !1, line: 102, type: !769)
!987 = !DILocalVariable(name: "file", arg: 3, scope: !981, file: !1, line: 102, type: !299)
!988 = !DILocalVariable(name: "line", arg: 4, scope: !981, file: !1, line: 102, type: !294)
!989 = !DILocalVariable(name: "function", arg: 5, scope: !981, file: !1, line: 103, type: !299)
!990 = !DILocation(line: 0, scope: !981)
!991 = !DILocation(line: 105, column: 3, scope: !981)
!992 = !DILocation(line: 109, column: 3, scope: !981)
!993 = !DILocation(line: 109, column: 13, scope: !981)
!994 = !DILocation(line: 111, column: 3, scope: !981)
!995 = !DILocation(line: 112, column: 3, scope: !981)
!996 = !DILocation(line: 113, column: 1, scope: !981)
!997 = distinct !DISubprogram(name: "_fatal_insn_not_found", scope: !1, file: !1, line: 116, type: !998, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1000)
!998 = !DISubroutineType(types: !999)
!999 = !{null, !769, !299, !294, !299}
!1000 = !{!1001, !1002, !1003, !1004}
!1001 = !DILocalVariable(name: "insn", arg: 1, scope: !997, file: !1, line: 116, type: !769)
!1002 = !DILocalVariable(name: "file", arg: 2, scope: !997, file: !1, line: 116, type: !299)
!1003 = !DILocalVariable(name: "line", arg: 3, scope: !997, file: !1, line: 116, type: !294)
!1004 = !DILocalVariable(name: "function", arg: 4, scope: !997, file: !1, line: 117, type: !299)
!1005 = !DILocation(line: 0, scope: !997)
!1006 = !DILocation(line: 119, column: 7, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !997, file: !1, line: 119, column: 7)
!1008 = !DILocation(line: 119, column: 24, scope: !1007)
!1009 = !DILocation(line: 119, column: 7, scope: !997)
!1010 = !DILocation(line: 120, column: 5, scope: !1007)
!1011 = !DILocation(line: 122, column: 5, scope: !1007)
!1012 = !DILocation(line: 124, column: 1, scope: !997)
!1013 = distinct !DISubprogram(name: "location_for_asm", scope: !1, file: !1, line: 40, type: !1014, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1016)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!952, !769}
!1016 = !{!1017, !1018, !1019, !1020}
!1017 = !DILocalVariable(name: "insn", arg: 1, scope: !1013, file: !1, line: 40, type: !769)
!1018 = !DILocalVariable(name: "body", scope: !1013, file: !1, line: 42, type: !797)
!1019 = !DILocalVariable(name: "asmop", scope: !1013, file: !1, line: 43, type: !797)
!1020 = !DILocalVariable(name: "loc", scope: !1013, file: !1, line: 44, type: !952)
!1021 = !DILocation(line: 0, scope: !1013)
!1022 = !DILocation(line: 42, column: 14, scope: !1013)
!1023 = !DILocation(line: 47, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 47, column: 7)
!1025 = !DILocation(line: 47, column: 23, scope: !1024)
!1026 = !DILocation(line: 47, column: 30, scope: !1024)
!1027 = !DILocation(line: 47, column: 33, scope: !1024)
!1028 = !DILocation(line: 47, column: 59, scope: !1024)
!1029 = !DILocation(line: 47, column: 7, scope: !1013)
!1030 = !DILocation(line: 48, column: 5, scope: !1024)
!1031 = !DILocation(line: 49, column: 28, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !1, line: 49, column: 12)
!1033 = !DILocation(line: 49, column: 12, scope: !1024)
!1034 = !DILocation(line: 51, column: 28, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1032, file: !1, line: 51, column: 12)
!1036 = !DILocation(line: 52, column: 5, scope: !1035)
!1037 = !DILocation(line: 52, column: 8, scope: !1035)
!1038 = !DILocation(line: 52, column: 40, scope: !1035)
!1039 = !DILocation(line: 51, column: 12, scope: !1032)
!1040 = !DILocation(line: 53, column: 13, scope: !1035)
!1041 = !DILocation(line: 53, column: 5, scope: !1035)
!1042 = !DILocation(line: 55, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 54, column: 12)
!1044 = !DILocation(line: 55, column: 8, scope: !1043)
!1045 = !DILocation(line: 55, column: 40, scope: !1043)
!1046 = !DILocation(line: 54, column: 12, scope: !1035)
!1047 = !DILocation(line: 56, column: 5, scope: !1043)
!1048 = !DILocation(line: 0, scope: !1024)
!1049 = !DILocation(line: 60, column: 7, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1013, file: !1, line: 60, column: 7)
!1051 = !DILocation(line: 60, column: 7, scope: !1013)
!1052 = !DILocation(line: 61, column: 11, scope: !1050)
!1053 = !DILocation(line: 61, column: 5, scope: !1050)
!1054 = !DILocation(line: 0, scope: !1050)
!1055 = !DILocation(line: 64, column: 3, scope: !1013)
