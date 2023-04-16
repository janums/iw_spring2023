; ModuleID = 'pretty-print.bc'
source_filename = "pretty-print.c"
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
%struct.pretty_print_info = type { %struct.output_buffer*, i8*, i32, i32, i32, %struct.pp_wrapping_mode_t, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8, i8, i8 }
%struct.output_buffer = type { %struct.obstack, %struct.obstack, %struct.obstack*, %struct.chunk_info*, %struct._IO_FILE*, i32, [128 x i8] }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.chunk_info = type { %struct.chunk_info*, [60 x i8*] }
%struct.pp_wrapping_mode_t = type { i32, i32 }
%struct.text_info = type { i8*, [1 x %struct.__va_list_tag]*, i32, i32*, %union.tree_node** }
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
%struct.tree_block = type { %struct.tree_common, i32, i32, %union.tree_node*, %struct.VEC_tree_gc*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [15 x i8] c"pretty-print.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@open_quote = external dso_local local_unnamed_addr global i8*, align 8
@close_quote = external dso_local local_unnamed_addr global i8*, align 8
@_sch_istable = external dso_local local_unnamed_addr constant [256 x i16], align 16
@.str.2 = private unnamed_addr constant [6 x i8] c"qwl+#\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%lo\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"%o\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"%llo\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"0x%lx\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%x\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"%lx\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"%llx\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.17 = private unnamed_addr constant [6 x i8] c"\5C%03o\00", align 1
@locale_utf8 = external dso_local local_unnamed_addr global i8, align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"\5CU%08x\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !380 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !393, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !394, metadata !DIExpression()), !dbg !395
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !396
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #7, !dbg !397
  ret i32 %call, !dbg !398
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !399 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !403
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #7, !dbg !404
  ret i32 %call, !dbg !405
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !406 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !410, metadata !DIExpression()), !dbg !411
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !412
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !412
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !412
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !412
  %cmp = icmp uge i8* %0, %1, !dbg !412
  %conv1 = zext i1 %cmp to i64, !dbg !412
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !412
  %tobool = icmp eq i64 %expval, 0, !dbg !412
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !412

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !412
  br label %cond.end, !dbg !412

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !412
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !412
  %2 = load i8, i8* %0, align 1, !dbg !412
  %conv3 = zext i8 %2 to i32, !dbg !412
  br label %cond.end, !dbg !412

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !412
  ret i32 %cond, !dbg !413
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !414 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !416, metadata !DIExpression()), !dbg !417
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !418
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !418
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !418
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !418
  %cmp = icmp uge i8* %0, %1, !dbg !418
  %conv1 = zext i1 %cmp to i64, !dbg !418
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !418
  %tobool = icmp eq i64 %expval, 0, !dbg !418
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !418

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #7, !dbg !418
  br label %cond.end, !dbg !418

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !418
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !418
  %2 = load i8, i8* %0, align 1, !dbg !418
  %conv3 = zext i8 %2 to i32, !dbg !418
  br label %cond.end, !dbg !418

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !418
  ret i32 %cond, !dbg !419
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !420 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !421
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !421
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !421
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !421
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !421
  %cmp = icmp uge i8* %1, %2, !dbg !421
  %conv1 = zext i1 %cmp to i64, !dbg !421
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !421
  %tobool = icmp eq i64 %expval, 0, !dbg !421
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !421

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #7, !dbg !421
  br label %cond.end, !dbg !421

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !421
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !421
  %3 = load i8, i8* %1, align 1, !dbg !421
  %conv3 = zext i8 %3 to i32, !dbg !421
  br label %cond.end, !dbg !421

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !421
  ret i32 %cond, !dbg !422
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !423 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !427, metadata !DIExpression()), !dbg !428
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !429
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #7, !dbg !430
  ret i32 %call, !dbg !431
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !432 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !436, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !437, metadata !DIExpression()), !dbg !438
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !439
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !439
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !439
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !439
  %cmp = icmp uge i8* %0, %1, !dbg !439
  %conv1 = zext i1 %cmp to i64, !dbg !439
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !439
  %tobool = icmp eq i64 %expval, 0, !dbg !439
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !439

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !439
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !439
  br label %cond.end, !dbg !439

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !439
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !439
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !439
  store i8 %conv2, i8* %0, align 1, !dbg !439
  %conv6 = and i32 %__c, 255, !dbg !439
  br label %cond.end, !dbg !439

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !439
  ret i32 %cond, !dbg !440
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !441 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !443, metadata !DIExpression()), !dbg !445
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !444, metadata !DIExpression()), !dbg !445
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !446
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !446
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !446
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !446
  %cmp = icmp uge i8* %0, %1, !dbg !446
  %conv1 = zext i1 %cmp to i64, !dbg !446
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !446
  %tobool = icmp eq i64 %expval, 0, !dbg !446
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !446

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !446
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #7, !dbg !446
  br label %cond.end, !dbg !446

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !446
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !446
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !446
  store i8 %conv2, i8* %0, align 1, !dbg !446
  %conv6 = and i32 %__c, 255, !dbg !446
  br label %cond.end, !dbg !446

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !446
  ret i32 %cond, !dbg !447
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !448 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !450, metadata !DIExpression()), !dbg !451
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !452
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !452
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !452
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !452
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !452
  %cmp = icmp uge i8* %1, %2, !dbg !452
  %conv1 = zext i1 %cmp to i64, !dbg !452
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !452
  %tobool = icmp eq i64 %expval, 0, !dbg !452
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !452

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !452
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #7, !dbg !452
  br label %cond.end, !dbg !452

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !452
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !452
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !452
  store i8 %conv4, i8* %1, align 1, !dbg !452
  %conv6 = and i32 %__c, 255, !dbg !452
  br label %cond.end, !dbg !452

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !452
  ret i32 %cond, !dbg !453
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !454 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !460, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata i64* %__n, metadata !461, metadata !DIExpression()), !dbg !463
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !462, metadata !DIExpression()), !dbg !463
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #7, !dbg !464
  ret i64 %call, !dbg !465
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !466 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !468, metadata !DIExpression()), !dbg !469
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !470
  %0 = load i32, i32* %_flags, align 8, !dbg !470
  %and = lshr i32 %0, 4, !dbg !470
  %and.lobit = and i32 %and, 1, !dbg !470
  ret i32 %and.lobit, !dbg !471
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !472 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !474, metadata !DIExpression()), !dbg !475
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !476
  %0 = load i32, i32* %_flags, align 8, !dbg !476
  %and = lshr i32 %0, 5, !dbg !476
  %and.lobit = and i32 %and, 1, !dbg !476
  ret i32 %and.lobit, !dbg !477
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !478 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !481, metadata !DIExpression()), !dbg !482
  %__c.off = add i32 %__c, 128, !dbg !483
  %0 = icmp ult i32 %__c.off, 384, !dbg !483
  br i1 %0, label %cond.true, label %cond.end, !dbg !483

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #7, !dbg !484
  %1 = load i32*, i32** %call, align 8, !dbg !485
  %idxprom = sext i32 %__c to i64, !dbg !486
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !486
  %2 = load i32, i32* %arrayidx, align 4, !dbg !486
  br label %cond.end, !dbg !487

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !487
  ret i32 %cond, !dbg !488
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !489 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !491, metadata !DIExpression()), !dbg !492
  %__c.off = add i32 %__c, 128, !dbg !493
  %0 = icmp ult i32 %__c.off, 384, !dbg !493
  br i1 %0, label %cond.true, label %cond.end, !dbg !493

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #7, !dbg !494
  %1 = load i32*, i32** %call, align 8, !dbg !495
  %idxprom = sext i32 %__c to i64, !dbg !496
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !496
  %2 = load i32, i32* %arrayidx, align 4, !dbg !496
  br label %cond.end, !dbg !497

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !497
  ret i32 %cond, !dbg !498
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !499 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !504, metadata !DIExpression()), !dbg !505
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !506
  %conv = trunc i64 %call to i32, !dbg !507
  ret i32 %conv, !dbg !508
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !513, metadata !DIExpression()), !dbg !514
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #7, !dbg !515
  ret i64 %call, !dbg !516
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !517 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !522, metadata !DIExpression()), !dbg !523
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #7, !dbg !524
  ret i64 %call, !dbg !525
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !526 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !537, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i8* %__base, metadata !538, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !539, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %__size, metadata !540, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !541, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 0, metadata !542, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !543, metadata !DIExpression()), !dbg !547
  br label %while.cond, !dbg !548

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !549
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !547
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !543, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !542, metadata !DIExpression()), !dbg !547
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !550
  br i1 %cmp, label %while.body, label %cleanup, !dbg !548

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !551
  %div = lshr i64 %add, 1, !dbg !553
  call void @llvm.dbg.value(metadata i64 %div, metadata !544, metadata !DIExpression()), !dbg !547
  %mul = mul i64 %div, %__size, !dbg !554
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !555
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !545, metadata !DIExpression()), !dbg !547
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #7, !dbg !556
  call void @llvm.dbg.value(metadata i32 %call, metadata !546, metadata !DIExpression()), !dbg !547
  %cmp1 = icmp slt i32 %call, 0, !dbg !557
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !559

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !560
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !562

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !563
  call void @llvm.dbg.value(metadata i64 %add4, metadata !542, metadata !DIExpression()), !dbg !547
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !547
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !547
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !543, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !542, metadata !DIExpression()), !dbg !547
  br label %while.cond, !dbg !548, !llvm.loop !564

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !547
  ret i8* %retval.0, !dbg !566
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !567 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !573, metadata !DIExpression()), !dbg !574
  %call = tail call double @strtod(i8* %__nptr, i8** null) #7, !dbg !575
  ret double %call, !dbg !576
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !577 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !586, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !587, metadata !DIExpression()), !dbg !589
  call void @llvm.dbg.value(metadata i32 %base, metadata !588, metadata !DIExpression()), !dbg !589
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !590
  ret i64 %call, !dbg !591
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !592 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !598, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !599, metadata !DIExpression()), !dbg !601
  call void @llvm.dbg.value(metadata i32 %base, metadata !600, metadata !DIExpression()), !dbg !601
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #7, !dbg !602
  ret i64 %call, !dbg !603
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !604 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !615, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !616, metadata !DIExpression()), !dbg !618
  call void @llvm.dbg.value(metadata i32 %base, metadata !617, metadata !DIExpression()), !dbg !618
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !619
  ret i64 %call, !dbg !620
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !621 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !625, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !626, metadata !DIExpression()), !dbg !628
  call void @llvm.dbg.value(metadata i32 %base, metadata !627, metadata !DIExpression()), !dbg !628
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #7, !dbg !629
  ret i64 %call, !dbg !630
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !631 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !674, metadata !DIExpression()), !dbg !675
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !676
  ret i32 %call, !dbg !677
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !678 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !680, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !681, metadata !DIExpression()), !dbg !682
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #7, !dbg !683
  ret i32 %call, !dbg !684
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !685 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !689, metadata !DIExpression()), !dbg !691
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !690, metadata !DIExpression()), !dbg !691
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #7, !dbg !692
  ret i32 %call, !dbg !693
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !694 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !698, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !699, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !700, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !701, metadata !DIExpression()), !dbg !702
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #7, !dbg !703
  ret i32 %call, !dbg !704
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !705 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !709, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !710, metadata !DIExpression()), !dbg !712
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !711, metadata !DIExpression()), !dbg !712
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !711, metadata !DIExpression(DW_OP_deref)), !dbg !712
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !713
  ret i32 %call, !dbg !714
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !715 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !719, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i8* %__path, metadata !720, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !721, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !722, metadata !DIExpression()), !dbg !723
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !722, metadata !DIExpression(DW_OP_deref)), !dbg !723
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #7, !dbg !724
  ret i32 %call, !dbg !725
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !726 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !750, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !751, metadata !DIExpression()), !dbg !752
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !753
  ret i32 %call, !dbg !754
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !755 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !757, metadata !DIExpression()), !dbg !759
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !758, metadata !DIExpression()), !dbg !759
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #7, !dbg !760
  ret i32 %call, !dbg !761
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !762 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !766, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !767, metadata !DIExpression()), !dbg !768
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #7, !dbg !769
  ret i32 %call, !dbg !770
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !771 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !775, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !776, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !777, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !778, metadata !DIExpression()), !dbg !779
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #7, !dbg !780
  ret i32 %call, !dbg !781
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_write_text_to_stream(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !782 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1458, metadata !DIExpression()), !dbg !1460
  %call = tail call i8* @pp_base_formatted_text(%struct.pretty_print_info* %pp) #8, !dbg !1461
  call void @llvm.dbg.value(metadata i8* %call, metadata !1459, metadata !DIExpression()), !dbg !1460
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1462
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1462
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 4, !dbg !1463
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !dbg !1463
  %call1 = tail call i32 @fputs(i8* %call, %struct._IO_FILE* %1) #7, !dbg !1464
  tail call void @pp_base_clear_output_area(%struct.pretty_print_info* %pp) #8, !dbg !1465
  ret void, !dbg !1466
}

; Function Attrs: nounwind uwtable
define dso_local i8* @pp_base_formatted_text(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !1467 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1471, metadata !DIExpression()), !dbg !1472
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1473
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1473
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !1473
  %1 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !1473
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 3, !dbg !1473
  %2 = load i8*, i8** %next_free, align 8, !dbg !1473
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !1473
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 4, !dbg !1473
  %3 = load i8*, i8** %chunk_limit, align 8, !dbg !1473
  %cmp = icmp ugt i8* %add.ptr, %3, !dbg !1473
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1473

cond.true:                                        ; preds = %entry
  tail call void @_obstack_newchunk(%struct.obstack* %1, i32 1) #7, !dbg !1473
  %.pre = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1473
  %obstack6.phi.trans.insert = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %.pre, i64 0, i32 2, !dbg !1472
  %.pre1 = load %struct.obstack*, %struct.obstack** %obstack6.phi.trans.insert, align 8, !dbg !1473
  %next_free7.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %.pre1, i64 0, i32 3, !dbg !1472
  %.pre2 = load i8*, i8** %next_free7.phi.trans.insert, align 8, !dbg !1473
  br label %cond.end, !dbg !1473

cond.end:                                         ; preds = %entry, %cond.true
  %4 = phi i8* [ %2, %entry ], [ %.pre2, %cond.true ], !dbg !1473
  %5 = phi %struct.obstack* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !1473
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i64 0, i32 3, !dbg !1473
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !1473
  store i8* %incdec.ptr, i8** %next_free7, align 8, !dbg !1473
  store i8 0, i8* %4, align 1, !dbg !1473
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1474
  %obstack9 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i64 0, i32 2, !dbg !1474
  %7 = load %struct.obstack*, %struct.obstack** %obstack9, align 8, !dbg !1474
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 2, !dbg !1474
  %8 = load i8*, i8** %object_base, align 8, !dbg !1474
  ret i8* %8, !dbg !1475
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_clear_output_area(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !1476 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1478, metadata !DIExpression()), !dbg !1479
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1480
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1480
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !1480
  %1 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !1480
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 2, !dbg !1480
  %2 = bitcast i8** %object_base to i64*, !dbg !1480
  %3 = load i64, i64* %2, align 8, !dbg !1480
  %chunk = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 1, !dbg !1480
  %4 = bitcast %struct._obstack_chunk** %chunk to i64*, !dbg !1480
  %5 = load i64, i64* %4, align 8, !dbg !1480
  %sub.ptr.sub = sub i64 %3, %5, !dbg !1480
  %temp = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 5, !dbg !1480
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !1480
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1480
  %obstack6 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i64 0, i32 2, !dbg !1480
  %7 = load %struct.obstack*, %struct.obstack** %obstack6, align 8, !dbg !1480
  %temp7 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 5, !dbg !1480
  %8 = load i64, i64* %temp7, align 8, !dbg !1480
  %cmp = icmp sgt i64 %8, 0, !dbg !1480
  br i1 %cmp, label %land.lhs.true, label %entry.cond.false_crit_edge, !dbg !1480

entry.cond.false_crit_edge:                       ; preds = %entry
  %chunk38.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 1, !dbg !1479
  %.phi.trans.insert = bitcast %struct._obstack_chunk** %chunk38.phi.trans.insert to i8**, !dbg !1479
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !dbg !1480
  br label %cond.false, !dbg !1480

land.lhs.true:                                    ; preds = %entry
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 4, !dbg !1480
  %9 = bitcast i8** %chunk_limit to i64*, !dbg !1480
  %10 = load i64, i64* %9, align 8, !dbg !1480
  %chunk15 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 1, !dbg !1480
  %11 = bitcast %struct._obstack_chunk** %chunk15 to i64*, !dbg !1480
  %12 = load i64, i64* %11, align 8, !dbg !1480
  %sub.ptr.sub18 = sub i64 %10, %12, !dbg !1480
  %cmp19 = icmp slt i64 %8, %sub.ptr.sub18, !dbg !1480
  %13 = inttoptr i64 %12 to i8*, !dbg !1480
  br i1 %cmp19, label %cond.true, label %land.lhs.true.cond.false_crit_edge, !dbg !1480

land.lhs.true.cond.false_crit_edge:               ; preds = %land.lhs.true
  br label %cond.false, !dbg !1480

cond.true:                                        ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %13, i64 %8, !dbg !1480
  %object_base28 = getelementptr inbounds %struct.obstack, %struct.obstack* %7, i64 0, i32 2, !dbg !1480
  store i8* %add.ptr, i8** %object_base28, align 8, !dbg !1480
  %14 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1480
  %obstack30 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %14, i64 0, i32 2, !dbg !1480
  %15 = load %struct.obstack*, %struct.obstack** %obstack30, align 8, !dbg !1480
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %15, i64 0, i32 3, !dbg !1480
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !1480
  br label %cond.end, !dbg !1480

cond.false:                                       ; preds = %land.lhs.true.cond.false_crit_edge, %entry.cond.false_crit_edge
  %16 = phi i8* [ %.pre, %entry.cond.false_crit_edge ], [ %13, %land.lhs.true.cond.false_crit_edge ], !dbg !1480
  %add.ptr39 = getelementptr inbounds i8, i8* %16, i64 %8, !dbg !1480
  tail call void @obstack_free(%struct.obstack* %7, i8* %add.ptr39) #7, !dbg !1480
  br label %cond.end, !dbg !1480

cond.end:                                         ; preds = %cond.false, %cond.true
  %17 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1481
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %17, i64 0, i32 5, !dbg !1482
  store i32 0, i32* %line_length, align 8, !dbg !1483
  ret void, !dbg !1484
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_indent(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !1485 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1487, metadata !DIExpression()), !dbg !1490
  %indent_skip = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 4, !dbg !1491
  %0 = load i32, i32* %indent_skip, align 8, !dbg !1491
  call void @llvm.dbg.value(metadata i32 %0, metadata !1488, metadata !DIExpression()), !dbg !1490
  call void @llvm.dbg.value(metadata i32 0, metadata !1489, metadata !DIExpression()), !dbg !1490
  br label %for.cond, !dbg !1492

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !1494
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1489, metadata !DIExpression()), !dbg !1490
  %cmp = icmp slt i32 %i.0, %0, !dbg !1495
  br i1 %cmp, label %for.body, label %for.end, !dbg !1497

for.body:                                         ; preds = %for.cond
  tail call void @pp_base_character(%struct.pretty_print_info* %pp, i32 32) #8, !dbg !1498
  %inc = add nuw nsw i32 %i.0, 1, !dbg !1499
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1489, metadata !DIExpression()), !dbg !1490
  br label %for.cond, !dbg !1500, !llvm.loop !1501

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1503
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_character(%struct.pretty_print_info* %pp, i32 %c) local_unnamed_addr #5 !dbg !1504 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1508, metadata !DIExpression()), !dbg !1510
  call void @llvm.dbg.value(metadata i32 %c, metadata !1509, metadata !DIExpression()), !dbg !1510
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !1511
  %0 = load i32, i32* %line_cutoff, align 4, !dbg !1511
  %cmp = icmp sgt i32 %0, 0, !dbg !1511
  br i1 %cmp, label %land.lhs.true, label %if.end4, !dbg !1513

land.lhs.true:                                    ; preds = %entry
  %call = tail call i32 @pp_base_remaining_character_count_for_line(%struct.pretty_print_info* %pp) #8, !dbg !1514
  %cmp1 = icmp slt i32 %call, 1, !dbg !1515
  br i1 %cmp1, label %if.then, label %if.end4, !dbg !1516

if.then:                                          ; preds = %land.lhs.true
  tail call void @pp_base_newline(%struct.pretty_print_info* %pp) #8, !dbg !1517
  %and = and i32 %c, 255, !dbg !1519
  %idxprom = zext i32 %and to i64, !dbg !1519
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !1519
  %1 = load i16, i16* %arrayidx, align 2, !dbg !1519
  %2 = and i16 %1, 64, !dbg !1519
  %tobool = icmp eq i16 %2, 0, !dbg !1519
  br i1 %tobool, label %if.end4, label %return, !dbg !1521

if.end4:                                          ; preds = %if.then, %land.lhs.true, %entry
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1522
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1522
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 2, !dbg !1522
  %4 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !1522
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i64 0, i32 3, !dbg !1522
  %5 = load i8*, i8** %next_free, align 8, !dbg !1522
  %add.ptr = getelementptr inbounds i8, i8* %5, i64 1, !dbg !1522
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %4, i64 0, i32 4, !dbg !1522
  %6 = load i8*, i8** %chunk_limit, align 8, !dbg !1522
  %cmp7 = icmp ugt i8* %add.ptr, %6, !dbg !1522
  br i1 %cmp7, label %cond.true, label %cond.end, !dbg !1522

cond.true:                                        ; preds = %if.end4
  tail call void @_obstack_newchunk(%struct.obstack* %4, i32 1) #7, !dbg !1522
  %.pre = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1522
  %obstack13.phi.trans.insert = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %.pre, i64 0, i32 2, !dbg !1510
  %.pre1 = load %struct.obstack*, %struct.obstack** %obstack13.phi.trans.insert, align 8, !dbg !1522
  %next_free14.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %.pre1, i64 0, i32 3, !dbg !1510
  %.pre2 = load i8*, i8** %next_free14.phi.trans.insert, align 8, !dbg !1522
  br label %cond.end, !dbg !1522

cond.end:                                         ; preds = %if.end4, %cond.true
  %7 = phi i8* [ %5, %if.end4 ], [ %.pre2, %cond.true ], !dbg !1522
  %8 = phi %struct.obstack* [ %4, %if.end4 ], [ %.pre1, %cond.true ], !dbg !1522
  %conv11 = trunc i32 %c to i8, !dbg !1522
  %next_free14 = getelementptr inbounds %struct.obstack, %struct.obstack* %8, i64 0, i32 3, !dbg !1522
  %incdec.ptr = getelementptr inbounds i8, i8* %7, i64 1, !dbg !1522
  store i8* %incdec.ptr, i8** %next_free14, align 8, !dbg !1522
  store i8 %conv11, i8* %7, align 1, !dbg !1522
  %9 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1523
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i64 0, i32 5, !dbg !1524
  %10 = load i32, i32* %line_length, align 8, !dbg !1525
  %inc = add nsw i32 %10, 1, !dbg !1525
  store i32 %inc, i32* %line_length, align 8, !dbg !1525
  br label %return, !dbg !1526

return:                                           ; preds = %if.then, %cond.end
  ret void, !dbg !1526
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_format(%struct.pretty_print_info* %pp, %struct.text_info* %text) local_unnamed_addr #5 !dbg !1527 {
entry:
  %formatters = alloca [30 x i8**], align 16
  %end = alloca i8*, align 8
  %end447 = alloca i8*, align 8
  %end1323 = alloca i8*, align 8
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1531, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !1532, metadata !DIExpression()), !dbg !1587
  %buffer1 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1588
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1588
  call void @llvm.dbg.value(metadata %struct.output_buffer* %0, metadata !1533, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 0, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 0, metadata !1543, metadata !DIExpression()), !dbg !1587
  %1 = bitcast [30 x i8**]* %formatters to i8*, !dbg !1589
  call void @llvm.lifetime.start.p0i8(i64 240, i8* nonnull %1) #6, !dbg !1589
  call void @llvm.dbg.declare(metadata [30 x i8**]* %formatters, metadata !1544, metadata !DIExpression()), !dbg !1590
  %temp = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 5, !dbg !1591
  store i64 488, i64* %temp, align 8, !dbg !1591
  %chunk_limit = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 4, !dbg !1591
  %2 = bitcast i8** %chunk_limit to i64*, !dbg !1591
  %3 = load i64, i64* %2, align 8, !dbg !1591
  %next_free = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 3, !dbg !1591
  %4 = bitcast i8** %next_free to i64*, !dbg !1591
  %5 = load i64, i64* %4, align 8, !dbg !1591
  %sub.ptr.sub = sub i64 %3, %5, !dbg !1591
  %cmp = icmp slt i64 %sub.ptr.sub, 488, !dbg !1591
  %6 = inttoptr i64 %5 to i8*, !dbg !1591
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1591

cond.true:                                        ; preds = %entry
  %chunk_obstack6 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, !dbg !1591
  tail call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack6, i32 488) #7, !dbg !1591
  %.pre = load i64, i64* %temp, align 8, !dbg !1591
  %.pre14 = load i8*, i8** %next_free, align 8, !dbg !1591
  br label %cond.end, !dbg !1591

cond.end:                                         ; preds = %entry, %cond.true
  %7 = phi i8* [ %6, %entry ], [ %.pre14, %cond.true ], !dbg !1591
  %8 = phi i64 [ 488, %entry ], [ %.pre, %cond.true ], !dbg !1591
  %add.ptr = getelementptr inbounds i8, i8* %7, i64 %8, !dbg !1591
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !1591
  %object_base = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 2, !dbg !1591
  %9 = load i8*, i8** %object_base, align 8, !dbg !1591
  %cmp16 = icmp eq i8* %add.ptr, %9, !dbg !1591
  %10 = ptrtoint i8* %9 to i64, !dbg !1591
  %11 = ptrtoint i8* %add.ptr to i64, !dbg !1591
  br i1 %cmp16, label %cond.true18, label %cond.end21, !dbg !1591

cond.true18:                                      ; preds = %cond.end
  %maybe_empty_object = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 10, !dbg !1591
  %bf.load = load i8, i8* %maybe_empty_object, align 8, !dbg !1591
  %bf.set = or i8 %bf.load, 2, !dbg !1591
  store i8 %bf.set, i8* %maybe_empty_object, align 8, !dbg !1591
  br label %cond.end21, !dbg !1591

cond.end21:                                       ; preds = %cond.end, %cond.true18
  %12 = bitcast i8** %object_base to i64*, !dbg !1591
  store i64 %10, i64* %temp, align 8, !dbg !1591
  %alignment_mask = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 6, !dbg !1591
  %13 = load i32, i32* %alignment_mask, align 8, !dbg !1591
  %conv34 = sext i32 %13 to i64, !dbg !1591
  %add = add nsw i64 %11, %conv34, !dbg !1591
  %neg = xor i32 %13, -1, !dbg !1591
  %conv37 = sext i32 %neg to i64, !dbg !1591
  %and = and i64 %add, %conv37, !dbg !1591
  %14 = inttoptr i64 %and to i8*, !dbg !1591
  store i8* %14, i8** %next_free, align 8, !dbg !1591
  %chunk43 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 1, !dbg !1591
  %15 = bitcast %struct._obstack_chunk** %chunk43 to i64*, !dbg !1591
  %16 = load i64, i64* %15, align 8, !dbg !1591
  %sub.ptr.sub46 = sub i64 %and, %16, !dbg !1591
  %17 = load i64, i64* %2, align 8, !dbg !1591
  %sub.ptr.sub53 = sub i64 %17, %16, !dbg !1591
  %cmp54 = icmp sgt i64 %sub.ptr.sub46, %sub.ptr.sub53, !dbg !1591
  %18 = bitcast i8* %9 to %struct.chunk_info*, !dbg !1591
  br i1 %cmp54, label %cond.true56, label %cond.end62, !dbg !1591

cond.true56:                                      ; preds = %cond.end21
  store i64 %17, i64* %4, align 8, !dbg !1591
  br label %cond.end62, !dbg !1591

cond.end62:                                       ; preds = %cond.end21, %cond.true56
  %19 = phi i64 [ %and, %cond.end21 ], [ %17, %cond.true56 ], !dbg !1591
  store i64 %19, i64* %12, align 8, !dbg !1591
  call void @llvm.dbg.value(metadata %struct.chunk_info* %18, metadata !1537, metadata !DIExpression()), !dbg !1587
  %cur_chunk_array = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 3, !dbg !1592
  %20 = bitcast %struct.chunk_info** %cur_chunk_array to i64*, !dbg !1592
  %21 = load i64, i64* %20, align 8, !dbg !1592
  %22 = bitcast i8* %9 to i64*, !dbg !1593
  store i64 %21, i64* %22, align 8, !dbg !1593
  %23 = bitcast %struct.chunk_info** %cur_chunk_array to i8**, !dbg !1594
  store i8* %9, i8** %23, align 8, !dbg !1594
  call void @llvm.dbg.value(metadata %struct.chunk_info* %18, metadata !1535, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1587
  %call = call i8* @memset(i8* nonnull %1, i32 0, i64 240) #7, !dbg !1595
  %format_spec = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 0, !dbg !1596
  %24 = load i8*, i8** %format_spec, align 8, !dbg !1596
  call void @llvm.dbg.value(metadata i8* %24, metadata !1534, metadata !DIExpression()), !dbg !1587
  %chunk_obstack87 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, !dbg !1597
  %err_no = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 2, !dbg !1599
  %maybe_empty_object242 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 10, !dbg !1600
  %25 = bitcast i8** %end to i8*, !dbg !1601
  %26 = bitcast i8** %end447 to i8*, !dbg !1602
  br label %for.cond.outer, !dbg !1603

for.cond.outer:                                   ; preds = %cond.end597, %cond.end62
  %any_numbered.0.ph = phi i8 [ %any_numbered.1, %cond.end597 ], [ 0, %cond.end62 ]
  %any_unnumbered.0.ph = phi i8 [ %any_unnumbered.1, %cond.end597 ], [ 0, %cond.end62 ]
  %chunk.0.ph = phi i32 [ %inc605, %cond.end597 ], [ 0, %cond.end62 ]
  %curarg.0.ph = phi i32 [ %curarg.4, %cond.end597 ], [ 0, %cond.end62 ]
  %p.0.ph = phi i8* [ %p.7, %cond.end597 ], [ %24, %cond.end62 ]
  br label %for.cond, !dbg !1604

for.cond:                                         ; preds = %for.cond.backedge, %for.cond.outer
  %p.0 = phi i8* [ %p.0.ph, %for.cond.outer ], [ %p.0.be, %for.cond.backedge ], !dbg !1605
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %curarg.0.ph, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %chunk.0.ph, metadata !1539, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %any_unnumbered.0.ph, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %any_numbered.0.ph, metadata !1543, metadata !DIExpression()), !dbg !1587
  %27 = load i8, i8* %p.0, align 1, !dbg !1606
  %tobool = icmp eq i8 %27, 0, !dbg !1604
  br i1 %tobool, label %for.end.loopexit, label %while.cond.preheader, !dbg !1604

while.cond.preheader:                             ; preds = %for.cond
  br label %while.cond, !dbg !1607

while.cond:                                       ; preds = %while.cond.preheader, %cond.end89
  %28 = phi i8 [ %.pre15, %cond.end89 ], [ %27, %while.cond.preheader ], !dbg !1608
  %p.1 = phi i8* [ %incdec.ptr93, %cond.end89 ], [ %p.0, %while.cond.preheader ], !dbg !1605
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !1534, metadata !DIExpression()), !dbg !1587
  %cmp74 = icmp eq i8 %28, 0, !dbg !1609
  %cmp77 = icmp eq i8 %28, 37, !dbg !1610
  %or.cond36 = or i1 %cmp74, %cmp77, !dbg !1611
  br i1 %or.cond36, label %while.end, label %while.body, !dbg !1611

while.body:                                       ; preds = %while.cond
  %29 = load i8*, i8** %next_free, align 8, !dbg !1612
  %add.ptr81 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !1612
  %30 = load i8*, i8** %chunk_limit, align 8, !dbg !1612
  %cmp84 = icmp ugt i8* %add.ptr81, %30, !dbg !1612
  br i1 %cmp84, label %cond.true86, label %cond.end89, !dbg !1612

cond.true86:                                      ; preds = %while.body
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1612
  %.pre16 = load i8, i8* %p.1, align 1, !dbg !1612
  %.pre17 = load i8*, i8** %next_free, align 8, !dbg !1612
  br label %cond.end89, !dbg !1612

cond.end89:                                       ; preds = %while.body, %cond.true86
  %31 = phi i8* [ %29, %while.body ], [ %.pre17, %cond.true86 ], !dbg !1612
  %32 = phi i8 [ %28, %while.body ], [ %.pre16, %cond.true86 ], !dbg !1612
  %incdec.ptr = getelementptr inbounds i8, i8* %31, i64 1, !dbg !1612
  store i8* %incdec.ptr, i8** %next_free, align 8, !dbg !1612
  store i8 %32, i8* %31, align 1, !dbg !1612
  %incdec.ptr93 = getelementptr inbounds i8, i8* %p.1, i64 1, !dbg !1613
  call void @llvm.dbg.value(metadata i8* %incdec.ptr93, metadata !1534, metadata !DIExpression()), !dbg !1587
  %.pre15 = load i8, i8* %incdec.ptr93, align 1, !dbg !1608
  br label %while.cond, !dbg !1607, !llvm.loop !1614

while.end:                                        ; preds = %while.cond
  %p.1.lcssa = phi i8* [ %p.1, %while.cond ], !dbg !1605
  %cmp74.lcssa = phi i1 [ %cmp74, %while.cond ], !dbg !1609
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  br i1 %cmp74.lcssa, label %for.end.loopexit, label %if.end, !dbg !1616

if.end:                                           ; preds = %while.end
  %incdec.ptr97 = getelementptr inbounds i8, i8* %p.1.lcssa, i64 1, !dbg !1617
  call void @llvm.dbg.value(metadata i8* %incdec.ptr97, metadata !1534, metadata !DIExpression()), !dbg !1587
  %33 = load i8, i8* %incdec.ptr97, align 1, !dbg !1618
  %conv98 = sext i8 %33 to i32, !dbg !1618
  switch i32 %conv98, label %sw.default [
    i32 0, label %sw.bb
    i32 37, label %sw.bb99
    i32 60, label %sw.bb116
    i32 62, label %sw.bb148
    i32 39, label %sw.bb148
    i32 109, label %sw.bb180
  ], !dbg !1619

sw.bb:                                            ; preds = %if.end
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 251, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1620
  br label %sw.bb99, !dbg !1620

sw.bb99:                                          ; preds = %if.end, %sw.bb
  %34 = load i8*, i8** %next_free, align 8, !dbg !1621
  %add.ptr102 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !1621
  %35 = load i8*, i8** %chunk_limit, align 8, !dbg !1621
  %cmp105 = icmp ugt i8* %add.ptr102, %35, !dbg !1621
  br i1 %cmp105, label %cond.true107, label %cond.end110, !dbg !1621

cond.true107:                                     ; preds = %sw.bb99
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1621
  %.pre24 = load i8*, i8** %next_free, align 8, !dbg !1621
  br label %cond.end110, !dbg !1621

cond.end110:                                      ; preds = %sw.bb99, %cond.true107
  %36 = phi i8* [ %34, %sw.bb99 ], [ %.pre24, %cond.true107 ], !dbg !1621
  %incdec.ptr114 = getelementptr inbounds i8, i8* %36, i64 1, !dbg !1621
  store i8* %incdec.ptr114, i8** %next_free, align 8, !dbg !1621
  store i8 37, i8* %36, align 1, !dbg !1621
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1587
  br label %for.cond.backedge, !dbg !1622

for.cond.backedge:                                ; preds = %cond.end110, %cond.end135, %cond.end167, %cond.end200
  %p.0.be = getelementptr inbounds i8, i8* %p.1.lcssa, i64 2, !dbg !1600
  br label %for.cond, !dbg !1587, !llvm.loop !1623

sw.bb116:                                         ; preds = %if.end
  %37 = load i8*, i8** @open_quote, align 8, !dbg !1625
  %call117 = call i64 @strlen(i8* %37) #7, !dbg !1625
  store i64 %call117, i64* %temp, align 8, !dbg !1625
  %38 = load i8*, i8** %next_free, align 8, !dbg !1625
  %add.ptr124 = getelementptr inbounds i8, i8* %38, i64 %call117, !dbg !1625
  %39 = load i8*, i8** %chunk_limit, align 8, !dbg !1625
  %cmp127 = icmp ugt i8* %add.ptr124, %39, !dbg !1625
  br i1 %cmp127, label %cond.true129, label %cond.end135, !dbg !1625

cond.true129:                                     ; preds = %sw.bb116
  %conv133 = trunc i64 %call117 to i32, !dbg !1625
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 %conv133) #7, !dbg !1625
  %.pre22 = load i8*, i8** %next_free, align 8, !dbg !1625
  %.pre23 = load i64, i64* %temp, align 8, !dbg !1625
  br label %cond.end135, !dbg !1625

cond.end135:                                      ; preds = %sw.bb116, %cond.true129
  %40 = phi i64 [ %call117, %sw.bb116 ], [ %.pre23, %cond.true129 ], !dbg !1625
  %41 = phi i8* [ %38, %sw.bb116 ], [ %.pre22, %cond.true129 ], !dbg !1625
  %42 = load i8*, i8** @open_quote, align 8, !dbg !1625
  %call141 = call i8* @memcpy(i8* %41, i8* %42, i64 %40) #7, !dbg !1625
  %43 = load i64, i64* %temp, align 8, !dbg !1625
  %44 = load i8*, i8** %next_free, align 8, !dbg !1625
  %add.ptr146 = getelementptr inbounds i8, i8* %44, i64 %43, !dbg !1625
  store i8* %add.ptr146, i8** %next_free, align 8, !dbg !1625
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1587
  br label %for.cond.backedge, !dbg !1626

sw.bb148:                                         ; preds = %if.end, %if.end
  %45 = load i8*, i8** @close_quote, align 8, !dbg !1627
  %call149 = call i64 @strlen(i8* %45) #7, !dbg !1627
  store i64 %call149, i64* %temp, align 8, !dbg !1627
  %46 = load i8*, i8** %next_free, align 8, !dbg !1627
  %add.ptr156 = getelementptr inbounds i8, i8* %46, i64 %call149, !dbg !1627
  %47 = load i8*, i8** %chunk_limit, align 8, !dbg !1627
  %cmp159 = icmp ugt i8* %add.ptr156, %47, !dbg !1627
  br i1 %cmp159, label %cond.true161, label %cond.end167, !dbg !1627

cond.true161:                                     ; preds = %sw.bb148
  %conv165 = trunc i64 %call149 to i32, !dbg !1627
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 %conv165) #7, !dbg !1627
  %.pre20 = load i8*, i8** %next_free, align 8, !dbg !1627
  %.pre21 = load i64, i64* %temp, align 8, !dbg !1627
  br label %cond.end167, !dbg !1627

cond.end167:                                      ; preds = %sw.bb148, %cond.true161
  %48 = phi i64 [ %call149, %sw.bb148 ], [ %.pre21, %cond.true161 ], !dbg !1627
  %49 = phi i8* [ %46, %sw.bb148 ], [ %.pre20, %cond.true161 ], !dbg !1627
  %50 = load i8*, i8** @close_quote, align 8, !dbg !1627
  %call173 = call i8* @memcpy(i8* %49, i8* %50, i64 %48) #7, !dbg !1627
  %51 = load i64, i64* %temp, align 8, !dbg !1627
  %52 = load i8*, i8** %next_free, align 8, !dbg !1627
  %add.ptr178 = getelementptr inbounds i8, i8* %52, i64 %51, !dbg !1627
  store i8* %add.ptr178, i8** %next_free, align 8, !dbg !1627
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1587
  br label %for.cond.backedge, !dbg !1628

sw.bb180:                                         ; preds = %if.end
  %53 = load i32, i32* %err_no, align 8, !dbg !1629
  %call181 = call i8* @xstrerror(i32 %53) #7, !dbg !1630
  call void @llvm.dbg.value(metadata i8* %call181, metadata !1548, metadata !DIExpression()), !dbg !1599
  %call182 = call i64 @strlen(i8* %call181) #7, !dbg !1631
  store i64 %call182, i64* %temp, align 8, !dbg !1631
  %54 = load i8*, i8** %next_free, align 8, !dbg !1631
  %add.ptr189 = getelementptr inbounds i8, i8* %54, i64 %call182, !dbg !1631
  %55 = load i8*, i8** %chunk_limit, align 8, !dbg !1631
  %cmp192 = icmp ugt i8* %add.ptr189, %55, !dbg !1631
  br i1 %cmp192, label %cond.true194, label %cond.end200, !dbg !1631

cond.true194:                                     ; preds = %sw.bb180
  %conv198 = trunc i64 %call182 to i32, !dbg !1631
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 %conv198) #7, !dbg !1631
  %.pre18 = load i8*, i8** %next_free, align 8, !dbg !1631
  %.pre19 = load i64, i64* %temp, align 8, !dbg !1631
  br label %cond.end200, !dbg !1631

cond.end200:                                      ; preds = %sw.bb180, %cond.true194
  %56 = phi i64 [ %call182, %sw.bb180 ], [ %.pre19, %cond.true194 ], !dbg !1631
  %57 = phi i8* [ %54, %sw.bb180 ], [ %.pre18, %cond.true194 ], !dbg !1631
  %call206 = call i8* @memcpy(i8* %57, i8* %call181, i64 %56) #7, !dbg !1631
  %58 = load i64, i64* %temp, align 8, !dbg !1631
  %59 = load i8*, i8** %next_free, align 8, !dbg !1631
  %add.ptr211 = getelementptr inbounds i8, i8* %59, i64 %58, !dbg !1631
  store i8* %add.ptr211, i8** %next_free, align 8, !dbg !1631
  call void @llvm.dbg.value(metadata i8* %p.1.lcssa, metadata !1534, metadata !DIExpression(DW_OP_plus_uconst, 2, DW_OP_stack_value)), !dbg !1587
  br label %for.cond.backedge, !dbg !1632

sw.default:                                       ; preds = %if.end
  %incdec.ptr97.lcssa = phi i8* [ %incdec.ptr97, %if.end ], !dbg !1617
  %60 = load i8*, i8** %next_free, align 8, !dbg !1633
  %add.ptr215 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1633
  %61 = load i8*, i8** %chunk_limit, align 8, !dbg !1633
  %cmp218 = icmp ugt i8* %add.ptr215, %61, !dbg !1633
  br i1 %cmp218, label %cond.true220, label %cond.end223, !dbg !1633

cond.true220:                                     ; preds = %sw.default
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1633
  %.pre25 = load i8*, i8** %next_free, align 8, !dbg !1633
  br label %cond.end223, !dbg !1633

cond.end223:                                      ; preds = %sw.default, %cond.true220
  %62 = phi i8* [ %60, %sw.default ], [ %.pre25, %cond.true220 ], !dbg !1633
  %incdec.ptr227 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !1633
  store i8* %incdec.ptr227, i8** %next_free, align 8, !dbg !1633
  store i8 0, i8* %62, align 1, !dbg !1633
  %cmp228 = icmp ult i32 %chunk.0.ph, 60, !dbg !1634
  br i1 %cmp228, label %cond.end232, label %cond.true230, !dbg !1634

cond.true230:                                     ; preds = %cond.end223
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 282, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1634
  br label %cond.end232, !dbg !1634

cond.end232:                                      ; preds = %cond.end223, %cond.true230
  %63 = load i8*, i8** %next_free, align 8, !dbg !1635
  %64 = load i8*, i8** %object_base, align 8, !dbg !1635
  %cmp238 = icmp eq i8* %63, %64, !dbg !1635
  %65 = ptrtoint i8* %64 to i64, !dbg !1635
  %66 = ptrtoint i8* %63 to i64, !dbg !1635
  br i1 %cmp238, label %cond.true240, label %cond.end247, !dbg !1635

cond.true240:                                     ; preds = %cond.end232
  %bf.load243 = load i8, i8* %maybe_empty_object242, align 8, !dbg !1635
  %bf.set245 = or i8 %bf.load243, 2, !dbg !1635
  store i8 %bf.set245, i8* %maybe_empty_object242, align 8, !dbg !1635
  br label %cond.end247, !dbg !1635

cond.end247:                                      ; preds = %cond.end232, %cond.true240
  store i64 %65, i64* %temp, align 8, !dbg !1635
  %67 = load i32, i32* %alignment_mask, align 8, !dbg !1635
  %conv261 = sext i32 %67 to i64, !dbg !1635
  %add262 = add nsw i64 %66, %conv261, !dbg !1635
  %neg265 = xor i32 %67, -1, !dbg !1635
  %conv266 = sext i32 %neg265 to i64, !dbg !1635
  %and267 = and i64 %add262, %conv266, !dbg !1635
  %68 = inttoptr i64 %and267 to i8*, !dbg !1635
  store i8* %68, i8** %next_free, align 8, !dbg !1635
  %69 = load i64, i64* %15, align 8, !dbg !1635
  %sub.ptr.sub276 = sub i64 %and267, %69, !dbg !1635
  %70 = load i64, i64* %2, align 8, !dbg !1635
  %sub.ptr.sub283 = sub i64 %70, %69, !dbg !1635
  %cmp284 = icmp sgt i64 %sub.ptr.sub276, %sub.ptr.sub283, !dbg !1635
  br i1 %cmp284, label %cond.true286, label %cond.end292, !dbg !1635

cond.true286:                                     ; preds = %cond.end247
  store i64 %70, i64* %4, align 8, !dbg !1635
  br label %cond.end292, !dbg !1635

cond.end292:                                      ; preds = %cond.end247, %cond.true286
  %71 = phi i64 [ %and267, %cond.end247 ], [ %70, %cond.true286 ], !dbg !1635
  store i64 %71, i64* %12, align 8, !dbg !1635
  %inc = or i32 %chunk.0.ph, 1, !dbg !1636
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1539, metadata !DIExpression()), !dbg !1587
  %idxprom = zext i32 %chunk.0.ph to i64, !dbg !1637
  %arrayidx = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %18, i64 0, i32 1, i64 %idxprom, !dbg !1637
  %72 = bitcast i8** %arrayidx to i64*, !dbg !1638
  store i64 %65, i64* %72, align 8, !dbg !1638
  %73 = load i8, i8* %incdec.ptr97.lcssa, align 1, !dbg !1639
  %idxprom302 = zext i8 %73 to i64, !dbg !1639
  %arrayidx303 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom302, !dbg !1639
  %74 = load i16, i16* %arrayidx303, align 2, !dbg !1639
  %75 = and i16 %74, 4, !dbg !1639
  %tobool306 = icmp eq i16 %75, 0, !dbg !1639
  br i1 %tobool306, label %if.else, label %if.then307, !dbg !1640

if.then307:                                       ; preds = %cond.end292
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #6, !dbg !1641
  call void @llvm.dbg.value(metadata i8** %end, metadata !1554, metadata !DIExpression(DW_OP_deref)), !dbg !1601
  %call308 = call i64 @strtoul(i8* nonnull %incdec.ptr97.lcssa, i8** nonnull %end, i32 10) #7, !dbg !1642
  %76 = trunc i64 %call308 to i32, !dbg !1642
  %conv309 = add i32 %76, -1, !dbg !1642
  call void @llvm.dbg.value(metadata i32 %conv309, metadata !1540, metadata !DIExpression()), !dbg !1587
  %77 = load i8*, i8** %end, align 8, !dbg !1643
  call void @llvm.dbg.value(metadata i8* %77, metadata !1554, metadata !DIExpression()), !dbg !1601
  call void @llvm.dbg.value(metadata i8* %77, metadata !1534, metadata !DIExpression()), !dbg !1587
  %78 = load i8, i8* %77, align 1, !dbg !1644
  %cmp311 = icmp eq i8 %78, 36, !dbg !1644
  br i1 %cmp311, label %cond.end315, label %cond.true313, !dbg !1644

cond.true313:                                     ; preds = %if.then307
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 292, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1644
  br label %cond.end315, !dbg !1644

cond.end315:                                      ; preds = %if.then307, %cond.true313
  %incdec.ptr317 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !1645
  call void @llvm.dbg.value(metadata i8* %incdec.ptr317, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1543, metadata !DIExpression()), !dbg !1587
  %tobool318 = icmp eq i8 %any_unnumbered.0.ph, 0, !dbg !1646
  br i1 %tobool318, label %cond.end321, label %cond.true319, !dbg !1646

cond.true319:                                     ; preds = %cond.end315
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 296, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1646
  br label %cond.end321, !dbg !1646

cond.end321:                                      ; preds = %cond.end315, %cond.true319
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #6, !dbg !1647
  br label %if.end329, !dbg !1648

if.else:                                          ; preds = %cond.end292
  %inc323 = add i32 %curarg.0.ph, 1, !dbg !1649
  call void @llvm.dbg.value(metadata i32 %inc323, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %curarg.0.ph, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 1, metadata !1542, metadata !DIExpression()), !dbg !1587
  %tobool324 = icmp eq i8 %any_numbered.0.ph, 0, !dbg !1651
  br i1 %tobool324, label %if.end329, label %cond.true325, !dbg !1651

cond.true325:                                     ; preds = %if.else
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 302, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1651
  br label %if.end329, !dbg !1651

if.end329:                                        ; preds = %if.else, %cond.true325, %cond.end321
  %any_numbered.1 = phi i8 [ 1, %cond.end321 ], [ 0, %if.else ], [ %any_numbered.0.ph, %cond.true325 ], !dbg !1587
  %any_unnumbered.1 = phi i8 [ %any_unnumbered.0.ph, %cond.end321 ], [ 1, %if.else ], [ 1, %cond.true325 ], !dbg !1587
  %argno.0 = phi i32 [ %conv309, %cond.end321 ], [ %curarg.0.ph, %if.else ], [ %curarg.0.ph, %cond.true325 ], !dbg !1652
  %curarg.1 = phi i32 [ %curarg.0.ph, %cond.end321 ], [ %inc323, %if.else ], [ %inc323, %cond.true325 ], !dbg !1587
  %p.2 = phi i8* [ %incdec.ptr317, %cond.end321 ], [ %incdec.ptr97.lcssa, %if.else ], [ %incdec.ptr97.lcssa, %cond.true325 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %p.2, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %curarg.1, metadata !1538, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %argno.0, metadata !1540, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %any_unnumbered.1, metadata !1542, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %any_numbered.1, metadata !1543, metadata !DIExpression()), !dbg !1587
  %cmp330 = icmp ult i32 %argno.0, 30, !dbg !1654
  br i1 %cmp330, label %cond.end334, label %cond.true332, !dbg !1654

cond.true332:                                     ; preds = %if.end329
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1654
  br label %cond.end334, !dbg !1654

cond.end334:                                      ; preds = %if.end329, %cond.true332
  %idxprom336 = zext i32 %argno.0 to i64, !dbg !1655
  %arrayidx337 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom336, !dbg !1655
  %79 = load i8**, i8*** %arrayidx337, align 8, !dbg !1655
  %tobool338 = icmp eq i8** %79, null, !dbg !1655
  br i1 %tobool338, label %cond.end341, label %cond.true339, !dbg !1655

cond.true339:                                     ; preds = %cond.end334
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 305, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1655
  br label %cond.end341, !dbg !1655

cond.end341:                                      ; preds = %cond.end334, %cond.true339
  %idxprom343 = zext i32 %inc to i64, !dbg !1656
  %arrayidx344 = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %18, i64 0, i32 1, i64 %idxprom343, !dbg !1656
  store i8** %arrayidx344, i8*** %arrayidx337, align 8, !dbg !1657
  br label %do.body, !dbg !1658

do.body:                                          ; preds = %cond.end357, %cond.end341
  %p.3 = phi i8* [ %p.2, %cond.end341 ], [ %incdec.ptr362, %cond.end357 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %p.3, metadata !1534, metadata !DIExpression()), !dbg !1587
  %80 = load i8*, i8** %next_free, align 8, !dbg !1659
  %add.ptr349 = getelementptr inbounds i8, i8* %80, i64 1, !dbg !1659
  %81 = load i8*, i8** %chunk_limit, align 8, !dbg !1659
  %cmp352 = icmp ugt i8* %add.ptr349, %81, !dbg !1659
  br i1 %cmp352, label %cond.true354, label %cond.end357, !dbg !1659

cond.true354:                                     ; preds = %do.body
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1659
  %.pre26 = load i8*, i8** %next_free, align 8, !dbg !1659
  br label %cond.end357, !dbg !1659

cond.end357:                                      ; preds = %do.body, %cond.true354
  %82 = phi i8* [ %80, %do.body ], [ %.pre26, %cond.true354 ], !dbg !1659
  %83 = load i8, i8* %p.3, align 1, !dbg !1659
  %incdec.ptr361 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !1659
  store i8* %incdec.ptr361, i8** %next_free, align 8, !dbg !1659
  store i8 %83, i8* %82, align 1, !dbg !1659
  %incdec.ptr362 = getelementptr inbounds i8, i8* %p.3, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata i8* %incdec.ptr362, metadata !1534, metadata !DIExpression()), !dbg !1587
  %84 = load i8, i8* %p.3, align 1, !dbg !1662
  %conv364 = sext i8 %84 to i32, !dbg !1662
  %call365 = call i8* @strchr(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %conv364) #7, !dbg !1663
  %tobool366 = icmp eq i8* %call365, null, !dbg !1664
  br i1 %tobool366, label %do.end, label %do.body, !dbg !1664, !llvm.loop !1665

do.end:                                           ; preds = %cond.end357
  %incdec.ptr362.lcssa = phi i8* [ %incdec.ptr362, %cond.end357 ], !dbg !1661
  %p.3.lcssa = phi i8* [ %p.3, %cond.end357 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8* %p.3.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  %85 = load i8, i8* %p.3.lcssa, align 1, !dbg !1667
  %cmp369 = icmp eq i8 %85, 46, !dbg !1668
  br i1 %cmp369, label %if.then371, label %if.end512, !dbg !1669

if.then371:                                       ; preds = %do.end
  %86 = load i8, i8* %incdec.ptr362.lcssa, align 1, !dbg !1670
  %idxprom374 = zext i8 %86 to i64, !dbg !1670
  %arrayidx375 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom374, !dbg !1670
  %87 = load i16, i16* %arrayidx375, align 2, !dbg !1670
  %88 = and i16 %87, 4, !dbg !1670
  %tobool378 = icmp eq i16 %88, 0, !dbg !1670
  br i1 %tobool378, label %if.else415, label %do.body380.preheader, !dbg !1671

do.body380.preheader:                             ; preds = %if.then371
  br label %do.body380, !dbg !1672

do.body380:                                       ; preds = %do.body380.preheader, %cond.end391
  %p.4 = phi i8* [ %incdec.ptr396, %cond.end391 ], [ %incdec.ptr362.lcssa, %do.body380.preheader ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !1534, metadata !DIExpression()), !dbg !1587
  %89 = load i8*, i8** %next_free, align 8, !dbg !1674
  %add.ptr383 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !1674
  %90 = load i8*, i8** %chunk_limit, align 8, !dbg !1674
  %cmp386 = icmp ugt i8* %add.ptr383, %90, !dbg !1674
  br i1 %cmp386, label %cond.true388, label %cond.end391, !dbg !1674

cond.true388:                                     ; preds = %do.body380
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1674
  %.pre27 = load i8*, i8** %next_free, align 8, !dbg !1674
  br label %cond.end391, !dbg !1674

cond.end391:                                      ; preds = %do.body380, %cond.true388
  %91 = phi i8* [ %89, %do.body380 ], [ %.pre27, %cond.true388 ], !dbg !1674
  %92 = load i8, i8* %p.4, align 1, !dbg !1674
  %incdec.ptr395 = getelementptr inbounds i8, i8* %91, i64 1, !dbg !1674
  store i8* %incdec.ptr395, i8** %next_free, align 8, !dbg !1674
  store i8 %92, i8* %91, align 1, !dbg !1674
  %incdec.ptr396 = getelementptr inbounds i8, i8* %p.4, i64 1, !dbg !1676
  call void @llvm.dbg.value(metadata i8* %incdec.ptr396, metadata !1534, metadata !DIExpression()), !dbg !1587
  %93 = load i8, i8* %p.4, align 1, !dbg !1677
  %idxprom401 = zext i8 %93 to i64, !dbg !1677
  %arrayidx402 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom401, !dbg !1677
  %94 = load i16, i16* %arrayidx402, align 2, !dbg !1677
  %95 = and i16 %94, 4, !dbg !1677
  %tobool405 = icmp eq i16 %95, 0, !dbg !1678
  br i1 %tobool405, label %do.end406, label %do.body380, !dbg !1678, !llvm.loop !1679

do.end406:                                        ; preds = %cond.end391
  %incdec.ptr396.lcssa = phi i8* [ %incdec.ptr396, %cond.end391 ], !dbg !1676
  %.lcssa = phi i8 [ %93, %cond.end391 ], !dbg !1677
  call void @llvm.dbg.value(metadata i8* %p.4, metadata !1534, metadata !DIExpression()), !dbg !1587
  %cmp409 = icmp eq i8 %.lcssa, 115, !dbg !1681
  br i1 %cmp409, label %if.end512, label %cond.true411, !dbg !1681

cond.true411:                                     ; preds = %do.end406
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 326, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1681
  br label %if.end512, !dbg !1681

if.else415:                                       ; preds = %if.then371
  %cmp417 = icmp eq i8 %86, 42, !dbg !1682
  br i1 %cmp417, label %cond.end421, label %cond.true419, !dbg !1682

cond.true419:                                     ; preds = %if.else415
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 330, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1682
  br label %cond.end421, !dbg !1682

cond.end421:                                      ; preds = %if.else415, %cond.true419
  %96 = load i8*, i8** %next_free, align 8, !dbg !1683
  %add.ptr425 = getelementptr inbounds i8, i8* %96, i64 1, !dbg !1683
  %97 = load i8*, i8** %chunk_limit, align 8, !dbg !1683
  %cmp428 = icmp ugt i8* %add.ptr425, %97, !dbg !1683
  br i1 %cmp428, label %cond.true430, label %cond.end433, !dbg !1683

cond.true430:                                     ; preds = %cond.end421
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1683
  %.pre28 = load i8*, i8** %next_free, align 8, !dbg !1683
  br label %cond.end433, !dbg !1683

cond.end433:                                      ; preds = %cond.end421, %cond.true430
  %98 = phi i8* [ %96, %cond.end421 ], [ %.pre28, %cond.true430 ], !dbg !1683
  %incdec.ptr437 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !1683
  store i8* %incdec.ptr437, i8** %next_free, align 8, !dbg !1683
  store i8 42, i8* %98, align 1, !dbg !1683
  %incdec.ptr438 = getelementptr inbounds i8, i8* %p.3.lcssa, i64 2, !dbg !1684
  call void @llvm.dbg.value(metadata i8* %incdec.ptr438, metadata !1534, metadata !DIExpression()), !dbg !1587
  %99 = load i8, i8* %incdec.ptr438, align 1, !dbg !1685
  %idxprom441 = zext i8 %99 to i64, !dbg !1685
  %arrayidx442 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom441, !dbg !1685
  %100 = load i16, i16* %arrayidx442, align 2, !dbg !1685
  %101 = and i16 %100, 4, !dbg !1685
  %tobool445 = icmp eq i16 %101, 0, !dbg !1685
  br i1 %tobool445, label %if.else475, label %if.then446, !dbg !1686

if.then446:                                       ; preds = %cond.end433
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #6, !dbg !1687
  call void @llvm.dbg.value(metadata i8** %end447, metadata !1557, metadata !DIExpression(DW_OP_deref)), !dbg !1602
  %call448 = call i64 @strtoul(i8* nonnull %incdec.ptr438, i8** nonnull %end447, i32 10) #7, !dbg !1688
  %102 = trunc i64 %call448 to i32, !dbg !1688
  %conv450 = add i64 %call448, 4294967295, !dbg !1688
  call void @llvm.dbg.value(metadata i32 %102, metadata !1564, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !1602
  %103 = load i8*, i8** %end447, align 8, !dbg !1689
  call void @llvm.dbg.value(metadata i8* %103, metadata !1557, metadata !DIExpression()), !dbg !1602
  call void @llvm.dbg.value(metadata i8* %103, metadata !1534, metadata !DIExpression()), !dbg !1587
  %cmp452 = icmp eq i32 %argno.0, %102, !dbg !1690
  br i1 %cmp452, label %cond.end456, label %cond.true454, !dbg !1690

cond.true454:                                     ; preds = %if.then446
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 339, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1690
  br label %cond.end456, !dbg !1690

cond.end456:                                      ; preds = %if.then446, %cond.true454
  %tobool458 = icmp eq i8 %any_unnumbered.1, 0, !dbg !1691
  br i1 %tobool458, label %cond.end461, label %cond.true459, !dbg !1691

cond.true459:                                     ; preds = %cond.end456
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 340, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1691
  br label %cond.end461, !dbg !1691

cond.end461:                                      ; preds = %cond.end456, %cond.true459
  %104 = load i8, i8* %103, align 1, !dbg !1692
  %cmp464 = icmp eq i8 %104, 36, !dbg !1692
  br i1 %cmp464, label %cond.end468, label %cond.true466, !dbg !1692

cond.true466:                                     ; preds = %cond.end461
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 341, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1692
  br label %cond.end468, !dbg !1692

cond.end468:                                      ; preds = %cond.end461, %cond.true466
  %incdec.ptr470 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1693
  call void @llvm.dbg.value(metadata i8* %incdec.ptr470, metadata !1534, metadata !DIExpression()), !dbg !1587
  %105 = bitcast i8*** %arrayidx337 to i64*, !dbg !1694
  %106 = load i64, i64* %105, align 8, !dbg !1694
  %idxprom473 = and i64 %conv450, 4294967295, !dbg !1695
  %arrayidx474 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom473, !dbg !1695
  %107 = bitcast i8*** %arrayidx474 to i64*, !dbg !1696
  store i64 %106, i64* %107, align 8, !dbg !1696
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #6, !dbg !1697
  br label %if.end487, !dbg !1698

if.else475:                                       ; preds = %cond.end433
  %tobool476 = icmp eq i8 %any_numbered.1, 0, !dbg !1699
  br i1 %tobool476, label %cond.end479, label %cond.true477, !dbg !1699

cond.true477:                                     ; preds = %if.else475
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 348, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1699
  br label %cond.end479, !dbg !1699

cond.end479:                                      ; preds = %if.else475, %cond.true477
  %108 = bitcast i8*** %arrayidx337 to i64*, !dbg !1701
  %109 = load i64, i64* %108, align 8, !dbg !1701
  %add483 = add i32 %argno.0, 1, !dbg !1702
  %idxprom484 = zext i32 %add483 to i64, !dbg !1703
  %arrayidx485 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom484, !dbg !1703
  %110 = bitcast i8*** %arrayidx485 to i64*, !dbg !1704
  store i64 %109, i64* %110, align 8, !dbg !1704
  %inc486 = add i32 %curarg.1, 1, !dbg !1705
  call void @llvm.dbg.value(metadata i32 %inc486, metadata !1538, metadata !DIExpression()), !dbg !1587
  br label %if.end487

if.end487:                                        ; preds = %cond.end479, %cond.end468
  %curarg.2 = phi i32 [ %curarg.1, %cond.end468 ], [ %inc486, %cond.end479 ], !dbg !1587
  %p.5 = phi i8* [ %incdec.ptr470, %cond.end468 ], [ %incdec.ptr438, %cond.end479 ], !dbg !1706
  call void @llvm.dbg.value(metadata i8* %p.5, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %curarg.2, metadata !1538, metadata !DIExpression()), !dbg !1587
  %111 = load i8, i8* %p.5, align 1, !dbg !1707
  %cmp489 = icmp eq i8 %111, 115, !dbg !1707
  br i1 %cmp489, label %cond.end493, label %cond.true491, !dbg !1707

cond.true491:                                     ; preds = %if.end487
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1707
  br label %cond.end493, !dbg !1707

cond.end493:                                      ; preds = %if.end487, %cond.true491
  %112 = load i8*, i8** %next_free, align 8, !dbg !1708
  %add.ptr497 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !1708
  %113 = load i8*, i8** %chunk_limit, align 8, !dbg !1708
  %cmp500 = icmp ugt i8* %add.ptr497, %113, !dbg !1708
  br i1 %cmp500, label %cond.true502, label %cond.end505, !dbg !1708

cond.true502:                                     ; preds = %cond.end493
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1708
  %.pre29 = load i8*, i8** %next_free, align 8, !dbg !1708
  br label %cond.end505, !dbg !1708

cond.end505:                                      ; preds = %cond.end493, %cond.true502
  %114 = phi i8* [ %112, %cond.end493 ], [ %.pre29, %cond.true502 ], !dbg !1708
  %incdec.ptr509 = getelementptr inbounds i8, i8* %114, i64 1, !dbg !1708
  store i8* %incdec.ptr509, i8** %next_free, align 8, !dbg !1708
  store i8 115, i8* %114, align 1, !dbg !1708
  %incdec.ptr510 = getelementptr inbounds i8, i8* %p.5, i64 1, !dbg !1709
  call void @llvm.dbg.value(metadata i8* %incdec.ptr510, metadata !1534, metadata !DIExpression()), !dbg !1587
  br label %if.end512

if.end512:                                        ; preds = %cond.end505, %do.end406, %cond.true411, %do.end
  %curarg.4 = phi i32 [ %curarg.1, %do.end ], [ %curarg.2, %cond.end505 ], [ %curarg.1, %do.end406 ], [ %curarg.1, %cond.true411 ], !dbg !1710
  %p.7 = phi i8* [ %incdec.ptr362.lcssa, %do.end ], [ %incdec.ptr510, %cond.end505 ], [ %incdec.ptr396.lcssa, %do.end406 ], [ %incdec.ptr396.lcssa, %cond.true411 ], !dbg !1653
  call void @llvm.dbg.value(metadata i8* %p.7, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i32 %curarg.4, metadata !1538, metadata !DIExpression()), !dbg !1587
  %115 = load i8, i8* %p.7, align 1, !dbg !1711
  %cmp514 = icmp eq i8 %115, 0, !dbg !1713
  br i1 %cmp514, label %for.end.loopexit12, label %if.end517, !dbg !1714

if.end517:                                        ; preds = %if.end512
  %116 = load i8*, i8** %next_free, align 8, !dbg !1715
  %add.ptr520 = getelementptr inbounds i8, i8* %116, i64 1, !dbg !1715
  %117 = load i8*, i8** %chunk_limit, align 8, !dbg !1715
  %cmp523 = icmp ugt i8* %add.ptr520, %117, !dbg !1715
  br i1 %cmp523, label %cond.true525, label %cond.end528, !dbg !1715

cond.true525:                                     ; preds = %if.end517
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1715
  %.pre30 = load i8*, i8** %next_free, align 8, !dbg !1715
  br label %cond.end528, !dbg !1715

cond.end528:                                      ; preds = %if.end517, %cond.true525
  %118 = phi i8* [ %116, %if.end517 ], [ %.pre30, %cond.true525 ], !dbg !1715
  %incdec.ptr532 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1715
  store i8* %incdec.ptr532, i8** %next_free, align 8, !dbg !1715
  store i8 0, i8* %118, align 1, !dbg !1715
  %cmp533 = icmp ult i32 %inc, 60, !dbg !1716
  br i1 %cmp533, label %cond.end537, label %cond.true535, !dbg !1716

cond.true535:                                     ; preds = %cond.end528
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 361, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1716
  br label %cond.end537, !dbg !1716

cond.end537:                                      ; preds = %cond.end528, %cond.true535
  %119 = load i8*, i8** %next_free, align 8, !dbg !1717
  %120 = load i8*, i8** %object_base, align 8, !dbg !1717
  %cmp543 = icmp eq i8* %119, %120, !dbg !1717
  %121 = ptrtoint i8* %120 to i64, !dbg !1717
  %122 = ptrtoint i8* %119 to i64, !dbg !1717
  br i1 %cmp543, label %cond.true545, label %cond.end552, !dbg !1717

cond.true545:                                     ; preds = %cond.end537
  %bf.load548 = load i8, i8* %maybe_empty_object242, align 8, !dbg !1717
  %bf.set550 = or i8 %bf.load548, 2, !dbg !1717
  store i8 %bf.set550, i8* %maybe_empty_object242, align 8, !dbg !1717
  br label %cond.end552, !dbg !1717

cond.end552:                                      ; preds = %cond.end537, %cond.true545
  store i64 %121, i64* %temp, align 8, !dbg !1717
  %123 = load i32, i32* %alignment_mask, align 8, !dbg !1717
  %conv566 = sext i32 %123 to i64, !dbg !1717
  %add567 = add nsw i64 %122, %conv566, !dbg !1717
  %neg570 = xor i32 %123, -1, !dbg !1717
  %conv571 = sext i32 %neg570 to i64, !dbg !1717
  %and572 = and i64 %add567, %conv571, !dbg !1717
  %124 = inttoptr i64 %and572 to i8*, !dbg !1717
  store i8* %124, i8** %next_free, align 8, !dbg !1717
  %125 = load i64, i64* %15, align 8, !dbg !1717
  %sub.ptr.sub581 = sub i64 %and572, %125, !dbg !1717
  %126 = load i64, i64* %2, align 8, !dbg !1717
  %sub.ptr.sub588 = sub i64 %126, %125, !dbg !1717
  %cmp589 = icmp sgt i64 %sub.ptr.sub581, %sub.ptr.sub588, !dbg !1717
  br i1 %cmp589, label %cond.true591, label %cond.end597, !dbg !1717

cond.true591:                                     ; preds = %cond.end552
  store i64 %126, i64* %4, align 8, !dbg !1717
  br label %cond.end597, !dbg !1717

cond.end597:                                      ; preds = %cond.end552, %cond.true591
  %127 = phi i64 [ %and572, %cond.end552 ], [ %126, %cond.true591 ], !dbg !1717
  store i64 %127, i64* %12, align 8, !dbg !1717
  %inc605 = add i32 %chunk.0.ph, 2, !dbg !1718
  call void @llvm.dbg.value(metadata i32 %inc605, metadata !1539, metadata !DIExpression()), !dbg !1587
  %128 = bitcast i8** %arrayidx344 to i64*, !dbg !1719
  store i64 %121, i64* %128, align 8, !dbg !1719
  br label %for.cond.outer, !dbg !1720, !llvm.loop !1623

for.end.loopexit:                                 ; preds = %while.end, %for.cond
  %chunk.0.ph.lcssa = phi i32 [ %chunk.0.ph, %while.end ], [ %chunk.0.ph, %for.cond ]
  br label %for.end, !dbg !1721

for.end.loopexit12:                               ; preds = %if.end512
  %inc.lcssa = phi i32 [ %inc, %if.end512 ], !dbg !1636
  br label %for.end, !dbg !1721

for.end:                                          ; preds = %for.end.loopexit12, %for.end.loopexit
  %chunk.1 = phi i32 [ %chunk.0.ph.lcssa, %for.end.loopexit ], [ %inc.lcssa, %for.end.loopexit12 ], !dbg !1587
  call void @llvm.dbg.value(metadata i32 %chunk.1, metadata !1539, metadata !DIExpression()), !dbg !1587
  %129 = load i8*, i8** %next_free, align 8, !dbg !1721
  %add.ptr610 = getelementptr inbounds i8, i8* %129, i64 1, !dbg !1721
  %130 = load i8*, i8** %chunk_limit, align 8, !dbg !1721
  %cmp613 = icmp ugt i8* %add.ptr610, %130, !dbg !1721
  br i1 %cmp613, label %cond.true615, label %cond.end618, !dbg !1721

cond.true615:                                     ; preds = %for.end
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1721
  %.pre31 = load i8*, i8** %next_free, align 8, !dbg !1721
  br label %cond.end618, !dbg !1721

cond.end618:                                      ; preds = %for.end, %cond.true615
  %131 = phi i8* [ %129, %for.end ], [ %.pre31, %cond.true615 ], !dbg !1721
  %incdec.ptr622 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !1721
  store i8* %incdec.ptr622, i8** %next_free, align 8, !dbg !1721
  store i8 0, i8* %131, align 1, !dbg !1721
  %cmp623 = icmp ult i32 %chunk.1, 60, !dbg !1722
  br i1 %cmp623, label %cond.end627, label %cond.true625, !dbg !1722

cond.true625:                                     ; preds = %cond.end618
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 366, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1722
  br label %cond.end627, !dbg !1722

cond.end627:                                      ; preds = %cond.end618, %cond.true625
  %132 = load i8*, i8** %next_free, align 8, !dbg !1723
  %133 = load i8*, i8** %object_base, align 8, !dbg !1723
  %cmp633 = icmp eq i8* %132, %133, !dbg !1723
  %134 = ptrtoint i8* %133 to i64, !dbg !1723
  %135 = ptrtoint i8* %132 to i64, !dbg !1723
  br i1 %cmp633, label %cond.true635, label %cond.end642, !dbg !1723

cond.true635:                                     ; preds = %cond.end627
  %bf.load638 = load i8, i8* %maybe_empty_object242, align 8, !dbg !1723
  %bf.set640 = or i8 %bf.load638, 2, !dbg !1723
  store i8 %bf.set640, i8* %maybe_empty_object242, align 8, !dbg !1723
  br label %cond.end642, !dbg !1723

cond.end642:                                      ; preds = %cond.end627, %cond.true635
  store i64 %134, i64* %temp, align 8, !dbg !1723
  %136 = load i32, i32* %alignment_mask, align 8, !dbg !1723
  %conv656 = sext i32 %136 to i64, !dbg !1723
  %add657 = add nsw i64 %135, %conv656, !dbg !1723
  %neg660 = xor i32 %136, -1, !dbg !1723
  %conv661 = sext i32 %neg660 to i64, !dbg !1723
  %and662 = and i64 %add657, %conv661, !dbg !1723
  %137 = inttoptr i64 %and662 to i8*, !dbg !1723
  store i8* %137, i8** %next_free, align 8, !dbg !1723
  %138 = load i64, i64* %15, align 8, !dbg !1723
  %sub.ptr.sub671 = sub i64 %and662, %138, !dbg !1723
  %139 = load i64, i64* %2, align 8, !dbg !1723
  %sub.ptr.sub678 = sub i64 %139, %138, !dbg !1723
  %cmp679 = icmp sgt i64 %sub.ptr.sub671, %sub.ptr.sub678, !dbg !1723
  br i1 %cmp679, label %cond.true681, label %cond.end687, !dbg !1723

cond.true681:                                     ; preds = %cond.end642
  store i64 %139, i64* %4, align 8, !dbg !1723
  br label %cond.end687, !dbg !1723

cond.end687:                                      ; preds = %cond.end642, %cond.true681
  %140 = phi i64 [ %and662, %cond.end642 ], [ %139, %cond.true681 ], !dbg !1723
  store i64 %140, i64* %12, align 8, !dbg !1723
  %inc695 = add i32 %chunk.1, 1, !dbg !1724
  call void @llvm.dbg.value(metadata i32 %inc695, metadata !1539, metadata !DIExpression()), !dbg !1587
  %idxprom696 = zext i32 %chunk.1 to i64, !dbg !1725
  %arrayidx697 = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %18, i64 0, i32 1, i64 %idxprom696, !dbg !1725
  %141 = bitcast i8** %arrayidx697 to i64*, !dbg !1726
  store i64 %134, i64* %141, align 8, !dbg !1726
  %idxprom698 = zext i32 %inc695 to i64, !dbg !1727
  %arrayidx699 = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %18, i64 0, i32 1, i64 %idxprom698, !dbg !1727
  store i8* null, i8** %arrayidx699, align 8, !dbg !1728
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !1729
  store %struct.obstack* %chunk_obstack87, %struct.obstack** %obstack, align 8, !dbg !1730
  %call701 = call fastcc i64 @pp_set_verbatim_wrapping_(%struct.pretty_print_info* %pp) #8, !dbg !1731
  call void @llvm.dbg.value(metadata i32 0, metadata !1540, metadata !DIExpression()), !dbg !1587
  %142 = bitcast i8** %end1323 to i8*, !dbg !1732
  %args_ptr1349 = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !1733
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !1735
  %abstract_origin = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 4, !dbg !1735
  %143 = bitcast %union.tree_node*** %abstract_origin to %struct.tree_block***, !dbg !1736
  %format_decoder = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 6, !dbg !1739
  br label %for.cond702, !dbg !1740

for.cond702:                                      ; preds = %cond.end1479, %cond.end687
  %argno.1 = phi i32 [ 0, %cond.end687 ], [ %inc1490, %cond.end1479 ], !dbg !1741
  call void @llvm.dbg.value(metadata i32 %argno.1, metadata !1540, metadata !DIExpression()), !dbg !1587
  %idxprom703 = zext i32 %argno.1 to i64, !dbg !1742
  %arrayidx704 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom703, !dbg !1742
  %144 = load i8**, i8*** %arrayidx704, align 8, !dbg !1742
  %tobool705 = icmp eq i8** %144, null, !dbg !1743
  br i1 %tobool705, label %for.end1491, label %for.body706, !dbg !1743

for.body706:                                      ; preds = %for.cond702
  call void @llvm.dbg.value(metadata i32 0, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 0, metadata !1569, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 0, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 0, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 0, metadata !1572, metadata !DIExpression()), !dbg !1744
  %145 = load i8*, i8** %144, align 8, !dbg !1745
  call void @llvm.dbg.value(metadata i8* %145, metadata !1534, metadata !DIExpression()), !dbg !1587
  br label %for.cond709, !dbg !1747

for.cond709:                                      ; preds = %for.inc, %for.body706
  %wide.0 = phi i8 [ 0, %for.body706 ], [ %wide.1, %for.inc ], !dbg !1748
  %precision.0 = phi i32 [ 0, %for.body706 ], [ %precision.1, %for.inc ], !dbg !1744
  %plus.0 = phi i8 [ 0, %for.body706 ], [ %plus.1, %for.inc ], !dbg !1749
  %hash.0 = phi i8 [ 0, %for.body706 ], [ %hash.1, %for.inc ], !dbg !1750
  %quote.0 = phi i8 [ 0, %for.body706 ], [ %quote.1, %for.inc ], !dbg !1751
  %p.8 = phi i8* [ %145, %for.body706 ], [ %incdec.ptr744, %for.inc ], !dbg !1752
  call void @llvm.dbg.value(metadata i8* %p.8, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %quote.0, metadata !1572, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %hash.0, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %plus.0, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %precision.0, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %wide.0, metadata !1569, metadata !DIExpression()), !dbg !1744
  %146 = load i8, i8* %p.8, align 1, !dbg !1753
  %conv710 = sext i8 %146 to i32, !dbg !1753
  switch i32 %conv710, label %for.end745 [
    i32 113, label %sw.bb711
    i32 43, label %sw.bb717
    i32 35, label %sw.bb723
    i32 119, label %sw.bb729
    i32 108, label %sw.bb735
  ], !dbg !1756

sw.bb711:                                         ; preds = %for.cond709
  %tobool712 = icmp eq i8 %quote.0, 0, !dbg !1757
  br i1 %tobool712, label %for.inc, label %cond.true713, !dbg !1757

cond.true713:                                     ; preds = %sw.bb711
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1757
  br label %for.inc, !dbg !1757

sw.bb717:                                         ; preds = %for.cond709
  %tobool718 = icmp eq i8 %plus.0, 0, !dbg !1759
  br i1 %tobool718, label %for.inc, label %cond.true719, !dbg !1759

cond.true719:                                     ; preds = %sw.bb717
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 399, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1759
  br label %for.inc, !dbg !1759

sw.bb723:                                         ; preds = %for.cond709
  %tobool724 = icmp eq i8 %hash.0, 0, !dbg !1760
  br i1 %tobool724, label %for.inc, label %cond.true725, !dbg !1760

cond.true725:                                     ; preds = %sw.bb723
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 404, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1760
  br label %for.inc, !dbg !1760

sw.bb729:                                         ; preds = %for.cond709
  %tobool730 = icmp eq i8 %wide.0, 0, !dbg !1761
  br i1 %tobool730, label %for.inc, label %cond.true731, !dbg !1761

cond.true731:                                     ; preds = %sw.bb729
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 409, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1761
  br label %for.inc, !dbg !1761

sw.bb735:                                         ; preds = %for.cond709
  %cmp736 = icmp slt i32 %precision.0, 2, !dbg !1762
  br i1 %cmp736, label %cond.end740, label %cond.true738, !dbg !1762

cond.true738:                                     ; preds = %sw.bb735
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 415, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1762
  br label %cond.end740, !dbg !1762

cond.end740:                                      ; preds = %sw.bb735, %cond.true738
  %inc742 = add nsw i32 %precision.0, 1, !dbg !1763
  call void @llvm.dbg.value(metadata i32 %inc742, metadata !1565, metadata !DIExpression()), !dbg !1744
  br label %for.inc, !dbg !1764

for.inc:                                          ; preds = %sw.bb711, %sw.bb717, %sw.bb723, %sw.bb729, %cond.true731, %cond.true725, %cond.true719, %cond.true713, %cond.end740
  %wide.1 = phi i8 [ %wide.0, %cond.end740 ], [ %wide.0, %sw.bb711 ], [ %wide.0, %cond.true713 ], [ %wide.0, %sw.bb717 ], [ %wide.0, %cond.true719 ], [ %wide.0, %sw.bb723 ], [ %wide.0, %cond.true725 ], [ 1, %sw.bb729 ], [ 1, %cond.true731 ], !dbg !1744
  %precision.1 = phi i32 [ %inc742, %cond.end740 ], [ %precision.0, %sw.bb711 ], [ %precision.0, %cond.true713 ], [ %precision.0, %sw.bb717 ], [ %precision.0, %cond.true719 ], [ %precision.0, %sw.bb723 ], [ %precision.0, %cond.true725 ], [ %precision.0, %sw.bb729 ], [ %precision.0, %cond.true731 ], !dbg !1744
  %plus.1 = phi i8 [ %plus.0, %cond.end740 ], [ %plus.0, %sw.bb711 ], [ %plus.0, %cond.true713 ], [ 1, %sw.bb717 ], [ 1, %cond.true719 ], [ %plus.0, %sw.bb723 ], [ %plus.0, %cond.true725 ], [ %plus.0, %sw.bb729 ], [ %plus.0, %cond.true731 ], !dbg !1744
  %hash.1 = phi i8 [ %hash.0, %cond.end740 ], [ %hash.0, %sw.bb711 ], [ %hash.0, %cond.true713 ], [ %hash.0, %sw.bb717 ], [ %hash.0, %cond.true719 ], [ 1, %sw.bb723 ], [ 1, %cond.true725 ], [ %hash.0, %sw.bb729 ], [ %hash.0, %cond.true731 ], !dbg !1744
  %quote.1 = phi i8 [ %quote.0, %cond.end740 ], [ 1, %sw.bb711 ], [ 1, %cond.true713 ], [ %quote.0, %sw.bb717 ], [ %quote.0, %cond.true719 ], [ %quote.0, %sw.bb723 ], [ %quote.0, %cond.true725 ], [ %quote.0, %sw.bb729 ], [ %quote.0, %cond.true731 ], !dbg !1744
  call void @llvm.dbg.value(metadata i8 %quote.1, metadata !1572, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %hash.1, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %plus.1, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %precision.1, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %wide.1, metadata !1569, metadata !DIExpression()), !dbg !1744
  %incdec.ptr744 = getelementptr inbounds i8, i8* %p.8, i64 1, !dbg !1765
  call void @llvm.dbg.value(metadata i8* %incdec.ptr744, metadata !1534, metadata !DIExpression()), !dbg !1587
  br label %for.cond709, !dbg !1766, !llvm.loop !1767

for.end745:                                       ; preds = %for.cond709
  %wide.0.lcssa = phi i8 [ %wide.0, %for.cond709 ], !dbg !1748
  %precision.0.lcssa = phi i32 [ %precision.0, %for.cond709 ], !dbg !1744
  %plus.0.lcssa = phi i8 [ %plus.0, %for.cond709 ], !dbg !1749
  %hash.0.lcssa = phi i8 [ %hash.0, %for.cond709 ], !dbg !1750
  %quote.0.lcssa = phi i8 [ %quote.0, %for.cond709 ], !dbg !1751
  %p.8.lcssa = phi i8* [ %p.8, %for.cond709 ], !dbg !1752
  call void @llvm.dbg.value(metadata i8 %wide.0.lcssa, metadata !1569, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %plus.0.lcssa, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %hash.0.lcssa, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !1572, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %wide.0.lcssa, metadata !1569, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %plus.0.lcssa, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %hash.0.lcssa, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !1572, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  call void @llvm.dbg.value(metadata i8 %wide.0.lcssa, metadata !1569, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i32 %precision.0.lcssa, metadata !1565, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %plus.0.lcssa, metadata !1570, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %hash.0.lcssa, metadata !1571, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8 %quote.0.lcssa, metadata !1572, metadata !DIExpression()), !dbg !1744
  call void @llvm.dbg.value(metadata i8* %p.8.lcssa, metadata !1534, metadata !DIExpression()), !dbg !1587
  %tobool746 = icmp eq i8 %wide.0.lcssa, 0, !dbg !1770
  %cmp747 = icmp eq i32 %precision.0.lcssa, 0, !dbg !1770
  %or.cond = or i1 %tobool746, %cmp747, !dbg !1770
  br i1 %or.cond, label %cond.end751, label %cond.true749, !dbg !1770

cond.true749:                                     ; preds = %for.end745
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 422, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1770
  br label %cond.end751, !dbg !1770

cond.end751:                                      ; preds = %for.end745, %cond.true749
  %tobool753 = icmp eq i8 %quote.0.lcssa, 0, !dbg !1771
  br i1 %tobool753, label %if.end755, label %if.then754, !dbg !1773

if.then754:                                       ; preds = %cond.end751
  %147 = load i8*, i8** @open_quote, align 8, !dbg !1774
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %147) #8, !dbg !1774
  br label %if.end755, !dbg !1774

if.end755:                                        ; preds = %cond.end751, %if.then754
  %148 = load i8, i8* %p.8.lcssa, align 1, !dbg !1775
  %conv756 = sext i8 %148 to i32, !dbg !1775
  switch i32 %conv756, label %sw.default1389 [
    i32 99, label %sw.bb757
    i32 100, label %sw.bb759
    i32 105, label %sw.bb759
    i32 111, label %sw.bb863
    i32 115, label %sw.bb968
    i32 112, label %do.body983
    i32 117, label %sw.bb1006
    i32 120, label %sw.bb1111
    i32 75, label %sw.bb1216
    i32 46, label %sw.bb1313
  ], !dbg !1776

sw.bb757:                                         ; preds = %if.end755
  %149 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1777
  %gp_offset_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %149, i64 0, i64 0, i32 0, !dbg !1777
  %gp_offset = load i32, i32* %gp_offset_p, align 8, !dbg !1777
  %fits_in_gp = icmp ult i32 %gp_offset, 41, !dbg !1777
  br i1 %fits_in_gp, label %vaarg.in_reg, label %vaarg.in_mem, !dbg !1777

vaarg.in_reg:                                     ; preds = %sw.bb757
  %150 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %149, i64 0, i64 0, i32 3, !dbg !1777
  %reg_save_area = load i8*, i8** %150, align 8, !dbg !1777
  %151 = sext i32 %gp_offset to i64, !dbg !1777
  %152 = getelementptr i8, i8* %reg_save_area, i64 %151, !dbg !1777
  %153 = add i32 %gp_offset, 8, !dbg !1777
  store i32 %153, i32* %gp_offset_p, align 8, !dbg !1777
  br label %vaarg.end, !dbg !1777

vaarg.in_mem:                                     ; preds = %sw.bb757
  %overflow_arg_area_p = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %149, i64 0, i64 0, i32 2, !dbg !1777
  %overflow_arg_area = load i8*, i8** %overflow_arg_area_p, align 8, !dbg !1777
  %overflow_arg_area.next = getelementptr i8, i8* %overflow_arg_area, i64 8, !dbg !1777
  store i8* %overflow_arg_area.next, i8** %overflow_arg_area_p, align 8, !dbg !1777
  br label %vaarg.end, !dbg !1777

vaarg.end:                                        ; preds = %vaarg.in_mem, %vaarg.in_reg
  %vaarg.addr.in = phi i8* [ %152, %vaarg.in_reg ], [ %overflow_arg_area, %vaarg.in_mem ]
  %vaarg.addr = bitcast i8* %vaarg.addr.in to i32*, !dbg !1777
  %154 = load i32, i32* %vaarg.addr, align 4, !dbg !1777
  call void @pp_base_character(%struct.pretty_print_info* %pp, i32 %154) #8, !dbg !1777
  br label %sw.epilog1402, !dbg !1778

sw.bb759:                                         ; preds = %if.end755, %if.end755
  br i1 %tobool746, label %do.body785, label %do.body762, !dbg !1779

do.body762:                                       ; preds = %sw.bb759
  %155 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1780
  %arraydecay764 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %155, i64 0, i32 6, i64 0, !dbg !1780
  %156 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1780
  %gp_offset_p767 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %156, i64 0, i64 0, i32 0, !dbg !1780
  %gp_offset768 = load i32, i32* %gp_offset_p767, align 8, !dbg !1780
  %fits_in_gp769 = icmp ult i32 %gp_offset768, 41, !dbg !1780
  br i1 %fits_in_gp769, label %vaarg.in_reg770, label %vaarg.in_mem772, !dbg !1780

vaarg.in_reg770:                                  ; preds = %do.body762
  %157 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %156, i64 0, i64 0, i32 3, !dbg !1780
  %reg_save_area771 = load i8*, i8** %157, align 8, !dbg !1780
  %158 = sext i32 %gp_offset768 to i64, !dbg !1780
  %159 = getelementptr i8, i8* %reg_save_area771, i64 %158, !dbg !1780
  %160 = add i32 %gp_offset768, 8, !dbg !1780
  store i32 %160, i32* %gp_offset_p767, align 8, !dbg !1780
  br label %vaarg.end776, !dbg !1780

vaarg.in_mem772:                                  ; preds = %do.body762
  %overflow_arg_area_p773 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %156, i64 0, i64 0, i32 2, !dbg !1780
  %overflow_arg_area774 = load i8*, i8** %overflow_arg_area_p773, align 8, !dbg !1780
  %overflow_arg_area.next775 = getelementptr i8, i8* %overflow_arg_area774, i64 8, !dbg !1780
  store i8* %overflow_arg_area.next775, i8** %overflow_arg_area_p773, align 8, !dbg !1780
  br label %vaarg.end776, !dbg !1780

vaarg.end776:                                     ; preds = %vaarg.in_mem772, %vaarg.in_reg770
  %vaarg.addr777.in = phi i8* [ %159, %vaarg.in_reg770 ], [ %overflow_arg_area774, %vaarg.in_mem772 ]
  %vaarg.addr777 = bitcast i8* %vaarg.addr777.in to i64*, !dbg !1780
  %161 = load i64, i64* %vaarg.addr777, align 8, !dbg !1780
  %call778 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay764, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %161) #7, !dbg !1780
  %162 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1780
  %arraydecay781 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %162, i64 0, i32 6, i64 0, !dbg !1780
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay781) #8, !dbg !1780
  br label %sw.epilog1402, !dbg !1780

do.body785:                                       ; preds = %sw.bb759
  switch i32 %precision.0.lcssa, label %sw.epilog1402 [
    i32 0, label %do.body787
    i32 1, label %do.body811
    i32 2, label %do.body835
  ], !dbg !1783

do.body787:                                       ; preds = %do.body785
  %163 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1784
  %arraydecay790 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %163, i64 0, i32 6, i64 0, !dbg !1784
  %164 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1784
  %gp_offset_p793 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %164, i64 0, i64 0, i32 0, !dbg !1784
  %gp_offset794 = load i32, i32* %gp_offset_p793, align 8, !dbg !1784
  %fits_in_gp795 = icmp ult i32 %gp_offset794, 41, !dbg !1784
  br i1 %fits_in_gp795, label %vaarg.in_reg796, label %vaarg.in_mem798, !dbg !1784

vaarg.in_reg796:                                  ; preds = %do.body787
  %165 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %164, i64 0, i64 0, i32 3, !dbg !1784
  %reg_save_area797 = load i8*, i8** %165, align 8, !dbg !1784
  %166 = sext i32 %gp_offset794 to i64, !dbg !1784
  %167 = getelementptr i8, i8* %reg_save_area797, i64 %166, !dbg !1784
  %168 = add i32 %gp_offset794, 8, !dbg !1784
  store i32 %168, i32* %gp_offset_p793, align 8, !dbg !1784
  br label %vaarg.end802, !dbg !1784

vaarg.in_mem798:                                  ; preds = %do.body787
  %overflow_arg_area_p799 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %164, i64 0, i64 0, i32 2, !dbg !1784
  %overflow_arg_area800 = load i8*, i8** %overflow_arg_area_p799, align 8, !dbg !1784
  %overflow_arg_area.next801 = getelementptr i8, i8* %overflow_arg_area800, i64 8, !dbg !1784
  store i8* %overflow_arg_area.next801, i8** %overflow_arg_area_p799, align 8, !dbg !1784
  br label %vaarg.end802, !dbg !1784

vaarg.end802:                                     ; preds = %vaarg.in_mem798, %vaarg.in_reg796
  %vaarg.addr803.in = phi i8* [ %167, %vaarg.in_reg796 ], [ %overflow_arg_area800, %vaarg.in_mem798 ]
  %vaarg.addr803 = bitcast i8* %vaarg.addr803.in to i32*, !dbg !1784
  %169 = load i32, i32* %vaarg.addr803, align 4, !dbg !1784
  %call804 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay790, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %169) #7, !dbg !1784
  %170 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1784
  %arraydecay807 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %170, i64 0, i32 6, i64 0, !dbg !1784
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay807) #8, !dbg !1784
  br label %sw.epilog1402, !dbg !1787

do.body811:                                       ; preds = %do.body785
  %171 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1788
  %arraydecay814 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %171, i64 0, i32 6, i64 0, !dbg !1788
  %172 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1788
  %gp_offset_p817 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %172, i64 0, i64 0, i32 0, !dbg !1788
  %gp_offset818 = load i32, i32* %gp_offset_p817, align 8, !dbg !1788
  %fits_in_gp819 = icmp ult i32 %gp_offset818, 41, !dbg !1788
  br i1 %fits_in_gp819, label %vaarg.in_reg820, label %vaarg.in_mem822, !dbg !1788

vaarg.in_reg820:                                  ; preds = %do.body811
  %173 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %172, i64 0, i64 0, i32 3, !dbg !1788
  %reg_save_area821 = load i8*, i8** %173, align 8, !dbg !1788
  %174 = sext i32 %gp_offset818 to i64, !dbg !1788
  %175 = getelementptr i8, i8* %reg_save_area821, i64 %174, !dbg !1788
  %176 = add i32 %gp_offset818, 8, !dbg !1788
  store i32 %176, i32* %gp_offset_p817, align 8, !dbg !1788
  br label %vaarg.end826, !dbg !1788

vaarg.in_mem822:                                  ; preds = %do.body811
  %overflow_arg_area_p823 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %172, i64 0, i64 0, i32 2, !dbg !1788
  %overflow_arg_area824 = load i8*, i8** %overflow_arg_area_p823, align 8, !dbg !1788
  %overflow_arg_area.next825 = getelementptr i8, i8* %overflow_arg_area824, i64 8, !dbg !1788
  store i8* %overflow_arg_area.next825, i8** %overflow_arg_area_p823, align 8, !dbg !1788
  br label %vaarg.end826, !dbg !1788

vaarg.end826:                                     ; preds = %vaarg.in_mem822, %vaarg.in_reg820
  %vaarg.addr827.in = phi i8* [ %175, %vaarg.in_reg820 ], [ %overflow_arg_area824, %vaarg.in_mem822 ]
  %vaarg.addr827 = bitcast i8* %vaarg.addr827.in to i64*, !dbg !1788
  %177 = load i64, i64* %vaarg.addr827, align 8, !dbg !1788
  %call828 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay814, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i64 %177) #7, !dbg !1788
  %178 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1788
  %arraydecay831 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %178, i64 0, i32 6, i64 0, !dbg !1788
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay831) #8, !dbg !1788
  br label %sw.epilog1402, !dbg !1787

do.body835:                                       ; preds = %do.body785
  %179 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1790
  %arraydecay838 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %179, i64 0, i32 6, i64 0, !dbg !1790
  %180 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1790
  %gp_offset_p841 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %180, i64 0, i64 0, i32 0, !dbg !1790
  %gp_offset842 = load i32, i32* %gp_offset_p841, align 8, !dbg !1790
  %fits_in_gp843 = icmp ult i32 %gp_offset842, 41, !dbg !1790
  br i1 %fits_in_gp843, label %vaarg.in_reg844, label %vaarg.in_mem846, !dbg !1790

vaarg.in_reg844:                                  ; preds = %do.body835
  %181 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %180, i64 0, i64 0, i32 3, !dbg !1790
  %reg_save_area845 = load i8*, i8** %181, align 8, !dbg !1790
  %182 = sext i32 %gp_offset842 to i64, !dbg !1790
  %183 = getelementptr i8, i8* %reg_save_area845, i64 %182, !dbg !1790
  %184 = add i32 %gp_offset842, 8, !dbg !1790
  store i32 %184, i32* %gp_offset_p841, align 8, !dbg !1790
  br label %vaarg.end850, !dbg !1790

vaarg.in_mem846:                                  ; preds = %do.body835
  %overflow_arg_area_p847 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %180, i64 0, i64 0, i32 2, !dbg !1790
  %overflow_arg_area848 = load i8*, i8** %overflow_arg_area_p847, align 8, !dbg !1790
  %overflow_arg_area.next849 = getelementptr i8, i8* %overflow_arg_area848, i64 8, !dbg !1790
  store i8* %overflow_arg_area.next849, i8** %overflow_arg_area_p847, align 8, !dbg !1790
  br label %vaarg.end850, !dbg !1790

vaarg.end850:                                     ; preds = %vaarg.in_mem846, %vaarg.in_reg844
  %vaarg.addr851.in = phi i8* [ %183, %vaarg.in_reg844 ], [ %overflow_arg_area848, %vaarg.in_mem846 ]
  %vaarg.addr851 = bitcast i8* %vaarg.addr851.in to i64*, !dbg !1790
  %185 = load i64, i64* %vaarg.addr851, align 8, !dbg !1790
  %call852 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay838, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %185) #7, !dbg !1790
  %186 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1790
  %arraydecay855 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %186, i64 0, i32 6, i64 0, !dbg !1790
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay855) #8, !dbg !1790
  br label %sw.epilog1402, !dbg !1787

sw.bb863:                                         ; preds = %if.end755
  br i1 %tobool746, label %do.body890, label %do.body866, !dbg !1792

do.body866:                                       ; preds = %sw.bb863
  %187 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1793
  %arraydecay869 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %187, i64 0, i32 6, i64 0, !dbg !1793
  %188 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1793
  %gp_offset_p872 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %188, i64 0, i64 0, i32 0, !dbg !1793
  %gp_offset873 = load i32, i32* %gp_offset_p872, align 8, !dbg !1793
  %fits_in_gp874 = icmp ult i32 %gp_offset873, 41, !dbg !1793
  br i1 %fits_in_gp874, label %vaarg.in_reg875, label %vaarg.in_mem877, !dbg !1793

vaarg.in_reg875:                                  ; preds = %do.body866
  %189 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %188, i64 0, i64 0, i32 3, !dbg !1793
  %reg_save_area876 = load i8*, i8** %189, align 8, !dbg !1793
  %190 = sext i32 %gp_offset873 to i64, !dbg !1793
  %191 = getelementptr i8, i8* %reg_save_area876, i64 %190, !dbg !1793
  %192 = add i32 %gp_offset873, 8, !dbg !1793
  store i32 %192, i32* %gp_offset_p872, align 8, !dbg !1793
  br label %vaarg.end881, !dbg !1793

vaarg.in_mem877:                                  ; preds = %do.body866
  %overflow_arg_area_p878 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %188, i64 0, i64 0, i32 2, !dbg !1793
  %overflow_arg_area879 = load i8*, i8** %overflow_arg_area_p878, align 8, !dbg !1793
  %overflow_arg_area.next880 = getelementptr i8, i8* %overflow_arg_area879, i64 8, !dbg !1793
  store i8* %overflow_arg_area.next880, i8** %overflow_arg_area_p878, align 8, !dbg !1793
  br label %vaarg.end881, !dbg !1793

vaarg.end881:                                     ; preds = %vaarg.in_mem877, %vaarg.in_reg875
  %vaarg.addr882.in = phi i8* [ %191, %vaarg.in_reg875 ], [ %overflow_arg_area879, %vaarg.in_mem877 ]
  %vaarg.addr882 = bitcast i8* %vaarg.addr882.in to i64*, !dbg !1793
  %193 = load i64, i64* %vaarg.addr882, align 8, !dbg !1793
  %call883 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay869, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %193) #7, !dbg !1793
  %194 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1793
  %arraydecay886 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %194, i64 0, i32 6, i64 0, !dbg !1793
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay886) #8, !dbg !1793
  br label %sw.epilog1402, !dbg !1793

do.body890:                                       ; preds = %sw.bb863
  switch i32 %precision.0.lcssa, label %sw.epilog1402 [
    i32 0, label %do.body892
    i32 1, label %do.body916
    i32 2, label %do.body940
  ], !dbg !1796

do.body892:                                       ; preds = %do.body890
  %195 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1797
  %arraydecay895 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %195, i64 0, i32 6, i64 0, !dbg !1797
  %196 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1797
  %gp_offset_p898 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %196, i64 0, i64 0, i32 0, !dbg !1797
  %gp_offset899 = load i32, i32* %gp_offset_p898, align 8, !dbg !1797
  %fits_in_gp900 = icmp ult i32 %gp_offset899, 41, !dbg !1797
  br i1 %fits_in_gp900, label %vaarg.in_reg901, label %vaarg.in_mem903, !dbg !1797

vaarg.in_reg901:                                  ; preds = %do.body892
  %197 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %196, i64 0, i64 0, i32 3, !dbg !1797
  %reg_save_area902 = load i8*, i8** %197, align 8, !dbg !1797
  %198 = sext i32 %gp_offset899 to i64, !dbg !1797
  %199 = getelementptr i8, i8* %reg_save_area902, i64 %198, !dbg !1797
  %200 = add i32 %gp_offset899, 8, !dbg !1797
  store i32 %200, i32* %gp_offset_p898, align 8, !dbg !1797
  br label %vaarg.end907, !dbg !1797

vaarg.in_mem903:                                  ; preds = %do.body892
  %overflow_arg_area_p904 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %196, i64 0, i64 0, i32 2, !dbg !1797
  %overflow_arg_area905 = load i8*, i8** %overflow_arg_area_p904, align 8, !dbg !1797
  %overflow_arg_area.next906 = getelementptr i8, i8* %overflow_arg_area905, i64 8, !dbg !1797
  store i8* %overflow_arg_area.next906, i8** %overflow_arg_area_p904, align 8, !dbg !1797
  br label %vaarg.end907, !dbg !1797

vaarg.end907:                                     ; preds = %vaarg.in_mem903, %vaarg.in_reg901
  %vaarg.addr908.in = phi i8* [ %199, %vaarg.in_reg901 ], [ %overflow_arg_area905, %vaarg.in_mem903 ]
  %vaarg.addr908 = bitcast i8* %vaarg.addr908.in to i32*, !dbg !1797
  %201 = load i32, i32* %vaarg.addr908, align 4, !dbg !1797
  %call909 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay895, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i32 %201) #7, !dbg !1797
  %202 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1797
  %arraydecay912 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %202, i64 0, i32 6, i64 0, !dbg !1797
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay912) #8, !dbg !1797
  br label %sw.epilog1402, !dbg !1800

do.body916:                                       ; preds = %do.body890
  %203 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1801
  %arraydecay919 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %203, i64 0, i32 6, i64 0, !dbg !1801
  %204 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1801
  %gp_offset_p922 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %204, i64 0, i64 0, i32 0, !dbg !1801
  %gp_offset923 = load i32, i32* %gp_offset_p922, align 8, !dbg !1801
  %fits_in_gp924 = icmp ult i32 %gp_offset923, 41, !dbg !1801
  br i1 %fits_in_gp924, label %vaarg.in_reg925, label %vaarg.in_mem927, !dbg !1801

vaarg.in_reg925:                                  ; preds = %do.body916
  %205 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %204, i64 0, i64 0, i32 3, !dbg !1801
  %reg_save_area926 = load i8*, i8** %205, align 8, !dbg !1801
  %206 = sext i32 %gp_offset923 to i64, !dbg !1801
  %207 = getelementptr i8, i8* %reg_save_area926, i64 %206, !dbg !1801
  %208 = add i32 %gp_offset923, 8, !dbg !1801
  store i32 %208, i32* %gp_offset_p922, align 8, !dbg !1801
  br label %vaarg.end931, !dbg !1801

vaarg.in_mem927:                                  ; preds = %do.body916
  %overflow_arg_area_p928 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %204, i64 0, i64 0, i32 2, !dbg !1801
  %overflow_arg_area929 = load i8*, i8** %overflow_arg_area_p928, align 8, !dbg !1801
  %overflow_arg_area.next930 = getelementptr i8, i8* %overflow_arg_area929, i64 8, !dbg !1801
  store i8* %overflow_arg_area.next930, i8** %overflow_arg_area_p928, align 8, !dbg !1801
  br label %vaarg.end931, !dbg !1801

vaarg.end931:                                     ; preds = %vaarg.in_mem927, %vaarg.in_reg925
  %vaarg.addr932.in = phi i8* [ %207, %vaarg.in_reg925 ], [ %overflow_arg_area929, %vaarg.in_mem927 ]
  %vaarg.addr932 = bitcast i8* %vaarg.addr932.in to i64*, !dbg !1801
  %209 = load i64, i64* %vaarg.addr932, align 8, !dbg !1801
  %call933 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay919, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i64 %209) #7, !dbg !1801
  %210 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1801
  %arraydecay936 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %210, i64 0, i32 6, i64 0, !dbg !1801
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay936) #8, !dbg !1801
  br label %sw.epilog1402, !dbg !1800

do.body940:                                       ; preds = %do.body890
  %211 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1803
  %arraydecay943 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %211, i64 0, i32 6, i64 0, !dbg !1803
  %212 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1803
  %gp_offset_p946 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %212, i64 0, i64 0, i32 0, !dbg !1803
  %gp_offset947 = load i32, i32* %gp_offset_p946, align 8, !dbg !1803
  %fits_in_gp948 = icmp ult i32 %gp_offset947, 41, !dbg !1803
  br i1 %fits_in_gp948, label %vaarg.in_reg949, label %vaarg.in_mem951, !dbg !1803

vaarg.in_reg949:                                  ; preds = %do.body940
  %213 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %212, i64 0, i64 0, i32 3, !dbg !1803
  %reg_save_area950 = load i8*, i8** %213, align 8, !dbg !1803
  %214 = sext i32 %gp_offset947 to i64, !dbg !1803
  %215 = getelementptr i8, i8* %reg_save_area950, i64 %214, !dbg !1803
  %216 = add i32 %gp_offset947, 8, !dbg !1803
  store i32 %216, i32* %gp_offset_p946, align 8, !dbg !1803
  br label %vaarg.end955, !dbg !1803

vaarg.in_mem951:                                  ; preds = %do.body940
  %overflow_arg_area_p952 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %212, i64 0, i64 0, i32 2, !dbg !1803
  %overflow_arg_area953 = load i8*, i8** %overflow_arg_area_p952, align 8, !dbg !1803
  %overflow_arg_area.next954 = getelementptr i8, i8* %overflow_arg_area953, i64 8, !dbg !1803
  store i8* %overflow_arg_area.next954, i8** %overflow_arg_area_p952, align 8, !dbg !1803
  br label %vaarg.end955, !dbg !1803

vaarg.end955:                                     ; preds = %vaarg.in_mem951, %vaarg.in_reg949
  %vaarg.addr956.in = phi i8* [ %215, %vaarg.in_reg949 ], [ %overflow_arg_area953, %vaarg.in_mem951 ]
  %vaarg.addr956 = bitcast i8* %vaarg.addr956.in to i64*, !dbg !1803
  %217 = load i64, i64* %vaarg.addr956, align 8, !dbg !1803
  %call957 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay943, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i64 %217) #7, !dbg !1803
  %218 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1803
  %arraydecay960 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %218, i64 0, i32 6, i64 0, !dbg !1803
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay960) #8, !dbg !1803
  br label %sw.epilog1402, !dbg !1800

sw.bb968:                                         ; preds = %if.end755
  %219 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1805
  %gp_offset_p971 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %219, i64 0, i64 0, i32 0, !dbg !1805
  %gp_offset972 = load i32, i32* %gp_offset_p971, align 8, !dbg !1805
  %fits_in_gp973 = icmp ult i32 %gp_offset972, 41, !dbg !1805
  br i1 %fits_in_gp973, label %vaarg.in_reg974, label %vaarg.in_mem976, !dbg !1805

vaarg.in_reg974:                                  ; preds = %sw.bb968
  %220 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %219, i64 0, i64 0, i32 3, !dbg !1805
  %reg_save_area975 = load i8*, i8** %220, align 8, !dbg !1805
  %221 = sext i32 %gp_offset972 to i64, !dbg !1805
  %222 = getelementptr i8, i8* %reg_save_area975, i64 %221, !dbg !1805
  %223 = add i32 %gp_offset972, 8, !dbg !1805
  store i32 %223, i32* %gp_offset_p971, align 8, !dbg !1805
  br label %vaarg.end980, !dbg !1805

vaarg.in_mem976:                                  ; preds = %sw.bb968
  %overflow_arg_area_p977 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %219, i64 0, i64 0, i32 2, !dbg !1805
  %overflow_arg_area978 = load i8*, i8** %overflow_arg_area_p977, align 8, !dbg !1805
  %overflow_arg_area.next979 = getelementptr i8, i8* %overflow_arg_area978, i64 8, !dbg !1805
  store i8* %overflow_arg_area.next979, i8** %overflow_arg_area_p977, align 8, !dbg !1805
  br label %vaarg.end980, !dbg !1805

vaarg.end980:                                     ; preds = %vaarg.in_mem976, %vaarg.in_reg974
  %vaarg.addr981.in = phi i8* [ %222, %vaarg.in_reg974 ], [ %overflow_arg_area978, %vaarg.in_mem976 ]
  %vaarg.addr981 = bitcast i8* %vaarg.addr981.in to i8**, !dbg !1805
  %224 = load i8*, i8** %vaarg.addr981, align 8, !dbg !1805
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %224) #8, !dbg !1805
  br label %sw.epilog1402, !dbg !1806

do.body983:                                       ; preds = %if.end755
  %225 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1807
  %arraydecay986 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %225, i64 0, i32 6, i64 0, !dbg !1807
  %226 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1807
  %gp_offset_p989 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %226, i64 0, i64 0, i32 0, !dbg !1807
  %gp_offset990 = load i32, i32* %gp_offset_p989, align 8, !dbg !1807
  %fits_in_gp991 = icmp ult i32 %gp_offset990, 41, !dbg !1807
  br i1 %fits_in_gp991, label %vaarg.in_reg992, label %vaarg.in_mem994, !dbg !1807

vaarg.in_reg992:                                  ; preds = %do.body983
  %227 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %226, i64 0, i64 0, i32 3, !dbg !1807
  %reg_save_area993 = load i8*, i8** %227, align 8, !dbg !1807
  %228 = sext i32 %gp_offset990 to i64, !dbg !1807
  %229 = getelementptr i8, i8* %reg_save_area993, i64 %228, !dbg !1807
  %230 = add i32 %gp_offset990, 8, !dbg !1807
  store i32 %230, i32* %gp_offset_p989, align 8, !dbg !1807
  br label %vaarg.end998, !dbg !1807

vaarg.in_mem994:                                  ; preds = %do.body983
  %overflow_arg_area_p995 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %226, i64 0, i64 0, i32 2, !dbg !1807
  %overflow_arg_area996 = load i8*, i8** %overflow_arg_area_p995, align 8, !dbg !1807
  %overflow_arg_area.next997 = getelementptr i8, i8* %overflow_arg_area996, i64 8, !dbg !1807
  store i8* %overflow_arg_area.next997, i8** %overflow_arg_area_p995, align 8, !dbg !1807
  br label %vaarg.end998, !dbg !1807

vaarg.end998:                                     ; preds = %vaarg.in_mem994, %vaarg.in_reg992
  %vaarg.addr999.in = phi i8* [ %229, %vaarg.in_reg992 ], [ %overflow_arg_area996, %vaarg.in_mem994 ]
  %vaarg.addr999 = bitcast i8* %vaarg.addr999.in to i8**, !dbg !1807
  %231 = load i8*, i8** %vaarg.addr999, align 8, !dbg !1807
  %call1000 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay986, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %231) #7, !dbg !1807
  %232 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1807
  %arraydecay1003 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %232, i64 0, i32 6, i64 0, !dbg !1807
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1003) #8, !dbg !1807
  br label %sw.epilog1402, !dbg !1809

sw.bb1006:                                        ; preds = %if.end755
  br i1 %tobool746, label %do.body1033, label %do.body1009, !dbg !1810

do.body1009:                                      ; preds = %sw.bb1006
  %233 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1811
  %arraydecay1012 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %233, i64 0, i32 6, i64 0, !dbg !1811
  %234 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1811
  %gp_offset_p1015 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %234, i64 0, i64 0, i32 0, !dbg !1811
  %gp_offset1016 = load i32, i32* %gp_offset_p1015, align 8, !dbg !1811
  %fits_in_gp1017 = icmp ult i32 %gp_offset1016, 41, !dbg !1811
  br i1 %fits_in_gp1017, label %vaarg.in_reg1018, label %vaarg.in_mem1020, !dbg !1811

vaarg.in_reg1018:                                 ; preds = %do.body1009
  %235 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %234, i64 0, i64 0, i32 3, !dbg !1811
  %reg_save_area1019 = load i8*, i8** %235, align 8, !dbg !1811
  %236 = sext i32 %gp_offset1016 to i64, !dbg !1811
  %237 = getelementptr i8, i8* %reg_save_area1019, i64 %236, !dbg !1811
  %238 = add i32 %gp_offset1016, 8, !dbg !1811
  store i32 %238, i32* %gp_offset_p1015, align 8, !dbg !1811
  br label %vaarg.end1024, !dbg !1811

vaarg.in_mem1020:                                 ; preds = %do.body1009
  %overflow_arg_area_p1021 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %234, i64 0, i64 0, i32 2, !dbg !1811
  %overflow_arg_area1022 = load i8*, i8** %overflow_arg_area_p1021, align 8, !dbg !1811
  %overflow_arg_area.next1023 = getelementptr i8, i8* %overflow_arg_area1022, i64 8, !dbg !1811
  store i8* %overflow_arg_area.next1023, i8** %overflow_arg_area_p1021, align 8, !dbg !1811
  br label %vaarg.end1024, !dbg !1811

vaarg.end1024:                                    ; preds = %vaarg.in_mem1020, %vaarg.in_reg1018
  %vaarg.addr1025.in = phi i8* [ %237, %vaarg.in_reg1018 ], [ %overflow_arg_area1022, %vaarg.in_mem1020 ]
  %vaarg.addr1025 = bitcast i8* %vaarg.addr1025.in to i64*, !dbg !1811
  %239 = load i64, i64* %vaarg.addr1025, align 8, !dbg !1811
  %call1026 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1012, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %239) #7, !dbg !1811
  %240 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1811
  %arraydecay1029 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %240, i64 0, i32 6, i64 0, !dbg !1811
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1029) #8, !dbg !1811
  br label %sw.epilog1402, !dbg !1811

do.body1033:                                      ; preds = %sw.bb1006
  switch i32 %precision.0.lcssa, label %sw.epilog1402 [
    i32 0, label %do.body1035
    i32 1, label %do.body1059
    i32 2, label %do.body1083
  ], !dbg !1814

do.body1035:                                      ; preds = %do.body1033
  %241 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1815
  %arraydecay1038 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %241, i64 0, i32 6, i64 0, !dbg !1815
  %242 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1815
  %gp_offset_p1041 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %242, i64 0, i64 0, i32 0, !dbg !1815
  %gp_offset1042 = load i32, i32* %gp_offset_p1041, align 8, !dbg !1815
  %fits_in_gp1043 = icmp ult i32 %gp_offset1042, 41, !dbg !1815
  br i1 %fits_in_gp1043, label %vaarg.in_reg1044, label %vaarg.in_mem1046, !dbg !1815

vaarg.in_reg1044:                                 ; preds = %do.body1035
  %243 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %242, i64 0, i64 0, i32 3, !dbg !1815
  %reg_save_area1045 = load i8*, i8** %243, align 8, !dbg !1815
  %244 = sext i32 %gp_offset1042 to i64, !dbg !1815
  %245 = getelementptr i8, i8* %reg_save_area1045, i64 %244, !dbg !1815
  %246 = add i32 %gp_offset1042, 8, !dbg !1815
  store i32 %246, i32* %gp_offset_p1041, align 8, !dbg !1815
  br label %vaarg.end1050, !dbg !1815

vaarg.in_mem1046:                                 ; preds = %do.body1035
  %overflow_arg_area_p1047 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %242, i64 0, i64 0, i32 2, !dbg !1815
  %overflow_arg_area1048 = load i8*, i8** %overflow_arg_area_p1047, align 8, !dbg !1815
  %overflow_arg_area.next1049 = getelementptr i8, i8* %overflow_arg_area1048, i64 8, !dbg !1815
  store i8* %overflow_arg_area.next1049, i8** %overflow_arg_area_p1047, align 8, !dbg !1815
  br label %vaarg.end1050, !dbg !1815

vaarg.end1050:                                    ; preds = %vaarg.in_mem1046, %vaarg.in_reg1044
  %vaarg.addr1051.in = phi i8* [ %245, %vaarg.in_reg1044 ], [ %overflow_arg_area1048, %vaarg.in_mem1046 ]
  %vaarg.addr1051 = bitcast i8* %vaarg.addr1051.in to i32*, !dbg !1815
  %247 = load i32, i32* %vaarg.addr1051, align 4, !dbg !1815
  %call1052 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1038, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i64 0, i64 0), i32 %247) #7, !dbg !1815
  %248 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1815
  %arraydecay1055 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %248, i64 0, i32 6, i64 0, !dbg !1815
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1055) #8, !dbg !1815
  br label %sw.epilog1402, !dbg !1818

do.body1059:                                      ; preds = %do.body1033
  %249 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1819
  %arraydecay1062 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %249, i64 0, i32 6, i64 0, !dbg !1819
  %250 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1819
  %gp_offset_p1065 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %250, i64 0, i64 0, i32 0, !dbg !1819
  %gp_offset1066 = load i32, i32* %gp_offset_p1065, align 8, !dbg !1819
  %fits_in_gp1067 = icmp ult i32 %gp_offset1066, 41, !dbg !1819
  br i1 %fits_in_gp1067, label %vaarg.in_reg1068, label %vaarg.in_mem1070, !dbg !1819

vaarg.in_reg1068:                                 ; preds = %do.body1059
  %251 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %250, i64 0, i64 0, i32 3, !dbg !1819
  %reg_save_area1069 = load i8*, i8** %251, align 8, !dbg !1819
  %252 = sext i32 %gp_offset1066 to i64, !dbg !1819
  %253 = getelementptr i8, i8* %reg_save_area1069, i64 %252, !dbg !1819
  %254 = add i32 %gp_offset1066, 8, !dbg !1819
  store i32 %254, i32* %gp_offset_p1065, align 8, !dbg !1819
  br label %vaarg.end1074, !dbg !1819

vaarg.in_mem1070:                                 ; preds = %do.body1059
  %overflow_arg_area_p1071 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %250, i64 0, i64 0, i32 2, !dbg !1819
  %overflow_arg_area1072 = load i8*, i8** %overflow_arg_area_p1071, align 8, !dbg !1819
  %overflow_arg_area.next1073 = getelementptr i8, i8* %overflow_arg_area1072, i64 8, !dbg !1819
  store i8* %overflow_arg_area.next1073, i8** %overflow_arg_area_p1071, align 8, !dbg !1819
  br label %vaarg.end1074, !dbg !1819

vaarg.end1074:                                    ; preds = %vaarg.in_mem1070, %vaarg.in_reg1068
  %vaarg.addr1075.in = phi i8* [ %253, %vaarg.in_reg1068 ], [ %overflow_arg_area1072, %vaarg.in_mem1070 ]
  %vaarg.addr1075 = bitcast i8* %vaarg.addr1075.in to i64*, !dbg !1819
  %255 = load i64, i64* %vaarg.addr1075, align 8, !dbg !1819
  %call1076 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1062, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i64 %255) #7, !dbg !1819
  %256 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1819
  %arraydecay1079 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %256, i64 0, i32 6, i64 0, !dbg !1819
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1079) #8, !dbg !1819
  br label %sw.epilog1402, !dbg !1818

do.body1083:                                      ; preds = %do.body1033
  %257 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1821
  %arraydecay1086 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %257, i64 0, i32 6, i64 0, !dbg !1821
  %258 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1821
  %gp_offset_p1089 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %258, i64 0, i64 0, i32 0, !dbg !1821
  %gp_offset1090 = load i32, i32* %gp_offset_p1089, align 8, !dbg !1821
  %fits_in_gp1091 = icmp ult i32 %gp_offset1090, 41, !dbg !1821
  br i1 %fits_in_gp1091, label %vaarg.in_reg1092, label %vaarg.in_mem1094, !dbg !1821

vaarg.in_reg1092:                                 ; preds = %do.body1083
  %259 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %258, i64 0, i64 0, i32 3, !dbg !1821
  %reg_save_area1093 = load i8*, i8** %259, align 8, !dbg !1821
  %260 = sext i32 %gp_offset1090 to i64, !dbg !1821
  %261 = getelementptr i8, i8* %reg_save_area1093, i64 %260, !dbg !1821
  %262 = add i32 %gp_offset1090, 8, !dbg !1821
  store i32 %262, i32* %gp_offset_p1089, align 8, !dbg !1821
  br label %vaarg.end1098, !dbg !1821

vaarg.in_mem1094:                                 ; preds = %do.body1083
  %overflow_arg_area_p1095 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %258, i64 0, i64 0, i32 2, !dbg !1821
  %overflow_arg_area1096 = load i8*, i8** %overflow_arg_area_p1095, align 8, !dbg !1821
  %overflow_arg_area.next1097 = getelementptr i8, i8* %overflow_arg_area1096, i64 8, !dbg !1821
  store i8* %overflow_arg_area.next1097, i8** %overflow_arg_area_p1095, align 8, !dbg !1821
  br label %vaarg.end1098, !dbg !1821

vaarg.end1098:                                    ; preds = %vaarg.in_mem1094, %vaarg.in_reg1092
  %vaarg.addr1099.in = phi i8* [ %261, %vaarg.in_reg1092 ], [ %overflow_arg_area1096, %vaarg.in_mem1094 ]
  %vaarg.addr1099 = bitcast i8* %vaarg.addr1099.in to i64*, !dbg !1821
  %263 = load i64, i64* %vaarg.addr1099, align 8, !dbg !1821
  %call1100 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1086, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %263) #7, !dbg !1821
  %264 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1821
  %arraydecay1103 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %264, i64 0, i32 6, i64 0, !dbg !1821
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1103) #8, !dbg !1821
  br label %sw.epilog1402, !dbg !1818

sw.bb1111:                                        ; preds = %if.end755
  br i1 %tobool746, label %do.body1138, label %do.body1114, !dbg !1823

do.body1114:                                      ; preds = %sw.bb1111
  %265 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1824
  %arraydecay1117 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %265, i64 0, i32 6, i64 0, !dbg !1824
  %266 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1824
  %gp_offset_p1120 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %266, i64 0, i64 0, i32 0, !dbg !1824
  %gp_offset1121 = load i32, i32* %gp_offset_p1120, align 8, !dbg !1824
  %fits_in_gp1122 = icmp ult i32 %gp_offset1121, 41, !dbg !1824
  br i1 %fits_in_gp1122, label %vaarg.in_reg1123, label %vaarg.in_mem1125, !dbg !1824

vaarg.in_reg1123:                                 ; preds = %do.body1114
  %267 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %266, i64 0, i64 0, i32 3, !dbg !1824
  %reg_save_area1124 = load i8*, i8** %267, align 8, !dbg !1824
  %268 = sext i32 %gp_offset1121 to i64, !dbg !1824
  %269 = getelementptr i8, i8* %reg_save_area1124, i64 %268, !dbg !1824
  %270 = add i32 %gp_offset1121, 8, !dbg !1824
  store i32 %270, i32* %gp_offset_p1120, align 8, !dbg !1824
  br label %vaarg.end1129, !dbg !1824

vaarg.in_mem1125:                                 ; preds = %do.body1114
  %overflow_arg_area_p1126 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %266, i64 0, i64 0, i32 2, !dbg !1824
  %overflow_arg_area1127 = load i8*, i8** %overflow_arg_area_p1126, align 8, !dbg !1824
  %overflow_arg_area.next1128 = getelementptr i8, i8* %overflow_arg_area1127, i64 8, !dbg !1824
  store i8* %overflow_arg_area.next1128, i8** %overflow_arg_area_p1126, align 8, !dbg !1824
  br label %vaarg.end1129, !dbg !1824

vaarg.end1129:                                    ; preds = %vaarg.in_mem1125, %vaarg.in_reg1123
  %vaarg.addr1130.in = phi i8* [ %269, %vaarg.in_reg1123 ], [ %overflow_arg_area1127, %vaarg.in_mem1125 ]
  %vaarg.addr1130 = bitcast i8* %vaarg.addr1130.in to i64*, !dbg !1824
  %271 = load i64, i64* %vaarg.addr1130, align 8, !dbg !1824
  %call1131 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i64 %271) #7, !dbg !1824
  %272 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1824
  %arraydecay1134 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %272, i64 0, i32 6, i64 0, !dbg !1824
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1134) #8, !dbg !1824
  br label %sw.epilog1402, !dbg !1824

do.body1138:                                      ; preds = %sw.bb1111
  switch i32 %precision.0.lcssa, label %sw.epilog1402 [
    i32 0, label %do.body1140
    i32 1, label %do.body1164
    i32 2, label %do.body1188
  ], !dbg !1827

do.body1140:                                      ; preds = %do.body1138
  %273 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1828
  %arraydecay1143 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %273, i64 0, i32 6, i64 0, !dbg !1828
  %274 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1828
  %gp_offset_p1146 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %274, i64 0, i64 0, i32 0, !dbg !1828
  %gp_offset1147 = load i32, i32* %gp_offset_p1146, align 8, !dbg !1828
  %fits_in_gp1148 = icmp ult i32 %gp_offset1147, 41, !dbg !1828
  br i1 %fits_in_gp1148, label %vaarg.in_reg1149, label %vaarg.in_mem1151, !dbg !1828

vaarg.in_reg1149:                                 ; preds = %do.body1140
  %275 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %274, i64 0, i64 0, i32 3, !dbg !1828
  %reg_save_area1150 = load i8*, i8** %275, align 8, !dbg !1828
  %276 = sext i32 %gp_offset1147 to i64, !dbg !1828
  %277 = getelementptr i8, i8* %reg_save_area1150, i64 %276, !dbg !1828
  %278 = add i32 %gp_offset1147, 8, !dbg !1828
  store i32 %278, i32* %gp_offset_p1146, align 8, !dbg !1828
  br label %vaarg.end1155, !dbg !1828

vaarg.in_mem1151:                                 ; preds = %do.body1140
  %overflow_arg_area_p1152 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %274, i64 0, i64 0, i32 2, !dbg !1828
  %overflow_arg_area1153 = load i8*, i8** %overflow_arg_area_p1152, align 8, !dbg !1828
  %overflow_arg_area.next1154 = getelementptr i8, i8* %overflow_arg_area1153, i64 8, !dbg !1828
  store i8* %overflow_arg_area.next1154, i8** %overflow_arg_area_p1152, align 8, !dbg !1828
  br label %vaarg.end1155, !dbg !1828

vaarg.end1155:                                    ; preds = %vaarg.in_mem1151, %vaarg.in_reg1149
  %vaarg.addr1156.in = phi i8* [ %277, %vaarg.in_reg1149 ], [ %overflow_arg_area1153, %vaarg.in_mem1151 ]
  %vaarg.addr1156 = bitcast i8* %vaarg.addr1156.in to i32*, !dbg !1828
  %279 = load i32, i32* %vaarg.addr1156, align 4, !dbg !1828
  %call1157 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1143, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i32 %279) #7, !dbg !1828
  %280 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1828
  %arraydecay1160 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %280, i64 0, i32 6, i64 0, !dbg !1828
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1160) #8, !dbg !1828
  br label %sw.epilog1402, !dbg !1831

do.body1164:                                      ; preds = %do.body1138
  %281 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1832
  %arraydecay1167 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %281, i64 0, i32 6, i64 0, !dbg !1832
  %282 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1832
  %gp_offset_p1170 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %282, i64 0, i64 0, i32 0, !dbg !1832
  %gp_offset1171 = load i32, i32* %gp_offset_p1170, align 8, !dbg !1832
  %fits_in_gp1172 = icmp ult i32 %gp_offset1171, 41, !dbg !1832
  br i1 %fits_in_gp1172, label %vaarg.in_reg1173, label %vaarg.in_mem1175, !dbg !1832

vaarg.in_reg1173:                                 ; preds = %do.body1164
  %283 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %282, i64 0, i64 0, i32 3, !dbg !1832
  %reg_save_area1174 = load i8*, i8** %283, align 8, !dbg !1832
  %284 = sext i32 %gp_offset1171 to i64, !dbg !1832
  %285 = getelementptr i8, i8* %reg_save_area1174, i64 %284, !dbg !1832
  %286 = add i32 %gp_offset1171, 8, !dbg !1832
  store i32 %286, i32* %gp_offset_p1170, align 8, !dbg !1832
  br label %vaarg.end1179, !dbg !1832

vaarg.in_mem1175:                                 ; preds = %do.body1164
  %overflow_arg_area_p1176 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %282, i64 0, i64 0, i32 2, !dbg !1832
  %overflow_arg_area1177 = load i8*, i8** %overflow_arg_area_p1176, align 8, !dbg !1832
  %overflow_arg_area.next1178 = getelementptr i8, i8* %overflow_arg_area1177, i64 8, !dbg !1832
  store i8* %overflow_arg_area.next1178, i8** %overflow_arg_area_p1176, align 8, !dbg !1832
  br label %vaarg.end1179, !dbg !1832

vaarg.end1179:                                    ; preds = %vaarg.in_mem1175, %vaarg.in_reg1173
  %vaarg.addr1180.in = phi i8* [ %285, %vaarg.in_reg1173 ], [ %overflow_arg_area1177, %vaarg.in_mem1175 ]
  %vaarg.addr1180 = bitcast i8* %vaarg.addr1180.in to i64*, !dbg !1832
  %287 = load i64, i64* %vaarg.addr1180, align 8, !dbg !1832
  %call1181 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1167, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0), i64 %287) #7, !dbg !1832
  %288 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1832
  %arraydecay1184 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %288, i64 0, i32 6, i64 0, !dbg !1832
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1184) #8, !dbg !1832
  br label %sw.epilog1402, !dbg !1831

do.body1188:                                      ; preds = %do.body1138
  %289 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1834
  %arraydecay1191 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %289, i64 0, i32 6, i64 0, !dbg !1834
  %290 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1834
  %gp_offset_p1194 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %290, i64 0, i64 0, i32 0, !dbg !1834
  %gp_offset1195 = load i32, i32* %gp_offset_p1194, align 8, !dbg !1834
  %fits_in_gp1196 = icmp ult i32 %gp_offset1195, 41, !dbg !1834
  br i1 %fits_in_gp1196, label %vaarg.in_reg1197, label %vaarg.in_mem1199, !dbg !1834

vaarg.in_reg1197:                                 ; preds = %do.body1188
  %291 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %290, i64 0, i64 0, i32 3, !dbg !1834
  %reg_save_area1198 = load i8*, i8** %291, align 8, !dbg !1834
  %292 = sext i32 %gp_offset1195 to i64, !dbg !1834
  %293 = getelementptr i8, i8* %reg_save_area1198, i64 %292, !dbg !1834
  %294 = add i32 %gp_offset1195, 8, !dbg !1834
  store i32 %294, i32* %gp_offset_p1194, align 8, !dbg !1834
  br label %vaarg.end1203, !dbg !1834

vaarg.in_mem1199:                                 ; preds = %do.body1188
  %overflow_arg_area_p1200 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %290, i64 0, i64 0, i32 2, !dbg !1834
  %overflow_arg_area1201 = load i8*, i8** %overflow_arg_area_p1200, align 8, !dbg !1834
  %overflow_arg_area.next1202 = getelementptr i8, i8* %overflow_arg_area1201, i64 8, !dbg !1834
  store i8* %overflow_arg_area.next1202, i8** %overflow_arg_area_p1200, align 8, !dbg !1834
  br label %vaarg.end1203, !dbg !1834

vaarg.end1203:                                    ; preds = %vaarg.in_mem1199, %vaarg.in_reg1197
  %vaarg.addr1204.in = phi i8* [ %293, %vaarg.in_reg1197 ], [ %overflow_arg_area1201, %vaarg.in_mem1199 ]
  %vaarg.addr1204 = bitcast i8* %vaarg.addr1204.in to i64*, !dbg !1834
  %295 = load i64, i64* %vaarg.addr1204, align 8, !dbg !1834
  %call1205 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %arraydecay1191, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0), i64 %295) #7, !dbg !1834
  %296 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1834
  %arraydecay1208 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %296, i64 0, i32 6, i64 0, !dbg !1834
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %arraydecay1208) #8, !dbg !1834
  br label %sw.epilog1402, !dbg !1831

sw.bb1216:                                        ; preds = %if.end755
  %297 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1836
  %gp_offset_p1219 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %297, i64 0, i64 0, i32 0, !dbg !1836
  %gp_offset1220 = load i32, i32* %gp_offset_p1219, align 8, !dbg !1836
  %fits_in_gp1221 = icmp ult i32 %gp_offset1220, 41, !dbg !1836
  br i1 %fits_in_gp1221, label %vaarg.in_reg1222, label %vaarg.in_mem1224, !dbg !1836

vaarg.in_reg1222:                                 ; preds = %sw.bb1216
  %298 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %297, i64 0, i64 0, i32 3, !dbg !1836
  %reg_save_area1223 = load i8*, i8** %298, align 8, !dbg !1836
  %299 = sext i32 %gp_offset1220 to i64, !dbg !1836
  %300 = getelementptr i8, i8* %reg_save_area1223, i64 %299, !dbg !1836
  %301 = add i32 %gp_offset1220, 8, !dbg !1836
  store i32 %301, i32* %gp_offset_p1219, align 8, !dbg !1836
  br label %vaarg.end1228, !dbg !1836

vaarg.in_mem1224:                                 ; preds = %sw.bb1216
  %overflow_arg_area_p1225 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %297, i64 0, i64 0, i32 2, !dbg !1836
  %overflow_arg_area1226 = load i8*, i8** %overflow_arg_area_p1225, align 8, !dbg !1836
  %overflow_arg_area.next1227 = getelementptr i8, i8* %overflow_arg_area1226, i64 8, !dbg !1836
  store i8* %overflow_arg_area.next1227, i8** %overflow_arg_area_p1225, align 8, !dbg !1836
  br label %vaarg.end1228, !dbg !1836

vaarg.end1228:                                    ; preds = %vaarg.in_mem1224, %vaarg.in_reg1222
  %vaarg.addr1229.in = phi i8* [ %300, %vaarg.in_reg1222 ], [ %overflow_arg_area1226, %vaarg.in_mem1224 ]
  %vaarg.addr1229 = bitcast i8* %vaarg.addr1229.in to %union.tree_node**, !dbg !1836
  %302 = load %union.tree_node*, %union.tree_node** %vaarg.addr1229, align 8, !dbg !1836
  call void @llvm.dbg.value(metadata %union.tree_node* %302, metadata !1573, metadata !DIExpression()), !dbg !1735
  %303 = load i32*, i32** %locus, align 8, !dbg !1837
  %cmp1230 = icmp eq i32* %303, null, !dbg !1837
  br i1 %cmp1230, label %cond.true1232, label %cond.end1234, !dbg !1837

cond.true1232:                                    ; preds = %vaarg.end1228
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 480, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1837
  br label %cond.end1234, !dbg !1837

cond.end1234:                                     ; preds = %vaarg.end1228, %cond.true1232
  %304 = getelementptr inbounds %union.tree_node, %union.tree_node* %302, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1838
  %bf.load1236 = load i64, i64* %304, align 8, !dbg !1838
  %bf.cast = and i64 %bf.load1236, 65535, !dbg !1838
  %arrayidx1239 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !1838
  %305 = load i32, i32* %arrayidx1239, align 4, !dbg !1838
  %cmp1240 = icmp ugt i32 %305, 3, !dbg !1838
  br i1 %cmp1240, label %land.lhs.true, label %cond.end1253, !dbg !1838

land.lhs.true:                                    ; preds = %cond.end1234
  %cmp1248 = icmp ult i32 %305, 11, !dbg !1838
  br i1 %cmp1248, label %cond.true1250, label %cond.end1253, !dbg !1838

cond.true1250:                                    ; preds = %land.lhs.true
  %306 = getelementptr inbounds %union.tree_node, %union.tree_node* %302, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !1838
  %307 = load i32, i32* %306, align 8, !dbg !1838
  br label %cond.end1253, !dbg !1838

cond.end1253:                                     ; preds = %cond.end1234, %land.lhs.true, %cond.true1250
  %cond1254 = phi i32 [ %307, %cond.true1250 ], [ 0, %land.lhs.true ], [ 0, %cond.end1234 ], !dbg !1838
  %308 = load i32*, i32** %locus, align 8, !dbg !1839
  store i32 %cond1254, i32* %308, align 4, !dbg !1840
  %309 = load %union.tree_node**, %union.tree_node*** %abstract_origin, align 8, !dbg !1841
  %cmp1256 = icmp eq %union.tree_node** %309, null, !dbg !1841
  br i1 %cmp1256, label %cond.true1258, label %cond.end1260, !dbg !1841

cond.true1258:                                    ; preds = %cond.end1253
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 482, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1841
  br label %cond.end1260, !dbg !1841

cond.end1260:                                     ; preds = %cond.end1253, %cond.true1258
  %call1262 = call %union.tree_node** @tree_block(%union.tree_node* %302) #7, !dbg !1842
  %310 = load %union.tree_node*, %union.tree_node** %call1262, align 8, !dbg !1842
  %311 = bitcast %union.tree_node* %310 to %struct.tree_block*, !dbg !1735
  call void @llvm.dbg.value(metadata %union.tree_node* %310, metadata !1576, metadata !DIExpression()), !dbg !1735
  %312 = load %union.tree_node**, %union.tree_node*** %abstract_origin, align 8, !dbg !1843
  store %union.tree_node* null, %union.tree_node** %312, align 8, !dbg !1844
  br label %while.cond1264, !dbg !1845

while.cond1264:                                   ; preds = %cleanup, %cond.end1260
  %313 = phi %struct.tree_block* [ %311, %cond.end1260 ], [ %323, %cleanup ], !dbg !1846
  %block.0 = phi %union.tree_node* [ %310, %cond.end1260 ], [ %block.1, %cleanup ], !dbg !1846
  call void @llvm.dbg.value(metadata %union.tree_node* %block.0, metadata !1576, metadata !DIExpression()), !dbg !1735
  %tobool1265 = icmp eq %union.tree_node* %block.0, null, !dbg !1847
  br i1 %tobool1265, label %sw.epilog1402.loopexit, label %land.lhs.true1266, !dbg !1848

land.lhs.true1266:                                ; preds = %while.cond1264
  %314 = getelementptr inbounds %union.tree_node, %union.tree_node* %block.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1849
  %bf.load1268 = load i64, i64* %314, align 8, !dbg !1849
  %bf.cast12705 = and i64 %bf.load1268, 65535, !dbg !1850
  %cmp1271 = icmp eq i64 %bf.cast12705, 4, !dbg !1850
  br i1 %cmp1271, label %land.rhs1273, label %sw.epilog1402.loopexit, !dbg !1851

land.rhs1273:                                     ; preds = %land.lhs.true1266
  %abstract_origin1275 = getelementptr inbounds %union.tree_node, %union.tree_node* %block.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1852
  %315 = bitcast i32* %abstract_origin1275 to %union.tree_node**, !dbg !1852
  %316 = load %union.tree_node*, %union.tree_node** %315, align 8, !dbg !1852
  %tobool1276 = icmp eq %union.tree_node* %316, null, !dbg !1851
  br i1 %tobool1276, label %sw.epilog1402.loopexit, label %while.body1278, !dbg !1845

while.body1278:                                   ; preds = %land.rhs1273
  br label %while.cond1281, !dbg !1853

while.cond1281:                                   ; preds = %while.body1298, %while.body1278
  %ao.0 = phi %union.tree_node* [ %316, %while.body1278 ], [ %319, %while.body1298 ], !dbg !1854
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0, metadata !1577, metadata !DIExpression()), !dbg !1854
  %317 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !1855
  %bf.load1283 = load i64, i64* %317, align 8, !dbg !1855
  %bf.cast12856 = and i64 %bf.load1283, 65535, !dbg !1856
  %cmp1286 = icmp eq i64 %bf.cast12856, 4, !dbg !1856
  br i1 %cmp1286, label %land.lhs.true1288, label %while.end1301, !dbg !1857

land.lhs.true1288:                                ; preds = %while.cond1281
  %abstract_origin1290 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !1858
  %318 = bitcast i32* %abstract_origin1290 to %union.tree_node**, !dbg !1858
  %319 = load %union.tree_node*, %union.tree_node** %318, align 8, !dbg !1858
  %tobool1291 = icmp eq %union.tree_node* %319, null, !dbg !1858
  %cmp1295 = icmp eq %union.tree_node* %319, %ao.0, !dbg !1859
  %or.cond35 = or i1 %tobool1291, %cmp1295, !dbg !1860
  br i1 %or.cond35, label %while.end1301, label %while.body1298, !dbg !1860

while.body1298:                                   ; preds = %land.lhs.true1288
  br label %while.cond1281, !dbg !1853, !llvm.loop !1861

while.end1301:                                    ; preds = %land.lhs.true1288, %while.cond1281
  %bf.cast12856.lcssa = phi i64 [ %bf.cast12856, %land.lhs.true1288 ], [ %bf.cast12856, %while.cond1281 ], !dbg !1856
  %cmp1306 = icmp eq i64 %bf.cast12856.lcssa, 29, !dbg !1863
  br i1 %cmp1306, label %if.then1308, label %if.end1310, !dbg !1864

if.then1308:                                      ; preds = %while.end1301
  %320 = load %struct.tree_block**, %struct.tree_block*** %143, align 8, !dbg !1865
  store %struct.tree_block* %313, %struct.tree_block** %320, align 8, !dbg !1866
  br label %cleanup, !dbg !1867

if.end1310:                                       ; preds = %while.end1301
  %supercontext = getelementptr inbounds %struct.tree_block, %struct.tree_block* %313, i64 0, i32 6, !dbg !1868
  %321 = load %union.tree_node*, %union.tree_node** %supercontext, align 8, !dbg !1868
  %322 = bitcast %union.tree_node* %321 to %struct.tree_block*, !dbg !1735
  call void @llvm.dbg.value(metadata %union.tree_node* %321, metadata !1576, metadata !DIExpression()), !dbg !1735
  br label %cleanup, !dbg !1869

cleanup:                                          ; preds = %if.end1310, %if.then1308
  %323 = phi %struct.tree_block* [ %313, %if.then1308 ], [ %322, %if.end1310 ], !dbg !1735
  %block.1 = phi %union.tree_node* [ %block.0, %if.then1308 ], [ %321, %if.end1310 ], !dbg !1735
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then1308 ], [ true, %if.end1310 ]
  call void @llvm.dbg.value(metadata %union.tree_node* %block.1, metadata !1576, metadata !DIExpression()), !dbg !1735
  br i1 %cleanup.dest.slot.0, label %while.cond1264, label %sw.epilog1402.loopexit, !llvm.loop !1870

sw.bb1313:                                        ; preds = %if.end755
  %incdec.ptr1314 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 1, !dbg !1871
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1314, metadata !1534, metadata !DIExpression()), !dbg !1587
  %324 = load i8, i8* %incdec.ptr1314, align 1, !dbg !1872
  %idxprom1317 = zext i8 %324 to i64, !dbg !1872
  %arrayidx1318 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom1317, !dbg !1872
  %325 = load i16, i16* %arrayidx1318, align 2, !dbg !1872
  %326 = and i16 %325, 4, !dbg !1872
  %tobool1321 = icmp eq i16 %326, 0, !dbg !1872
  br i1 %tobool1321, label %if.else1333, label %if.then1322, !dbg !1873

if.then1322:                                      ; preds = %sw.bb1313
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %142) #6, !dbg !1874
  call void @llvm.dbg.value(metadata i8** %end1323, metadata !1582, metadata !DIExpression(DW_OP_deref)), !dbg !1732
  %call1324 = call i64 @strtoul(i8* nonnull %incdec.ptr1314, i8** nonnull %end1323, i32 10) #7, !dbg !1875
  %conv1325 = trunc i64 %call1324 to i32, !dbg !1875
  call void @llvm.dbg.value(metadata i32 %conv1325, metadata !1579, metadata !DIExpression()), !dbg !1876
  %327 = load i8*, i8** %end1323, align 8, !dbg !1877
  call void @llvm.dbg.value(metadata i8* %327, metadata !1582, metadata !DIExpression()), !dbg !1732
  call void @llvm.dbg.value(metadata i8* %327, metadata !1534, metadata !DIExpression()), !dbg !1587
  %328 = load i8, i8* %327, align 1, !dbg !1878
  %cmp1327 = icmp eq i8 %328, 115, !dbg !1878
  br i1 %cmp1327, label %cond.end1331, label %cond.true1329, !dbg !1878

cond.true1329:                                    ; preds = %if.then1322
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 520, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1878
  br label %cond.end1331, !dbg !1878

cond.end1331:                                     ; preds = %if.then1322, %cond.true1329
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %142) #6, !dbg !1879
  br label %if.end1374, !dbg !1880

if.else1333:                                      ; preds = %sw.bb1313
  %cmp1335 = icmp eq i8 %324, 42, !dbg !1881
  br i1 %cmp1335, label %cond.end1339, label %cond.true1337, !dbg !1881

cond.true1337:                                    ; preds = %if.else1333
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 524, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1881
  br label %cond.end1339, !dbg !1881

cond.end1339:                                     ; preds = %if.else1333, %cond.true1337
  %incdec.ptr1341 = getelementptr inbounds i8, i8* %p.8.lcssa, i64 2, !dbg !1882
  call void @llvm.dbg.value(metadata i8* %incdec.ptr1341, metadata !1534, metadata !DIExpression()), !dbg !1587
  %329 = load i8, i8* %incdec.ptr1341, align 1, !dbg !1883
  %cmp1343 = icmp eq i8 %329, 115, !dbg !1883
  br i1 %cmp1343, label %cond.end1347, label %cond.true1345, !dbg !1883

cond.true1345:                                    ; preds = %cond.end1339
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 526, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1883
  br label %cond.end1347, !dbg !1883

cond.end1347:                                     ; preds = %cond.end1339, %cond.true1345
  %330 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1884
  %gp_offset_p1351 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %330, i64 0, i64 0, i32 0, !dbg !1884
  %gp_offset1352 = load i32, i32* %gp_offset_p1351, align 8, !dbg !1884
  %fits_in_gp1353 = icmp ult i32 %gp_offset1352, 41, !dbg !1884
  br i1 %fits_in_gp1353, label %vaarg.in_reg1354, label %vaarg.in_mem1356, !dbg !1884

vaarg.in_reg1354:                                 ; preds = %cond.end1347
  %331 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %330, i64 0, i64 0, i32 3, !dbg !1884
  %reg_save_area1355 = load i8*, i8** %331, align 8, !dbg !1884
  %332 = sext i32 %gp_offset1352 to i64, !dbg !1884
  %333 = getelementptr i8, i8* %reg_save_area1355, i64 %332, !dbg !1884
  %334 = add i32 %gp_offset1352, 8, !dbg !1884
  store i32 %334, i32* %gp_offset_p1351, align 8, !dbg !1884
  br label %vaarg.end1360, !dbg !1884

vaarg.in_mem1356:                                 ; preds = %cond.end1347
  %overflow_arg_area_p1357 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %330, i64 0, i64 0, i32 2, !dbg !1884
  %overflow_arg_area1358 = load i8*, i8** %overflow_arg_area_p1357, align 8, !dbg !1884
  %overflow_arg_area.next1359 = getelementptr i8, i8* %overflow_arg_area1358, i64 8, !dbg !1884
  store i8* %overflow_arg_area.next1359, i8** %overflow_arg_area_p1357, align 8, !dbg !1884
  br label %vaarg.end1360, !dbg !1884

vaarg.end1360:                                    ; preds = %vaarg.in_mem1356, %vaarg.in_reg1354
  %vaarg.addr1361.in = phi i8* [ %333, %vaarg.in_reg1354 ], [ %overflow_arg_area1358, %vaarg.in_mem1356 ]
  %vaarg.addr1361 = bitcast i8* %vaarg.addr1361.in to i32*, !dbg !1884
  %335 = load i32, i32* %vaarg.addr1361, align 4, !dbg !1884
  call void @llvm.dbg.value(metadata i32 %335, metadata !1579, metadata !DIExpression()), !dbg !1876
  %336 = load i8**, i8*** %arrayidx704, align 8, !dbg !1885
  %add1364 = add i32 %argno.1, 1, !dbg !1885
  %idxprom1365 = zext i32 %add1364 to i64, !dbg !1885
  %arrayidx1366 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom1365, !dbg !1885
  %337 = load i8**, i8*** %arrayidx1366, align 8, !dbg !1885
  %cmp1367 = icmp eq i8** %336, %337, !dbg !1885
  br i1 %cmp1367, label %cond.end1371, label %cond.true1369, !dbg !1885

cond.true1369:                                    ; preds = %vaarg.end1360
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 530, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1885
  br label %cond.end1371, !dbg !1885

cond.end1371:                                     ; preds = %vaarg.end1360, %cond.true1369
  call void @llvm.dbg.value(metadata i32 %add1364, metadata !1540, metadata !DIExpression()), !dbg !1587
  br label %if.end1374

if.end1374:                                       ; preds = %cond.end1371, %cond.end1331
  %argno.2 = phi i32 [ %argno.1, %cond.end1331 ], [ %add1364, %cond.end1371 ], !dbg !1741
  %n.0 = phi i32 [ %conv1325, %cond.end1331 ], [ %335, %cond.end1371 ], !dbg !1886
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !1579, metadata !DIExpression()), !dbg !1876
  call void @llvm.dbg.value(metadata i32 %argno.2, metadata !1540, metadata !DIExpression()), !dbg !1587
  %338 = load [1 x %struct.__va_list_tag]*, [1 x %struct.__va_list_tag]** %args_ptr1349, align 8, !dbg !1887
  %gp_offset_p1377 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %338, i64 0, i64 0, i32 0, !dbg !1887
  %gp_offset1378 = load i32, i32* %gp_offset_p1377, align 8, !dbg !1887
  %fits_in_gp1379 = icmp ult i32 %gp_offset1378, 41, !dbg !1887
  br i1 %fits_in_gp1379, label %vaarg.in_reg1380, label %vaarg.in_mem1382, !dbg !1887

vaarg.in_reg1380:                                 ; preds = %if.end1374
  %339 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %338, i64 0, i64 0, i32 3, !dbg !1887
  %reg_save_area1381 = load i8*, i8** %339, align 8, !dbg !1887
  %340 = sext i32 %gp_offset1378 to i64, !dbg !1887
  %341 = getelementptr i8, i8* %reg_save_area1381, i64 %340, !dbg !1887
  %342 = add i32 %gp_offset1378, 8, !dbg !1887
  store i32 %342, i32* %gp_offset_p1377, align 8, !dbg !1887
  br label %vaarg.end1386, !dbg !1887

vaarg.in_mem1382:                                 ; preds = %if.end1374
  %overflow_arg_area_p1383 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %338, i64 0, i64 0, i32 2, !dbg !1887
  %overflow_arg_area1384 = load i8*, i8** %overflow_arg_area_p1383, align 8, !dbg !1887
  %overflow_arg_area.next1385 = getelementptr i8, i8* %overflow_arg_area1384, i64 8, !dbg !1887
  store i8* %overflow_arg_area.next1385, i8** %overflow_arg_area_p1383, align 8, !dbg !1887
  br label %vaarg.end1386, !dbg !1887

vaarg.end1386:                                    ; preds = %vaarg.in_mem1382, %vaarg.in_reg1380
  %vaarg.addr1387.in = phi i8* [ %341, %vaarg.in_reg1380 ], [ %overflow_arg_area1384, %vaarg.in_mem1382 ]
  %vaarg.addr1387 = bitcast i8* %vaarg.addr1387.in to i8**, !dbg !1887
  %343 = load i8*, i8** %vaarg.addr1387, align 8, !dbg !1887
  call void @llvm.dbg.value(metadata i8* %343, metadata !1581, metadata !DIExpression()), !dbg !1876
  %idx.ext = sext i32 %n.0 to i64, !dbg !1888
  %add.ptr1388 = getelementptr inbounds i8, i8* %343, i64 %idx.ext, !dbg !1888
  call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %343, i8* %add.ptr1388) #8, !dbg !1888
  br label %sw.epilog1402, !dbg !1889

sw.default1389:                                   ; preds = %if.end755
  %344 = load i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)** %format_decoder, align 8, !dbg !1890
  %tobool1390 = icmp eq i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)* %344, null, !dbg !1890
  br i1 %tobool1390, label %cond.true1391, label %cond.end1393, !dbg !1890

cond.true1391:                                    ; preds = %sw.default1389
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 543, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1890
  %.pre33 = load i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)*, i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)** %format_decoder, align 8, !dbg !1891
  br label %cond.end1393, !dbg !1890

cond.end1393:                                     ; preds = %sw.default1389, %cond.true1391
  %345 = phi i8 (%struct.pretty_print_info*, %struct.text_info*, i8*, i32, i8, i8, i8)* [ %344, %sw.default1389 ], [ %.pre33, %cond.true1391 ], !dbg !1891
  %call1396 = call zeroext i8 %345(%struct.pretty_print_info* %pp, %struct.text_info* %text, i8* %p.8.lcssa, i32 %precision.0.lcssa, i8 zeroext %wide.0.lcssa, i8 zeroext %plus.0.lcssa, i8 zeroext %hash.0.lcssa) #7, !dbg !1891
  call void @llvm.dbg.value(metadata i8 %call1396, metadata !1585, metadata !DIExpression()), !dbg !1739
  %tobool1397 = icmp eq i8 %call1396, 0, !dbg !1892
  br i1 %tobool1397, label %cond.true1398, label %sw.epilog1402, !dbg !1892

cond.true1398:                                    ; preds = %cond.end1393
  call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 546, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1892
  br label %sw.epilog1402, !dbg !1892

sw.epilog1402.loopexit:                           ; preds = %land.lhs.true1266, %cleanup, %while.cond1264, %land.rhs1273
  br label %sw.epilog1402, !dbg !1893

sw.epilog1402:                                    ; preds = %sw.epilog1402.loopexit, %cond.end1393, %cond.true1398, %vaarg.end1129, %do.body1138, %vaarg.end1203, %vaarg.end1179, %vaarg.end1155, %vaarg.end1024, %do.body1033, %vaarg.end1098, %vaarg.end1074, %vaarg.end1050, %vaarg.end881, %do.body890, %vaarg.end955, %vaarg.end931, %vaarg.end907, %vaarg.end776, %do.body785, %vaarg.end850, %vaarg.end826, %vaarg.end802, %vaarg.end1386, %vaarg.end998, %vaarg.end980, %vaarg.end
  %argno.3 = phi i32 [ %argno.2, %vaarg.end1386 ], [ %argno.1, %vaarg.end998 ], [ %argno.1, %vaarg.end980 ], [ %argno.1, %vaarg.end ], [ %argno.1, %vaarg.end802 ], [ %argno.1, %vaarg.end826 ], [ %argno.1, %vaarg.end850 ], [ %argno.1, %do.body785 ], [ %argno.1, %vaarg.end776 ], [ %argno.1, %vaarg.end907 ], [ %argno.1, %vaarg.end931 ], [ %argno.1, %vaarg.end955 ], [ %argno.1, %do.body890 ], [ %argno.1, %vaarg.end881 ], [ %argno.1, %vaarg.end1050 ], [ %argno.1, %vaarg.end1074 ], [ %argno.1, %vaarg.end1098 ], [ %argno.1, %do.body1033 ], [ %argno.1, %vaarg.end1024 ], [ %argno.1, %vaarg.end1155 ], [ %argno.1, %vaarg.end1179 ], [ %argno.1, %vaarg.end1203 ], [ %argno.1, %do.body1138 ], [ %argno.1, %vaarg.end1129 ], [ %argno.1, %cond.end1393 ], [ %argno.1, %cond.true1398 ], [ %argno.1, %sw.epilog1402.loopexit ], !dbg !1895
  call void @llvm.dbg.value(metadata i32 %argno.3, metadata !1540, metadata !DIExpression()), !dbg !1587
  br i1 %tobool753, label %if.end1405, label %if.then1404, !dbg !1896

if.then1404:                                      ; preds = %sw.epilog1402
  %346 = load i8*, i8** @close_quote, align 8, !dbg !1897
  call void @pp_base_string(%struct.pretty_print_info* %pp, i8* %346) #8, !dbg !1897
  br label %if.end1405, !dbg !1897

if.end1405:                                       ; preds = %sw.epilog1402, %if.then1404
  %347 = load i8*, i8** %next_free, align 8, !dbg !1898
  %add.ptr1408 = getelementptr inbounds i8, i8* %347, i64 1, !dbg !1898
  %348 = load i8*, i8** %chunk_limit, align 8, !dbg !1898
  %cmp1411 = icmp ugt i8* %add.ptr1408, %348, !dbg !1898
  br i1 %cmp1411, label %cond.true1413, label %cond.end1416, !dbg !1898

cond.true1413:                                    ; preds = %if.end1405
  call void @_obstack_newchunk(%struct.obstack* nonnull %chunk_obstack87, i32 1) #7, !dbg !1898
  %.pre34 = load i8*, i8** %next_free, align 8, !dbg !1898
  br label %cond.end1416, !dbg !1898

cond.end1416:                                     ; preds = %if.end1405, %cond.true1413
  %349 = phi i8* [ %347, %if.end1405 ], [ %.pre34, %cond.true1413 ], !dbg !1898
  %incdec.ptr1420 = getelementptr inbounds i8, i8* %349, i64 1, !dbg !1898
  store i8* %incdec.ptr1420, i8** %next_free, align 8, !dbg !1898
  store i8 0, i8* %349, align 1, !dbg !1898
  %350 = load i8*, i8** %next_free, align 8, !dbg !1899
  %351 = load i8*, i8** %object_base, align 8, !dbg !1899
  %cmp1425 = icmp eq i8* %350, %351, !dbg !1899
  %352 = ptrtoint i8* %351 to i64, !dbg !1899
  %353 = ptrtoint i8* %350 to i64, !dbg !1899
  br i1 %cmp1425, label %cond.true1427, label %cond.end1434, !dbg !1899

cond.true1427:                                    ; preds = %cond.end1416
  %bf.load1430 = load i8, i8* %maybe_empty_object242, align 8, !dbg !1899
  %bf.set1432 = or i8 %bf.load1430, 2, !dbg !1899
  store i8 %bf.set1432, i8* %maybe_empty_object242, align 8, !dbg !1899
  br label %cond.end1434, !dbg !1899

cond.end1434:                                     ; preds = %cond.end1416, %cond.true1427
  store i64 %352, i64* %temp, align 8, !dbg !1899
  %354 = load i32, i32* %alignment_mask, align 8, !dbg !1899
  %conv1448 = sext i32 %354 to i64, !dbg !1899
  %add1449 = add nsw i64 %353, %conv1448, !dbg !1899
  %neg1452 = xor i32 %354, -1, !dbg !1899
  %conv1453 = sext i32 %neg1452 to i64, !dbg !1899
  %and1454 = and i64 %add1449, %conv1453, !dbg !1899
  %355 = inttoptr i64 %and1454 to i8*, !dbg !1899
  store i8* %355, i8** %next_free, align 8, !dbg !1899
  %356 = load i64, i64* %15, align 8, !dbg !1899
  %sub.ptr.sub1463 = sub i64 %and1454, %356, !dbg !1899
  %357 = load i64, i64* %2, align 8, !dbg !1899
  %sub.ptr.sub1470 = sub i64 %357, %356, !dbg !1899
  %cmp1471 = icmp sgt i64 %sub.ptr.sub1463, %sub.ptr.sub1470, !dbg !1899
  br i1 %cmp1471, label %cond.true1473, label %cond.end1479, !dbg !1899

cond.true1473:                                    ; preds = %cond.end1434
  store i64 %357, i64* %4, align 8, !dbg !1899
  br label %cond.end1479, !dbg !1899

cond.end1479:                                     ; preds = %cond.end1434, %cond.true1473
  %358 = phi i64 [ %and1454, %cond.end1434 ], [ %357, %cond.true1473 ], !dbg !1899
  store i64 %358, i64* %12, align 8, !dbg !1899
  %idxprom1487 = zext i32 %argno.3 to i64, !dbg !1900
  %arrayidx1488 = getelementptr inbounds [30 x i8**], [30 x i8**]* %formatters, i64 0, i64 %idxprom1487, !dbg !1900
  %359 = bitcast i8*** %arrayidx1488 to i64**, !dbg !1900
  %360 = load i64*, i64** %359, align 8, !dbg !1900
  store i64 %352, i64* %360, align 8, !dbg !1901
  %inc1490 = add i32 %argno.3, 1, !dbg !1902
  call void @llvm.dbg.value(metadata i32 %inc1490, metadata !1540, metadata !DIExpression()), !dbg !1587
  br label %for.cond702, !dbg !1903, !llvm.loop !1904

for.end1491:                                      ; preds = %for.cond702
  %formatted_obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 0, !dbg !1906
  store %struct.obstack* %formatted_obstack, %struct.obstack** %obstack, align 8, !dbg !1907
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 5, !dbg !1908
  store i32 0, i32* %line_length, align 8, !dbg !1909
  %wrapping = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, !dbg !1910
  %361 = bitcast %struct.pp_wrapping_mode_t* %wrapping to i64*, !dbg !1911
  store i64 %call701, i64* %361, align 4, !dbg !1911
  call fastcc void @pp_clear_state(%struct.pretty_print_info* %pp) #8, !dbg !1912
  call void @llvm.lifetime.end.p0i8(i64 240, i8* nonnull %1) #6, !dbg !1913
  ret void, !dbg !1913
}

declare dso_local void @_obstack_newchunk(%struct.obstack*, i32) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

declare dso_local i8* @xstrerror(i32) local_unnamed_addr #2

declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #2

declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i64 @pp_set_verbatim_wrapping_(%struct.pretty_print_info* %pp) unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1918, metadata !DIExpression()), !dbg !1920
  %wrapping = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, !dbg !1921
  %0 = bitcast %struct.pp_wrapping_mode_t* %wrapping to i64*, !dbg !1921
  %1 = load i64, i64* %0, align 4, !dbg !1921
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !1922
  store i32 0, i32* %line_cutoff, align 4, !dbg !1923
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 0, !dbg !1924
  store i32 1, i32* %rule, align 4, !dbg !1925
  ret i64 %1, !dbg !1926
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_string(%struct.pretty_print_info* %pp, i8* %str) local_unnamed_addr #5 !dbg !1927 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1931, metadata !DIExpression()), !dbg !1933
  call void @llvm.dbg.value(metadata i8* %str, metadata !1932, metadata !DIExpression()), !dbg !1933
  %tobool = icmp eq i8* %str, null, !dbg !1934
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1934

cond.true:                                        ; preds = %entry
  %call = tail call i64 @strlen(i8* nonnull %str) #7, !dbg !1935
  br label %cond.end, !dbg !1934

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %call, %cond.true ], [ 0, %entry ], !dbg !1934
  %add.ptr = getelementptr inbounds i8, i8* %str, i64 %cond, !dbg !1936
  tail call fastcc void @pp_maybe_wrap_text(%struct.pretty_print_info* %pp, i8* %str, i8* %add.ptr) #8, !dbg !1937
  ret void, !dbg !1938
}

declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #2

declare dso_local %union.tree_node** @tree_block(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %start, i8* %end) local_unnamed_addr #5 !dbg !1939 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1943, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %end, metadata !1945, metadata !DIExpression()), !dbg !1946
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1947
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !1947
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 5, !dbg !1949
  %1 = load i32, i32* %line_length, align 8, !dbg !1949
  %cmp = icmp eq i32 %1, 0, !dbg !1950
  br i1 %cmp, label %if.then, label %if.end6, !dbg !1951

if.then:                                          ; preds = %entry
  tail call void @pp_base_emit_prefix(%struct.pretty_print_info* %pp) #8, !dbg !1952
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !1954
  %2 = load i32, i32* %line_cutoff, align 4, !dbg !1954
  %cmp1 = icmp sgt i32 %2, 0, !dbg !1954
  br i1 %cmp1, label %while.cond.preheader, label %if.end6, !dbg !1956

while.cond.preheader:                             ; preds = %if.then
  br label %while.cond, !dbg !1957

while.cond:                                       ; preds = %while.cond.preheader, %while.body
  %start.addr.0 = phi i8* [ %incdec.ptr, %while.body ], [ %start, %while.cond.preheader ]
  call void @llvm.dbg.value(metadata i8* %start.addr.0, metadata !1944, metadata !DIExpression()), !dbg !1946
  %cmp3 = icmp eq i8* %start.addr.0, %end, !dbg !1958
  br i1 %cmp3, label %if.end6.loopexit, label %land.rhs, !dbg !1959

land.rhs:                                         ; preds = %while.cond
  %3 = load i8, i8* %start.addr.0, align 1, !dbg !1960
  %cmp4 = icmp eq i8 %3, 32, !dbg !1961
  br i1 %cmp4, label %while.body, label %if.end6.loopexit, !dbg !1957

while.body:                                       ; preds = %land.rhs
  %incdec.ptr = getelementptr inbounds i8, i8* %start.addr.0, i64 1, !dbg !1962
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !1944, metadata !DIExpression()), !dbg !1946
  br label %while.cond, !dbg !1957, !llvm.loop !1963

if.end6.loopexit:                                 ; preds = %land.rhs, %while.cond
  %start.addr.0.lcssa = phi i8* [ %start.addr.0, %land.rhs ], [ %start.addr.0, %while.cond ]
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  call void @llvm.dbg.value(metadata i8* %start.addr.0.lcssa, metadata !1944, metadata !DIExpression()), !dbg !1946
  br label %if.end6, !dbg !1965

if.end6:                                          ; preds = %if.end6.loopexit, %if.then, %entry
  %start.addr.2 = phi i8* [ %start, %entry ], [ %start, %if.then ], [ %start.addr.0.lcssa, %if.end6.loopexit ]
  call void @llvm.dbg.value(metadata i8* %start.addr.2, metadata !1944, metadata !DIExpression()), !dbg !1946
  %sub.ptr.lhs.cast = ptrtoint i8* %end to i64, !dbg !1965
  %sub.ptr.rhs.cast = ptrtoint i8* %start.addr.2 to i64, !dbg !1965
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !1965
  %conv7 = trunc i64 %sub.ptr.sub to i32, !dbg !1966
  tail call fastcc void @pp_append_r(%struct.pretty_print_info* %pp, i8* %start.addr.2, i32 %conv7) #8, !dbg !1967
  ret void, !dbg !1968
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pp_clear_state(%struct.pretty_print_info* %pp) unnamed_addr #0 !dbg !1969 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1971, metadata !DIExpression()), !dbg !1972
  %emitted_prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 7, !dbg !1973
  store i8 0, i8* %emitted_prefix, align 8, !dbg !1974
  %indent_skip = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 4, !dbg !1975
  store i32 0, i32* %indent_skip, align 8, !dbg !1976
  ret void, !dbg !1977
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_output_formatted_text(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !1978 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !1980, metadata !DIExpression()), !dbg !1985
  %buffer1 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !1986
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer1, align 8, !dbg !1986
  call void @llvm.dbg.value(metadata %struct.output_buffer* %0, metadata !1982, metadata !DIExpression()), !dbg !1985
  %cur_chunk_array = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 3, !dbg !1987
  %1 = load %struct.chunk_info*, %struct.chunk_info** %cur_chunk_array, align 8, !dbg !1987
  call void @llvm.dbg.value(metadata %struct.chunk_info* %1, metadata !1983, metadata !DIExpression()), !dbg !1985
  call void @llvm.dbg.value(metadata %struct.chunk_info* %1, metadata !1984, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1985
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !1988
  %2 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !1988
  %formatted_obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 0, !dbg !1988
  %cmp = icmp eq %struct.obstack* %2, %formatted_obstack, !dbg !1988
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !1988

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 578, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1988
  br label %cond.end, !dbg !1988

cond.end:                                         ; preds = %entry, %cond.true
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 5, !dbg !1989
  %3 = load i32, i32* %line_length, align 8, !dbg !1989
  %cmp3 = icmp eq i32 %3, 0, !dbg !1989
  br i1 %cmp3, label %cond.end6, label %cond.true4, !dbg !1989

cond.true4:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 579, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !1989
  br label %cond.end6, !dbg !1989

cond.end6:                                        ; preds = %cond.end, %cond.true4
  call void @llvm.dbg.value(metadata i32 0, metadata !1981, metadata !DIExpression()), !dbg !1985
  br label %for.cond, !dbg !1990

for.cond:                                         ; preds = %for.body, %cond.end6
  %chunk.0 = phi i32 [ 0, %cond.end6 ], [ %inc, %for.body ], !dbg !1992
  call void @llvm.dbg.value(metadata i32 %chunk.0, metadata !1981, metadata !DIExpression()), !dbg !1985
  %idxprom = zext i32 %chunk.0 to i64, !dbg !1993
  %arrayidx = getelementptr inbounds %struct.chunk_info, %struct.chunk_info* %1, i64 0, i32 1, i64 %idxprom, !dbg !1993
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !1993
  %tobool = icmp eq i8* %4, null, !dbg !1995
  br i1 %tobool, label %for.end, label %for.body, !dbg !1995

for.body:                                         ; preds = %for.cond
  tail call void @pp_base_string(%struct.pretty_print_info* %pp, i8* nonnull %4) #8, !dbg !1996
  %inc = add i32 %chunk.0, 1, !dbg !1997
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1981, metadata !DIExpression()), !dbg !1985
  br label %for.cond, !dbg !1998, !llvm.loop !1999

for.end:                                          ; preds = %for.cond
  %5 = bitcast %struct.chunk_info* %1 to i64*, !dbg !2001
  %6 = load i64, i64* %5, align 8, !dbg !2001
  %7 = bitcast %struct.chunk_info** %cur_chunk_array to i64*, !dbg !2002
  store i64 %6, i64* %7, align 8, !dbg !2002
  %chunk11 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 1, !dbg !2003
  %8 = bitcast %struct._obstack_chunk** %chunk11 to i64*, !dbg !2003
  %9 = load i64, i64* %8, align 8, !dbg !2003
  %sub.ptr.lhs.cast = ptrtoint %struct.chunk_info* %1 to i64, !dbg !2003
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %9, !dbg !2003
  %temp = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 5, !dbg !2003
  store i64 %sub.ptr.sub, i64* %temp, align 8, !dbg !2003
  %cmp15 = icmp sgt i64 %sub.ptr.sub, 0, !dbg !2003
  %10 = inttoptr i64 %9 to i8*, !dbg !2003
  br i1 %cmp15, label %land.lhs.true, label %cond.false32, !dbg !2003

land.lhs.true:                                    ; preds = %for.end
  %chunk_limit = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 4, !dbg !2003
  %11 = bitcast i8** %chunk_limit to i64*, !dbg !2003
  %12 = load i64, i64* %11, align 8, !dbg !2003
  %sub.ptr.sub23 = sub i64 %12, %9, !dbg !2003
  %cmp24 = icmp slt i64 %sub.ptr.sub, %sub.ptr.sub23, !dbg !2003
  br i1 %cmp24, label %cond.true25, label %cond.false32, !dbg !2003

cond.true25:                                      ; preds = %land.lhs.true
  %add.ptr = getelementptr inbounds i8, i8* %10, i64 %sub.ptr.sub, !dbg !2003
  %object_base = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 2, !dbg !2003
  store i8* %add.ptr, i8** %object_base, align 8, !dbg !2003
  %next_free = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, i32 3, !dbg !2003
  store i8* %add.ptr, i8** %next_free, align 8, !dbg !2003
  br label %cond.end39, !dbg !2003

cond.false32:                                     ; preds = %land.lhs.true, %for.end
  %chunk_obstack33 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 1, !dbg !2003
  %add.ptr38 = getelementptr inbounds i8, i8* %10, i64 %sub.ptr.sub, !dbg !2003
  tail call void @obstack_free(%struct.obstack* nonnull %chunk_obstack33, i8* %add.ptr38) #7, !dbg !2003
  br label %cond.end39, !dbg !2003

cond.end39:                                       ; preds = %cond.false32, %cond.true25
  ret void, !dbg !2004
}

declare dso_local void @obstack_free(%struct.obstack*, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_format_verbatim(%struct.pretty_print_info* %pp, %struct.text_info* %text) local_unnamed_addr #5 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2007, metadata !DIExpression()), !dbg !2010
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !2008, metadata !DIExpression()), !dbg !2010
  %call = tail call fastcc i64 @pp_set_verbatim_wrapping_(%struct.pretty_print_info* %pp) #8, !dbg !2011
  tail call void @pp_base_format(%struct.pretty_print_info* %pp, %struct.text_info* %text) #8, !dbg !2012
  tail call void @pp_base_output_formatted_text(%struct.pretty_print_info* %pp) #8, !dbg !2013
  %wrapping = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, !dbg !2014
  %0 = bitcast %struct.pp_wrapping_mode_t* %wrapping to i64*, !dbg !2015
  store i64 %call, i64* %0, align 4, !dbg !2015
  ret void, !dbg !2016
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_flush(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2019, metadata !DIExpression()), !dbg !2020
  tail call void @pp_write_text_to_stream(%struct.pretty_print_info* %pp) #8, !dbg !2021
  tail call fastcc void @pp_clear_state(%struct.pretty_print_info* %pp) #8, !dbg !2022
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2023
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2023
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 4, !dbg !2024
  %1 = load %struct._IO_FILE*, %struct._IO_FILE** %stream, align 8, !dbg !2024
  %call = tail call i32 @fputc(i32 10, %struct._IO_FILE* %1) #7, !dbg !2025
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2026
  %stream2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i64 0, i32 4, !dbg !2027
  %3 = load %struct._IO_FILE*, %struct._IO_FILE** %stream2, align 8, !dbg !2027
  %call3 = tail call i32 @fflush(%struct._IO_FILE* %3) #7, !dbg !2028
  %need_newline = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 8, !dbg !2029
  store i8 0, i8* %need_newline, align 1, !dbg !2030
  ret void, !dbg !2031
}

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @fflush(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_set_line_maximum_length(%struct.pretty_print_info* %pp, i32 %length) local_unnamed_addr #5 !dbg !2032 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2034, metadata !DIExpression()), !dbg !2036
  call void @llvm.dbg.value(metadata i32 %length, metadata !2035, metadata !DIExpression()), !dbg !2036
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !2037
  store i32 %length, i32* %line_cutoff, align 4, !dbg !2038
  tail call fastcc void @pp_set_real_maximum_length(%struct.pretty_print_info* %pp) #8, !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_set_real_maximum_length(%struct.pretty_print_info* %pp) unnamed_addr #5 !dbg !2041 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2043, metadata !DIExpression()), !dbg !2047
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !2048
  %0 = load i32, i32* %line_cutoff, align 4, !dbg !2048
  %cmp = icmp sgt i32 %0, 0, !dbg !2048
  br i1 %cmp, label %lor.lhs.false, label %if.then, !dbg !2049

lor.lhs.false:                                    ; preds = %entry
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 0, !dbg !2050
  %1 = load i32, i32* %rule, align 4, !dbg !2050
  %cmp2 = icmp eq i32 %1, 0, !dbg !2051
  br i1 %cmp2, label %if.then, label %lor.lhs.false3, !dbg !2052

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %cmp6 = icmp eq i32 %1, 1, !dbg !2053
  br i1 %cmp6, label %if.then, label %if.else, !dbg !2054

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  %maximum_length = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 3, !dbg !2055
  store i32 %0, i32* %maximum_length, align 4, !dbg !2056
  br label %if.end22, !dbg !2057

if.else:                                          ; preds = %lor.lhs.false3
  %prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 1, !dbg !2058
  %2 = load i8*, i8** %prefix, align 8, !dbg !2058
  %tobool = icmp eq i8* %2, null, !dbg !2059
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2059

cond.true:                                        ; preds = %if.else
  %call = tail call i64 @strlen(i8* nonnull %2) #7, !dbg !2060
  %phitmp = trunc i64 %call to i32, !dbg !2059
  %.pre = load i32, i32* %line_cutoff, align 4, !dbg !2061
  br label %cond.end, !dbg !2059

cond.end:                                         ; preds = %if.else, %cond.true
  %3 = phi i32 [ %.pre, %cond.true ], [ %0, %if.else ], !dbg !2061
  %cond = phi i32 [ %phitmp, %cond.true ], [ 0, %if.else ]
  call void @llvm.dbg.value(metadata i32 %cond, metadata !2044, metadata !DIExpression()), !dbg !2063
  %sub = sub nsw i32 %3, %cond, !dbg !2064
  %cmp12 = icmp slt i32 %sub, 32, !dbg !2065
  br i1 %cmp12, label %if.then14, label %if.else18, !dbg !2066

if.then14:                                        ; preds = %cond.end
  %add = add nsw i32 %3, 32, !dbg !2067
  %maximum_length17 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 3, !dbg !2068
  store i32 %add, i32* %maximum_length17, align 4, !dbg !2069
  br label %if.end22, !dbg !2070

if.else18:                                        ; preds = %cond.end
  %maximum_length21 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 3, !dbg !2071
  store i32 %3, i32* %maximum_length21, align 4, !dbg !2072
  br label %if.end22

if.end22:                                         ; preds = %if.then14, %if.else18, %if.then
  ret void, !dbg !2073
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_set_prefix(%struct.pretty_print_info* %pp, i8* %prefix) local_unnamed_addr #5 !dbg !2074 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2076, metadata !DIExpression()), !dbg !2078
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !2077, metadata !DIExpression()), !dbg !2078
  %prefix1 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 1, !dbg !2079
  store i8* %prefix, i8** %prefix1, align 8, !dbg !2080
  tail call fastcc void @pp_set_real_maximum_length(%struct.pretty_print_info* %pp) #8, !dbg !2081
  %emitted_prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 7, !dbg !2082
  store i8 0, i8* %emitted_prefix, align 8, !dbg !2083
  %indent_skip = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 4, !dbg !2084
  store i32 0, i32* %indent_skip, align 8, !dbg !2085
  ret void, !dbg !2086
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_destroy_prefix(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2087 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2089, metadata !DIExpression()), !dbg !2090
  %prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 1, !dbg !2091
  %0 = load i8*, i8** %prefix, align 8, !dbg !2091
  %cmp = icmp eq i8* %0, null, !dbg !2093
  br i1 %cmp, label %if.end, label %if.then, !dbg !2094

if.then:                                          ; preds = %entry
  tail call void @free(i8* nonnull %0) #7, !dbg !2095
  store i8* null, i8** %prefix, align 8, !dbg !2097
  br label %if.end, !dbg !2098

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2099
}

declare dso_local void @free(i8*) #2

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_emit_prefix(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2100 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2102, metadata !DIExpression()), !dbg !2108
  %prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 1, !dbg !2109
  %0 = load i8*, i8** %prefix, align 8, !dbg !2109
  %cmp = icmp eq i8* %0, null, !dbg !2110
  br i1 %cmp, label %if.end6, label %if.then, !dbg !2111

if.then:                                          ; preds = %entry
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 0, !dbg !2112
  %1 = load i32, i32* %rule, align 4, !dbg !2112
  switch i32 %1, label %if.end6 [
    i32 2, label %sw.bb2
    i32 0, label %sw.bb
  ], !dbg !2113

sw.bb:                                            ; preds = %if.then
  %emitted_prefix = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 7, !dbg !2114
  %2 = load i8, i8* %emitted_prefix, align 8, !dbg !2114
  %tobool = icmp eq i8 %2, 0, !dbg !2116
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2117

if.then1:                                         ; preds = %sw.bb
  tail call void @pp_base_indent(%struct.pretty_print_info* %pp) #8, !dbg !2118
  br label %if.end6, !dbg !2120

if.end:                                           ; preds = %sw.bb
  %indent_skip = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 4, !dbg !2121
  %3 = load i32, i32* %indent_skip, align 8, !dbg !2122
  %add = add nsw i32 %3, 3, !dbg !2122
  store i32 %add, i32* %indent_skip, align 8, !dbg !2122
  br label %sw.bb2, !dbg !2121

sw.bb2:                                           ; preds = %if.then, %if.end
  %call = tail call i64 @strlen(i8* nonnull %0) #7, !dbg !2123
  %conv = trunc i64 %call to i32, !dbg !2123
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2103, metadata !DIExpression()), !dbg !2124
  %4 = load i8*, i8** %prefix, align 8, !dbg !2125
  tail call fastcc void @pp_append_r(%struct.pretty_print_info* %pp, i8* %4, i32 %conv) #8, !dbg !2126
  %emitted_prefix5 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 7, !dbg !2127
  store i8 1, i8* %emitted_prefix5, align 8, !dbg !2128
  br label %if.end6, !dbg !2129

if.end6:                                          ; preds = %entry, %if.then1, %sw.bb2, %if.then
  ret void, !dbg !2130
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pp_append_r(%struct.pretty_print_info* %pp, i8* %start, i32 %length) unnamed_addr #0 !dbg !2131 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2135, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i8* %start, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.dbg.value(metadata i32 %length, metadata !2137, metadata !DIExpression()), !dbg !2138
  %conv = sext i32 %length to i64, !dbg !2139
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2139
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2139
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !2139
  %1 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !2139
  %temp = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 5, !dbg !2139
  store i64 %conv, i64* %temp, align 8, !dbg !2139
  %2 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2139
  %obstack2 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %2, i64 0, i32 2, !dbg !2139
  %3 = load %struct.obstack*, %struct.obstack** %obstack2, align 8, !dbg !2139
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i64 0, i32 3, !dbg !2139
  %4 = load i8*, i8** %next_free, align 8, !dbg !2139
  %temp5 = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i64 0, i32 5, !dbg !2139
  %5 = load i64, i64* %temp5, align 8, !dbg !2139
  %add.ptr = getelementptr inbounds i8, i8* %4, i64 %5, !dbg !2139
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %3, i64 0, i32 4, !dbg !2139
  %6 = load i8*, i8** %chunk_limit, align 8, !dbg !2139
  %cmp = icmp ugt i8* %add.ptr, %6, !dbg !2139
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2139

cond.true:                                        ; preds = %entry
  %conv14 = trunc i64 %5 to i32, !dbg !2139
  tail call void @_obstack_newchunk(%struct.obstack* %3, i32 %conv14) #7, !dbg !2139
  %.pre = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2139
  %obstack16.phi.trans.insert = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %.pre, i64 0, i32 2, !dbg !2138
  %.pre1 = load %struct.obstack*, %struct.obstack** %obstack16.phi.trans.insert, align 8, !dbg !2139
  %next_free17.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %.pre1, i64 0, i32 3, !dbg !2138
  %.pre2 = load i8*, i8** %next_free17.phi.trans.insert, align 8, !dbg !2139
  %temp20.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %.pre1, i64 0, i32 5, !dbg !2138
  %.pre3 = load i64, i64* %temp20.phi.trans.insert, align 8, !dbg !2139
  br label %cond.end, !dbg !2139

cond.end:                                         ; preds = %entry, %cond.true
  %7 = phi i64 [ %5, %entry ], [ %.pre3, %cond.true ], !dbg !2139
  %8 = phi i8* [ %4, %entry ], [ %.pre2, %cond.true ], !dbg !2139
  %call = tail call i8* @memcpy(i8* %8, i8* %start, i64 %7) #7, !dbg !2139
  %9 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2139
  %obstack22 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %9, i64 0, i32 2, !dbg !2139
  %10 = load %struct.obstack*, %struct.obstack** %obstack22, align 8, !dbg !2139
  %temp23 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i64 0, i32 5, !dbg !2139
  %11 = load i64, i64* %temp23, align 8, !dbg !2139
  %next_free26 = getelementptr inbounds %struct.obstack, %struct.obstack* %10, i64 0, i32 3, !dbg !2139
  %12 = load i8*, i8** %next_free26, align 8, !dbg !2139
  %add.ptr27 = getelementptr inbounds i8, i8* %12, i64 %11, !dbg !2139
  store i8* %add.ptr27, i8** %next_free26, align 8, !dbg !2139
  %13 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2140
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %13, i64 0, i32 5, !dbg !2141
  %14 = load i32, i32* %line_length, align 8, !dbg !2142
  %add = add nsw i32 %14, %length, !dbg !2142
  store i32 %add, i32* %line_length, align 8, !dbg !2142
  ret void, !dbg !2143
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_construct(%struct.pretty_print_info* %pp, i8* %prefix, i32 %maximum_length) local_unnamed_addr #5 !dbg !2144 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2146, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i8* %prefix, metadata !2147, metadata !DIExpression()), !dbg !2149
  call void @llvm.dbg.value(metadata i32 %maximum_length, metadata !2148, metadata !DIExpression()), !dbg !2149
  %0 = bitcast %struct.pretty_print_info* %pp to i8*, !dbg !2150
  %call = tail call i8* @memset(i8* %0, i32 0, i64 56) #7, !dbg !2151
  %call1 = tail call i8* @xcalloc(i64 1, i64 336) #7, !dbg !2152
  %1 = bitcast %struct.pretty_print_info* %pp to i8**, !dbg !2153
  store i8* %call1, i8** %1, align 8, !dbg !2153
  %chunk_obstack = getelementptr inbounds i8, i8* %call1, i64 88, !dbg !2154
  %2 = bitcast i8* %chunk_obstack to %struct.obstack*, !dbg !2154
  %call3 = tail call i32 @_obstack_begin(%struct.obstack* nonnull %2, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #7, !dbg !2154
  %buffer4 = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2155
  %3 = load %struct.output_buffer*, %struct.output_buffer** %buffer4, align 8, !dbg !2155
  %formatted_obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %3, i64 0, i32 0, !dbg !2155
  %call5 = tail call i32 @_obstack_begin(%struct.obstack* %formatted_obstack, i32 0, i32 0, i8* (i64)* nonnull @xmalloc, void (i8*)* nonnull @free) #7, !dbg !2155
  %4 = load %struct.output_buffer*, %struct.output_buffer** %buffer4, align 8, !dbg !2156
  %formatted_obstack7 = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i64 0, i32 0, !dbg !2157
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %4, i64 0, i32 2, !dbg !2158
  store %struct.obstack* %formatted_obstack7, %struct.obstack** %obstack, align 8, !dbg !2159
  %5 = load i64, i64* bitcast (%struct._IO_FILE** @stderr to i64*), align 8, !dbg !2160
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer4, align 8, !dbg !2161
  %stream = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i64 0, i32 4, !dbg !2162
  %7 = bitcast %struct._IO_FILE** %stream to i64*, !dbg !2163
  store i64 %5, i64* %7, align 8, !dbg !2163
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !2164
  store i32 %maximum_length, i32* %line_cutoff, align 4, !dbg !2165
  %rule = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 0, !dbg !2166
  store i32 0, i32* %rule, align 4, !dbg !2167
  tail call void @pp_base_set_prefix(%struct.pretty_print_info* %pp, i8* %prefix) #8, !dbg !2168
  %translate_identifiers = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !2169
  store i8 1, i8* %translate_identifiers, align 2, !dbg !2170
  ret void, !dbg !2171
}

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

declare dso_local i32 @_obstack_begin(%struct.obstack*, i32, i32, i8* (i64)*, void (i8*)*) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) #2

; Function Attrs: nounwind uwtable
define dso_local i8* @pp_base_last_position_in_text(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2172 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2178, metadata !DIExpression()), !dbg !2181
  call void @llvm.dbg.value(metadata i8* null, metadata !2179, metadata !DIExpression()), !dbg !2181
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2182
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2182
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !2183
  %1 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !2183
  call void @llvm.dbg.value(metadata %struct.obstack* %1, metadata !2180, metadata !DIExpression()), !dbg !2181
  %object_base = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 2, !dbg !2184
  %2 = load i8*, i8** %object_base, align 8, !dbg !2184
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 3, !dbg !2186
  %3 = load i8*, i8** %next_free, align 8, !dbg !2186
  %cmp = icmp eq i8* %2, %3, !dbg !2187
  br i1 %cmp, label %if.end, label %if.then, !dbg !2188

if.then:                                          ; preds = %entry
  %add.ptr = getelementptr inbounds i8, i8* %3, i64 -1, !dbg !2189
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2179, metadata !DIExpression()), !dbg !2181
  br label %if.end, !dbg !2190

if.end:                                           ; preds = %entry, %if.then
  %p.0 = phi i8* [ %add.ptr, %if.then ], [ null, %entry ], !dbg !2181
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2179, metadata !DIExpression()), !dbg !2181
  ret i8* %p.0, !dbg !2191
}

; Function Attrs: nounwind uwtable
define dso_local i32 @pp_base_remaining_character_count_for_line(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2196, metadata !DIExpression()), !dbg !2197
  %maximum_length = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 3, !dbg !2198
  %0 = load i32, i32* %maximum_length, align 4, !dbg !2198
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2199
  %1 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2199
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %1, i64 0, i32 5, !dbg !2200
  %2 = load i32, i32* %line_length, align 8, !dbg !2200
  %sub = sub nsw i32 %0, %2, !dbg !2201
  ret i32 %sub, !dbg !2202
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_printf(%struct.pretty_print_info* %pp, i8* %msg, ...) local_unnamed_addr #5 !dbg !2203 {
entry:
  %text = alloca %struct.text_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2207, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2208, metadata !DIExpression()), !dbg !2211
  %0 = bitcast %struct.text_info* %text to i8*, !dbg !2212
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2212
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2213
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2213
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2210, metadata !DIExpression()), !dbg !2214
  call void @llvm.va_start(i8* %1), !dbg !2215
  %call = call i32* @__errno_location() #7, !dbg !2216
  %2 = load i32, i32* %call, align 4, !dbg !2216
  %err_no = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 2, !dbg !2217
  store i32 %2, i32* %err_no, align 8, !dbg !2218
  %args_ptr = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !2219
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !2220
  %format_spec = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 0, !dbg !2221
  store i8* %msg, i8** %format_spec, align 8, !dbg !2222
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !2223
  store i32* null, i32** %locus, align 8, !dbg !2224
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !2209, metadata !DIExpression(DW_OP_deref)), !dbg !2211
  call void @pp_base_format(%struct.pretty_print_info* %pp, %struct.text_info* nonnull %text) #8, !dbg !2225
  call void @pp_base_output_formatted_text(%struct.pretty_print_info* %pp) #8, !dbg !2226
  call void @llvm.va_end(i8* nonnull %1), !dbg !2227
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2228
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2228
  ret void, !dbg !2228
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

declare dso_local i32* @__errno_location() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind uwtable
define dso_local void @pp_verbatim(%struct.pretty_print_info* %pp, i8* %msg, ...) local_unnamed_addr #5 !dbg !2229 {
entry:
  %text = alloca %struct.text_info, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2231, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata i8* %msg, metadata !2232, metadata !DIExpression()), !dbg !2235
  %0 = bitcast %struct.text_info* %text to i8*, !dbg !2236
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2236
  %1 = bitcast [1 x %struct.__va_list_tag]* %ap to i8*, !dbg !2237
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2237
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2234, metadata !DIExpression()), !dbg !2238
  call void @llvm.va_start(i8* %1), !dbg !2239
  %call = call i32* @__errno_location() #7, !dbg !2240
  %2 = load i32, i32* %call, align 4, !dbg !2240
  %err_no = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 2, !dbg !2241
  store i32 %2, i32* %err_no, align 8, !dbg !2242
  %args_ptr = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 1, !dbg !2243
  store [1 x %struct.__va_list_tag]* %ap, [1 x %struct.__va_list_tag]** %args_ptr, align 8, !dbg !2244
  %format_spec = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 0, !dbg !2245
  store i8* %msg, i8** %format_spec, align 8, !dbg !2246
  %locus = getelementptr inbounds %struct.text_info, %struct.text_info* %text, i64 0, i32 3, !dbg !2247
  store i32* null, i32** %locus, align 8, !dbg !2248
  call void @llvm.dbg.value(metadata %struct.text_info* %text, metadata !2233, metadata !DIExpression(DW_OP_deref)), !dbg !2235
  call void @pp_base_format_verbatim(%struct.pretty_print_info* %pp, %struct.text_info* nonnull %text) #8, !dbg !2249
  call void @llvm.va_end(i8* nonnull %1), !dbg !2250
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %1) #6, !dbg !2251
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #6, !dbg !2251
  ret void, !dbg !2251
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_newline(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2252 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2254, metadata !DIExpression()), !dbg !2255
  %buffer = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 0, !dbg !2256
  %0 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2256
  %obstack = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %0, i64 0, i32 2, !dbg !2256
  %1 = load %struct.obstack*, %struct.obstack** %obstack, align 8, !dbg !2256
  %next_free = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 3, !dbg !2256
  %2 = load i8*, i8** %next_free, align 8, !dbg !2256
  %add.ptr = getelementptr inbounds i8, i8* %2, i64 1, !dbg !2256
  %chunk_limit = getelementptr inbounds %struct.obstack, %struct.obstack* %1, i64 0, i32 4, !dbg !2256
  %3 = load i8*, i8** %chunk_limit, align 8, !dbg !2256
  %cmp = icmp ugt i8* %add.ptr, %3, !dbg !2256
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2256

cond.true:                                        ; preds = %entry
  tail call void @_obstack_newchunk(%struct.obstack* %1, i32 1) #7, !dbg !2256
  %.pre = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2256
  %obstack6.phi.trans.insert = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %.pre, i64 0, i32 2, !dbg !2255
  %.pre1 = load %struct.obstack*, %struct.obstack** %obstack6.phi.trans.insert, align 8, !dbg !2256
  %next_free7.phi.trans.insert = getelementptr inbounds %struct.obstack, %struct.obstack* %.pre1, i64 0, i32 3, !dbg !2255
  %.pre2 = load i8*, i8** %next_free7.phi.trans.insert, align 8, !dbg !2256
  br label %cond.end, !dbg !2256

cond.end:                                         ; preds = %entry, %cond.true
  %4 = phi i8* [ %2, %entry ], [ %.pre2, %cond.true ], !dbg !2256
  %5 = phi %struct.obstack* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !2256
  %next_free7 = getelementptr inbounds %struct.obstack, %struct.obstack* %5, i64 0, i32 3, !dbg !2256
  %incdec.ptr = getelementptr inbounds i8, i8* %4, i64 1, !dbg !2256
  store i8* %incdec.ptr, i8** %next_free7, align 8, !dbg !2256
  store i8 10, i8* %4, align 1, !dbg !2256
  %6 = load %struct.output_buffer*, %struct.output_buffer** %buffer, align 8, !dbg !2257
  %line_length = getelementptr inbounds %struct.output_buffer, %struct.output_buffer* %6, i64 0, i32 5, !dbg !2258
  store i32 0, i32* %line_length, align 8, !dbg !2259
  ret void, !dbg !2260
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @pp_maybe_wrap_text(%struct.pretty_print_info* %pp, i8* %start, i8* %end) unnamed_addr #0 !dbg !2261 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2263, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %start, metadata !2264, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.value(metadata i8* %end, metadata !2265, metadata !DIExpression()), !dbg !2266
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !2267
  %0 = load i32, i32* %line_cutoff, align 4, !dbg !2267
  %cmp = icmp sgt i32 %0, 0, !dbg !2267
  br i1 %cmp, label %if.then, label %if.else, !dbg !2269

if.then:                                          ; preds = %entry
  tail call fastcc void @pp_wrap_text(%struct.pretty_print_info* %pp, i8* %start, i8* %end) #8, !dbg !2270
  br label %if.end, !dbg !2270

if.else:                                          ; preds = %entry
  tail call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %start, i8* %end) #8, !dbg !2271
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2272
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_maybe_space(%struct.pretty_print_info* %pp) local_unnamed_addr #5 !dbg !2273 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2275, metadata !DIExpression()), !dbg !2276
  %padding = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 2, !dbg !2277
  %0 = load i32, i32* %padding, align 8, !dbg !2277
  %cmp = icmp eq i32 %0, 0, !dbg !2279
  br i1 %cmp, label %if.end, label %if.then, !dbg !2280

if.then:                                          ; preds = %entry
  tail call void @pp_base_character(%struct.pretty_print_info* %pp, i32 32) #8, !dbg !2281
  store i32 0, i32* %padding, align 8, !dbg !2283
  br label %if.end, !dbg !2284

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2285
}

; Function Attrs: nounwind uwtable
define dso_local void @pp_base_tree_identifier(%struct.pretty_print_info* %pp, %union.tree_node* %id) local_unnamed_addr #5 !dbg !2286 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2290, metadata !DIExpression()), !dbg !2295
  call void @llvm.dbg.value(metadata %union.tree_node* %id, metadata !2291, metadata !DIExpression()), !dbg !2295
  %translate_identifiers = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 9, !dbg !2296
  %0 = load i8, i8* %translate_identifiers, align 2, !dbg !2296
  %tobool = icmp eq i8 %0, 0, !dbg !2296
  %id1 = getelementptr inbounds %union.tree_node, %union.tree_node* %id, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2297
  %str = bitcast i32* %id1 to i8**, !dbg !2297
  %1 = load i8*, i8** %str, align 8, !dbg !2297
  br i1 %tobool, label %if.else, label %if.then, !dbg !2298

if.then:                                          ; preds = %entry
  %call = tail call i8* @identifier_to_locale(i8* %1) #8, !dbg !2299
  call void @llvm.dbg.value(metadata i8* %call, metadata !2292, metadata !DIExpression()), !dbg !2300
  %call2 = tail call i64 @strlen(i8* %call) #7, !dbg !2301
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %call2, !dbg !2301
  tail call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %call, i8* %add.ptr) #8, !dbg !2301
  br label %if.end, !dbg !2302

if.else:                                          ; preds = %entry
  %2 = getelementptr inbounds i32, i32* %id1, i64 2, !dbg !2303
  %3 = load i32, i32* %2, align 8, !dbg !2303
  %idx.ext = zext i32 %3 to i64, !dbg !2303
  %add.ptr11 = getelementptr inbounds i8, i8* %1, i64 %idx.ext, !dbg !2303
  tail call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %1, i8* %add.ptr11) #8, !dbg !2303
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2304
}

; Function Attrs: nounwind uwtable
define dso_local i8* @identifier_to_locale(i8* %ident) local_unnamed_addr #5 !dbg !2305 {
entry:
  %c = alloca i32, align 4
  %c60 = alloca i32, align 4
  call void @llvm.dbg.value(metadata i8* %ident, metadata !2309, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8* %ident, metadata !2310, metadata !DIExpression()), !dbg !2332
  %call = tail call i64 @strlen(i8* %ident) #7, !dbg !2333
  call void @llvm.dbg.value(metadata i64 %call, metadata !2311, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 1, metadata !2312, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 1, metadata !2313, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 0, metadata !2314, metadata !DIExpression()), !dbg !2332
  %0 = bitcast i32* %c to i8*, !dbg !2334
  br label %for.cond, !dbg !2335

for.cond:                                         ; preds = %cleanup, %entry
  %i.0 = phi i64 [ 0, %entry ], [ %i.1, %cleanup ], !dbg !2336
  %all_ascii.0 = phi i8 [ 1, %entry ], [ %all_ascii.2, %cleanup ], !dbg !2337
  %valid_printable_utf8.0 = phi i8 [ 1, %entry ], [ %valid_printable_utf8.1, %cleanup ], !dbg !2332
  call void @llvm.dbg.value(metadata i8 %valid_printable_utf8.0, metadata !2312, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %all_ascii.0, metadata !2313, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2314, metadata !DIExpression()), !dbg !2332
  %cmp = icmp ugt i64 %call, %i.0, !dbg !2338
  br i1 %cmp, label %for.body, label %for.end, !dbg !2339

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2340
  %arrayidx = getelementptr inbounds i8, i8* %ident, i64 %i.0, !dbg !2341
  %sub = sub i64 %call, %i.0, !dbg !2342
  call void @llvm.dbg.value(metadata i32* %c, metadata !2315, metadata !DIExpression(DW_OP_deref)), !dbg !2334
  %call1 = call fastcc i32 @decode_utf8_char(i8* %arrayidx, i64 %sub, i32* nonnull %c) #8, !dbg !2343
  %conv = sext i32 %call1 to i64, !dbg !2343
  call void @llvm.dbg.value(metadata i64 %conv, metadata !2319, metadata !DIExpression()), !dbg !2334
  %cmp2 = icmp eq i32 %call1, 0, !dbg !2344
  %1 = load i32, i32* %c, align 4, !dbg !2346
  call void @llvm.dbg.value(metadata i32 %1, metadata !2315, metadata !DIExpression()), !dbg !2334
  %cmp4 = icmp ult i32 %1, 32, !dbg !2347
  %or.cond = or i1 %cmp2, %cmp4, !dbg !2348
  br i1 %or.cond, label %cleanup, label %lor.lhs.false6, !dbg !2348

lor.lhs.false6:                                   ; preds = %for.body
  call void @llvm.dbg.value(metadata i32 %1, metadata !2315, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.value(metadata i32 %1, metadata !2315, metadata !DIExpression()), !dbg !2334
  %.off = add i32 %1, -127, !dbg !2349
  %2 = icmp ult i32 %.off, 33, !dbg !2349
  br i1 %2, label %cleanup, label %if.end, !dbg !2349

if.end:                                           ; preds = %lor.lhs.false6
  %cmp11 = icmp ugt i32 %call1, 1, !dbg !2350
  %spec.select = select i1 %cmp11, i8 0, i8 %all_ascii.0, !dbg !2352
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !2313, metadata !DIExpression()), !dbg !2332
  %add = add i64 %i.0, %conv, !dbg !2353
  call void @llvm.dbg.value(metadata i64 %add, metadata !2314, metadata !DIExpression()), !dbg !2332
  br label %cleanup, !dbg !2354

cleanup:                                          ; preds = %for.body, %lor.lhs.false6, %if.end
  %i.1 = phi i64 [ %add, %if.end ], [ %i.0, %lor.lhs.false6 ], [ %i.0, %for.body ], !dbg !2355
  %all_ascii.2 = phi i8 [ %spec.select, %if.end ], [ %all_ascii.0, %lor.lhs.false6 ], [ %all_ascii.0, %for.body ], !dbg !2332
  %valid_printable_utf8.1 = phi i8 [ %valid_printable_utf8.0, %if.end ], [ 0, %lor.lhs.false6 ], [ 0, %for.body ], !dbg !2332
  %cleanup.dest.slot.0 = phi i1 [ true, %if.end ], [ false, %lor.lhs.false6 ], [ false, %for.body ]
  call void @llvm.dbg.value(metadata i8 %valid_printable_utf8.1, metadata !2312, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %all_ascii.2, metadata !2313, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i64 %i.1, metadata !2314, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #6, !dbg !2354
  br i1 %cleanup.dest.slot.0, label %for.cond, label %for.end, !llvm.loop !2356

for.end:                                          ; preds = %cleanup, %for.cond
  %all_ascii.3 = phi i8 [ %all_ascii.2, %cleanup ], [ %all_ascii.0, %for.cond ], !dbg !2337
  %valid_printable_utf8.2 = phi i8 [ %valid_printable_utf8.1, %cleanup ], [ %valid_printable_utf8.0, %for.cond ], !dbg !2332
  call void @llvm.dbg.value(metadata i8 %valid_printable_utf8.2, metadata !2312, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.value(metadata i8 %all_ascii.3, metadata !2313, metadata !DIExpression()), !dbg !2332
  %tobool = icmp eq i8 %valid_printable_utf8.2, 0, !dbg !2358
  br i1 %tobool, label %if.then16, label %if.end42, !dbg !2359

if.then16:                                        ; preds = %for.end
  %mul = shl i64 %call, 2, !dbg !2360
  %add17 = or i64 %mul, 1, !dbg !2360
  %call19 = call i8* @ggc_alloc_stat(i64 %add17) #7, !dbg !2360
  call void @llvm.dbg.value(metadata i8* %call19, metadata !2320, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %call19, metadata !2323, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 0, metadata !2314, metadata !DIExpression()), !dbg !2332
  br label %for.cond20, !dbg !2362

for.cond20:                                       ; preds = %for.inc, %if.then16
  %i.2 = phi i64 [ 0, %if.then16 ], [ %inc, %for.inc ], !dbg !2364
  %p.0 = phi i8* [ %call19, %if.then16 ], [ %p.1, %for.inc ], !dbg !2361
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2323, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i64 %i.2, metadata !2314, metadata !DIExpression()), !dbg !2332
  %exitcond = icmp eq i64 %i.2, %call, !dbg !2365
  br i1 %exitcond, label %for.end39, label %for.body23, !dbg !2367

for.body23:                                       ; preds = %for.cond20
  %arrayidx24 = getelementptr inbounds i8, i8* %ident, i64 %i.2, !dbg !2368
  %3 = load i8, i8* %arrayidx24, align 1, !dbg !2368
  %cmp26 = icmp ugt i8 %3, 31, !dbg !2371
  br i1 %cmp26, label %land.lhs.true28, label %if.else, !dbg !2372

land.lhs.true28:                                  ; preds = %for.body23
  %cmp31 = icmp ult i8 %3, 127, !dbg !2373
  br i1 %cmp31, label %if.then33, label %if.else, !dbg !2374

if.then33:                                        ; preds = %land.lhs.true28
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2375
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2323, metadata !DIExpression()), !dbg !2361
  store i8 %3, i8* %p.0, align 1, !dbg !2376
  br label %for.inc, !dbg !2377

if.else:                                          ; preds = %land.lhs.true28, %for.body23
  %conv36 = zext i8 %3 to i32, !dbg !2378
  %call37 = call i32 (i8*, i8*, ...) @sprintf(i8* %p.0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.17, i64 0, i64 0), i32 %conv36) #7, !dbg !2380
  %add.ptr = getelementptr inbounds i8, i8* %p.0, i64 4, !dbg !2381
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2323, metadata !DIExpression()), !dbg !2361
  br label %for.inc

for.inc:                                          ; preds = %if.then33, %if.else
  %p.1 = phi i8* [ %incdec.ptr, %if.then33 ], [ %add.ptr, %if.else ], !dbg !2382
  call void @llvm.dbg.value(metadata i8* %p.1, metadata !2323, metadata !DIExpression()), !dbg !2361
  %inc = add i64 %i.2, 1, !dbg !2383
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2314, metadata !DIExpression()), !dbg !2332
  br label %for.cond20, !dbg !2384, !llvm.loop !2385

for.end39:                                        ; preds = %for.cond20
  %p.0.lcssa = phi i8* [ %p.0, %for.cond20 ], !dbg !2361
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2323, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2323, metadata !DIExpression()), !dbg !2361
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2323, metadata !DIExpression()), !dbg !2361
  store i8 0, i8* %p.0.lcssa, align 1, !dbg !2387
  br label %cleanup79

if.end42:                                         ; preds = %for.end
  %tobool44 = icmp eq i8 %all_ascii.3, 0, !dbg !2388
  br i1 %tobool44, label %lor.lhs.false45, label %cleanup79, !dbg !2390

lor.lhs.false45:                                  ; preds = %if.end42
  %4 = load i8, i8* @locale_utf8, align 1, !dbg !2391
  %tobool47 = icmp eq i8 %4, 0, !dbg !2391
  br i1 %tobool47, label %if.end49, label %cleanup79, !dbg !2392

if.end49:                                         ; preds = %lor.lhs.false45
  %mul51 = mul i64 %call, 10, !dbg !2393
  %add52 = or i64 %mul51, 1, !dbg !2393
  %call54 = call i8* @ggc_alloc_stat(i64 %add52) #7, !dbg !2393
  call void @llvm.dbg.value(metadata i8* %call54, metadata !2324, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %call54, metadata !2326, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 0, metadata !2314, metadata !DIExpression()), !dbg !2332
  %5 = bitcast i32* %c60 to i8*, !dbg !2395
  br label %for.cond56, !dbg !2396

for.cond56:                                       ; preds = %if.end74, %if.end49
  %i.3 = phi i64 [ 0, %if.end49 ], [ %add75, %if.end74 ], !dbg !2397
  %p55.0 = phi i8* [ %call54, %if.end49 ], [ %p55.1, %if.end74 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8* %p55.0, metadata !2326, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i64 %i.3, metadata !2314, metadata !DIExpression()), !dbg !2332
  %cmp57 = icmp ugt i64 %call, %i.3, !dbg !2398
  br i1 %cmp57, label %for.body59, label %for.end76, !dbg !2399

for.body59:                                       ; preds = %for.cond56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #6, !dbg !2400
  %arrayidx62 = getelementptr inbounds i8, i8* %ident, i64 %i.3, !dbg !2401
  %sub63 = sub i64 %call, %i.3, !dbg !2402
  call void @llvm.dbg.value(metadata i32* %c60, metadata !2327, metadata !DIExpression(DW_OP_deref)), !dbg !2395
  %call64 = call fastcc i32 @decode_utf8_char(i8* %arrayidx62, i64 %sub63, i32* nonnull %c60) #8, !dbg !2403
  %conv65 = sext i32 %call64 to i64, !dbg !2403
  call void @llvm.dbg.value(metadata i64 %conv65, metadata !2331, metadata !DIExpression()), !dbg !2395
  %cmp66 = icmp eq i32 %call64, 1, !dbg !2404
  br i1 %cmp66, label %if.then68, label %if.else71, !dbg !2406

if.then68:                                        ; preds = %for.body59
  %6 = load i8, i8* %arrayidx62, align 1, !dbg !2407
  %incdec.ptr70 = getelementptr inbounds i8, i8* %p55.0, i64 1, !dbg !2408
  call void @llvm.dbg.value(metadata i8* %incdec.ptr70, metadata !2326, metadata !DIExpression()), !dbg !2394
  store i8 %6, i8* %p55.0, align 1, !dbg !2409
  br label %if.end74, !dbg !2410

if.else71:                                        ; preds = %for.body59
  %7 = load i32, i32* %c60, align 4, !dbg !2411
  call void @llvm.dbg.value(metadata i32 %7, metadata !2327, metadata !DIExpression()), !dbg !2395
  %call72 = call i32 (i8*, i8*, ...) @sprintf(i8* %p55.0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i64 0, i64 0), i32 %7) #7, !dbg !2413
  %add.ptr73 = getelementptr inbounds i8, i8* %p55.0, i64 10, !dbg !2414
  call void @llvm.dbg.value(metadata i8* %add.ptr73, metadata !2326, metadata !DIExpression()), !dbg !2394
  br label %if.end74

if.end74:                                         ; preds = %if.else71, %if.then68
  %p55.1 = phi i8* [ %incdec.ptr70, %if.then68 ], [ %add.ptr73, %if.else71 ], !dbg !2415
  call void @llvm.dbg.value(metadata i8* %p55.1, metadata !2326, metadata !DIExpression()), !dbg !2394
  %add75 = add i64 %i.3, %conv65, !dbg !2416
  call void @llvm.dbg.value(metadata i64 %add75, metadata !2314, metadata !DIExpression()), !dbg !2332
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #6, !dbg !2417
  br label %for.cond56, !dbg !2418, !llvm.loop !2419

for.end76:                                        ; preds = %for.cond56
  %p55.0.lcssa = phi i8* [ %p55.0, %for.cond56 ], !dbg !2394
  call void @llvm.dbg.value(metadata i8* %p55.0.lcssa, metadata !2326, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %p55.0.lcssa, metadata !2326, metadata !DIExpression()), !dbg !2394
  call void @llvm.dbg.value(metadata i8* %p55.0.lcssa, metadata !2326, metadata !DIExpression()), !dbg !2394
  store i8 0, i8* %p55.0.lcssa, align 1, !dbg !2421
  br label %cleanup79

cleanup79:                                        ; preds = %lor.lhs.false45, %if.end42, %for.end76, %for.end39
  %retval.0 = phi i8* [ %call54, %for.end76 ], [ %call19, %for.end39 ], [ %ident, %lor.lhs.false45 ], [ %ident, %if.end42 ], !dbg !2332
  ret i8* %retval.0, !dbg !2422
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @decode_utf8_char(i8* %p, i64 %len, i32* %value) unnamed_addr #5 !dbg !2423 {
entry:
  call void @llvm.dbg.value(metadata i8* %p, metadata !2428, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %len, metadata !2429, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i32* %value, metadata !2430, metadata !DIExpression()), !dbg !2441
  %0 = load i8, i8* %p, align 1, !dbg !2442
  %conv = zext i8 %0 to i32, !dbg !2442
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2431, metadata !DIExpression()), !dbg !2441
  %cmp = icmp eq i64 %len, 0, !dbg !2443
  br i1 %cmp, label %if.then, label %if.end, !dbg !2445

if.then:                                          ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 862, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !2446
  br label %if.end, !dbg !2446

if.end:                                           ; preds = %if.then, %entry
  %tobool = icmp slt i8 %0, 0, !dbg !2447
  br i1 %tobool, label %if.then2, label %if.else, !dbg !2448

if.then2:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 0, metadata !2432, metadata !DIExpression()), !dbg !2449
  %1 = load i8, i8* %p, align 1, !dbg !2450
  %conv3 = zext i8 %1 to i32, !dbg !2450
  call void @llvm.dbg.value(metadata i32 %conv3, metadata !2431, metadata !DIExpression()), !dbg !2441
  br label %for.cond, !dbg !2452

for.cond:                                         ; preds = %for.body, %if.then2
  %utf8_len.0 = phi i64 [ 0, %if.then2 ], [ %inc, %for.body ], !dbg !2449
  %t.0 = phi i32 [ %conv3, %if.then2 ], [ %shl, %for.body ], !dbg !2453
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !2431, metadata !DIExpression()), !dbg !2441
  call void @llvm.dbg.value(metadata i64 %utf8_len.0, metadata !2432, metadata !DIExpression()), !dbg !2449
  %2 = trunc i32 %t.0 to i8, !dbg !2454
  %tobool5 = icmp slt i8 %2, 0, !dbg !2454
  br i1 %tobool5, label %for.body, label %for.end, !dbg !2454

for.body:                                         ; preds = %for.cond
  %inc = add i64 %utf8_len.0, 1, !dbg !2455
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2432, metadata !DIExpression()), !dbg !2449
  %shl = shl i32 %t.0, 1, !dbg !2457
  call void @llvm.dbg.value(metadata i32 %shl, metadata !2431, metadata !DIExpression()), !dbg !2441
  br label %for.cond, !dbg !2458, !llvm.loop !2459

for.end:                                          ; preds = %for.cond
  %utf8_len.0.lcssa = phi i64 [ %utf8_len.0, %for.cond ], !dbg !2449
  call void @llvm.dbg.value(metadata i64 %utf8_len.0.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %utf8_len.0.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 %utf8_len.0.lcssa, metadata !2432, metadata !DIExpression()), !dbg !2449
  %cmp6 = icmp ugt i64 %utf8_len.0.lcssa, %len, !dbg !2461
  %utf8_len.0.off = add i64 %utf8_len.0.lcssa, -2, !dbg !2463
  %3 = icmp ugt i64 %utf8_len.0.off, 4, !dbg !2463
  %4 = or i1 %3, %cmp6, !dbg !2463
  br i1 %4, label %if.then13, label %if.end14, !dbg !2463

if.then13:                                        ; preds = %for.end
  store i32 -1, i32* %value, align 4, !dbg !2464
  br label %cleanup74, !dbg !2466

if.end14:                                         ; preds = %for.end
  %5 = trunc i64 %utf8_len.0.lcssa to i32, !dbg !2467
  %sh_prom = sub i32 7, %5, !dbg !2467
  %notmask = shl nsw i32 -1, %sh_prom, !dbg !2468
  %sub17 = xor i32 %notmask, -1, !dbg !2468
  %and18 = and i32 %conv3, %sub17, !dbg !2469
  call void @llvm.dbg.value(metadata i32 %and18, metadata !2435, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i64 1, metadata !2436, metadata !DIExpression()), !dbg !2449
  br label %for.cond19, !dbg !2470

for.cond19:                                       ; preds = %for.inc31, %if.end14
  %ch.0 = phi i32 [ %and18, %if.end14 ], [ %ch.1, %for.inc31 ], !dbg !2471
  %i.0 = phi i64 [ 1, %if.end14 ], [ %inc32, %for.inc31 ], !dbg !2472
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2436, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %ch.0, metadata !2435, metadata !DIExpression()), !dbg !2449
  %cmp20 = icmp ult i64 %i.0, %utf8_len.0.lcssa, !dbg !2473
  br i1 %cmp20, label %for.body22, label %for.end33, !dbg !2474

for.body22:                                       ; preds = %for.cond19
  %arrayidx = getelementptr inbounds i8, i8* %p, i64 %i.0, !dbg !2475
  %6 = load i8, i8* %arrayidx, align 1, !dbg !2475
  %conv23 = zext i8 %6 to i32, !dbg !2475
  call void @llvm.dbg.value(metadata i32 %conv23, metadata !2437, metadata !DIExpression()), !dbg !2476
  %and24 = and i32 %conv23, 192, !dbg !2477
  %cmp25 = icmp eq i32 %and24, 128, !dbg !2479
  br i1 %cmp25, label %if.end28, label %if.then27, !dbg !2480

if.then27:                                        ; preds = %for.body22
  store i32 -1, i32* %value, align 4, !dbg !2481
  br label %cleanup, !dbg !2483

if.end28:                                         ; preds = %for.body22
  %shl29 = shl i32 %ch.0, 6, !dbg !2484
  %and30 = and i32 %conv23, 63, !dbg !2485
  %or = or i32 %shl29, %and30, !dbg !2486
  call void @llvm.dbg.value(metadata i32 %or, metadata !2435, metadata !DIExpression()), !dbg !2449
  br label %cleanup, !dbg !2487

cleanup:                                          ; preds = %if.end28, %if.then27
  %ch.1 = phi i32 [ %ch.0, %if.then27 ], [ %or, %if.end28 ], !dbg !2449
  %cleanup.dest.slot.0 = phi i1 [ false, %if.then27 ], [ true, %if.end28 ]
  call void @llvm.dbg.value(metadata i32 %ch.1, metadata !2435, metadata !DIExpression()), !dbg !2449
  br i1 %cleanup.dest.slot.0, label %for.inc31, label %cleanup74.loopexit

for.inc31:                                        ; preds = %cleanup
  %inc32 = add i64 %i.0, 1, !dbg !2488
  call void @llvm.dbg.value(metadata i64 %inc32, metadata !2436, metadata !DIExpression()), !dbg !2449
  br label %for.cond19, !dbg !2489, !llvm.loop !2490

for.end33:                                        ; preds = %for.cond19
  %ch.0.lcssa = phi i32 [ %ch.0, %for.cond19 ], !dbg !2471
  call void @llvm.dbg.value(metadata i32 %ch.0.lcssa, metadata !2435, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %ch.0.lcssa, metadata !2435, metadata !DIExpression()), !dbg !2449
  call void @llvm.dbg.value(metadata i32 %ch.0.lcssa, metadata !2435, metadata !DIExpression()), !dbg !2449
  %cmp34 = icmp ult i32 %ch.0.lcssa, 128, !dbg !2492
  %cmp36 = icmp ugt i64 %utf8_len.0.lcssa, 1, !dbg !2494
  %or.cond2 = and i1 %cmp34, %cmp36, !dbg !2495
  br i1 %or.cond2, label %if.then68, label %lor.lhs.false38, !dbg !2495

lor.lhs.false38:                                  ; preds = %for.end33
  %cmp39 = icmp ult i32 %ch.0.lcssa, 2048, !dbg !2496
  %cmp42 = icmp ugt i64 %utf8_len.0.lcssa, 2, !dbg !2497
  %or.cond3 = and i1 %cmp39, %cmp42, !dbg !2498
  br i1 %or.cond3, label %if.then68, label %lor.lhs.false44, !dbg !2498

lor.lhs.false44:                                  ; preds = %lor.lhs.false38
  %cmp45 = icmp ult i32 %ch.0.lcssa, 65536, !dbg !2499
  %cmp48 = icmp ugt i64 %utf8_len.0.lcssa, 3, !dbg !2500
  %or.cond4 = and i1 %cmp45, %cmp48, !dbg !2501
  br i1 %or.cond4, label %if.then68, label %lor.lhs.false50, !dbg !2501

lor.lhs.false50:                                  ; preds = %lor.lhs.false44
  %cmp51 = icmp ult i32 %ch.0.lcssa, 2097152, !dbg !2502
  %cmp54 = icmp ugt i64 %utf8_len.0.lcssa, 4, !dbg !2503
  %or.cond5 = and i1 %cmp51, %cmp54, !dbg !2504
  br i1 %or.cond5, label %if.then68, label %lor.lhs.false56, !dbg !2504

lor.lhs.false56:                                  ; preds = %lor.lhs.false50
  %cmp57 = icmp ult i32 %ch.0.lcssa, 67108864, !dbg !2505
  %cmp60 = icmp ugt i64 %utf8_len.0.lcssa, 5, !dbg !2506
  %or.cond6 = and i1 %cmp57, %cmp60, !dbg !2507
  br i1 %or.cond6, label %if.then68, label %lor.lhs.false62, !dbg !2507

lor.lhs.false62:                                  ; preds = %lor.lhs.false56
  %7 = and i32 %ch.0.lcssa, -2048, !dbg !2508
  %8 = icmp eq i32 %7, 55296, !dbg !2508
  br i1 %8, label %if.then68, label %if.end69, !dbg !2508

if.then68:                                        ; preds = %lor.lhs.false62, %lor.lhs.false56, %lor.lhs.false50, %lor.lhs.false44, %lor.lhs.false38, %for.end33
  store i32 -1, i32* %value, align 4, !dbg !2509
  br label %cleanup74, !dbg !2511

if.end69:                                         ; preds = %lor.lhs.false62
  store i32 %ch.0.lcssa, i32* %value, align 4, !dbg !2512
  br label %cleanup74, !dbg !2513

if.else:                                          ; preds = %if.end
  store i32 %conv, i32* %value, align 4, !dbg !2514
  br label %cleanup74, !dbg !2516

cleanup74.loopexit:                               ; preds = %cleanup
  br label %cleanup74, !dbg !2517

cleanup74:                                        ; preds = %cleanup74.loopexit, %if.then13, %if.then68, %if.end69, %if.else
  %retval.3 = phi i32 [ 1, %if.else ], [ 0, %if.then13 ], [ 0, %if.then68 ], [ %5, %if.end69 ], [ 0, %cleanup74.loopexit ], !dbg !2518
  ret i32 %retval.3, !dbg !2517
}

declare dso_local i8* @ggc_alloc_stat(i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @pp_wrap_text(%struct.pretty_print_info* %pp, i8* %start, i8* %end) unnamed_addr #5 !dbg !2519 {
entry:
  call void @llvm.dbg.value(metadata %struct.pretty_print_info* %pp, metadata !2521, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %start, metadata !2522, metadata !DIExpression()), !dbg !2528
  call void @llvm.dbg.value(metadata i8* %end, metadata !2523, metadata !DIExpression()), !dbg !2528
  %line_cutoff = getelementptr inbounds %struct.pretty_print_info, %struct.pretty_print_info* %pp, i64 0, i32 5, i32 1, !dbg !2529
  %0 = load i32, i32* %line_cutoff, align 4, !dbg !2529
  %cmp = icmp sgt i32 %0, 0, !dbg !2529
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !2524, metadata !DIExpression()), !dbg !2528
  br i1 %cmp, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !2530

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %while.cond, !dbg !2530

entry.split.us:                                   ; preds = %entry
  br label %while.cond.us, !dbg !2530

while.cond.us:                                    ; preds = %if.end41.us, %entry.split.us
  %start.addr.0.us = phi i8* [ %start, %entry.split.us ], [ %start.addr.2.us, %if.end41.us ]
  call void @llvm.dbg.value(metadata i8* %start.addr.0.us, metadata !2522, metadata !DIExpression()), !dbg !2528
  %cmp2.us = icmp eq i8* %start.addr.0.us, %end, !dbg !2531
  br i1 %cmp2.us, label %while.end42.us-lcssa.us, label %while.cond4.preheader.us, !dbg !2530

while.cond4.us:                                   ; preds = %while.cond4.preheader.us, %while.body13.us
  %p.0.us = phi i8* [ %incdec.ptr.us, %while.body13.us ], [ %start.addr.0.us, %while.cond4.preheader.us ], !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us, metadata !2525, metadata !DIExpression()), !dbg !2532
  %cmp5.us = icmp eq i8* %p.0.us, %end, !dbg !2533
  br i1 %cmp5.us, label %while.end.us, label %land.lhs.true.us, !dbg !2534

land.lhs.true.us:                                 ; preds = %while.cond4.us
  %1 = load i8, i8* %p.0.us, align 1, !dbg !2535
  %idxprom.us = zext i8 %1 to i64, !dbg !2535
  %arrayidx.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom.us, !dbg !2535
  %2 = load i16, i16* %arrayidx.us, align 2, !dbg !2535
  %3 = and i16 %2, 1, !dbg !2535
  %tobool.us = icmp ne i16 %3, 0, !dbg !2535
  %cmp11.us = icmp eq i8 %1, 10, !dbg !2536
  %or.cond = or i1 %tobool.us, %cmp11.us, !dbg !2537
  br i1 %or.cond, label %while.end.us, label %while.body13.us, !dbg !2537

while.body13.us:                                  ; preds = %land.lhs.true.us
  %incdec.ptr.us = getelementptr inbounds i8, i8* %p.0.us, i64 1, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %incdec.ptr.us, metadata !2525, metadata !DIExpression()), !dbg !2532
  br label %while.cond4.us, !dbg !2539, !llvm.loop !2540

while.end.us:                                     ; preds = %land.lhs.true.us, %while.cond4.us
  %p.0.us.lcssa = phi i8* [ %p.0.us, %land.lhs.true.us ], [ %p.0.us, %while.cond4.us ], !dbg !2532
  %cmp5.us.lcssa = phi i1 [ %cmp5.us, %land.lhs.true.us ], [ %cmp5.us, %while.cond4.us ], !dbg !2533
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  %sub.ptr.lhs.cast.us = ptrtoint i8* %p.0.us.lcssa to i64, !dbg !2542
  %sub.ptr.rhs.cast.us = ptrtoint i8* %start.addr.0.us to i64, !dbg !2542
  %sub.ptr.sub.us = sub i64 %sub.ptr.lhs.cast.us, %sub.ptr.rhs.cast.us, !dbg !2542
  %call.us = tail call i32 @pp_base_remaining_character_count_for_line(%struct.pretty_print_info* %pp) #8, !dbg !2544
  %conv17.us = sext i32 %call.us to i64, !dbg !2544
  %cmp18.us = icmp slt i64 %sub.ptr.sub.us, %conv17.us, !dbg !2545
  br i1 %cmp18.us, label %if.end.us, label %if.then.us, !dbg !2546

if.then.us:                                       ; preds = %while.end.us
  tail call void @pp_base_newline(%struct.pretty_print_info* %pp) #8, !dbg !2547
  br label %if.end.us, !dbg !2547

if.end.us:                                        ; preds = %if.then.us, %while.end.us
  tail call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %start.addr.0.us, i8* %p.0.us.lcssa) #8, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %p.0.us.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2528
  br i1 %cmp5.us.lcssa, label %if.end32.us, label %land.lhs.true22.us, !dbg !2549

land.lhs.true22.us:                               ; preds = %if.end.us
  %4 = load i8, i8* %p.0.us.lcssa, align 1, !dbg !2551
  %idxprom25.us = zext i8 %4 to i64, !dbg !2551
  %arrayidx26.us = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom25.us, !dbg !2551
  %5 = load i16, i16* %arrayidx26.us, align 2, !dbg !2551
  %6 = and i16 %5, 1, !dbg !2551
  %tobool29.us = icmp eq i16 %6, 0, !dbg !2551
  br i1 %tobool29.us, label %if.end32.us, label %if.then30.us, !dbg !2552

if.then30.us:                                     ; preds = %land.lhs.true22.us
  tail call void @pp_base_character(%struct.pretty_print_info* %pp, i32 32) #8, !dbg !2553
  %incdec.ptr31.us = getelementptr inbounds i8, i8* %p.0.us.lcssa, i64 1, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31.us, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %if.end32.us, !dbg !2556

if.end32.us:                                      ; preds = %if.then30.us, %land.lhs.true22.us, %if.end.us
  %start.addr.1.us = phi i8* [ %incdec.ptr31.us, %if.then30.us ], [ %p.0.us.lcssa, %land.lhs.true22.us ], [ %end, %if.end.us ], !dbg !2557
  call void @llvm.dbg.value(metadata i8* %start.addr.1.us, metadata !2522, metadata !DIExpression()), !dbg !2528
  %cmp33.us = icmp eq i8* %start.addr.1.us, %end, !dbg !2558
  br i1 %cmp33.us, label %if.end41.us, label %land.lhs.true35.us, !dbg !2560

land.lhs.true35.us:                               ; preds = %if.end32.us
  %7 = load i8, i8* %start.addr.1.us, align 1, !dbg !2561
  %cmp37.us = icmp eq i8 %7, 10, !dbg !2562
  br i1 %cmp37.us, label %if.then39.us, label %if.end41.us, !dbg !2563

if.then39.us:                                     ; preds = %land.lhs.true35.us
  tail call void @pp_base_newline(%struct.pretty_print_info* %pp) #8, !dbg !2564
  %incdec.ptr40.us = getelementptr inbounds i8, i8* %start.addr.1.us, i64 1, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %incdec.ptr40.us, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %if.end41.us, !dbg !2567

if.end41.us:                                      ; preds = %if.then39.us, %land.lhs.true35.us, %if.end32.us
  %start.addr.2.us = phi i8* [ %incdec.ptr40.us, %if.then39.us ], [ %start.addr.1.us, %land.lhs.true35.us ], [ %end, %if.end32.us ], !dbg !2557
  call void @llvm.dbg.value(metadata i8* %start.addr.2.us, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %while.cond.us, !dbg !2530, !llvm.loop !2568

while.cond4.preheader.us:                         ; preds = %while.cond.us
  br label %while.cond4.us, !dbg !2539

while.end42.us-lcssa.us:                          ; preds = %while.cond.us
  br label %while.end42, !dbg !2570

while.cond:                                       ; preds = %if.end41, %entry.entry.split_crit_edge
  %start.addr.0 = phi i8* [ %start, %entry.entry.split_crit_edge ], [ %start.addr.2, %if.end41 ]
  call void @llvm.dbg.value(metadata i8* %start.addr.0, metadata !2522, metadata !DIExpression()), !dbg !2528
  %cmp2 = icmp eq i8* %start.addr.0, %end, !dbg !2531
  br i1 %cmp2, label %while.end42.us-lcssa, label %while.cond4.preheader, !dbg !2530

while.cond4.preheader:                            ; preds = %while.cond
  br label %while.cond4, !dbg !2539

while.cond4:                                      ; preds = %while.cond4.preheader, %while.body13
  %p.0 = phi i8* [ %incdec.ptr, %while.body13 ], [ %start.addr.0, %while.cond4.preheader ], !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0, metadata !2525, metadata !DIExpression()), !dbg !2532
  %cmp5 = icmp eq i8* %p.0, %end, !dbg !2533
  br i1 %cmp5, label %while.end, label %land.lhs.true, !dbg !2534

land.lhs.true:                                    ; preds = %while.cond4
  %8 = load i8, i8* %p.0, align 1, !dbg !2535
  %idxprom = zext i8 %8 to i64, !dbg !2535
  %arrayidx = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom, !dbg !2535
  %9 = load i16, i16* %arrayidx, align 2, !dbg !2535
  %10 = and i16 %9, 1, !dbg !2535
  %tobool = icmp ne i16 %10, 0, !dbg !2535
  %cmp11 = icmp eq i8 %8, 10, !dbg !2536
  %or.cond4 = or i1 %tobool, %cmp11, !dbg !2537
  br i1 %or.cond4, label %while.end, label %while.body13, !dbg !2537

while.body13:                                     ; preds = %land.lhs.true
  %incdec.ptr = getelementptr inbounds i8, i8* %p.0, i64 1, !dbg !2538
  call void @llvm.dbg.value(metadata i8* %incdec.ptr, metadata !2525, metadata !DIExpression()), !dbg !2532
  br label %while.cond4, !dbg !2539, !llvm.loop !2540

while.end:                                        ; preds = %land.lhs.true, %while.cond4
  %p.0.lcssa = phi i8* [ %p.0, %land.lhs.true ], [ %p.0, %while.cond4 ], !dbg !2532
  %cmp5.lcssa = phi i1 [ %cmp5, %land.lhs.true ], [ %cmp5, %while.cond4 ], !dbg !2533
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2525, metadata !DIExpression()), !dbg !2532
  tail call void @pp_base_append_text(%struct.pretty_print_info* %pp, i8* %start.addr.0, i8* %p.0.lcssa) #8, !dbg !2548
  call void @llvm.dbg.value(metadata i8* %p.0.lcssa, metadata !2522, metadata !DIExpression()), !dbg !2528
  br i1 %cmp5.lcssa, label %if.end32, label %land.lhs.true22, !dbg !2549

land.lhs.true22:                                  ; preds = %while.end
  %11 = load i8, i8* %p.0.lcssa, align 1, !dbg !2551
  %idxprom25 = zext i8 %11 to i64, !dbg !2551
  %arrayidx26 = getelementptr inbounds [256 x i16], [256 x i16]* @_sch_istable, i64 0, i64 %idxprom25, !dbg !2551
  %12 = load i16, i16* %arrayidx26, align 2, !dbg !2551
  %13 = and i16 %12, 1, !dbg !2551
  %tobool29 = icmp eq i16 %13, 0, !dbg !2551
  br i1 %tobool29, label %if.end32, label %if.then30, !dbg !2552

if.then30:                                        ; preds = %land.lhs.true22
  tail call void @pp_base_character(%struct.pretty_print_info* %pp, i32 32) #8, !dbg !2553
  %incdec.ptr31 = getelementptr inbounds i8, i8* %p.0.lcssa, i64 1, !dbg !2555
  call void @llvm.dbg.value(metadata i8* %incdec.ptr31, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %if.end32, !dbg !2556

if.end32:                                         ; preds = %land.lhs.true22, %while.end, %if.then30
  %start.addr.1 = phi i8* [ %incdec.ptr31, %if.then30 ], [ %p.0.lcssa, %land.lhs.true22 ], [ %end, %while.end ], !dbg !2557
  call void @llvm.dbg.value(metadata i8* %start.addr.1, metadata !2522, metadata !DIExpression()), !dbg !2528
  %cmp33 = icmp eq i8* %start.addr.1, %end, !dbg !2558
  br i1 %cmp33, label %if.end41, label %land.lhs.true35, !dbg !2560

land.lhs.true35:                                  ; preds = %if.end32
  %14 = load i8, i8* %start.addr.1, align 1, !dbg !2561
  %cmp37 = icmp eq i8 %14, 10, !dbg !2562
  br i1 %cmp37, label %if.then39, label %if.end41, !dbg !2563

if.then39:                                        ; preds = %land.lhs.true35
  tail call void @pp_base_newline(%struct.pretty_print_info* %pp) #8, !dbg !2564
  %incdec.ptr40 = getelementptr inbounds i8, i8* %start.addr.1, i64 1, !dbg !2566
  call void @llvm.dbg.value(metadata i8* %incdec.ptr40, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %if.end41, !dbg !2567

if.end41:                                         ; preds = %if.end32, %if.then39, %land.lhs.true35
  %start.addr.2 = phi i8* [ %incdec.ptr40, %if.then39 ], [ %start.addr.1, %land.lhs.true35 ], [ %end, %if.end32 ], !dbg !2557
  call void @llvm.dbg.value(metadata i8* %start.addr.2, metadata !2522, metadata !DIExpression()), !dbg !2528
  br label %while.cond, !dbg !2530, !llvm.loop !2568

while.end42.us-lcssa:                             ; preds = %while.cond
  br label %while.end42, !dbg !2570

while.end42:                                      ; preds = %while.end42.us-lcssa.us, %while.end42.us-lcssa
  ret void, !dbg !2570
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
attributes #8 = { nobuiltin }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!376, !377, !378}
!llvm.ident = !{!379}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !242, nameTableKind: None)
!1 = !DIFile(filename: "pretty-print.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !10, !15, !34, !41, !48}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 104, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./pretty-print.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9}
!7 = !DIEnumerator(name: "pp_none", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "pp_before", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "pp_after", value: 2, isUnsigned: true)
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 46, baseType: !5, size: 32, elements: !11)
!11 = !{!12, !13, !14}
!12 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_ONCE", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_NEVER", value: 1, isUnsigned: true)
!14 = !DIEnumerator(name: "DIAGNOSTICS_SHOW_PREFIX_EVERY_LINE", value: 2, isUnsigned: true)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !16, line: 280, baseType: !5, size: 32, elements: !17)
!16 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!18 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!19 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!20 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!21 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!22 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!23 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!24 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!25 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!26 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!27 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!28 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!29 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!30 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!31 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!32 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!33 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !16, line: 1817, baseType: !5, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40}
!36 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!40 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !16, line: 1805, baseType: !5, size: 32, elements: !42)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!44 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!45 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!46 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!47 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !16, line: 39, baseType: !5, size: 32, elements: !49)
!49 = !{!50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241}
!50 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!51 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!52 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!53 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!54 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!55 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!56 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!57 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!58 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!59 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!60 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!61 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!62 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!63 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!64 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!65 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!66 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!67 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!68 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!69 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!70 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!71 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!72 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!73 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!74 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!75 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!76 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!77 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!78 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!79 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!80 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!81 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!82 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!83 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!84 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!85 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!86 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!87 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!88 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!89 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!90 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!91 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!92 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!93 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!94 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!95 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!96 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!97 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!98 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!99 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!100 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!101 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!102 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!103 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!104 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!105 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!106 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!107 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!108 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!109 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!110 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!111 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!112 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!113 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!114 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!115 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!116 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!117 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!118 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!119 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!120 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!121 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!122 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!123 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!124 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!125 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!126 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!127 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!128 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!129 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!130 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!131 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!132 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!133 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!134 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!135 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!136 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!137 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!138 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!139 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!140 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!141 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!142 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!143 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!144 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!145 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!146 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!147 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!148 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!149 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!150 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!151 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!152 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!153 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!154 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!155 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!156 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!157 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!158 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!159 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!160 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!161 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!162 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!163 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!164 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!165 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!166 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!167 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!168 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!169 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!170 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!171 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!172 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!173 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!174 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!175 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!176 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!177 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!178 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!179 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!180 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!181 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!182 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!183 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!184 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!185 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!186 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!187 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!188 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!189 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!190 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!191 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!192 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!193 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!194 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!195 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!196 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!197 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!198 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!199 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!200 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!201 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!202 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!203 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!204 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!205 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!206 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!207 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!208 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!209 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!210 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!211 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!212 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!213 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!214 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!215 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!216 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!217 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!218 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!219 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!220 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!221 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!222 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!223 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!224 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!225 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!226 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!227 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!228 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!229 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!230 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!231 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!232 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!233 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!234 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!235 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!236 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!237 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!238 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!239 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!240 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!241 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!242 = !{!243, !244, !245, !246, !249, !250, !252, !247, !260, !261, !48, !262, !264, !266, !368, !371, !374, !5}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!245 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_info", file: !4, line: 58, size: 3904, elements: !254)
!254 = !{!255, !256}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !253, file: !4, line: 61, baseType: !252, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !253, file: !4, line: 69, baseType: !257, size: 3840, offset: 64)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 3840, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 60)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !263, line: 44, baseType: !5)
!263 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !265, line: 35, baseType: !261)
!265 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_typedef, name: "output_buffer", file: !4, line: 99, baseType: !268)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 74, size: 2688, elements: !269)
!269 = !{!270, !302, !303, !305, !306, !363, !364}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "formatted_obstack", scope: !268, file: !4, line: 77, baseType: !271, size: 704)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !272, line: 164, size: 704, elements: !273)
!272 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!273 = !{!274, !275, !285, !286, !287, !288, !289, !290, !294, !298, !299, !300, !301}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !271, file: !272, line: 166, baseType: !261, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !271, file: !272, line: 167, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !272, line: 157, size: 192, elements: !278)
!278 = !{!279, !280, !281}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !277, file: !272, line: 159, baseType: !247, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !277, file: !272, line: 160, baseType: !276, size: 64, offset: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !277, file: !272, line: 161, baseType: !282, size: 32, offset: 128)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 32, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 4)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !271, file: !272, line: 168, baseType: !247, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !271, file: !272, line: 169, baseType: !247, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !271, file: !272, line: 170, baseType: !247, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !271, file: !272, line: 171, baseType: !261, size: 64, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !271, file: !272, line: 172, baseType: !245, size: 32, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !271, file: !272, line: 176, baseType: !291, size: 64, offset: 448)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!276, !249, !261}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !271, file: !272, line: 177, baseType: !295, size: 64, offset: 512)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DISubroutineType(types: !297)
!297 = !{null, !249, !276}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !271, file: !272, line: 178, baseType: !249, size: 64, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !271, file: !272, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !271, file: !272, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !271, file: !272, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_obstack", scope: !268, file: !4, line: 81, baseType: !271, size: 704, offset: 704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !268, file: !4, line: 85, baseType: !304, size: 64, offset: 1408)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "cur_chunk_array", scope: !268, file: !4, line: 88, baseType: !252, size: 64, offset: 1472)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !268, file: !4, line: 91, baseType: !307, size: 64, offset: 1536)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !309, line: 7, baseType: !310)
!309 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !311, line: 49, size: 1728, elements: !312)
!311 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!312 = !{!313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !328, !330, !331, !332, !335, !336, !338, !342, !345, !347, !350, !353, !354, !355, !358, !359}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !310, file: !311, line: 51, baseType: !245, size: 32)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !310, file: !311, line: 54, baseType: !247, size: 64, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !310, file: !311, line: 55, baseType: !247, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !310, file: !311, line: 56, baseType: !247, size: 64, offset: 192)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !310, file: !311, line: 57, baseType: !247, size: 64, offset: 256)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !310, file: !311, line: 58, baseType: !247, size: 64, offset: 320)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !310, file: !311, line: 59, baseType: !247, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !310, file: !311, line: 60, baseType: !247, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !310, file: !311, line: 61, baseType: !247, size: 64, offset: 512)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !310, file: !311, line: 64, baseType: !247, size: 64, offset: 576)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !310, file: !311, line: 65, baseType: !247, size: 64, offset: 640)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !310, file: !311, line: 66, baseType: !247, size: 64, offset: 704)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !310, file: !311, line: 68, baseType: !326, size: 64, offset: 768)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !311, line: 36, flags: DIFlagFwdDecl)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !310, file: !311, line: 70, baseType: !329, size: 64, offset: 832)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !310, file: !311, line: 72, baseType: !245, size: 32, offset: 896)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !310, file: !311, line: 73, baseType: !245, size: 32, offset: 928)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !310, file: !311, line: 74, baseType: !333, size: 64, offset: 960)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !334, line: 152, baseType: !261)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !310, file: !311, line: 77, baseType: !260, size: 16, offset: 1024)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !310, file: !311, line: 78, baseType: !337, size: 8, offset: 1040)
!337 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !310, file: !311, line: 79, baseType: !339, size: 8, offset: 1048)
!339 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 8, elements: !340)
!340 = !{!341}
!341 = !DISubrange(count: 1)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !310, file: !311, line: 81, baseType: !343, size: 64, offset: 1088)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !311, line: 43, baseType: null)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !310, file: !311, line: 89, baseType: !346, size: 64, offset: 1152)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !334, line: 153, baseType: !261)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !310, file: !311, line: 91, baseType: !348, size: 64, offset: 1216)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !311, line: 37, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !310, file: !311, line: 92, baseType: !351, size: 64, offset: 1280)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !311, line: 38, flags: DIFlagFwdDecl)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !310, file: !311, line: 93, baseType: !329, size: 64, offset: 1344)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !310, file: !311, line: 94, baseType: !249, size: 64, offset: 1408)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !310, file: !311, line: 95, baseType: !356, size: 64, offset: 1472)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !265, line: 46, baseType: !357)
!357 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !310, file: !311, line: 96, baseType: !245, size: 32, offset: 1536)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !310, file: !311, line: 98, baseType: !360, size: 160, offset: 1568)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 160, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 20)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "line_length", scope: !268, file: !4, line: 94, baseType: !245, size: 32, offset: 1600)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "digit_buffer", scope: !268, file: !4, line: 98, baseType: !365, size: 1024, offset: 1632)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 1024, elements: !366)
!366 = !{!367}
!367 = !DISubrange(count: 128)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!249, !261}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !249}
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!376 = !{i32 2, !"Dwarf Version", i32 4}
!377 = !{i32 2, !"Debug Info Version", i32 3}
!378 = !{i32 1, !"wchar_size", i32 4}
!379 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!380 = distinct !DISubprogram(name: "vprintf", scope: !381, file: !381, line: 39, type: !382, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !392)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!382 = !DISubroutineType(types: !383)
!383 = !{!245, !384, !385}
!384 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !250)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !387)
!387 = !{!388, !389, !390, !391}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !386, file: !1, baseType: !5, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !386, file: !1, baseType: !5, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !386, file: !1, baseType: !249, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !386, file: !1, baseType: !249, size: 64, offset: 128)
!392 = !{!393, !394}
!393 = !DILocalVariable(name: "__fmt", arg: 1, scope: !380, file: !381, line: 39, type: !384)
!394 = !DILocalVariable(name: "__arg", arg: 2, scope: !380, file: !381, line: 39, type: !385)
!395 = !DILocation(line: 0, scope: !380)
!396 = !DILocation(line: 41, column: 20, scope: !380)
!397 = !DILocation(line: 41, column: 10, scope: !380)
!398 = !DILocation(line: 41, column: 3, scope: !380)
!399 = distinct !DISubprogram(name: "getchar", scope: !381, file: !381, line: 47, type: !400, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!400 = !DISubroutineType(types: !401)
!401 = !{!245}
!402 = !{}
!403 = !DILocation(line: 49, column: 16, scope: !399)
!404 = !DILocation(line: 49, column: 10, scope: !399)
!405 = !DILocation(line: 49, column: 3, scope: !399)
!406 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !381, file: !381, line: 56, type: !407, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !409)
!407 = !DISubroutineType(types: !408)
!408 = !{!245, !307}
!409 = !{!410}
!410 = !DILocalVariable(name: "__fp", arg: 1, scope: !406, file: !381, line: 56, type: !307)
!411 = !DILocation(line: 0, scope: !406)
!412 = !DILocation(line: 58, column: 10, scope: !406)
!413 = !DILocation(line: 58, column: 3, scope: !406)
!414 = distinct !DISubprogram(name: "getc_unlocked", scope: !381, file: !381, line: 66, type: !407, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !415)
!415 = !{!416}
!416 = !DILocalVariable(name: "__fp", arg: 1, scope: !414, file: !381, line: 66, type: !307)
!417 = !DILocation(line: 0, scope: !414)
!418 = !DILocation(line: 68, column: 10, scope: !414)
!419 = !DILocation(line: 68, column: 3, scope: !414)
!420 = distinct !DISubprogram(name: "getchar_unlocked", scope: !381, file: !381, line: 73, type: !400, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !402)
!421 = !DILocation(line: 75, column: 10, scope: !420)
!422 = !DILocation(line: 75, column: 3, scope: !420)
!423 = distinct !DISubprogram(name: "putchar", scope: !381, file: !381, line: 82, type: !424, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !426)
!424 = !DISubroutineType(types: !425)
!425 = !{!245, !245}
!426 = !{!427}
!427 = !DILocalVariable(name: "__c", arg: 1, scope: !423, file: !381, line: 82, type: !245)
!428 = !DILocation(line: 0, scope: !423)
!429 = !DILocation(line: 84, column: 21, scope: !423)
!430 = !DILocation(line: 84, column: 10, scope: !423)
!431 = !DILocation(line: 84, column: 3, scope: !423)
!432 = distinct !DISubprogram(name: "fputc_unlocked", scope: !381, file: !381, line: 91, type: !433, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !435)
!433 = !DISubroutineType(types: !434)
!434 = !{!245, !245, !307}
!435 = !{!436, !437}
!436 = !DILocalVariable(name: "__c", arg: 1, scope: !432, file: !381, line: 91, type: !245)
!437 = !DILocalVariable(name: "__stream", arg: 2, scope: !432, file: !381, line: 91, type: !307)
!438 = !DILocation(line: 0, scope: !432)
!439 = !DILocation(line: 93, column: 10, scope: !432)
!440 = !DILocation(line: 93, column: 3, scope: !432)
!441 = distinct !DISubprogram(name: "putc_unlocked", scope: !381, file: !381, line: 101, type: !433, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !442)
!442 = !{!443, !444}
!443 = !DILocalVariable(name: "__c", arg: 1, scope: !441, file: !381, line: 101, type: !245)
!444 = !DILocalVariable(name: "__stream", arg: 2, scope: !441, file: !381, line: 101, type: !307)
!445 = !DILocation(line: 0, scope: !441)
!446 = !DILocation(line: 103, column: 10, scope: !441)
!447 = !DILocation(line: 103, column: 3, scope: !441)
!448 = distinct !DISubprogram(name: "putchar_unlocked", scope: !381, file: !381, line: 108, type: !424, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !449)
!449 = !{!450}
!450 = !DILocalVariable(name: "__c", arg: 1, scope: !448, file: !381, line: 108, type: !245)
!451 = !DILocation(line: 0, scope: !448)
!452 = !DILocation(line: 110, column: 10, scope: !448)
!453 = !DILocation(line: 110, column: 3, scope: !448)
!454 = distinct !DISubprogram(name: "getline", scope: !381, file: !381, line: 118, type: !455, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !459)
!455 = !DISubroutineType(types: !456)
!456 = !{!457, !246, !458, !307}
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !334, line: 193, baseType: !261)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!459 = !{!460, !461, !462}
!460 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !454, file: !381, line: 118, type: !246)
!461 = !DILocalVariable(name: "__n", arg: 2, scope: !454, file: !381, line: 118, type: !458)
!462 = !DILocalVariable(name: "__stream", arg: 3, scope: !454, file: !381, line: 118, type: !307)
!463 = !DILocation(line: 0, scope: !454)
!464 = !DILocation(line: 120, column: 10, scope: !454)
!465 = !DILocation(line: 120, column: 3, scope: !454)
!466 = distinct !DISubprogram(name: "feof_unlocked", scope: !381, file: !381, line: 128, type: !407, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !467)
!467 = !{!468}
!468 = !DILocalVariable(name: "__stream", arg: 1, scope: !466, file: !381, line: 128, type: !307)
!469 = !DILocation(line: 0, scope: !466)
!470 = !DILocation(line: 130, column: 10, scope: !466)
!471 = !DILocation(line: 130, column: 3, scope: !466)
!472 = distinct !DISubprogram(name: "ferror_unlocked", scope: !381, file: !381, line: 135, type: !407, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !473)
!473 = !{!474}
!474 = !DILocalVariable(name: "__stream", arg: 1, scope: !472, file: !381, line: 135, type: !307)
!475 = !DILocation(line: 0, scope: !472)
!476 = !DILocation(line: 137, column: 10, scope: !472)
!477 = !DILocation(line: 137, column: 3, scope: !472)
!478 = distinct !DISubprogram(name: "tolower", scope: !479, file: !479, line: 207, type: !424, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !480)
!479 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!480 = !{!481}
!481 = !DILocalVariable(name: "__c", arg: 1, scope: !478, file: !479, line: 207, type: !245)
!482 = !DILocation(line: 0, scope: !478)
!483 = !DILocation(line: 209, column: 22, scope: !478)
!484 = !DILocation(line: 209, column: 39, scope: !478)
!485 = !DILocation(line: 209, column: 38, scope: !478)
!486 = !DILocation(line: 209, column: 37, scope: !478)
!487 = !DILocation(line: 209, column: 10, scope: !478)
!488 = !DILocation(line: 209, column: 3, scope: !478)
!489 = distinct !DISubprogram(name: "toupper", scope: !479, file: !479, line: 213, type: !424, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !490)
!490 = !{!491}
!491 = !DILocalVariable(name: "__c", arg: 1, scope: !489, file: !479, line: 213, type: !245)
!492 = !DILocation(line: 0, scope: !489)
!493 = !DILocation(line: 215, column: 22, scope: !489)
!494 = !DILocation(line: 215, column: 39, scope: !489)
!495 = !DILocation(line: 215, column: 38, scope: !489)
!496 = !DILocation(line: 215, column: 37, scope: !489)
!497 = !DILocation(line: 215, column: 10, scope: !489)
!498 = !DILocation(line: 215, column: 3, scope: !489)
!499 = distinct !DISubprogram(name: "atoi", scope: !500, file: !500, line: 361, type: !501, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !503)
!500 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!501 = !DISubroutineType(types: !502)
!502 = !{!245, !250}
!503 = !{!504}
!504 = !DILocalVariable(name: "__nptr", arg: 1, scope: !499, file: !500, line: 361, type: !250)
!505 = !DILocation(line: 0, scope: !499)
!506 = !DILocation(line: 363, column: 16, scope: !499)
!507 = !DILocation(line: 363, column: 10, scope: !499)
!508 = !DILocation(line: 363, column: 3, scope: !499)
!509 = distinct !DISubprogram(name: "atol", scope: !500, file: !500, line: 366, type: !510, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!261, !250}
!512 = !{!513}
!513 = !DILocalVariable(name: "__nptr", arg: 1, scope: !509, file: !500, line: 366, type: !250)
!514 = !DILocation(line: 0, scope: !509)
!515 = !DILocation(line: 368, column: 10, scope: !509)
!516 = !DILocation(line: 368, column: 3, scope: !509)
!517 = distinct !DISubprogram(name: "atoll", scope: !500, file: !500, line: 373, type: !518, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !521)
!518 = !DISubroutineType(types: !519)
!519 = !{!520, !250}
!520 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!521 = !{!522}
!522 = !DILocalVariable(name: "__nptr", arg: 1, scope: !517, file: !500, line: 373, type: !250)
!523 = !DILocation(line: 0, scope: !517)
!524 = !DILocation(line: 375, column: 10, scope: !517)
!525 = !DILocation(line: 375, column: 3, scope: !517)
!526 = distinct !DISubprogram(name: "bsearch", scope: !527, file: !527, line: 20, type: !528, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !536)
!527 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!528 = !DISubroutineType(types: !529)
!529 = !{!249, !530, !530, !356, !356, !532}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !500, line: 808, baseType: !533)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!245, !530, !530}
!536 = !{!537, !538, !539, !540, !541, !542, !543, !544, !545, !546}
!537 = !DILocalVariable(name: "__key", arg: 1, scope: !526, file: !527, line: 20, type: !530)
!538 = !DILocalVariable(name: "__base", arg: 2, scope: !526, file: !527, line: 20, type: !530)
!539 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !526, file: !527, line: 20, type: !356)
!540 = !DILocalVariable(name: "__size", arg: 4, scope: !526, file: !527, line: 20, type: !356)
!541 = !DILocalVariable(name: "__compar", arg: 5, scope: !526, file: !527, line: 21, type: !532)
!542 = !DILocalVariable(name: "__l", scope: !526, file: !527, line: 23, type: !356)
!543 = !DILocalVariable(name: "__u", scope: !526, file: !527, line: 23, type: !356)
!544 = !DILocalVariable(name: "__idx", scope: !526, file: !527, line: 23, type: !356)
!545 = !DILocalVariable(name: "__p", scope: !526, file: !527, line: 24, type: !530)
!546 = !DILocalVariable(name: "__comparison", scope: !526, file: !527, line: 25, type: !245)
!547 = !DILocation(line: 0, scope: !526)
!548 = !DILocation(line: 29, column: 3, scope: !526)
!549 = !DILocation(line: 27, column: 7, scope: !526)
!550 = !DILocation(line: 29, column: 14, scope: !526)
!551 = !DILocation(line: 31, column: 20, scope: !552)
!552 = distinct !DILexicalBlock(scope: !526, file: !527, line: 30, column: 5)
!553 = !DILocation(line: 31, column: 27, scope: !552)
!554 = !DILocation(line: 32, column: 56, scope: !552)
!555 = !DILocation(line: 32, column: 47, scope: !552)
!556 = !DILocation(line: 33, column: 22, scope: !552)
!557 = !DILocation(line: 34, column: 24, scope: !558)
!558 = distinct !DILexicalBlock(scope: !552, file: !527, line: 34, column: 11)
!559 = !DILocation(line: 34, column: 11, scope: !552)
!560 = !DILocation(line: 36, column: 29, scope: !561)
!561 = distinct !DILexicalBlock(scope: !558, file: !527, line: 36, column: 16)
!562 = !DILocation(line: 36, column: 16, scope: !558)
!563 = !DILocation(line: 37, column: 14, scope: !561)
!564 = distinct !{!564, !548, !565}
!565 = !DILocation(line: 40, column: 5, scope: !526)
!566 = !DILocation(line: 43, column: 1, scope: !526)
!567 = distinct !DISubprogram(name: "atof", scope: !568, file: !568, line: 25, type: !569, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !572)
!568 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!569 = !DISubroutineType(types: !570)
!570 = !{!571, !250}
!571 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!572 = !{!573}
!573 = !DILocalVariable(name: "__nptr", arg: 1, scope: !567, file: !568, line: 25, type: !250)
!574 = !DILocation(line: 0, scope: !567)
!575 = !DILocation(line: 27, column: 10, scope: !567)
!576 = !DILocation(line: 27, column: 3, scope: !567)
!577 = distinct !DISubprogram(name: "strtoimax", scope: !578, file: !578, line: 324, type: !579, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !585)
!578 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!579 = !DISubroutineType(types: !580)
!580 = !{!581, !384, !584, !245}
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !582, line: 101, baseType: !583)
!582 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !334, line: 72, baseType: !261)
!584 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !246)
!585 = !{!586, !587, !588}
!586 = !DILocalVariable(name: "nptr", arg: 1, scope: !577, file: !578, line: 324, type: !384)
!587 = !DILocalVariable(name: "endptr", arg: 2, scope: !577, file: !578, line: 324, type: !584)
!588 = !DILocalVariable(name: "base", arg: 3, scope: !577, file: !578, line: 324, type: !245)
!589 = !DILocation(line: 0, scope: !577)
!590 = !DILocation(line: 327, column: 10, scope: !577)
!591 = !DILocation(line: 327, column: 3, scope: !577)
!592 = distinct !DISubprogram(name: "strtoumax", scope: !578, file: !578, line: 336, type: !593, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !597)
!593 = !DISubroutineType(types: !594)
!594 = !{!595, !384, !584, !245}
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !582, line: 102, baseType: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !334, line: 73, baseType: !357)
!597 = !{!598, !599, !600}
!598 = !DILocalVariable(name: "nptr", arg: 1, scope: !592, file: !578, line: 336, type: !384)
!599 = !DILocalVariable(name: "endptr", arg: 2, scope: !592, file: !578, line: 336, type: !584)
!600 = !DILocalVariable(name: "base", arg: 3, scope: !592, file: !578, line: 336, type: !245)
!601 = !DILocation(line: 0, scope: !592)
!602 = !DILocation(line: 339, column: 10, scope: !592)
!603 = !DILocation(line: 339, column: 3, scope: !592)
!604 = distinct !DISubprogram(name: "wcstoimax", scope: !578, file: !578, line: 348, type: !605, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !614)
!605 = !DISubroutineType(types: !606)
!606 = !{!581, !607, !611, !245}
!607 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !608)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !578, line: 34, baseType: !245)
!611 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !612)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!614 = !{!615, !616, !617}
!615 = !DILocalVariable(name: "nptr", arg: 1, scope: !604, file: !578, line: 348, type: !607)
!616 = !DILocalVariable(name: "endptr", arg: 2, scope: !604, file: !578, line: 348, type: !611)
!617 = !DILocalVariable(name: "base", arg: 3, scope: !604, file: !578, line: 348, type: !245)
!618 = !DILocation(line: 0, scope: !604)
!619 = !DILocation(line: 351, column: 10, scope: !604)
!620 = !DILocation(line: 351, column: 3, scope: !604)
!621 = distinct !DISubprogram(name: "wcstoumax", scope: !578, file: !578, line: 362, type: !622, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !624)
!622 = !DISubroutineType(types: !623)
!623 = !{!595, !607, !611, !245}
!624 = !{!625, !626, !627}
!625 = !DILocalVariable(name: "nptr", arg: 1, scope: !621, file: !578, line: 362, type: !607)
!626 = !DILocalVariable(name: "endptr", arg: 2, scope: !621, file: !578, line: 362, type: !611)
!627 = !DILocalVariable(name: "base", arg: 3, scope: !621, file: !578, line: 362, type: !245)
!628 = !DILocation(line: 0, scope: !621)
!629 = !DILocation(line: 365, column: 10, scope: !621)
!630 = !DILocation(line: 365, column: 3, scope: !621)
!631 = distinct !DISubprogram(name: "stat", scope: !632, file: !632, line: 453, type: !633, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !672)
!632 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!633 = !DISubroutineType(types: !634)
!634 = !{!245, !250, !635}
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !637, line: 46, size: 1152, elements: !638)
!637 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!638 = !{!639, !641, !643, !645, !647, !649, !651, !652, !653, !654, !656, !658, !666, !667, !668}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !636, file: !637, line: 48, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !334, line: 145, baseType: !357)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !636, file: !637, line: 53, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !334, line: 148, baseType: !357)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !636, file: !637, line: 61, baseType: !644, size: 64, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !334, line: 151, baseType: !357)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !636, file: !637, line: 62, baseType: !646, size: 32, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !334, line: 150, baseType: !5)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !636, file: !637, line: 64, baseType: !648, size: 32, offset: 224)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !334, line: 146, baseType: !5)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !636, file: !637, line: 65, baseType: !650, size: 32, offset: 256)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !334, line: 147, baseType: !5)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !636, file: !637, line: 67, baseType: !245, size: 32, offset: 288)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !636, file: !637, line: 69, baseType: !640, size: 64, offset: 320)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !636, file: !637, line: 74, baseType: !333, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !636, file: !637, line: 78, baseType: !655, size: 64, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !334, line: 174, baseType: !261)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !636, file: !637, line: 80, baseType: !657, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !334, line: 179, baseType: !261)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !636, file: !637, line: 91, baseType: !659, size: 128, offset: 576)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !660, line: 10, size: 128, elements: !661)
!660 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!661 = !{!662, !664}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !659, file: !660, line: 12, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !334, line: 160, baseType: !261)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !659, file: !660, line: 16, baseType: !665, size: 64, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !334, line: 196, baseType: !261)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !636, file: !637, line: 92, baseType: !659, size: 128, offset: 704)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !636, file: !637, line: 93, baseType: !659, size: 128, offset: 832)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !636, file: !637, line: 106, baseType: !669, size: 192, offset: 960)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !665, size: 192, elements: !670)
!670 = !{!671}
!671 = !DISubrange(count: 3)
!672 = !{!673, !674}
!673 = !DILocalVariable(name: "__path", arg: 1, scope: !631, file: !632, line: 453, type: !250)
!674 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !631, file: !632, line: 453, type: !635)
!675 = !DILocation(line: 0, scope: !631)
!676 = !DILocation(line: 455, column: 10, scope: !631)
!677 = !DILocation(line: 455, column: 3, scope: !631)
!678 = distinct !DISubprogram(name: "lstat", scope: !632, file: !632, line: 460, type: !633, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !679)
!679 = !{!680, !681}
!680 = !DILocalVariable(name: "__path", arg: 1, scope: !678, file: !632, line: 460, type: !250)
!681 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !678, file: !632, line: 460, type: !635)
!682 = !DILocation(line: 0, scope: !678)
!683 = !DILocation(line: 462, column: 10, scope: !678)
!684 = !DILocation(line: 462, column: 3, scope: !678)
!685 = distinct !DISubprogram(name: "fstat", scope: !632, file: !632, line: 467, type: !686, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !688)
!686 = !DISubroutineType(types: !687)
!687 = !{!245, !245, !635}
!688 = !{!689, !690}
!689 = !DILocalVariable(name: "__fd", arg: 1, scope: !685, file: !632, line: 467, type: !245)
!690 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !685, file: !632, line: 467, type: !635)
!691 = !DILocation(line: 0, scope: !685)
!692 = !DILocation(line: 469, column: 10, scope: !685)
!693 = !DILocation(line: 469, column: 3, scope: !685)
!694 = distinct !DISubprogram(name: "fstatat", scope: !632, file: !632, line: 474, type: !695, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !697)
!695 = !DISubroutineType(types: !696)
!696 = !{!245, !245, !250, !635, !245}
!697 = !{!698, !699, !700, !701}
!698 = !DILocalVariable(name: "__fd", arg: 1, scope: !694, file: !632, line: 474, type: !245)
!699 = !DILocalVariable(name: "__filename", arg: 2, scope: !694, file: !632, line: 474, type: !250)
!700 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !694, file: !632, line: 474, type: !635)
!701 = !DILocalVariable(name: "__flag", arg: 4, scope: !694, file: !632, line: 474, type: !245)
!702 = !DILocation(line: 0, scope: !694)
!703 = !DILocation(line: 477, column: 10, scope: !694)
!704 = !DILocation(line: 477, column: 3, scope: !694)
!705 = distinct !DISubprogram(name: "mknod", scope: !632, file: !632, line: 483, type: !706, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !708)
!706 = !DISubroutineType(types: !707)
!707 = !{!245, !250, !646, !640}
!708 = !{!709, !710, !711}
!709 = !DILocalVariable(name: "__path", arg: 1, scope: !705, file: !632, line: 483, type: !250)
!710 = !DILocalVariable(name: "__mode", arg: 2, scope: !705, file: !632, line: 483, type: !646)
!711 = !DILocalVariable(name: "__dev", arg: 3, scope: !705, file: !632, line: 483, type: !640)
!712 = !DILocation(line: 0, scope: !705)
!713 = !DILocation(line: 485, column: 10, scope: !705)
!714 = !DILocation(line: 485, column: 3, scope: !705)
!715 = distinct !DISubprogram(name: "mknodat", scope: !632, file: !632, line: 491, type: !716, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !718)
!716 = !DISubroutineType(types: !717)
!717 = !{!245, !245, !250, !646, !640}
!718 = !{!719, !720, !721, !722}
!719 = !DILocalVariable(name: "__fd", arg: 1, scope: !715, file: !632, line: 491, type: !245)
!720 = !DILocalVariable(name: "__path", arg: 2, scope: !715, file: !632, line: 491, type: !250)
!721 = !DILocalVariable(name: "__mode", arg: 3, scope: !715, file: !632, line: 491, type: !646)
!722 = !DILocalVariable(name: "__dev", arg: 4, scope: !715, file: !632, line: 491, type: !640)
!723 = !DILocation(line: 0, scope: !715)
!724 = !DILocation(line: 494, column: 10, scope: !715)
!725 = !DILocation(line: 494, column: 3, scope: !715)
!726 = distinct !DISubprogram(name: "stat64", scope: !632, file: !632, line: 502, type: !727, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !749)
!727 = !DISubroutineType(types: !728)
!728 = !{!245, !250, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !637, line: 119, size: 1152, elements: !731)
!731 = !{!732, !733, !735, !736, !737, !738, !739, !740, !741, !742, !743, !745, !746, !747, !748}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !730, file: !637, line: 121, baseType: !640, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !730, file: !637, line: 123, baseType: !734, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !334, line: 149, baseType: !357)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !730, file: !637, line: 124, baseType: !644, size: 64, offset: 128)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !730, file: !637, line: 125, baseType: !646, size: 32, offset: 192)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !730, file: !637, line: 132, baseType: !648, size: 32, offset: 224)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !730, file: !637, line: 133, baseType: !650, size: 32, offset: 256)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !730, file: !637, line: 135, baseType: !245, size: 32, offset: 288)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !730, file: !637, line: 136, baseType: !640, size: 64, offset: 320)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !730, file: !637, line: 137, baseType: !333, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !730, file: !637, line: 143, baseType: !655, size: 64, offset: 448)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !730, file: !637, line: 144, baseType: !744, size: 64, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !334, line: 180, baseType: !261)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !730, file: !637, line: 152, baseType: !659, size: 128, offset: 576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !730, file: !637, line: 153, baseType: !659, size: 128, offset: 704)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !730, file: !637, line: 154, baseType: !659, size: 128, offset: 832)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !730, file: !637, line: 164, baseType: !669, size: 192, offset: 960)
!749 = !{!750, !751}
!750 = !DILocalVariable(name: "__path", arg: 1, scope: !726, file: !632, line: 502, type: !250)
!751 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !726, file: !632, line: 502, type: !729)
!752 = !DILocation(line: 0, scope: !726)
!753 = !DILocation(line: 504, column: 10, scope: !726)
!754 = !DILocation(line: 504, column: 3, scope: !726)
!755 = distinct !DISubprogram(name: "lstat64", scope: !632, file: !632, line: 509, type: !727, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !756)
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "__path", arg: 1, scope: !755, file: !632, line: 509, type: !250)
!758 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !755, file: !632, line: 509, type: !729)
!759 = !DILocation(line: 0, scope: !755)
!760 = !DILocation(line: 511, column: 10, scope: !755)
!761 = !DILocation(line: 511, column: 3, scope: !755)
!762 = distinct !DISubprogram(name: "fstat64", scope: !632, file: !632, line: 516, type: !763, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!245, !245, !729}
!765 = !{!766, !767}
!766 = !DILocalVariable(name: "__fd", arg: 1, scope: !762, file: !632, line: 516, type: !245)
!767 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !762, file: !632, line: 516, type: !729)
!768 = !DILocation(line: 0, scope: !762)
!769 = !DILocation(line: 518, column: 10, scope: !762)
!770 = !DILocation(line: 518, column: 3, scope: !762)
!771 = distinct !DISubprogram(name: "fstatat64", scope: !632, file: !632, line: 523, type: !772, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!245, !245, !250, !729, !245}
!774 = !{!775, !776, !777, !778}
!775 = !DILocalVariable(name: "__fd", arg: 1, scope: !771, file: !632, line: 523, type: !245)
!776 = !DILocalVariable(name: "__filename", arg: 2, scope: !771, file: !632, line: 523, type: !250)
!777 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !771, file: !632, line: 523, type: !729)
!778 = !DILocalVariable(name: "__flag", arg: 4, scope: !771, file: !632, line: 523, type: !245)
!779 = !DILocation(line: 0, scope: !771)
!780 = !DILocation(line: 526, column: 10, scope: !771)
!781 = !DILocation(line: 526, column: 3, scope: !771)
!782 = distinct !DISubprogram(name: "pp_write_text_to_stream", scope: !1, file: !1, line: 101, type: !783, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1457)
!783 = !DISubroutineType(types: !784)
!784 = !{null, !785}
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "pretty_printer", file: !4, line: 134, baseType: !787)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pretty_print_info", file: !4, line: 158, size: 448, elements: !788)
!788 = !{!789, !790, !791, !793, !794, !795, !802, !1454, !1455, !1456}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !787, file: !4, line: 161, baseType: !266, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !787, file: !4, line: 164, baseType: !250, size: 64, offset: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !787, file: !4, line: 167, baseType: !792, size: 32, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_padding", file: !4, line: 107, baseType: !3)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "maximum_length", scope: !787, file: !4, line: 171, baseType: !245, size: 32, offset: 160)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "indent_skip", scope: !787, file: !4, line: 174, baseType: !245, size: 32, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "wrapping", scope: !787, file: !4, line: 177, baseType: !796, size: 64, offset: 224)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "pp_wrapping_mode_t", file: !4, line: 119, baseType: !797)
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 111, size: 64, elements: !798)
!798 = !{!799, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "rule", scope: !797, file: !4, line: 114, baseType: !800, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "diagnostic_prefixing_rule_t", file: !4, line: 51, baseType: !10)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "line_cutoff", scope: !797, file: !4, line: 118, baseType: !245, size: 32, offset: 32)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "format_decoder", scope: !787, file: !4, line: 187, baseType: !803, size: 64, offset: 320)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "printer_fn", file: !4, line: 135, baseType: !804)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DISubroutineType(types: !806)
!806 = !{!244, !785, !807, !250, !245, !244, !244, !244}
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "text_info", file: !4, line: 39, baseType: !809)
!809 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !4, line: 32, size: 320, elements: !810)
!810 = !{!811, !812, !820, !821, !825}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "format_spec", scope: !809, file: !4, line: 34, baseType: !250, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "args_ptr", scope: !809, file: !4, line: 35, baseType: !813, size: 64, offset: 64)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !815, line: 52, baseType: !816)
!815 = !DIFile(filename: "/usr/include/stdio.h", directory: "")
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !817, line: 32, baseType: !818)
!817 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stdarg.h", directory: "")
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1, line: 527, baseType: !819)
!819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !386, size: 192, elements: !340)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "err_no", scope: !809, file: !4, line: 36, baseType: !245, size: 32, offset: 128)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !809, file: !4, line: 37, baseType: !822, size: 64, offset: 192)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !824, line: 58, baseType: !262)
!824 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!825 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !809, file: !4, line: 38, baseType: !826, size: 64, offset: 256)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !828, line: 56, baseType: !829)
!828 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !16, line: 3371, size: 1792, elements: !831)
!831 = !{!832, !865, !871, !882, !889, !896, !901, !907, !913, !924, !932, !970, !978, !1006, !1014, !1015, !1020, !1029, !1035, !1040, !1044, !1048, !1077, !1126, !1132, !1139, !1146, !1171, !1196, !1213, !1225, !1247, !1265, !1436}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !830, file: !16, line: 3372, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !16, line: 360, size: 64, elements: !834)
!834 = !{!835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !833, file: !16, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !833, file: !16, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !833, file: !16, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !833, file: !16, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !833, file: !16, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !833, file: !16, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !833, file: !16, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !833, file: !16, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !833, file: !16, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !833, file: !16, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !833, file: !16, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !833, file: !16, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !833, file: !16, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !833, file: !16, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !833, file: !16, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !833, file: !16, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !833, file: !16, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !833, file: !16, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !833, file: !16, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !833, file: !16, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !833, file: !16, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !833, file: !16, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !833, file: !16, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !833, file: !16, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !833, file: !16, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !833, file: !16, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !833, file: !16, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !833, file: !16, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !833, file: !16, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !833, file: !16, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !830, file: !16, line: 3373, baseType: !866, size: 192)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !16, line: 402, size: 192, elements: !867)
!867 = !{!868, !869, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !866, file: !16, line: 403, baseType: !833, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !866, file: !16, line: 404, baseType: !827, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !866, file: !16, line: 405, baseType: !827, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !830, file: !16, line: 3374, baseType: !872, size: 320)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !16, line: 1384, size: 320, elements: !873)
!873 = !{!874, !875}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !872, file: !16, line: 1385, baseType: !866, size: 192)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !872, file: !16, line: 1386, baseType: !876, size: 128, offset: 192)
!876 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !877, line: 58, baseType: !878)
!877 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !877, line: 54, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !878, file: !877, line: 56, baseType: !357, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !878, file: !877, line: 57, baseType: !261, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !830, file: !16, line: 3375, baseType: !883, size: 256)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !16, line: 1397, size: 256, elements: !884)
!884 = !{!885, !886}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !883, file: !16, line: 1398, baseType: !866, size: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !883, file: !16, line: 1399, baseType: !887, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !16, line: 1392, flags: DIFlagFwdDecl)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !830, file: !16, line: 3376, baseType: !890, size: 256)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !16, line: 1408, size: 256, elements: !891)
!891 = !{!892, !893}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !890, file: !16, line: 1409, baseType: !866, size: 192)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !890, file: !16, line: 1410, baseType: !894, size: 64, offset: 192)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !16, line: 1403, flags: DIFlagFwdDecl)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !830, file: !16, line: 3377, baseType: !897, size: 256)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !16, line: 1437, size: 256, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !897, file: !16, line: 1438, baseType: !866, size: 192)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !897, file: !16, line: 1439, baseType: !827, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !830, file: !16, line: 3378, baseType: !902, size: 256)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !16, line: 1418, size: 256, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !16, line: 1419, baseType: !866, size: 192)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !902, file: !16, line: 1420, baseType: !245, size: 32, offset: 192)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !902, file: !16, line: 1421, baseType: !339, size: 8, offset: 224)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !830, file: !16, line: 3379, baseType: !908, size: 320)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !16, line: 1428, size: 320, elements: !909)
!909 = !{!910, !911, !912}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !908, file: !16, line: 1429, baseType: !866, size: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !908, file: !16, line: 1430, baseType: !827, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !908, file: !16, line: 1431, baseType: !827, size: 64, offset: 256)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !830, file: !16, line: 3380, baseType: !914, size: 320)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !16, line: 1460, size: 320, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !914, file: !16, line: 1461, baseType: !866, size: 192)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !914, file: !16, line: 1462, baseType: !918, size: 128, offset: 192)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !919, line: 31, size: 128, elements: !920)
!919 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!920 = !{!921, !922, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !918, file: !919, line: 32, baseType: !374, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !918, file: !919, line: 33, baseType: !5, size: 32, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !918, file: !919, line: 34, baseType: !5, size: 32, offset: 96)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !830, file: !16, line: 3381, baseType: !925, size: 384)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !16, line: 2507, size: 384, elements: !926)
!926 = !{!927, !928, !929, !930, !931}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !925, file: !16, line: 2508, baseType: !866, size: 192)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !925, file: !16, line: 2509, baseType: !823, size: 32, offset: 192)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !925, file: !16, line: 2510, baseType: !5, size: 32, offset: 224)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !925, file: !16, line: 2511, baseType: !827, size: 64, offset: 256)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !925, file: !16, line: 2512, baseType: !827, size: 64, offset: 320)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !830, file: !16, line: 3382, baseType: !933, size: 896)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !16, line: 2652, size: 896, elements: !934)
!934 = !{!935, !936, !937, !938, !939, !940, !941, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !952, !953, !954, !955, !956, !957, !958, !959, !960, !961, !962, !963, !964, !965, !966, !967}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !933, file: !16, line: 2653, baseType: !925, size: 384)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !933, file: !16, line: 2654, baseType: !827, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !933, file: !16, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !933, file: !16, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !933, file: !16, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !933, file: !16, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !933, file: !16, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !933, file: !16, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !933, file: !16, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !933, file: !16, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !933, file: !16, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !933, file: !16, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !933, file: !16, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !933, file: !16, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !933, file: !16, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !933, file: !16, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !933, file: !16, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !933, file: !16, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !933, file: !16, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !933, file: !16, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !933, file: !16, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !933, file: !16, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !933, file: !16, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !933, file: !16, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !933, file: !16, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !933, file: !16, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !933, file: !16, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !933, file: !16, line: 2703, baseType: !5, size: 32, offset: 512)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !933, file: !16, line: 2705, baseType: !827, size: 64, offset: 576)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !933, file: !16, line: 2706, baseType: !827, size: 64, offset: 640)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !933, file: !16, line: 2707, baseType: !827, size: 64, offset: 704)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !933, file: !16, line: 2708, baseType: !827, size: 64, offset: 768)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !933, file: !16, line: 2711, baseType: !968, size: 64, offset: 832)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !16, line: 2711, flags: DIFlagFwdDecl)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !830, file: !16, line: 3383, baseType: !971, size: 960)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !16, line: 2756, size: 960, elements: !972)
!972 = !{!973, !974}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !971, file: !16, line: 2757, baseType: !933, size: 896)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !971, file: !16, line: 2758, baseType: !975, size: 64, offset: 896)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !828, line: 50, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !828, line: 49, flags: DIFlagFwdDecl)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !830, file: !16, line: 3384, baseType: !979, size: 1472)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !16, line: 3114, size: 1472, elements: !980)
!980 = !{!981, !1002, !1003, !1004, !1005}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !979, file: !16, line: 3115, baseType: !982, size: 1216)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !16, line: 2984, size: 1216, elements: !983)
!983 = !{!984, !985, !986, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998, !999, !1000, !1001}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !982, file: !16, line: 2985, baseType: !971, size: 960)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !982, file: !16, line: 2986, baseType: !827, size: 64, offset: 960)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !982, file: !16, line: 2987, baseType: !827, size: 64, offset: 1024)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !982, file: !16, line: 2988, baseType: !827, size: 64, offset: 1088)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !982, file: !16, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !982, file: !16, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !982, file: !16, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !982, file: !16, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !982, file: !16, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !982, file: !16, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !982, file: !16, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !982, file: !16, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !982, file: !16, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !982, file: !16, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !982, file: !16, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !982, file: !16, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !982, file: !16, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !982, file: !16, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !979, file: !16, line: 3117, baseType: !827, size: 64, offset: 1216)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !979, file: !16, line: 3119, baseType: !827, size: 64, offset: 1280)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !979, file: !16, line: 3121, baseType: !827, size: 64, offset: 1344)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !979, file: !16, line: 3123, baseType: !827, size: 64, offset: 1408)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !830, file: !16, line: 3385, baseType: !1007, size: 1088)
!1007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !16, line: 2874, size: 1088, elements: !1008)
!1008 = !{!1009, !1010, !1011}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1007, file: !16, line: 2875, baseType: !971, size: 960)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1007, file: !16, line: 2876, baseType: !975, size: 64, offset: 960)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1007, file: !16, line: 2877, baseType: !1012, size: 64, offset: 1024)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !16, line: 2856, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !830, file: !16, line: 3386, baseType: !982, size: 1216)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !830, file: !16, line: 3387, baseType: !1016, size: 1280)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !16, line: 3093, size: 1280, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1016, file: !16, line: 3094, baseType: !982, size: 1216)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1016, file: !16, line: 3095, baseType: !1012, size: 64, offset: 1216)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !830, file: !16, line: 3388, baseType: !1021, size: 1216)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !16, line: 2824, size: 1216, elements: !1022)
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1021, file: !16, line: 2825, baseType: !933, size: 896)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1021, file: !16, line: 2827, baseType: !827, size: 64, offset: 896)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1021, file: !16, line: 2828, baseType: !827, size: 64, offset: 960)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1021, file: !16, line: 2829, baseType: !827, size: 64, offset: 1024)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1021, file: !16, line: 2830, baseType: !827, size: 64, offset: 1088)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1021, file: !16, line: 2831, baseType: !827, size: 64, offset: 1152)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !830, file: !16, line: 3389, baseType: !1030, size: 1024)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !16, line: 2850, size: 1024, elements: !1031)
!1031 = !{!1032, !1033, !1034}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1030, file: !16, line: 2851, baseType: !971, size: 960)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1030, file: !16, line: 2852, baseType: !245, size: 32, offset: 960)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1030, file: !16, line: 2853, baseType: !245, size: 32, offset: 992)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !830, file: !16, line: 3390, baseType: !1036, size: 1024)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !16, line: 2857, size: 1024, elements: !1037)
!1037 = !{!1038, !1039}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1036, file: !16, line: 2858, baseType: !971, size: 960)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1036, file: !16, line: 2859, baseType: !1012, size: 64, offset: 960)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !830, file: !16, line: 3391, baseType: !1041, size: 960)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !16, line: 2862, size: 960, elements: !1042)
!1042 = !{!1043}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1041, file: !16, line: 2863, baseType: !971, size: 960)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !830, file: !16, line: 3392, baseType: !1045, size: 1472)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !16, line: 3304, size: 1472, elements: !1046)
!1046 = !{!1047}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1045, file: !16, line: 3305, baseType: !979, size: 1472)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !830, file: !16, line: 3393, baseType: !1049, size: 1792)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !16, line: 3248, size: 1792, elements: !1050)
!1050 = !{!1051, !1052, !1056, !1057, !1058, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1076}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1049, file: !16, line: 3249, baseType: !979, size: 1472)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1049, file: !16, line: 3251, baseType: !1053, size: 64, offset: 1472)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1055, line: 41, flags: DIFlagFwdDecl)
!1055 = !DIFile(filename: "./statistics.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1049, file: !16, line: 3254, baseType: !827, size: 64, offset: 1536)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1049, file: !16, line: 3257, baseType: !827, size: 64, offset: 1600)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1049, file: !16, line: 3258, baseType: !827, size: 64, offset: 1664)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1049, file: !16, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1049, file: !16, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1049, file: !16, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1049, file: !16, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1049, file: !16, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1049, file: !16, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1049, file: !16, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1049, file: !16, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1049, file: !16, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1049, file: !16, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1049, file: !16, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1049, file: !16, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1049, file: !16, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1049, file: !16, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1049, file: !16, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1049, file: !16, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1049, file: !16, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1049, file: !16, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !830, file: !16, line: 3394, baseType: !1078, size: 1344)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !16, line: 2279, size: 1344, elements: !1079)
!1079 = !{!1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1105, !1106, !1107, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1122, !1123}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1078, file: !16, line: 2280, baseType: !866, size: 192)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1078, file: !16, line: 2281, baseType: !827, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1078, file: !16, line: 2282, baseType: !827, size: 64, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1078, file: !16, line: 2283, baseType: !827, size: 64, offset: 320)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1078, file: !16, line: 2284, baseType: !827, size: 64, offset: 384)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1078, file: !16, line: 2285, baseType: !5, size: 32, offset: 448)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1078, file: !16, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1078, file: !16, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1078, file: !16, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1078, file: !16, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1078, file: !16, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1078, file: !16, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1078, file: !16, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1078, file: !16, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1078, file: !16, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1078, file: !16, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1078, file: !16, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1078, file: !16, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1078, file: !16, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1078, file: !16, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1078, file: !16, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1078, file: !16, line: 2305, baseType: !5, size: 32, offset: 512)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1078, file: !16, line: 2306, baseType: !1103, size: 32, offset: 544)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1104, line: 31, baseType: !245)
!1104 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1078, file: !16, line: 2307, baseType: !827, size: 64, offset: 576)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1078, file: !16, line: 2308, baseType: !827, size: 64, offset: 640)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1078, file: !16, line: 2314, baseType: !1108, size: 64, offset: 704)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !16, line: 2309, size: 64, elements: !1109)
!1109 = !{!1110, !1111, !1112}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1108, file: !16, line: 2310, baseType: !245, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1108, file: !16, line: 2311, baseType: !250, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1108, file: !16, line: 2312, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !16, line: 2277, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1078, file: !16, line: 2315, baseType: !827, size: 64, offset: 768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1078, file: !16, line: 2316, baseType: !827, size: 64, offset: 832)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1078, file: !16, line: 2317, baseType: !827, size: 64, offset: 896)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1078, file: !16, line: 2318, baseType: !827, size: 64, offset: 960)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1078, file: !16, line: 2319, baseType: !827, size: 64, offset: 1024)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1078, file: !16, line: 2320, baseType: !827, size: 64, offset: 1088)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1078, file: !16, line: 2321, baseType: !827, size: 64, offset: 1152)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1078, file: !16, line: 2322, baseType: !827, size: 64, offset: 1216)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1078, file: !16, line: 2324, baseType: !1124, size: 64, offset: 1280)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !16, line: 2324, flags: DIFlagFwdDecl)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !830, file: !16, line: 3395, baseType: !1127, size: 320)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !16, line: 1469, size: 320, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1127, file: !16, line: 1470, baseType: !866, size: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1127, file: !16, line: 1471, baseType: !827, size: 64, offset: 192)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1127, file: !16, line: 1472, baseType: !827, size: 64, offset: 256)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !830, file: !16, line: 3396, baseType: !1133, size: 320)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !16, line: 1482, size: 320, elements: !1134)
!1134 = !{!1135, !1136, !1137}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1133, file: !16, line: 1483, baseType: !866, size: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1133, file: !16, line: 1484, baseType: !245, size: 32, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1133, file: !16, line: 1485, baseType: !1138, size: 64, offset: 256)
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !827, size: 64, elements: !340)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !830, file: !16, line: 3397, baseType: !1140, size: 384)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !16, line: 1829, size: 384, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1140, file: !16, line: 1830, baseType: !866, size: 192)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1140, file: !16, line: 1831, baseType: !823, size: 32, offset: 192)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1140, file: !16, line: 1832, baseType: !827, size: 64, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1140, file: !16, line: 1835, baseType: !1138, size: 64, offset: 320)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !830, file: !16, line: 3398, baseType: !1147, size: 704)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !16, line: 1898, size: 704, elements: !1148)
!1148 = !{!1149, !1150, !1151, !1155, !1156, !1159}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1147, file: !16, line: 1899, baseType: !866, size: 192)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1147, file: !16, line: 1902, baseType: !827, size: 64, offset: 192)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1147, file: !16, line: 1905, baseType: !1152, size: 64, offset: 256)
!1152 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !828, line: 58, baseType: !1153)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !828, line: 57, flags: DIFlagFwdDecl)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1147, file: !16, line: 1908, baseType: !5, size: 32, offset: 320)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1147, file: !16, line: 1911, baseType: !1157, size: 64, offset: 384)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !16, line: 1876, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1147, file: !16, line: 1914, baseType: !1160, size: 256, offset: 448)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !16, line: 1883, size: 256, elements: !1161)
!1161 = !{!1162, !1164, !1165, !1170}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1160, file: !16, line: 1884, baseType: !1163, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1160, file: !16, line: 1885, baseType: !1163, size: 64, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1160, file: !16, line: 1891, baseType: !1166, size: 64, offset: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1160, file: !16, line: 1891, size: 64, elements: !1167)
!1167 = !{!1168, !1169}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1166, file: !16, line: 1891, baseType: !1152, size: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1166, file: !16, line: 1891, baseType: !827, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1160, file: !16, line: 1892, baseType: !826, size: 64, offset: 192)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !830, file: !16, line: 3399, baseType: !1172, size: 704)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !16, line: 2008, size: 704, elements: !1173)
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1191, !1192, !1193, !1194, !1195}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1172, file: !16, line: 2009, baseType: !866, size: 192)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1172, file: !16, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1172, file: !16, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1172, file: !16, line: 2014, baseType: !823, size: 32, offset: 224)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1172, file: !16, line: 2016, baseType: !827, size: 64, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1172, file: !16, line: 2017, baseType: !1180, size: 64, offset: 320)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !16, line: 183, baseType: !1182)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !16, line: 183, size: 128, elements: !1183)
!1183 = !{!1184}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1182, file: !16, line: 183, baseType: !1185, size: 128)
!1185 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !16, line: 182, baseType: !1186)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !16, line: 182, size: 128, elements: !1187)
!1187 = !{!1188, !1189, !1190}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1186, file: !16, line: 182, baseType: !5, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1186, file: !16, line: 182, baseType: !5, size: 32, offset: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1186, file: !16, line: 182, baseType: !1138, size: 64, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1172, file: !16, line: 2019, baseType: !827, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1172, file: !16, line: 2020, baseType: !827, size: 64, offset: 448)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1172, file: !16, line: 2021, baseType: !827, size: 64, offset: 512)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1172, file: !16, line: 2022, baseType: !827, size: 64, offset: 576)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1172, file: !16, line: 2023, baseType: !827, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !830, file: !16, line: 3400, baseType: !1197, size: 832)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !16, line: 2430, size: 832, elements: !1198)
!1198 = !{!1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !16, line: 2431, baseType: !866, size: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1197, file: !16, line: 2433, baseType: !827, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1197, file: !16, line: 2434, baseType: !827, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1197, file: !16, line: 2435, baseType: !827, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1197, file: !16, line: 2436, baseType: !827, size: 64, offset: 384)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1197, file: !16, line: 2437, baseType: !1180, size: 64, offset: 448)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1197, file: !16, line: 2438, baseType: !827, size: 64, offset: 512)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1197, file: !16, line: 2440, baseType: !827, size: 64, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1197, file: !16, line: 2441, baseType: !827, size: 64, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1197, file: !16, line: 2443, baseType: !1209, size: 128, offset: 704)
!1209 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !16, line: 182, baseType: !1210)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !16, line: 182, size: 128, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1210, file: !16, line: 182, baseType: !1185, size: 128)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !830, file: !16, line: 3401, baseType: !1214, size: 320)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !16, line: 3327, size: 320, elements: !1215)
!1215 = !{!1216, !1217, !1224}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1214, file: !16, line: 3329, baseType: !866, size: 192)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1214, file: !16, line: 3330, baseType: !1218, size: 64, offset: 192)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !16, line: 3320, size: 192, elements: !1220)
!1220 = !{!1221, !1222, !1223}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1219, file: !16, line: 3322, baseType: !1218, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1219, file: !16, line: 3323, baseType: !1218, size: 64, offset: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1219, file: !16, line: 3324, baseType: !827, size: 64, offset: 128)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1214, file: !16, line: 3331, baseType: !1218, size: 64, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !830, file: !16, line: 3402, baseType: !1226, size: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !16, line: 1540, size: 256, elements: !1227)
!1227 = !{!1228, !1229}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1226, file: !16, line: 1541, baseType: !866, size: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1226, file: !16, line: 1542, baseType: !1230, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !16, line: 1538, baseType: !1232)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !16, line: 1538, size: 192, elements: !1233)
!1233 = !{!1234}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1232, file: !16, line: 1538, baseType: !1235, size: 192)
!1235 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !16, line: 1537, baseType: !1236)
!1236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !16, line: 1537, size: 192, elements: !1237)
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1236, file: !16, line: 1537, baseType: !5, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1236, file: !16, line: 1537, baseType: !5, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1236, file: !16, line: 1537, baseType: !1241, size: 128, offset: 64)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1242, size: 128, elements: !340)
!1242 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !16, line: 1535, baseType: !1243)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !16, line: 1532, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1243, file: !16, line: 1533, baseType: !827, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1243, file: !16, line: 1534, baseType: !827, size: 64, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !830, file: !16, line: 3403, baseType: !1248, size: 512)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !16, line: 1938, size: 512, elements: !1249)
!1249 = !{!1250, !1251, !1252, !1253, !1259, !1263, !1264}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1248, file: !16, line: 1939, baseType: !866, size: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1248, file: !16, line: 1940, baseType: !823, size: 32, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1248, file: !16, line: 1941, baseType: !15, size: 32, offset: 224)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1248, file: !16, line: 1946, baseType: !1254, size: 32, offset: 256)
!1254 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !16, line: 1942, size: 32, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1254, file: !16, line: 1943, baseType: !34, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1254, file: !16, line: 1944, baseType: !41, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1254, file: !16, line: 1945, baseType: !48, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1248, file: !16, line: 1950, baseType: !1260, size: 64, offset: 320)
!1260 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !828, line: 66, baseType: !1261)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !828, line: 65, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1248, file: !16, line: 1951, baseType: !1260, size: 64, offset: 384)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1248, file: !16, line: 1953, baseType: !1138, size: 64, offset: 448)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !830, file: !16, line: 3404, baseType: !1266, size: 1664)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !16, line: 3337, size: 1664, elements: !1267)
!1267 = !{!1268, !1269}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1266, file: !16, line: 3338, baseType: !866, size: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1266, file: !16, line: 3341, baseType: !1270, size: 1472, offset: 192)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1271, line: 410, size: 1472, elements: !1272)
!1271 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1270, file: !1271, line: 412, baseType: !245, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1270, file: !1271, line: 413, baseType: !245, size: 32, offset: 32)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1270, file: !1271, line: 414, baseType: !245, size: 32, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1270, file: !1271, line: 415, baseType: !245, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1270, file: !1271, line: 416, baseType: !245, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1270, file: !1271, line: 417, baseType: !245, size: 32, offset: 160)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1270, file: !1271, line: 418, baseType: !244, size: 8, offset: 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1270, file: !1271, line: 419, baseType: !244, size: 8, offset: 200)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1270, file: !1271, line: 420, baseType: !337, size: 8, offset: 208)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1270, file: !1271, line: 421, baseType: !337, size: 8, offset: 216)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1270, file: !1271, line: 422, baseType: !337, size: 8, offset: 224)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1270, file: !1271, line: 423, baseType: !337, size: 8, offset: 232)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1270, file: !1271, line: 424, baseType: !337, size: 8, offset: 240)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1270, file: !1271, line: 425, baseType: !337, size: 8, offset: 248)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1270, file: !1271, line: 426, baseType: !337, size: 8, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1270, file: !1271, line: 427, baseType: !337, size: 8, offset: 264)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1270, file: !1271, line: 428, baseType: !337, size: 8, offset: 272)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1270, file: !1271, line: 429, baseType: !337, size: 8, offset: 280)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1270, file: !1271, line: 430, baseType: !337, size: 8, offset: 288)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1270, file: !1271, line: 431, baseType: !337, size: 8, offset: 296)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1270, file: !1271, line: 432, baseType: !337, size: 8, offset: 304)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1270, file: !1271, line: 433, baseType: !337, size: 8, offset: 312)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1270, file: !1271, line: 434, baseType: !337, size: 8, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1270, file: !1271, line: 435, baseType: !337, size: 8, offset: 328)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1270, file: !1271, line: 436, baseType: !337, size: 8, offset: 336)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1270, file: !1271, line: 437, baseType: !337, size: 8, offset: 344)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1270, file: !1271, line: 438, baseType: !337, size: 8, offset: 352)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1270, file: !1271, line: 439, baseType: !337, size: 8, offset: 360)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1270, file: !1271, line: 440, baseType: !337, size: 8, offset: 368)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1270, file: !1271, line: 441, baseType: !337, size: 8, offset: 376)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1270, file: !1271, line: 442, baseType: !337, size: 8, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1270, file: !1271, line: 443, baseType: !337, size: 8, offset: 392)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1270, file: !1271, line: 444, baseType: !337, size: 8, offset: 400)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1270, file: !1271, line: 445, baseType: !337, size: 8, offset: 408)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1270, file: !1271, line: 446, baseType: !337, size: 8, offset: 416)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1270, file: !1271, line: 447, baseType: !337, size: 8, offset: 424)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1270, file: !1271, line: 448, baseType: !337, size: 8, offset: 432)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1270, file: !1271, line: 449, baseType: !337, size: 8, offset: 440)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1270, file: !1271, line: 450, baseType: !337, size: 8, offset: 448)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1270, file: !1271, line: 451, baseType: !337, size: 8, offset: 456)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1270, file: !1271, line: 452, baseType: !337, size: 8, offset: 464)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1270, file: !1271, line: 453, baseType: !337, size: 8, offset: 472)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1270, file: !1271, line: 454, baseType: !337, size: 8, offset: 480)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1270, file: !1271, line: 455, baseType: !337, size: 8, offset: 488)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1270, file: !1271, line: 456, baseType: !337, size: 8, offset: 496)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1270, file: !1271, line: 457, baseType: !337, size: 8, offset: 504)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1270, file: !1271, line: 458, baseType: !337, size: 8, offset: 512)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1270, file: !1271, line: 459, baseType: !337, size: 8, offset: 520)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1270, file: !1271, line: 460, baseType: !337, size: 8, offset: 528)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1270, file: !1271, line: 461, baseType: !337, size: 8, offset: 536)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1270, file: !1271, line: 462, baseType: !337, size: 8, offset: 544)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1270, file: !1271, line: 463, baseType: !337, size: 8, offset: 552)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1270, file: !1271, line: 464, baseType: !337, size: 8, offset: 560)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1270, file: !1271, line: 465, baseType: !337, size: 8, offset: 568)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1270, file: !1271, line: 466, baseType: !337, size: 8, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1270, file: !1271, line: 467, baseType: !337, size: 8, offset: 584)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1270, file: !1271, line: 468, baseType: !337, size: 8, offset: 592)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1270, file: !1271, line: 469, baseType: !337, size: 8, offset: 600)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1270, file: !1271, line: 470, baseType: !337, size: 8, offset: 608)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1270, file: !1271, line: 471, baseType: !337, size: 8, offset: 616)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1270, file: !1271, line: 472, baseType: !337, size: 8, offset: 624)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1270, file: !1271, line: 473, baseType: !337, size: 8, offset: 632)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1270, file: !1271, line: 474, baseType: !337, size: 8, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1270, file: !1271, line: 475, baseType: !337, size: 8, offset: 648)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1270, file: !1271, line: 476, baseType: !337, size: 8, offset: 656)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1270, file: !1271, line: 477, baseType: !337, size: 8, offset: 664)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1270, file: !1271, line: 478, baseType: !337, size: 8, offset: 672)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1270, file: !1271, line: 479, baseType: !337, size: 8, offset: 680)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1270, file: !1271, line: 480, baseType: !337, size: 8, offset: 688)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1270, file: !1271, line: 481, baseType: !337, size: 8, offset: 696)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1270, file: !1271, line: 482, baseType: !337, size: 8, offset: 704)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1270, file: !1271, line: 483, baseType: !337, size: 8, offset: 712)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1270, file: !1271, line: 484, baseType: !337, size: 8, offset: 720)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1270, file: !1271, line: 485, baseType: !337, size: 8, offset: 728)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1270, file: !1271, line: 486, baseType: !337, size: 8, offset: 736)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1270, file: !1271, line: 487, baseType: !337, size: 8, offset: 744)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1270, file: !1271, line: 488, baseType: !337, size: 8, offset: 752)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1270, file: !1271, line: 489, baseType: !337, size: 8, offset: 760)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1270, file: !1271, line: 490, baseType: !337, size: 8, offset: 768)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1270, file: !1271, line: 491, baseType: !337, size: 8, offset: 776)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1270, file: !1271, line: 492, baseType: !337, size: 8, offset: 784)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1270, file: !1271, line: 493, baseType: !337, size: 8, offset: 792)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1270, file: !1271, line: 494, baseType: !337, size: 8, offset: 800)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1270, file: !1271, line: 495, baseType: !337, size: 8, offset: 808)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1270, file: !1271, line: 496, baseType: !337, size: 8, offset: 816)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1270, file: !1271, line: 497, baseType: !337, size: 8, offset: 824)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1270, file: !1271, line: 498, baseType: !337, size: 8, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1270, file: !1271, line: 499, baseType: !337, size: 8, offset: 840)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1270, file: !1271, line: 500, baseType: !337, size: 8, offset: 848)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1270, file: !1271, line: 501, baseType: !337, size: 8, offset: 856)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1270, file: !1271, line: 502, baseType: !337, size: 8, offset: 864)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1270, file: !1271, line: 503, baseType: !337, size: 8, offset: 872)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1270, file: !1271, line: 504, baseType: !337, size: 8, offset: 880)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1270, file: !1271, line: 505, baseType: !337, size: 8, offset: 888)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1270, file: !1271, line: 506, baseType: !337, size: 8, offset: 896)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1270, file: !1271, line: 507, baseType: !337, size: 8, offset: 904)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1270, file: !1271, line: 508, baseType: !337, size: 8, offset: 912)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1270, file: !1271, line: 509, baseType: !337, size: 8, offset: 920)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1270, file: !1271, line: 510, baseType: !337, size: 8, offset: 928)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1270, file: !1271, line: 511, baseType: !337, size: 8, offset: 936)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1270, file: !1271, line: 512, baseType: !337, size: 8, offset: 944)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1270, file: !1271, line: 513, baseType: !337, size: 8, offset: 952)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1270, file: !1271, line: 514, baseType: !337, size: 8, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1270, file: !1271, line: 515, baseType: !337, size: 8, offset: 968)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1270, file: !1271, line: 516, baseType: !337, size: 8, offset: 976)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1270, file: !1271, line: 517, baseType: !337, size: 8, offset: 984)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1270, file: !1271, line: 518, baseType: !337, size: 8, offset: 992)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1270, file: !1271, line: 519, baseType: !337, size: 8, offset: 1000)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1270, file: !1271, line: 520, baseType: !337, size: 8, offset: 1008)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1270, file: !1271, line: 521, baseType: !337, size: 8, offset: 1016)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1270, file: !1271, line: 522, baseType: !337, size: 8, offset: 1024)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1270, file: !1271, line: 523, baseType: !337, size: 8, offset: 1032)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1270, file: !1271, line: 524, baseType: !337, size: 8, offset: 1040)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1270, file: !1271, line: 525, baseType: !337, size: 8, offset: 1048)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1270, file: !1271, line: 526, baseType: !337, size: 8, offset: 1056)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1270, file: !1271, line: 527, baseType: !337, size: 8, offset: 1064)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1270, file: !1271, line: 528, baseType: !337, size: 8, offset: 1072)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1270, file: !1271, line: 529, baseType: !337, size: 8, offset: 1080)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1270, file: !1271, line: 530, baseType: !337, size: 8, offset: 1088)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1270, file: !1271, line: 531, baseType: !337, size: 8, offset: 1096)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1270, file: !1271, line: 532, baseType: !337, size: 8, offset: 1104)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1270, file: !1271, line: 533, baseType: !337, size: 8, offset: 1112)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1270, file: !1271, line: 534, baseType: !337, size: 8, offset: 1120)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1270, file: !1271, line: 535, baseType: !337, size: 8, offset: 1128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1270, file: !1271, line: 536, baseType: !337, size: 8, offset: 1136)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1270, file: !1271, line: 537, baseType: !337, size: 8, offset: 1144)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1270, file: !1271, line: 538, baseType: !337, size: 8, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1270, file: !1271, line: 539, baseType: !337, size: 8, offset: 1160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1270, file: !1271, line: 540, baseType: !337, size: 8, offset: 1168)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1270, file: !1271, line: 541, baseType: !337, size: 8, offset: 1176)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1270, file: !1271, line: 542, baseType: !337, size: 8, offset: 1184)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1270, file: !1271, line: 543, baseType: !337, size: 8, offset: 1192)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1270, file: !1271, line: 544, baseType: !337, size: 8, offset: 1200)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1270, file: !1271, line: 545, baseType: !337, size: 8, offset: 1208)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1270, file: !1271, line: 546, baseType: !337, size: 8, offset: 1216)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1270, file: !1271, line: 547, baseType: !337, size: 8, offset: 1224)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1270, file: !1271, line: 548, baseType: !337, size: 8, offset: 1232)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1270, file: !1271, line: 549, baseType: !337, size: 8, offset: 1240)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1270, file: !1271, line: 550, baseType: !337, size: 8, offset: 1248)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1270, file: !1271, line: 551, baseType: !337, size: 8, offset: 1256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1270, file: !1271, line: 552, baseType: !337, size: 8, offset: 1264)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1270, file: !1271, line: 553, baseType: !337, size: 8, offset: 1272)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1270, file: !1271, line: 554, baseType: !337, size: 8, offset: 1280)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1270, file: !1271, line: 555, baseType: !337, size: 8, offset: 1288)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1270, file: !1271, line: 556, baseType: !337, size: 8, offset: 1296)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1270, file: !1271, line: 557, baseType: !337, size: 8, offset: 1304)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1270, file: !1271, line: 558, baseType: !337, size: 8, offset: 1312)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1270, file: !1271, line: 559, baseType: !337, size: 8, offset: 1320)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1270, file: !1271, line: 560, baseType: !337, size: 8, offset: 1328)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1270, file: !1271, line: 561, baseType: !337, size: 8, offset: 1336)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1270, file: !1271, line: 562, baseType: !337, size: 8, offset: 1344)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1270, file: !1271, line: 563, baseType: !337, size: 8, offset: 1352)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1270, file: !1271, line: 564, baseType: !337, size: 8, offset: 1360)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1270, file: !1271, line: 565, baseType: !337, size: 8, offset: 1368)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1270, file: !1271, line: 566, baseType: !337, size: 8, offset: 1376)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1270, file: !1271, line: 567, baseType: !337, size: 8, offset: 1384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1270, file: !1271, line: 568, baseType: !337, size: 8, offset: 1392)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1270, file: !1271, line: 569, baseType: !337, size: 8, offset: 1400)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1270, file: !1271, line: 570, baseType: !337, size: 8, offset: 1408)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1270, file: !1271, line: 571, baseType: !337, size: 8, offset: 1416)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1270, file: !1271, line: 572, baseType: !337, size: 8, offset: 1424)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1270, file: !1271, line: 573, baseType: !337, size: 8, offset: 1432)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1270, file: !1271, line: 574, baseType: !337, size: 8, offset: 1440)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !830, file: !16, line: 3405, baseType: !1437, size: 384)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !16, line: 3352, size: 384, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1437, file: !16, line: 3353, baseType: !866, size: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1437, file: !16, line: 3356, baseType: !1441, size: 192, offset: 192)
!1441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1271, line: 578, size: 192, elements: !1442)
!1442 = !{!1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453}
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1441, file: !1271, line: 580, baseType: !245, size: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1441, file: !1271, line: 581, baseType: !245, size: 32, offset: 32)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1441, file: !1271, line: 582, baseType: !245, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1441, file: !1271, line: 583, baseType: !245, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1441, file: !1271, line: 584, baseType: !244, size: 8, offset: 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1441, file: !1271, line: 585, baseType: !244, size: 8, offset: 136)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1441, file: !1271, line: 586, baseType: !244, size: 8, offset: 144)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1441, file: !1271, line: 587, baseType: !244, size: 8, offset: 152)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1441, file: !1271, line: 588, baseType: !244, size: 8, offset: 160)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1441, file: !1271, line: 589, baseType: !244, size: 8, offset: 168)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1441, file: !1271, line: 590, baseType: !244, size: 8, offset: 176)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "emitted_prefix", scope: !787, file: !4, line: 190, baseType: !244, size: 8, offset: 384)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "need_newline", scope: !787, file: !4, line: 193, baseType: !244, size: 8, offset: 392)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "translate_identifiers", scope: !787, file: !4, line: 197, baseType: !244, size: 8, offset: 400)
!1457 = !{!1458, !1459}
!1458 = !DILocalVariable(name: "pp", arg: 1, scope: !782, file: !1, line: 101, type: !785)
!1459 = !DILocalVariable(name: "text", scope: !782, file: !1, line: 103, type: !250)
!1460 = !DILocation(line: 0, scope: !782)
!1461 = !DILocation(line: 103, column: 22, scope: !782)
!1462 = !DILocation(line: 104, column: 20, scope: !782)
!1463 = !DILocation(line: 104, column: 28, scope: !782)
!1464 = !DILocation(line: 104, column: 3, scope: !782)
!1465 = !DILocation(line: 105, column: 3, scope: !782)
!1466 = !DILocation(line: 106, column: 1, scope: !782)
!1467 = distinct !DISubprogram(name: "pp_base_formatted_text", scope: !1, file: !1, line: 729, type: !1468, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1470)
!1468 = !DISubroutineType(types: !1469)
!1469 = !{!250, !785}
!1470 = !{!1471}
!1471 = !DILocalVariable(name: "pp", arg: 1, scope: !1467, file: !1, line: 729, type: !785)
!1472 = !DILocation(line: 0, scope: !1467)
!1473 = !DILocation(line: 731, column: 3, scope: !1467)
!1474 = !DILocation(line: 732, column: 10, scope: !1467)
!1475 = !DILocation(line: 732, column: 3, scope: !1467)
!1476 = distinct !DISubprogram(name: "pp_base_clear_output_area", scope: !1, file: !1, line: 631, type: !783, scopeLine: 632, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1477)
!1477 = !{!1478}
!1478 = !DILocalVariable(name: "pp", arg: 1, scope: !1476, file: !1, line: 631, type: !785)
!1479 = !DILocation(line: 0, scope: !1476)
!1480 = !DILocation(line: 633, column: 3, scope: !1476)
!1481 = !DILocation(line: 634, column: 7, scope: !1476)
!1482 = !DILocation(line: 634, column: 15, scope: !1476)
!1483 = !DILocation(line: 634, column: 27, scope: !1476)
!1484 = !DILocation(line: 635, column: 1, scope: !1476)
!1485 = distinct !DISubprogram(name: "pp_base_indent", scope: !1, file: !1, line: 164, type: !783, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1486)
!1486 = !{!1487, !1488, !1489}
!1487 = !DILocalVariable(name: "pp", arg: 1, scope: !1485, file: !1, line: 164, type: !785)
!1488 = !DILocalVariable(name: "n", scope: !1485, file: !1, line: 166, type: !245)
!1489 = !DILocalVariable(name: "i", scope: !1485, file: !1, line: 167, type: !245)
!1490 = !DILocation(line: 0, scope: !1485)
!1491 = !DILocation(line: 166, column: 11, scope: !1485)
!1492 = !DILocation(line: 169, column: 8, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1485, file: !1, line: 169, column: 3)
!1494 = !DILocation(line: 0, scope: !1493)
!1495 = !DILocation(line: 169, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1493, file: !1, line: 169, column: 3)
!1497 = !DILocation(line: 169, column: 3, scope: !1493)
!1498 = !DILocation(line: 170, column: 5, scope: !1496)
!1499 = !DILocation(line: 169, column: 22, scope: !1496)
!1500 = !DILocation(line: 169, column: 3, scope: !1496)
!1501 = distinct !{!1501, !1497, !1502}
!1502 = !DILocation(line: 170, column: 5, scope: !1493)
!1503 = !DILocation(line: 171, column: 1, scope: !1485)
!1504 = distinct !DISubprogram(name: "pp_base_character", scope: !1, file: !1, line: 803, type: !1505, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1507)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{null, !785, !245}
!1507 = !{!1508, !1509}
!1508 = !DILocalVariable(name: "pp", arg: 1, scope: !1504, file: !1, line: 803, type: !785)
!1509 = !DILocalVariable(name: "c", arg: 2, scope: !1504, file: !1, line: 803, type: !245)
!1510 = !DILocation(line: 0, scope: !1504)
!1511 = !DILocation(line: 805, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1504, file: !1, line: 805, column: 7)
!1513 = !DILocation(line: 806, column: 7, scope: !1512)
!1514 = !DILocation(line: 806, column: 10, scope: !1512)
!1515 = !DILocation(line: 806, column: 53, scope: !1512)
!1516 = !DILocation(line: 805, column: 7, scope: !1504)
!1517 = !DILocation(line: 808, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1512, file: !1, line: 807, column: 5)
!1519 = !DILocation(line: 809, column: 11, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1518, file: !1, line: 809, column: 11)
!1521 = !DILocation(line: 809, column: 11, scope: !1518)
!1522 = !DILocation(line: 812, column: 3, scope: !1504)
!1523 = !DILocation(line: 813, column: 9, scope: !1504)
!1524 = !DILocation(line: 813, column: 17, scope: !1504)
!1525 = !DILocation(line: 813, column: 3, scope: !1504)
!1526 = !DILocation(line: 814, column: 1, scope: !1504)
!1527 = distinct !DISubprogram(name: "pp_base_format", scope: !1, file: !1, line: 211, type: !1528, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1530)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{null, !785, !807}
!1530 = !{!1531, !1532, !1533, !1534, !1535, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1548, !1554, !1557, !1564, !1565, !1569, !1570, !1571, !1572, !1573, !1576, !1577, !1579, !1581, !1582, !1585}
!1531 = !DILocalVariable(name: "pp", arg: 1, scope: !1527, file: !1, line: 211, type: !785)
!1532 = !DILocalVariable(name: "text", arg: 2, scope: !1527, file: !1, line: 211, type: !807)
!1533 = !DILocalVariable(name: "buffer", scope: !1527, file: !1, line: 213, type: !266)
!1534 = !DILocalVariable(name: "p", scope: !1527, file: !1, line: 214, type: !250)
!1535 = !DILocalVariable(name: "args", scope: !1527, file: !1, line: 215, type: !1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!1537 = !DILocalVariable(name: "new_chunk_array", scope: !1527, file: !1, line: 216, type: !252)
!1538 = !DILocalVariable(name: "curarg", scope: !1527, file: !1, line: 218, type: !5)
!1539 = !DILocalVariable(name: "chunk", scope: !1527, file: !1, line: 218, type: !5)
!1540 = !DILocalVariable(name: "argno", scope: !1527, file: !1, line: 218, type: !5)
!1541 = !DILocalVariable(name: "old_wrapping_mode", scope: !1527, file: !1, line: 219, type: !796)
!1542 = !DILocalVariable(name: "any_unnumbered", scope: !1527, file: !1, line: 220, type: !244)
!1543 = !DILocalVariable(name: "any_numbered", scope: !1527, file: !1, line: 220, type: !244)
!1544 = !DILocalVariable(name: "formatters", scope: !1527, file: !1, line: 221, type: !1545)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1536, size: 1920, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 30)
!1548 = !DILocalVariable(name: "errstr", scope: !1549, file: !1, line: 273, type: !250)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !1, line: 272, column: 4)
!1550 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 249, column: 2)
!1551 = distinct !DILexicalBlock(scope: !1552, file: !1, line: 238, column: 5)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !1, line: 237, column: 3)
!1553 = distinct !DILexicalBlock(scope: !1527, file: !1, line: 237, column: 3)
!1554 = !DILocalVariable(name: "end", scope: !1555, file: !1, line: 289, type: !247)
!1555 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 288, column: 2)
!1556 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 287, column: 11)
!1557 = !DILocalVariable(name: "end", scope: !1558, file: !1, line: 336, type: !247)
!1558 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 335, column: 3)
!1559 = distinct !DILexicalBlock(scope: !1560, file: !1, line: 334, column: 12)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 329, column: 6)
!1561 = distinct !DILexicalBlock(scope: !1562, file: !1, line: 318, column: 8)
!1562 = distinct !DILexicalBlock(scope: !1563, file: !1, line: 315, column: 2)
!1563 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 314, column: 11)
!1564 = !DILocalVariable(name: "argno2", scope: !1558, file: !1, line: 337, type: !5)
!1565 = !DILocalVariable(name: "precision", scope: !1566, file: !1, line: 380, type: !245)
!1566 = distinct !DILexicalBlock(scope: !1567, file: !1, line: 379, column: 5)
!1567 = distinct !DILexicalBlock(scope: !1568, file: !1, line: 378, column: 3)
!1568 = distinct !DILexicalBlock(scope: !1527, file: !1, line: 378, column: 3)
!1569 = !DILocalVariable(name: "wide", scope: !1566, file: !1, line: 381, type: !244)
!1570 = !DILocalVariable(name: "plus", scope: !1566, file: !1, line: 382, type: !244)
!1571 = !DILocalVariable(name: "hash", scope: !1566, file: !1, line: 383, type: !244)
!1572 = !DILocalVariable(name: "quote", scope: !1566, file: !1, line: 384, type: !244)
!1573 = !DILocalVariable(name: "t", scope: !1574, file: !1, line: 479, type: !827)
!1574 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 478, column: 4)
!1575 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 428, column: 2)
!1576 = !DILocalVariable(name: "block", scope: !1574, file: !1, line: 479, type: !827)
!1577 = !DILocalVariable(name: "ao", scope: !1578, file: !1, line: 489, type: !827)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !1, line: 488, column: 8)
!1579 = !DILocalVariable(name: "n", scope: !1580, file: !1, line: 508, type: !245)
!1580 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 507, column: 4)
!1581 = !DILocalVariable(name: "s", scope: !1580, file: !1, line: 509, type: !250)
!1582 = !DILocalVariable(name: "end", scope: !1583, file: !1, line: 517, type: !247)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 516, column: 8)
!1584 = distinct !DILexicalBlock(scope: !1580, file: !1, line: 515, column: 10)
!1585 = !DILocalVariable(name: "ok", scope: !1586, file: !1, line: 541, type: !244)
!1586 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 540, column: 4)
!1587 = !DILocation(line: 0, scope: !1527)
!1588 = !DILocation(line: 213, column: 31, scope: !1527)
!1589 = !DILocation(line: 221, column: 3, scope: !1527)
!1590 = !DILocation(line: 221, column: 16, scope: !1527)
!1591 = !DILocation(line: 224, column: 21, scope: !1527)
!1592 = !DILocation(line: 225, column: 35, scope: !1527)
!1593 = !DILocation(line: 225, column: 25, scope: !1527)
!1594 = !DILocation(line: 226, column: 27, scope: !1527)
!1595 = !DILocation(line: 235, column: 3, scope: !1527)
!1596 = !DILocation(line: 237, column: 18, scope: !1553)
!1597 = !DILocation(line: 0, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 240, column: 2)
!1599 = !DILocation(line: 0, scope: !1549)
!1600 = !DILocation(line: 0, scope: !1550)
!1601 = !DILocation(line: 0, scope: !1555)
!1602 = !DILocation(line: 0, scope: !1558)
!1603 = !DILocation(line: 237, column: 8, scope: !1553)
!1604 = !DILocation(line: 237, column: 3, scope: !1553)
!1605 = !DILocation(line: 0, scope: !1553)
!1606 = !DILocation(line: 237, column: 31, scope: !1552)
!1607 = !DILocation(line: 239, column: 7, scope: !1551)
!1608 = !DILocation(line: 239, column: 14, scope: !1551)
!1609 = !DILocation(line: 239, column: 17, scope: !1551)
!1610 = !DILocation(line: 239, column: 31, scope: !1551)
!1611 = !DILocation(line: 239, column: 25, scope: !1551)
!1612 = !DILocation(line: 241, column: 4, scope: !1598)
!1613 = !DILocation(line: 242, column: 5, scope: !1598)
!1614 = distinct !{!1614, !1607, !1615}
!1615 = !DILocation(line: 243, column: 2, scope: !1551)
!1616 = !DILocation(line: 245, column: 11, scope: !1551)
!1617 = !DILocation(line: 248, column: 16, scope: !1551)
!1618 = !DILocation(line: 248, column: 15, scope: !1551)
!1619 = !DILocation(line: 248, column: 7, scope: !1551)
!1620 = !DILocation(line: 251, column: 4, scope: !1550)
!1621 = !DILocation(line: 254, column: 4, scope: !1550)
!1622 = !DILocation(line: 256, column: 4, scope: !1550)
!1623 = distinct !{!1623, !1604, !1624}
!1624 = !DILocation(line: 363, column: 5, scope: !1553)
!1625 = !DILocation(line: 259, column: 4, scope: !1550)
!1626 = !DILocation(line: 262, column: 4, scope: !1550)
!1627 = !DILocation(line: 266, column: 4, scope: !1550)
!1628 = !DILocation(line: 269, column: 4, scope: !1550)
!1629 = !DILocation(line: 273, column: 44, scope: !1549)
!1630 = !DILocation(line: 273, column: 27, scope: !1549)
!1631 = !DILocation(line: 274, column: 6, scope: !1549)
!1632 = !DILocation(line: 277, column: 4, scope: !1550)
!1633 = !DILocation(line: 281, column: 4, scope: !1550)
!1634 = !DILocation(line: 282, column: 4, scope: !1550)
!1635 = !DILocation(line: 283, column: 20, scope: !1550)
!1636 = !DILocation(line: 283, column: 14, scope: !1550)
!1637 = !DILocation(line: 283, column: 4, scope: !1550)
!1638 = !DILocation(line: 283, column: 18, scope: !1550)
!1639 = !DILocation(line: 287, column: 11, scope: !1556)
!1640 = !DILocation(line: 287, column: 11, scope: !1551)
!1641 = !DILocation(line: 289, column: 4, scope: !1555)
!1642 = !DILocation(line: 290, column: 12, scope: !1555)
!1643 = !DILocation(line: 291, column: 8, scope: !1555)
!1644 = !DILocation(line: 292, column: 4, scope: !1555)
!1645 = !DILocation(line: 293, column: 5, scope: !1555)
!1646 = !DILocation(line: 296, column: 4, scope: !1555)
!1647 = !DILocation(line: 297, column: 2, scope: !1556)
!1648 = !DILocation(line: 297, column: 2, scope: !1555)
!1649 = !DILocation(line: 300, column: 18, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1556, file: !1, line: 299, column: 2)
!1651 = !DILocation(line: 302, column: 4, scope: !1650)
!1652 = !DILocation(line: 0, scope: !1556)
!1653 = !DILocation(line: 0, scope: !1551)
!1654 = !DILocation(line: 304, column: 7, scope: !1551)
!1655 = !DILocation(line: 305, column: 7, scope: !1551)
!1656 = !DILocation(line: 306, column: 28, scope: !1551)
!1657 = !DILocation(line: 306, column: 25, scope: !1551)
!1658 = !DILocation(line: 307, column: 7, scope: !1551)
!1659 = !DILocation(line: 309, column: 4, scope: !1660)
!1660 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 308, column: 2)
!1661 = !DILocation(line: 310, column: 5, scope: !1660)
!1662 = !DILocation(line: 312, column: 31, scope: !1551)
!1663 = !DILocation(line: 312, column: 14, scope: !1551)
!1664 = !DILocation(line: 311, column: 2, scope: !1660)
!1665 = distinct !{!1665, !1658, !1666}
!1666 = !DILocation(line: 312, column: 37, scope: !1551)
!1667 = !DILocation(line: 314, column: 11, scope: !1563)
!1668 = !DILocation(line: 314, column: 17, scope: !1563)
!1669 = !DILocation(line: 314, column: 11, scope: !1551)
!1670 = !DILocation(line: 318, column: 8, scope: !1561)
!1671 = !DILocation(line: 318, column: 8, scope: !1562)
!1672 = !DILocation(line: 320, column: 8, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1561, file: !1, line: 319, column: 6)
!1674 = !DILocation(line: 322, column: 5, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1673, file: !1, line: 321, column: 3)
!1676 = !DILocation(line: 323, column: 6, scope: !1675)
!1677 = !DILocation(line: 325, column: 15, scope: !1673)
!1678 = !DILocation(line: 324, column: 3, scope: !1675)
!1679 = distinct !{!1679, !1672, !1680}
!1680 = !DILocation(line: 325, column: 30, scope: !1673)
!1681 = !DILocation(line: 326, column: 8, scope: !1673)
!1682 = !DILocation(line: 330, column: 8, scope: !1560)
!1683 = !DILocation(line: 331, column: 8, scope: !1560)
!1684 = !DILocation(line: 332, column: 9, scope: !1560)
!1685 = !DILocation(line: 334, column: 12, scope: !1559)
!1686 = !DILocation(line: 334, column: 12, scope: !1560)
!1687 = !DILocation(line: 336, column: 5, scope: !1558)
!1688 = !DILocation(line: 337, column: 27, scope: !1558)
!1689 = !DILocation(line: 338, column: 9, scope: !1558)
!1690 = !DILocation(line: 339, column: 5, scope: !1558)
!1691 = !DILocation(line: 340, column: 5, scope: !1558)
!1692 = !DILocation(line: 341, column: 5, scope: !1558)
!1693 = !DILocation(line: 343, column: 6, scope: !1558)
!1694 = !DILocation(line: 344, column: 26, scope: !1558)
!1695 = !DILocation(line: 344, column: 5, scope: !1558)
!1696 = !DILocation(line: 344, column: 24, scope: !1558)
!1697 = !DILocation(line: 345, column: 3, scope: !1559)
!1698 = !DILocation(line: 345, column: 3, scope: !1558)
!1699 = !DILocation(line: 348, column: 5, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1559, file: !1, line: 347, column: 3)
!1701 = !DILocation(line: 349, column: 27, scope: !1700)
!1702 = !DILocation(line: 349, column: 21, scope: !1700)
!1703 = !DILocation(line: 349, column: 5, scope: !1700)
!1704 = !DILocation(line: 349, column: 25, scope: !1700)
!1705 = !DILocation(line: 350, column: 11, scope: !1700)
!1706 = !DILocation(line: 0, scope: !1560)
!1707 = !DILocation(line: 352, column: 8, scope: !1560)
!1708 = !DILocation(line: 353, column: 8, scope: !1560)
!1709 = !DILocation(line: 354, column: 9, scope: !1560)
!1710 = !DILocation(line: 218, column: 16, scope: !1527)
!1711 = !DILocation(line: 357, column: 11, scope: !1712)
!1712 = distinct !DILexicalBlock(scope: !1551, file: !1, line: 357, column: 11)
!1713 = !DILocation(line: 357, column: 14, scope: !1712)
!1714 = !DILocation(line: 357, column: 11, scope: !1551)
!1715 = !DILocation(line: 360, column: 7, scope: !1551)
!1716 = !DILocation(line: 361, column: 7, scope: !1551)
!1717 = !DILocation(line: 362, column: 23, scope: !1551)
!1718 = !DILocation(line: 362, column: 17, scope: !1551)
!1719 = !DILocation(line: 362, column: 21, scope: !1551)
!1720 = !DILocation(line: 237, column: 3, scope: !1552)
!1721 = !DILocation(line: 365, column: 3, scope: !1527)
!1722 = !DILocation(line: 366, column: 3, scope: !1527)
!1723 = !DILocation(line: 367, column: 19, scope: !1527)
!1724 = !DILocation(line: 367, column: 13, scope: !1527)
!1725 = !DILocation(line: 367, column: 3, scope: !1527)
!1726 = !DILocation(line: 367, column: 17, scope: !1527)
!1727 = !DILocation(line: 368, column: 3, scope: !1527)
!1728 = !DILocation(line: 368, column: 15, scope: !1527)
!1729 = !DILocation(line: 372, column: 11, scope: !1527)
!1730 = !DILocation(line: 372, column: 19, scope: !1527)
!1731 = !DILocation(line: 373, column: 23, scope: !1527)
!1732 = !DILocation(line: 0, scope: !1583)
!1733 = !DILocation(line: 0, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1584, file: !1, line: 523, column: 8)
!1735 = !DILocation(line: 0, scope: !1574)
!1736 = !DILocation(line: 0, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !1, line: 497, column: 5)
!1738 = distinct !DILexicalBlock(scope: !1578, file: !1, line: 496, column: 7)
!1739 = !DILocation(line: 0, scope: !1586)
!1740 = !DILocation(line: 378, column: 8, scope: !1568)
!1741 = !DILocation(line: 0, scope: !1568)
!1742 = !DILocation(line: 378, column: 19, scope: !1567)
!1743 = !DILocation(line: 378, column: 3, scope: !1568)
!1744 = !DILocation(line: 0, scope: !1566)
!1745 = !DILocation(line: 389, column: 16, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 389, column: 7)
!1747 = !DILocation(line: 389, column: 12, scope: !1746)
!1748 = !DILocation(line: 381, column: 12, scope: !1566)
!1749 = !DILocation(line: 382, column: 12, scope: !1566)
!1750 = !DILocation(line: 383, column: 12, scope: !1566)
!1751 = !DILocation(line: 384, column: 12, scope: !1566)
!1752 = !DILocation(line: 0, scope: !1746)
!1753 = !DILocation(line: 391, column: 12, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1755, file: !1, line: 390, column: 2)
!1755 = distinct !DILexicalBlock(scope: !1746, file: !1, line: 389, column: 7)
!1756 = !DILocation(line: 391, column: 4, scope: !1754)
!1757 = !DILocation(line: 394, column: 8, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1754, file: !1, line: 392, column: 6)
!1759 = !DILocation(line: 399, column: 8, scope: !1758)
!1760 = !DILocation(line: 404, column: 8, scope: !1758)
!1761 = !DILocation(line: 409, column: 8, scope: !1758)
!1762 = !DILocation(line: 415, column: 8, scope: !1758)
!1763 = !DILocation(line: 416, column: 17, scope: !1758)
!1764 = !DILocation(line: 417, column: 8, scope: !1758)
!1765 = !DILocation(line: 389, column: 38, scope: !1755)
!1766 = !DILocation(line: 389, column: 7, scope: !1755)
!1767 = distinct !{!1767, !1768, !1769}
!1768 = !DILocation(line: 389, column: 7, scope: !1746)
!1769 = !DILocation(line: 420, column: 2, scope: !1746)
!1770 = !DILocation(line: 422, column: 7, scope: !1566)
!1771 = !DILocation(line: 424, column: 11, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 424, column: 11)
!1773 = !DILocation(line: 424, column: 11, scope: !1566)
!1774 = !DILocation(line: 425, column: 2, scope: !1772)
!1775 = !DILocation(line: 427, column: 15, scope: !1566)
!1776 = !DILocation(line: 427, column: 7, scope: !1566)
!1777 = !DILocation(line: 430, column: 4, scope: !1575)
!1778 = !DILocation(line: 431, column: 4, scope: !1575)
!1779 = !DILocation(line: 435, column: 8, scope: !1575)
!1780 = !DILocation(line: 436, column: 6, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 436, column: 6)
!1782 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 435, column: 8)
!1783 = !DILocation(line: 438, column: 6, scope: !1782)
!1784 = !DILocation(line: 438, column: 6, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1786, file: !1, line: 438, column: 6)
!1786 = distinct !DILexicalBlock(scope: !1782, file: !1, line: 438, column: 6)
!1787 = !DILocation(line: 438, column: 6, scope: !1786)
!1788 = !DILocation(line: 438, column: 6, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1786, file: !1, line: 438, column: 6)
!1790 = !DILocation(line: 438, column: 6, scope: !1791)
!1791 = distinct !DILexicalBlock(scope: !1786, file: !1, line: 438, column: 6)
!1792 = !DILocation(line: 443, column: 8, scope: !1575)
!1793 = !DILocation(line: 444, column: 6, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 444, column: 6)
!1795 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 443, column: 8)
!1796 = !DILocation(line: 447, column: 6, scope: !1795)
!1797 = !DILocation(line: 447, column: 6, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 447, column: 6)
!1799 = distinct !DILexicalBlock(scope: !1795, file: !1, line: 447, column: 6)
!1800 = !DILocation(line: 447, column: 6, scope: !1799)
!1801 = !DILocation(line: 447, column: 6, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 447, column: 6)
!1803 = !DILocation(line: 447, column: 6, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1799, file: !1, line: 447, column: 6)
!1805 = !DILocation(line: 452, column: 4, scope: !1575)
!1806 = !DILocation(line: 453, column: 4, scope: !1575)
!1807 = !DILocation(line: 456, column: 4, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 456, column: 4)
!1809 = !DILocation(line: 457, column: 4, scope: !1575)
!1810 = !DILocation(line: 460, column: 8, scope: !1575)
!1811 = !DILocation(line: 461, column: 6, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 461, column: 6)
!1813 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 460, column: 8)
!1814 = !DILocation(line: 464, column: 6, scope: !1813)
!1815 = !DILocation(line: 464, column: 6, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 464, column: 6)
!1817 = distinct !DILexicalBlock(scope: !1813, file: !1, line: 464, column: 6)
!1818 = !DILocation(line: 464, column: 6, scope: !1817)
!1819 = !DILocation(line: 464, column: 6, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 464, column: 6)
!1821 = !DILocation(line: 464, column: 6, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1817, file: !1, line: 464, column: 6)
!1823 = !DILocation(line: 469, column: 8, scope: !1575)
!1824 = !DILocation(line: 470, column: 6, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1826, file: !1, line: 470, column: 6)
!1826 = distinct !DILexicalBlock(scope: !1575, file: !1, line: 469, column: 8)
!1827 = !DILocation(line: 473, column: 6, scope: !1826)
!1828 = !DILocation(line: 473, column: 6, scope: !1829)
!1829 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 473, column: 6)
!1830 = distinct !DILexicalBlock(scope: !1826, file: !1, line: 473, column: 6)
!1831 = !DILocation(line: 473, column: 6, scope: !1830)
!1832 = !DILocation(line: 473, column: 6, scope: !1833)
!1833 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 473, column: 6)
!1834 = !DILocation(line: 473, column: 6, scope: !1835)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !1, line: 473, column: 6)
!1836 = !DILocation(line: 479, column: 15, scope: !1574)
!1837 = !DILocation(line: 480, column: 6, scope: !1574)
!1838 = !DILocation(line: 481, column: 21, scope: !1574)
!1839 = !DILocation(line: 481, column: 13, scope: !1574)
!1840 = !DILocation(line: 481, column: 19, scope: !1574)
!1841 = !DILocation(line: 482, column: 6, scope: !1574)
!1842 = !DILocation(line: 483, column: 14, scope: !1574)
!1843 = !DILocation(line: 484, column: 13, scope: !1574)
!1844 = !DILocation(line: 484, column: 29, scope: !1574)
!1845 = !DILocation(line: 485, column: 6, scope: !1574)
!1846 = !DILocation(line: 483, column: 12, scope: !1574)
!1847 = !DILocation(line: 485, column: 13, scope: !1574)
!1848 = !DILocation(line: 486, column: 6, scope: !1574)
!1849 = !DILocation(line: 486, column: 9, scope: !1574)
!1850 = !DILocation(line: 486, column: 27, scope: !1574)
!1851 = !DILocation(line: 487, column: 6, scope: !1574)
!1852 = !DILocation(line: 487, column: 9, scope: !1574)
!1853 = !DILocation(line: 491, column: 3, scope: !1578)
!1854 = !DILocation(line: 0, scope: !1578)
!1855 = !DILocation(line: 491, column: 10, scope: !1578)
!1856 = !DILocation(line: 491, column: 25, scope: !1578)
!1857 = !DILocation(line: 492, column: 10, scope: !1578)
!1858 = !DILocation(line: 492, column: 13, scope: !1578)
!1859 = !DILocation(line: 493, column: 40, scope: !1578)
!1860 = !DILocation(line: 493, column: 10, scope: !1578)
!1861 = distinct !{!1861, !1853, !1862}
!1862 = !DILocation(line: 494, column: 10, scope: !1578)
!1863 = !DILocation(line: 496, column: 22, scope: !1738)
!1864 = !DILocation(line: 496, column: 7, scope: !1578)
!1865 = !DILocation(line: 498, column: 14, scope: !1737)
!1866 = !DILocation(line: 498, column: 30, scope: !1737)
!1867 = !DILocation(line: 499, column: 7, scope: !1737)
!1868 = !DILocation(line: 501, column: 11, scope: !1578)
!1869 = !DILocation(line: 502, column: 8, scope: !1574)
!1870 = distinct !{!1870, !1845, !1869}
!1871 = !DILocation(line: 514, column: 7, scope: !1580)
!1872 = !DILocation(line: 515, column: 10, scope: !1584)
!1873 = !DILocation(line: 515, column: 10, scope: !1580)
!1874 = !DILocation(line: 517, column: 3, scope: !1583)
!1875 = !DILocation(line: 518, column: 7, scope: !1583)
!1876 = !DILocation(line: 0, scope: !1580)
!1877 = !DILocation(line: 519, column: 7, scope: !1583)
!1878 = !DILocation(line: 520, column: 3, scope: !1583)
!1879 = !DILocation(line: 521, column: 8, scope: !1584)
!1880 = !DILocation(line: 521, column: 8, scope: !1583)
!1881 = !DILocation(line: 524, column: 3, scope: !1734)
!1882 = !DILocation(line: 525, column: 4, scope: !1734)
!1883 = !DILocation(line: 526, column: 3, scope: !1734)
!1884 = !DILocation(line: 527, column: 7, scope: !1734)
!1885 = !DILocation(line: 530, column: 3, scope: !1734)
!1886 = !DILocation(line: 0, scope: !1584)
!1887 = !DILocation(line: 534, column: 10, scope: !1580)
!1888 = !DILocation(line: 535, column: 6, scope: !1580)
!1889 = !DILocation(line: 537, column: 4, scope: !1575)
!1890 = !DILocation(line: 543, column: 6, scope: !1586)
!1891 = !DILocation(line: 544, column: 11, scope: !1586)
!1892 = !DILocation(line: 546, column: 6, scope: !1586)
!1893 = !DILocation(line: 550, column: 11, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1566, file: !1, line: 550, column: 11)
!1895 = !DILocation(line: 378, column: 14, scope: !1568)
!1896 = !DILocation(line: 550, column: 11, scope: !1566)
!1897 = !DILocation(line: 551, column: 2, scope: !1894)
!1898 = !DILocation(line: 553, column: 7, scope: !1566)
!1899 = !DILocation(line: 554, column: 28, scope: !1566)
!1900 = !DILocation(line: 554, column: 8, scope: !1566)
!1901 = !DILocation(line: 554, column: 26, scope: !1566)
!1902 = !DILocation(line: 378, column: 43, scope: !1567)
!1903 = !DILocation(line: 378, column: 3, scope: !1567)
!1904 = distinct !{!1904, !1743, !1905}
!1905 = !DILocation(line: 555, column: 5, scope: !1568)
!1906 = !DILocation(line: 563, column: 30, scope: !1527)
!1907 = !DILocation(line: 563, column: 19, scope: !1527)
!1908 = !DILocation(line: 564, column: 11, scope: !1527)
!1909 = !DILocation(line: 564, column: 23, scope: !1527)
!1910 = !DILocation(line: 565, column: 3, scope: !1527)
!1911 = !DILocation(line: 565, column: 27, scope: !1527)
!1912 = !DILocation(line: 566, column: 3, scope: !1527)
!1913 = !DILocation(line: 567, column: 1, scope: !1527)
!1914 = distinct !DISubprogram(name: "pp_set_verbatim_wrapping_", scope: !4, file: !4, line: 344, type: !1915, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!796, !785}
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "pp", arg: 1, scope: !1914, file: !4, line: 344, type: !785)
!1919 = !DILocalVariable(name: "oldmode", scope: !1914, file: !4, line: 346, type: !796)
!1920 = !DILocation(line: 0, scope: !1914)
!1921 = !DILocation(line: 346, column: 32, scope: !1914)
!1922 = !DILocation(line: 347, column: 3, scope: !1914)
!1923 = !DILocation(line: 347, column: 23, scope: !1914)
!1924 = !DILocation(line: 348, column: 3, scope: !1914)
!1925 = !DILocation(line: 348, column: 26, scope: !1914)
!1926 = !DILocation(line: 349, column: 3, scope: !1914)
!1927 = distinct !DISubprogram(name: "pp_base_string", scope: !1, file: !1, line: 819, type: !1928, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1930)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{null, !785, !250}
!1930 = !{!1931, !1932}
!1931 = !DILocalVariable(name: "pp", arg: 1, scope: !1927, file: !1, line: 819, type: !785)
!1932 = !DILocalVariable(name: "str", arg: 2, scope: !1927, file: !1, line: 819, type: !250)
!1933 = !DILocation(line: 0, scope: !1927)
!1934 = !DILocation(line: 821, column: 39, scope: !1927)
!1935 = !DILocation(line: 821, column: 45, scope: !1927)
!1936 = !DILocation(line: 821, column: 36, scope: !1927)
!1937 = !DILocation(line: 821, column: 3, scope: !1927)
!1938 = !DILocation(line: 822, column: 1, scope: !1927)
!1939 = distinct !DISubprogram(name: "pp_base_append_text", scope: !1, file: !1, line: 713, type: !1940, scopeLine: 714, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1942)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{null, !785, !250, !250}
!1942 = !{!1943, !1944, !1945}
!1943 = !DILocalVariable(name: "pp", arg: 1, scope: !1939, file: !1, line: 713, type: !785)
!1944 = !DILocalVariable(name: "start", arg: 2, scope: !1939, file: !1, line: 713, type: !250)
!1945 = !DILocalVariable(name: "end", arg: 3, scope: !1939, file: !1, line: 713, type: !250)
!1946 = !DILocation(line: 0, scope: !1939)
!1947 = !DILocation(line: 716, column: 11, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1939, file: !1, line: 716, column: 7)
!1949 = !DILocation(line: 716, column: 19, scope: !1948)
!1950 = !DILocation(line: 716, column: 31, scope: !1948)
!1951 = !DILocation(line: 716, column: 7, scope: !1939)
!1952 = !DILocation(line: 718, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1948, file: !1, line: 717, column: 5)
!1954 = !DILocation(line: 719, column: 11, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1953, file: !1, line: 719, column: 11)
!1956 = !DILocation(line: 719, column: 11, scope: !1953)
!1957 = !DILocation(line: 720, column: 2, scope: !1955)
!1958 = !DILocation(line: 720, column: 15, scope: !1955)
!1959 = !DILocation(line: 720, column: 22, scope: !1955)
!1960 = !DILocation(line: 720, column: 25, scope: !1955)
!1961 = !DILocation(line: 720, column: 32, scope: !1955)
!1962 = !DILocation(line: 721, column: 4, scope: !1955)
!1963 = distinct !{!1963, !1957, !1964}
!1964 = !DILocation(line: 721, column: 6, scope: !1955)
!1965 = !DILocation(line: 723, column: 31, scope: !1939)
!1966 = !DILocation(line: 723, column: 27, scope: !1939)
!1967 = !DILocation(line: 723, column: 3, scope: !1939)
!1968 = !DILocation(line: 724, column: 1, scope: !1939)
!1969 = distinct !DISubprogram(name: "pp_clear_state", scope: !1, file: !1, line: 93, type: !783, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1970)
!1970 = !{!1971}
!1971 = !DILocalVariable(name: "pp", arg: 1, scope: !1969, file: !1, line: 93, type: !785)
!1972 = !DILocation(line: 0, scope: !1969)
!1973 = !DILocation(line: 95, column: 7, scope: !1969)
!1974 = !DILocation(line: 95, column: 22, scope: !1969)
!1975 = !DILocation(line: 96, column: 3, scope: !1969)
!1976 = !DILocation(line: 96, column: 23, scope: !1969)
!1977 = !DILocation(line: 97, column: 1, scope: !1969)
!1978 = distinct !DISubprogram(name: "pp_base_output_formatted_text", scope: !1, file: !1, line: 571, type: !783, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1979)
!1979 = !{!1980, !1981, !1982, !1983, !1984}
!1980 = !DILocalVariable(name: "pp", arg: 1, scope: !1978, file: !1, line: 571, type: !785)
!1981 = !DILocalVariable(name: "chunk", scope: !1978, file: !1, line: 573, type: !5)
!1982 = !DILocalVariable(name: "buffer", scope: !1978, file: !1, line: 574, type: !266)
!1983 = !DILocalVariable(name: "chunk_array", scope: !1978, file: !1, line: 575, type: !252)
!1984 = !DILocalVariable(name: "args", scope: !1978, file: !1, line: 576, type: !1536)
!1985 = !DILocation(line: 0, scope: !1978)
!1986 = !DILocation(line: 574, column: 27, scope: !1978)
!1987 = !DILocation(line: 575, column: 44, scope: !1978)
!1988 = !DILocation(line: 578, column: 3, scope: !1978)
!1989 = !DILocation(line: 579, column: 3, scope: !1978)
!1990 = !DILocation(line: 583, column: 8, scope: !1991)
!1991 = distinct !DILexicalBlock(scope: !1978, file: !1, line: 583, column: 3)
!1992 = !DILocation(line: 0, scope: !1991)
!1993 = !DILocation(line: 583, column: 19, scope: !1994)
!1994 = distinct !DILexicalBlock(scope: !1991, file: !1, line: 583, column: 3)
!1995 = !DILocation(line: 583, column: 3, scope: !1991)
!1996 = !DILocation(line: 584, column: 5, scope: !1994)
!1997 = !DILocation(line: 583, column: 37, scope: !1994)
!1998 = !DILocation(line: 583, column: 3, scope: !1994)
!1999 = distinct !{!1999, !1995, !2000}
!2000 = !DILocation(line: 584, column: 5, scope: !1991)
!2001 = !DILocation(line: 588, column: 42, scope: !1978)
!2002 = !DILocation(line: 588, column: 27, scope: !1978)
!2003 = !DILocation(line: 589, column: 3, scope: !1978)
!2004 = !DILocation(line: 590, column: 1, scope: !1978)
!2005 = distinct !DISubprogram(name: "pp_base_format_verbatim", scope: !1, file: !1, line: 595, type: !1528, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2006)
!2006 = !{!2007, !2008, !2009}
!2007 = !DILocalVariable(name: "pp", arg: 1, scope: !2005, file: !1, line: 595, type: !785)
!2008 = !DILocalVariable(name: "text", arg: 2, scope: !2005, file: !1, line: 595, type: !807)
!2009 = !DILocalVariable(name: "oldmode", scope: !2005, file: !1, line: 598, type: !796)
!2010 = !DILocation(line: 0, scope: !2005)
!2011 = !DILocation(line: 598, column: 32, scope: !2005)
!2012 = !DILocation(line: 601, column: 3, scope: !2005)
!2013 = !DILocation(line: 602, column: 3, scope: !2005)
!2014 = !DILocation(line: 605, column: 3, scope: !2005)
!2015 = !DILocation(line: 605, column: 27, scope: !2005)
!2016 = !DILocation(line: 606, column: 1, scope: !2005)
!2017 = distinct !DISubprogram(name: "pp_base_flush", scope: !1, file: !1, line: 610, type: !783, scopeLine: 611, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "pp", arg: 1, scope: !2017, file: !1, line: 610, type: !785)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 612, column: 3, scope: !2017)
!2022 = !DILocation(line: 613, column: 3, scope: !2017)
!2023 = !DILocation(line: 614, column: 20, scope: !2017)
!2024 = !DILocation(line: 614, column: 28, scope: !2017)
!2025 = !DILocation(line: 614, column: 3, scope: !2017)
!2026 = !DILocation(line: 615, column: 15, scope: !2017)
!2027 = !DILocation(line: 615, column: 23, scope: !2017)
!2028 = !DILocation(line: 615, column: 3, scope: !2017)
!2029 = !DILocation(line: 616, column: 3, scope: !2017)
!2030 = !DILocation(line: 616, column: 25, scope: !2017)
!2031 = !DILocation(line: 617, column: 1, scope: !2017)
!2032 = distinct !DISubprogram(name: "pp_base_set_line_maximum_length", scope: !1, file: !1, line: 623, type: !1505, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2033)
!2033 = !{!2034, !2035}
!2034 = !DILocalVariable(name: "pp", arg: 1, scope: !2032, file: !1, line: 623, type: !785)
!2035 = !DILocalVariable(name: "length", arg: 2, scope: !2032, file: !1, line: 623, type: !245)
!2036 = !DILocation(line: 0, scope: !2032)
!2037 = !DILocation(line: 625, column: 3, scope: !2032)
!2038 = !DILocation(line: 625, column: 23, scope: !2032)
!2039 = !DILocation(line: 626, column: 3, scope: !2032)
!2040 = !DILocation(line: 627, column: 1, scope: !2032)
!2041 = distinct !DISubprogram(name: "pp_set_real_maximum_length", scope: !1, file: !1, line: 70, type: !783, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2042)
!2042 = !{!2043, !2044}
!2043 = !DILocalVariable(name: "pp", arg: 1, scope: !2041, file: !1, line: 70, type: !785)
!2044 = !DILocalVariable(name: "prefix_length", scope: !2045, file: !1, line: 81, type: !245)
!2045 = distinct !DILexicalBlock(scope: !2046, file: !1, line: 80, column: 5)
!2046 = distinct !DILexicalBlock(scope: !2041, file: !1, line: 75, column: 7)
!2047 = !DILocation(line: 0, scope: !2041)
!2048 = !DILocation(line: 75, column: 8, scope: !2046)
!2049 = !DILocation(line: 76, column: 7, scope: !2046)
!2050 = !DILocation(line: 76, column: 10, scope: !2046)
!2051 = !DILocation(line: 76, column: 33, scope: !2046)
!2052 = !DILocation(line: 77, column: 7, scope: !2046)
!2053 = !DILocation(line: 77, column: 33, scope: !2046)
!2054 = !DILocation(line: 75, column: 7, scope: !2041)
!2055 = !DILocation(line: 78, column: 9, scope: !2046)
!2056 = !DILocation(line: 78, column: 24, scope: !2046)
!2057 = !DILocation(line: 78, column: 5, scope: !2046)
!2058 = !DILocation(line: 81, column: 31, scope: !2045)
!2059 = !DILocation(line: 81, column: 27, scope: !2045)
!2060 = !DILocation(line: 81, column: 40, scope: !2045)
!2061 = !DILocation(line: 84, column: 11, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 84, column: 11)
!2063 = !DILocation(line: 0, scope: !2045)
!2064 = !DILocation(line: 84, column: 31, scope: !2062)
!2065 = !DILocation(line: 84, column: 47, scope: !2062)
!2066 = !DILocation(line: 84, column: 11, scope: !2045)
!2067 = !DILocation(line: 85, column: 43, scope: !2062)
!2068 = !DILocation(line: 85, column: 6, scope: !2062)
!2069 = !DILocation(line: 85, column: 21, scope: !2062)
!2070 = !DILocation(line: 85, column: 2, scope: !2062)
!2071 = !DILocation(line: 87, column: 6, scope: !2062)
!2072 = !DILocation(line: 87, column: 21, scope: !2062)
!2073 = !DILocation(line: 89, column: 1, scope: !2041)
!2074 = distinct !DISubprogram(name: "pp_base_set_prefix", scope: !1, file: !1, line: 639, type: !1928, scopeLine: 640, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2075)
!2075 = !{!2076, !2077}
!2076 = !DILocalVariable(name: "pp", arg: 1, scope: !2074, file: !1, line: 639, type: !785)
!2077 = !DILocalVariable(name: "prefix", arg: 2, scope: !2074, file: !1, line: 639, type: !250)
!2078 = !DILocation(line: 0, scope: !2074)
!2079 = !DILocation(line: 641, column: 7, scope: !2074)
!2080 = !DILocation(line: 641, column: 14, scope: !2074)
!2081 = !DILocation(line: 642, column: 3, scope: !2074)
!2082 = !DILocation(line: 643, column: 7, scope: !2074)
!2083 = !DILocation(line: 643, column: 22, scope: !2074)
!2084 = !DILocation(line: 644, column: 3, scope: !2074)
!2085 = !DILocation(line: 644, column: 23, scope: !2074)
!2086 = !DILocation(line: 645, column: 1, scope: !2074)
!2087 = distinct !DISubprogram(name: "pp_base_destroy_prefix", scope: !1, file: !1, line: 649, type: !783, scopeLine: 650, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2088)
!2088 = !{!2089}
!2089 = !DILocalVariable(name: "pp", arg: 1, scope: !2087, file: !1, line: 649, type: !785)
!2090 = !DILocation(line: 0, scope: !2087)
!2091 = !DILocation(line: 651, column: 11, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2087, file: !1, line: 651, column: 7)
!2093 = !DILocation(line: 651, column: 18, scope: !2092)
!2094 = !DILocation(line: 651, column: 7, scope: !2087)
!2095 = !DILocation(line: 653, column: 7, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2092, file: !1, line: 652, column: 5)
!2097 = !DILocation(line: 654, column: 18, scope: !2096)
!2098 = !DILocation(line: 655, column: 5, scope: !2096)
!2099 = !DILocation(line: 656, column: 1, scope: !2087)
!2100 = distinct !DISubprogram(name: "pp_base_emit_prefix", scope: !1, file: !1, line: 660, type: !783, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2101)
!2101 = !{!2102, !2103}
!2102 = !DILocalVariable(name: "pp", arg: 1, scope: !2100, file: !1, line: 660, type: !785)
!2103 = !DILocalVariable(name: "prefix_length", scope: !2104, file: !1, line: 681, type: !245)
!2104 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 680, column: 4)
!2105 = distinct !DILexicalBlock(scope: !2106, file: !1, line: 665, column: 2)
!2106 = distinct !DILexicalBlock(scope: !2107, file: !1, line: 663, column: 5)
!2107 = distinct !DILexicalBlock(scope: !2100, file: !1, line: 662, column: 7)
!2108 = !DILocation(line: 0, scope: !2100)
!2109 = !DILocation(line: 662, column: 11, scope: !2107)
!2110 = !DILocation(line: 662, column: 18, scope: !2107)
!2111 = !DILocation(line: 662, column: 7, scope: !2100)
!2112 = !DILocation(line: 664, column: 15, scope: !2106)
!2113 = !DILocation(line: 664, column: 7, scope: !2106)
!2114 = !DILocation(line: 671, column: 12, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2105, file: !1, line: 671, column: 8)
!2116 = !DILocation(line: 671, column: 8, scope: !2115)
!2117 = !DILocation(line: 671, column: 8, scope: !2105)
!2118 = !DILocation(line: 673, column: 8, scope: !2119)
!2119 = distinct !DILexicalBlock(scope: !2115, file: !1, line: 672, column: 6)
!2120 = !DILocation(line: 674, column: 8, scope: !2119)
!2121 = !DILocation(line: 676, column: 4, scope: !2105)
!2122 = !DILocation(line: 676, column: 24, scope: !2105)
!2123 = !DILocation(line: 681, column: 26, scope: !2104)
!2124 = !DILocation(line: 0, scope: !2104)
!2125 = !DILocation(line: 682, column: 27, scope: !2104)
!2126 = !DILocation(line: 682, column: 6, scope: !2104)
!2127 = !DILocation(line: 683, column: 10, scope: !2104)
!2128 = !DILocation(line: 683, column: 25, scope: !2104)
!2129 = !DILocation(line: 685, column: 4, scope: !2105)
!2130 = !DILocation(line: 688, column: 1, scope: !2100)
!2131 = distinct !DISubprogram(name: "pp_append_r", scope: !1, file: !1, line: 154, type: !2132, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2134)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !785, !250, !245}
!2134 = !{!2135, !2136, !2137}
!2135 = !DILocalVariable(name: "pp", arg: 1, scope: !2131, file: !1, line: 154, type: !785)
!2136 = !DILocalVariable(name: "start", arg: 2, scope: !2131, file: !1, line: 154, type: !250)
!2137 = !DILocalVariable(name: "length", arg: 3, scope: !2131, file: !1, line: 154, type: !245)
!2138 = !DILocation(line: 0, scope: !2131)
!2139 = !DILocation(line: 156, column: 3, scope: !2131)
!2140 = !DILocation(line: 157, column: 7, scope: !2131)
!2141 = !DILocation(line: 157, column: 15, scope: !2131)
!2142 = !DILocation(line: 157, column: 27, scope: !2131)
!2143 = !DILocation(line: 158, column: 1, scope: !2131)
!2144 = distinct !DISubprogram(name: "pp_construct", scope: !1, file: !1, line: 693, type: !2132, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2145)
!2145 = !{!2146, !2147, !2148}
!2146 = !DILocalVariable(name: "pp", arg: 1, scope: !2144, file: !1, line: 693, type: !785)
!2147 = !DILocalVariable(name: "prefix", arg: 2, scope: !2144, file: !1, line: 693, type: !250)
!2148 = !DILocalVariable(name: "maximum_length", arg: 3, scope: !2144, file: !1, line: 693, type: !245)
!2149 = !DILocation(line: 0, scope: !2144)
!2150 = !DILocation(line: 695, column: 11, scope: !2144)
!2151 = !DILocation(line: 695, column: 3, scope: !2144)
!2152 = !DILocation(line: 696, column: 16, scope: !2144)
!2153 = !DILocation(line: 696, column: 14, scope: !2144)
!2154 = !DILocation(line: 697, column: 3, scope: !2144)
!2155 = !DILocation(line: 698, column: 3, scope: !2144)
!2156 = !DILocation(line: 699, column: 30, scope: !2144)
!2157 = !DILocation(line: 699, column: 38, scope: !2144)
!2158 = !DILocation(line: 699, column: 15, scope: !2144)
!2159 = !DILocation(line: 699, column: 23, scope: !2144)
!2160 = !DILocation(line: 700, column: 24, scope: !2144)
!2161 = !DILocation(line: 700, column: 7, scope: !2144)
!2162 = !DILocation(line: 700, column: 15, scope: !2144)
!2163 = !DILocation(line: 700, column: 22, scope: !2144)
!2164 = !DILocation(line: 701, column: 3, scope: !2144)
!2165 = !DILocation(line: 701, column: 23, scope: !2144)
!2166 = !DILocation(line: 702, column: 3, scope: !2144)
!2167 = !DILocation(line: 702, column: 26, scope: !2144)
!2168 = !DILocation(line: 703, column: 3, scope: !2144)
!2169 = !DILocation(line: 704, column: 3, scope: !2144)
!2170 = !DILocation(line: 704, column: 33, scope: !2144)
!2171 = !DILocation(line: 705, column: 1, scope: !2144)
!2172 = distinct !DISubprogram(name: "pp_base_last_position_in_text", scope: !1, file: !1, line: 738, type: !2173, scopeLine: 739, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2177)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!250, !2175}
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!2177 = !{!2178, !2179, !2180}
!2178 = !DILocalVariable(name: "pp", arg: 1, scope: !2172, file: !1, line: 738, type: !2175)
!2179 = !DILocalVariable(name: "p", scope: !2172, file: !1, line: 740, type: !250)
!2180 = !DILocalVariable(name: "text", scope: !2172, file: !1, line: 741, type: !304)
!2181 = !DILocation(line: 0, scope: !2172)
!2182 = !DILocation(line: 741, column: 30, scope: !2172)
!2183 = !DILocation(line: 741, column: 38, scope: !2172)
!2184 = !DILocation(line: 743, column: 7, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 743, column: 7)
!2186 = !DILocation(line: 743, column: 30, scope: !2185)
!2187 = !DILocation(line: 743, column: 27, scope: !2185)
!2188 = !DILocation(line: 743, column: 7, scope: !2172)
!2189 = !DILocation(line: 744, column: 51, scope: !2185)
!2190 = !DILocation(line: 744, column: 5, scope: !2185)
!2191 = !DILocation(line: 745, column: 3, scope: !2172)
!2192 = distinct !DISubprogram(name: "pp_base_remaining_character_count_for_line", scope: !1, file: !1, line: 751, type: !2193, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2195)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!245, !785}
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "pp", arg: 1, scope: !2192, file: !1, line: 751, type: !785)
!2197 = !DILocation(line: 0, scope: !2192)
!2198 = !DILocation(line: 753, column: 14, scope: !2192)
!2199 = !DILocation(line: 753, column: 35, scope: !2192)
!2200 = !DILocation(line: 753, column: 43, scope: !2192)
!2201 = !DILocation(line: 753, column: 29, scope: !2192)
!2202 = !DILocation(line: 753, column: 3, scope: !2192)
!2203 = distinct !DISubprogram(name: "pp_printf", scope: !1, file: !1, line: 759, type: !2204, scopeLine: 760, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !785, !250, null}
!2206 = !{!2207, !2208, !2209, !2210}
!2207 = !DILocalVariable(name: "pp", arg: 1, scope: !2203, file: !1, line: 759, type: !785)
!2208 = !DILocalVariable(name: "msg", arg: 2, scope: !2203, file: !1, line: 759, type: !250)
!2209 = !DILocalVariable(name: "text", scope: !2203, file: !1, line: 761, type: !808)
!2210 = !DILocalVariable(name: "ap", scope: !2203, file: !1, line: 762, type: !814)
!2211 = !DILocation(line: 0, scope: !2203)
!2212 = !DILocation(line: 761, column: 3, scope: !2203)
!2213 = !DILocation(line: 762, column: 3, scope: !2203)
!2214 = !DILocation(line: 762, column: 11, scope: !2203)
!2215 = !DILocation(line: 764, column: 3, scope: !2203)
!2216 = !DILocation(line: 765, column: 17, scope: !2203)
!2217 = !DILocation(line: 765, column: 8, scope: !2203)
!2218 = !DILocation(line: 765, column: 15, scope: !2203)
!2219 = !DILocation(line: 766, column: 8, scope: !2203)
!2220 = !DILocation(line: 766, column: 17, scope: !2203)
!2221 = !DILocation(line: 767, column: 8, scope: !2203)
!2222 = !DILocation(line: 767, column: 20, scope: !2203)
!2223 = !DILocation(line: 768, column: 8, scope: !2203)
!2224 = !DILocation(line: 768, column: 14, scope: !2203)
!2225 = !DILocation(line: 769, column: 3, scope: !2203)
!2226 = !DILocation(line: 770, column: 3, scope: !2203)
!2227 = !DILocation(line: 771, column: 3, scope: !2203)
!2228 = !DILocation(line: 772, column: 1, scope: !2203)
!2229 = distinct !DISubprogram(name: "pp_verbatim", scope: !1, file: !1, line: 777, type: !2204, scopeLine: 778, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2230)
!2230 = !{!2231, !2232, !2233, !2234}
!2231 = !DILocalVariable(name: "pp", arg: 1, scope: !2229, file: !1, line: 777, type: !785)
!2232 = !DILocalVariable(name: "msg", arg: 2, scope: !2229, file: !1, line: 777, type: !250)
!2233 = !DILocalVariable(name: "text", scope: !2229, file: !1, line: 779, type: !808)
!2234 = !DILocalVariable(name: "ap", scope: !2229, file: !1, line: 780, type: !814)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 779, column: 3, scope: !2229)
!2237 = !DILocation(line: 780, column: 3, scope: !2229)
!2238 = !DILocation(line: 780, column: 11, scope: !2229)
!2239 = !DILocation(line: 782, column: 3, scope: !2229)
!2240 = !DILocation(line: 783, column: 17, scope: !2229)
!2241 = !DILocation(line: 783, column: 8, scope: !2229)
!2242 = !DILocation(line: 783, column: 15, scope: !2229)
!2243 = !DILocation(line: 784, column: 8, scope: !2229)
!2244 = !DILocation(line: 784, column: 17, scope: !2229)
!2245 = !DILocation(line: 785, column: 8, scope: !2229)
!2246 = !DILocation(line: 785, column: 20, scope: !2229)
!2247 = !DILocation(line: 786, column: 8, scope: !2229)
!2248 = !DILocation(line: 786, column: 14, scope: !2229)
!2249 = !DILocation(line: 787, column: 3, scope: !2229)
!2250 = !DILocation(line: 788, column: 3, scope: !2229)
!2251 = !DILocation(line: 789, column: 1, scope: !2229)
!2252 = distinct !DISubprogram(name: "pp_base_newline", scope: !1, file: !1, line: 795, type: !783, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2253)
!2253 = !{!2254}
!2254 = !DILocalVariable(name: "pp", arg: 1, scope: !2252, file: !1, line: 795, type: !785)
!2255 = !DILocation(line: 0, scope: !2252)
!2256 = !DILocation(line: 797, column: 3, scope: !2252)
!2257 = !DILocation(line: 798, column: 7, scope: !2252)
!2258 = !DILocation(line: 798, column: 15, scope: !2252)
!2259 = !DILocation(line: 798, column: 27, scope: !2252)
!2260 = !DILocation(line: 799, column: 1, scope: !2252)
!2261 = distinct !DISubprogram(name: "pp_maybe_wrap_text", scope: !1, file: !1, line: 143, type: !1940, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2262)
!2262 = !{!2263, !2264, !2265}
!2263 = !DILocalVariable(name: "pp", arg: 1, scope: !2261, file: !1, line: 143, type: !785)
!2264 = !DILocalVariable(name: "start", arg: 2, scope: !2261, file: !1, line: 143, type: !250)
!2265 = !DILocalVariable(name: "end", arg: 3, scope: !2261, file: !1, line: 143, type: !250)
!2266 = !DILocation(line: 0, scope: !2261)
!2267 = !DILocation(line: 145, column: 7, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 145, column: 7)
!2269 = !DILocation(line: 145, column: 7, scope: !2261)
!2270 = !DILocation(line: 146, column: 5, scope: !2268)
!2271 = !DILocation(line: 148, column: 5, scope: !2268)
!2272 = !DILocation(line: 149, column: 1, scope: !2261)
!2273 = distinct !DISubprogram(name: "pp_base_maybe_space", scope: !1, file: !1, line: 827, type: !783, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2274)
!2274 = !{!2275}
!2275 = !DILocalVariable(name: "pp", arg: 1, scope: !2273, file: !1, line: 827, type: !785)
!2276 = !DILocation(line: 0, scope: !2273)
!2277 = !DILocation(line: 829, column: 21, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2273, file: !1, line: 829, column: 7)
!2279 = !DILocation(line: 829, column: 29, scope: !2278)
!2280 = !DILocation(line: 829, column: 7, scope: !2273)
!2281 = !DILocation(line: 831, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 830, column: 5)
!2283 = !DILocation(line: 832, column: 29, scope: !2282)
!2284 = !DILocation(line: 833, column: 5, scope: !2282)
!2285 = !DILocation(line: 834, column: 1, scope: !2273)
!2286 = distinct !DISubprogram(name: "pp_base_tree_identifier", scope: !1, file: !1, line: 839, type: !2287, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2289)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{null, !785, !827}
!2289 = !{!2290, !2291, !2292}
!2290 = !DILocalVariable(name: "pp", arg: 1, scope: !2286, file: !1, line: 839, type: !785)
!2291 = !DILocalVariable(name: "id", arg: 2, scope: !2286, file: !1, line: 839, type: !827)
!2292 = !DILocalVariable(name: "text", scope: !2293, file: !1, line: 843, type: !250)
!2293 = distinct !DILexicalBlock(scope: !2294, file: !1, line: 842, column: 5)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !1, line: 841, column: 7)
!2295 = !DILocation(line: 0, scope: !2286)
!2296 = !DILocation(line: 841, column: 7, scope: !2294)
!2297 = !DILocation(line: 0, scope: !2294)
!2298 = !DILocation(line: 841, column: 7, scope: !2286)
!2299 = !DILocation(line: 843, column: 26, scope: !2293)
!2300 = !DILocation(line: 0, scope: !2293)
!2301 = !DILocation(line: 844, column: 7, scope: !2293)
!2302 = !DILocation(line: 845, column: 5, scope: !2293)
!2303 = !DILocation(line: 847, column: 5, scope: !2294)
!2304 = !DILocation(line: 849, column: 1, scope: !2286)
!2305 = distinct !DISubprogram(name: "identifier_to_locale", scope: !1, file: !1, line: 917, type: !2306, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2308)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!250, !250}
!2308 = !{!2309, !2310, !2311, !2312, !2313, !2314, !2315, !2319, !2320, !2323, !2324, !2326, !2327, !2331}
!2309 = !DILocalVariable(name: "ident", arg: 1, scope: !2305, file: !1, line: 917, type: !250)
!2310 = !DILocalVariable(name: "uid", scope: !2305, file: !1, line: 919, type: !374)
!2311 = !DILocalVariable(name: "idlen", scope: !2305, file: !1, line: 920, type: !356)
!2312 = !DILocalVariable(name: "valid_printable_utf8", scope: !2305, file: !1, line: 921, type: !244)
!2313 = !DILocalVariable(name: "all_ascii", scope: !2305, file: !1, line: 922, type: !244)
!2314 = !DILocalVariable(name: "i", scope: !2305, file: !1, line: 923, type: !356)
!2315 = !DILocalVariable(name: "c", scope: !2316, file: !1, line: 927, type: !5)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !1, line: 926, column: 5)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !1, line: 925, column: 3)
!2318 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 925, column: 3)
!2319 = !DILocalVariable(name: "utf8_len", scope: !2316, file: !1, line: 928, type: !356)
!2320 = !DILocalVariable(name: "ret", scope: !2321, file: !1, line: 945, type: !247)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !1, line: 944, column: 5)
!2322 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 943, column: 7)
!2323 = !DILocalVariable(name: "p", scope: !2321, file: !1, line: 946, type: !247)
!2324 = !DILocalVariable(name: "ret", scope: !2325, file: !1, line: 1047, type: !247)
!2325 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 1046, column: 3)
!2326 = !DILocalVariable(name: "p", scope: !2325, file: !1, line: 1048, type: !247)
!2327 = !DILocalVariable(name: "c", scope: !2328, file: !1, line: 1051, type: !5)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !1, line: 1050, column: 7)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !1, line: 1049, column: 5)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !1, line: 1049, column: 5)
!2331 = !DILocalVariable(name: "utf8_len", scope: !2328, file: !1, line: 1052, type: !356)
!2332 = !DILocation(line: 0, scope: !2305)
!2333 = !DILocation(line: 920, column: 18, scope: !2305)
!2334 = !DILocation(line: 0, scope: !2316)
!2335 = !DILocation(line: 925, column: 8, scope: !2318)
!2336 = !DILocation(line: 925, column: 10, scope: !2318)
!2337 = !DILocation(line: 922, column: 8, scope: !2305)
!2338 = !DILocation(line: 925, column: 17, scope: !2317)
!2339 = !DILocation(line: 925, column: 3, scope: !2318)
!2340 = !DILocation(line: 927, column: 7, scope: !2316)
!2341 = !DILocation(line: 928, column: 44, scope: !2316)
!2342 = !DILocation(line: 928, column: 58, scope: !2316)
!2343 = !DILocation(line: 928, column: 25, scope: !2316)
!2344 = !DILocation(line: 929, column: 20, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 929, column: 11)
!2346 = !DILocation(line: 929, column: 28, scope: !2345)
!2347 = !DILocation(line: 929, column: 30, scope: !2345)
!2348 = !DILocation(line: 929, column: 25, scope: !2345)
!2349 = !DILocation(line: 929, column: 52, scope: !2345)
!2350 = !DILocation(line: 934, column: 20, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 934, column: 11)
!2352 = !DILocation(line: 934, column: 11, scope: !2316)
!2353 = !DILocation(line: 936, column: 9, scope: !2316)
!2354 = !DILocation(line: 937, column: 5, scope: !2317)
!2355 = !DILocation(line: 0, scope: !2318)
!2356 = distinct !{!2356, !2339, !2357}
!2357 = !DILocation(line: 937, column: 5, scope: !2318)
!2358 = !DILocation(line: 943, column: 8, scope: !2322)
!2359 = !DILocation(line: 943, column: 7, scope: !2305)
!2360 = !DILocation(line: 945, column: 19, scope: !2321)
!2361 = !DILocation(line: 0, scope: !2321)
!2362 = !DILocation(line: 947, column: 12, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2321, file: !1, line: 947, column: 7)
!2364 = !DILocation(line: 0, scope: !2363)
!2365 = !DILocation(line: 947, column: 21, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2363, file: !1, line: 947, column: 7)
!2367 = !DILocation(line: 947, column: 7, scope: !2363)
!2368 = !DILocation(line: 949, column: 8, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 949, column: 8)
!2370 = distinct !DILexicalBlock(scope: !2366, file: !1, line: 948, column: 2)
!2371 = !DILocation(line: 949, column: 15, scope: !2369)
!2372 = !DILocation(line: 949, column: 22, scope: !2369)
!2373 = !DILocation(line: 949, column: 32, scope: !2369)
!2374 = !DILocation(line: 949, column: 8, scope: !2370)
!2375 = !DILocation(line: 950, column: 8, scope: !2369)
!2376 = !DILocation(line: 950, column: 11, scope: !2369)
!2377 = !DILocation(line: 950, column: 6, scope: !2369)
!2378 = !DILocation(line: 953, column: 30, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2369, file: !1, line: 952, column: 6)
!2380 = !DILocation(line: 953, column: 8, scope: !2379)
!2381 = !DILocation(line: 954, column: 10, scope: !2379)
!2382 = !DILocation(line: 0, scope: !2369)
!2383 = !DILocation(line: 947, column: 31, scope: !2366)
!2384 = !DILocation(line: 947, column: 7, scope: !2366)
!2385 = distinct !{!2385, !2367, !2386}
!2386 = !DILocation(line: 956, column: 2, scope: !2363)
!2387 = !DILocation(line: 957, column: 10, scope: !2321)
!2388 = !DILocation(line: 963, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2305, file: !1, line: 963, column: 7)
!2390 = !DILocation(line: 963, column: 17, scope: !2389)
!2391 = !DILocation(line: 963, column: 20, scope: !2389)
!2392 = !DILocation(line: 963, column: 7, scope: !2305)
!2393 = !DILocation(line: 1047, column: 17, scope: !2325)
!2394 = !DILocation(line: 0, scope: !2325)
!2395 = !DILocation(line: 0, scope: !2328)
!2396 = !DILocation(line: 1049, column: 10, scope: !2330)
!2397 = !DILocation(line: 0, scope: !2330)
!2398 = !DILocation(line: 1049, column: 19, scope: !2329)
!2399 = !DILocation(line: 1049, column: 5, scope: !2330)
!2400 = !DILocation(line: 1051, column: 2, scope: !2328)
!2401 = !DILocation(line: 1052, column: 39, scope: !2328)
!2402 = !DILocation(line: 1052, column: 53, scope: !2328)
!2403 = !DILocation(line: 1052, column: 20, scope: !2328)
!2404 = !DILocation(line: 1053, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 1053, column: 6)
!2406 = !DILocation(line: 1053, column: 6, scope: !2328)
!2407 = !DILocation(line: 1054, column: 11, scope: !2405)
!2408 = !DILocation(line: 1054, column: 6, scope: !2405)
!2409 = !DILocation(line: 1054, column: 9, scope: !2405)
!2410 = !DILocation(line: 1054, column: 4, scope: !2405)
!2411 = !DILocation(line: 1057, column: 29, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2405, file: !1, line: 1056, column: 4)
!2413 = !DILocation(line: 1057, column: 6, scope: !2412)
!2414 = !DILocation(line: 1058, column: 8, scope: !2412)
!2415 = !DILocation(line: 0, scope: !2405)
!2416 = !DILocation(line: 1060, column: 4, scope: !2328)
!2417 = !DILocation(line: 1061, column: 7, scope: !2329)
!2418 = !DILocation(line: 1049, column: 5, scope: !2329)
!2419 = distinct !{!2419, !2399, !2420}
!2420 = !DILocation(line: 1061, column: 7, scope: !2330)
!2421 = !DILocation(line: 1062, column: 8, scope: !2325)
!2422 = !DILocation(line: 1065, column: 1, scope: !2305)
!2423 = distinct !DISubprogram(name: "decode_utf8_char", scope: !1, file: !1, line: 857, type: !2424, scopeLine: 858, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2427)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!245, !374, !356, !2426}
!2426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2435, !2436, !2437}
!2428 = !DILocalVariable(name: "p", arg: 1, scope: !2423, file: !1, line: 857, type: !374)
!2429 = !DILocalVariable(name: "len", arg: 2, scope: !2423, file: !1, line: 857, type: !356)
!2430 = !DILocalVariable(name: "value", arg: 3, scope: !2423, file: !1, line: 857, type: !2426)
!2431 = !DILocalVariable(name: "t", scope: !2423, file: !1, line: 859, type: !5)
!2432 = !DILocalVariable(name: "utf8_len", scope: !2433, file: !1, line: 865, type: !356)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 864, column: 5)
!2434 = distinct !DILexicalBlock(scope: !2423, file: !1, line: 863, column: 7)
!2435 = !DILocalVariable(name: "ch", scope: !2433, file: !1, line: 866, type: !5)
!2436 = !DILocalVariable(name: "i", scope: !2433, file: !1, line: 867, type: !356)
!2437 = !DILocalVariable(name: "u", scope: !2438, file: !1, line: 879, type: !5)
!2438 = distinct !DILexicalBlock(scope: !2439, file: !1, line: 878, column: 2)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !1, line: 877, column: 7)
!2440 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 877, column: 7)
!2441 = !DILocation(line: 0, scope: !2423)
!2442 = !DILocation(line: 859, column: 20, scope: !2423)
!2443 = !DILocation(line: 861, column: 11, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2423, file: !1, line: 861, column: 7)
!2445 = !DILocation(line: 861, column: 7, scope: !2423)
!2446 = !DILocation(line: 862, column: 5, scope: !2444)
!2447 = !DILocation(line: 863, column: 9, scope: !2434)
!2448 = !DILocation(line: 863, column: 7, scope: !2423)
!2449 = !DILocation(line: 0, scope: !2433)
!2450 = !DILocation(line: 868, column: 16, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 868, column: 7)
!2452 = !DILocation(line: 868, column: 12, scope: !2451)
!2453 = !DILocation(line: 0, scope: !2451)
!2454 = !DILocation(line: 868, column: 7, scope: !2451)
!2455 = !DILocation(line: 869, column: 10, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2451, file: !1, line: 868, column: 7)
!2457 = !DILocation(line: 868, column: 32, scope: !2456)
!2458 = !DILocation(line: 868, column: 7, scope: !2456)
!2459 = distinct !{!2459, !2454, !2460}
!2460 = !DILocation(line: 869, column: 10, scope: !2451)
!2461 = !DILocation(line: 871, column: 20, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 871, column: 11)
!2463 = !DILocation(line: 871, column: 26, scope: !2462)
!2464 = !DILocation(line: 873, column: 11, scope: !2465)
!2465 = distinct !DILexicalBlock(scope: !2462, file: !1, line: 872, column: 2)
!2466 = !DILocation(line: 874, column: 4, scope: !2465)
!2467 = !DILocation(line: 876, column: 21, scope: !2433)
!2468 = !DILocation(line: 876, column: 40, scope: !2433)
!2469 = !DILocation(line: 876, column: 15, scope: !2433)
!2470 = !DILocation(line: 877, column: 12, scope: !2440)
!2471 = !DILocation(line: 876, column: 10, scope: !2433)
!2472 = !DILocation(line: 0, scope: !2440)
!2473 = !DILocation(line: 877, column: 21, scope: !2439)
!2474 = !DILocation(line: 877, column: 7, scope: !2440)
!2475 = !DILocation(line: 879, column: 21, scope: !2438)
!2476 = !DILocation(line: 0, scope: !2438)
!2477 = !DILocation(line: 880, column: 11, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2438, file: !1, line: 880, column: 8)
!2479 = !DILocation(line: 880, column: 19, scope: !2478)
!2480 = !DILocation(line: 880, column: 8, scope: !2438)
!2481 = !DILocation(line: 882, column: 15, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2478, file: !1, line: 881, column: 6)
!2483 = !DILocation(line: 883, column: 8, scope: !2482)
!2484 = !DILocation(line: 885, column: 13, scope: !2438)
!2485 = !DILocation(line: 885, column: 24, scope: !2438)
!2486 = !DILocation(line: 885, column: 19, scope: !2438)
!2487 = !DILocation(line: 886, column: 2, scope: !2439)
!2488 = !DILocation(line: 877, column: 34, scope: !2439)
!2489 = !DILocation(line: 877, column: 7, scope: !2439)
!2490 = distinct !{!2490, !2474, !2491}
!2491 = !DILocation(line: 886, column: 2, scope: !2440)
!2492 = !DILocation(line: 887, column: 18, scope: !2493)
!2493 = distinct !DILexicalBlock(scope: !2433, file: !1, line: 887, column: 14)
!2494 = !DILocation(line: 887, column: 43, scope: !2493)
!2495 = !DILocation(line: 887, column: 31, scope: !2493)
!2496 = !DILocation(line: 888, column: 11, scope: !2493)
!2497 = !DILocation(line: 888, column: 36, scope: !2493)
!2498 = !DILocation(line: 888, column: 24, scope: !2493)
!2499 = !DILocation(line: 889, column: 11, scope: !2493)
!2500 = !DILocation(line: 889, column: 36, scope: !2493)
!2501 = !DILocation(line: 889, column: 24, scope: !2493)
!2502 = !DILocation(line: 890, column: 11, scope: !2493)
!2503 = !DILocation(line: 890, column: 36, scope: !2493)
!2504 = !DILocation(line: 890, column: 24, scope: !2493)
!2505 = !DILocation(line: 891, column: 11, scope: !2493)
!2506 = !DILocation(line: 891, column: 36, scope: !2493)
!2507 = !DILocation(line: 891, column: 24, scope: !2493)
!2508 = !DILocation(line: 892, column: 21, scope: !2493)
!2509 = !DILocation(line: 894, column: 11, scope: !2510)
!2510 = distinct !DILexicalBlock(scope: !2493, file: !1, line: 893, column: 2)
!2511 = !DILocation(line: 895, column: 4, scope: !2510)
!2512 = !DILocation(line: 897, column: 14, scope: !2433)
!2513 = !DILocation(line: 898, column: 7, scope: !2433)
!2514 = !DILocation(line: 902, column: 14, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2434, file: !1, line: 901, column: 5)
!2516 = !DILocation(line: 903, column: 7, scope: !2515)
!2517 = !DILocation(line: 905, column: 1, scope: !2423)
!2518 = !DILocation(line: 0, scope: !2434)
!2519 = distinct !DISubprogram(name: "pp_wrap_text", scope: !1, file: !1, line: 110, type: !1940, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523, !2524, !2525}
!2521 = !DILocalVariable(name: "pp", arg: 1, scope: !2519, file: !1, line: 110, type: !785)
!2522 = !DILocalVariable(name: "start", arg: 2, scope: !2519, file: !1, line: 110, type: !250)
!2523 = !DILocalVariable(name: "end", arg: 3, scope: !2519, file: !1, line: 110, type: !250)
!2524 = !DILocalVariable(name: "wrapping_line", scope: !2519, file: !1, line: 112, type: !244)
!2525 = !DILocalVariable(name: "p", scope: !2526, file: !1, line: 118, type: !250)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 117, column: 7)
!2527 = distinct !DILexicalBlock(scope: !2519, file: !1, line: 115, column: 5)
!2528 = !DILocation(line: 0, scope: !2519)
!2529 = !DILocation(line: 112, column: 24, scope: !2519)
!2530 = !DILocation(line: 114, column: 3, scope: !2519)
!2531 = !DILocation(line: 114, column: 16, scope: !2519)
!2532 = !DILocation(line: 0, scope: !2526)
!2533 = !DILocation(line: 119, column: 11, scope: !2526)
!2534 = !DILocation(line: 119, column: 18, scope: !2526)
!2535 = !DILocation(line: 119, column: 22, scope: !2526)
!2536 = !DILocation(line: 119, column: 41, scope: !2526)
!2537 = !DILocation(line: 119, column: 35, scope: !2526)
!2538 = !DILocation(line: 120, column: 4, scope: !2526)
!2539 = !DILocation(line: 119, column: 2, scope: !2526)
!2540 = distinct !{!2540, !2539, !2541}
!2541 = !DILocation(line: 120, column: 6, scope: !2526)
!2542 = !DILocation(line: 122, column: 18, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2526, file: !1, line: 121, column: 6)
!2544 = !DILocation(line: 122, column: 29, scope: !2543)
!2545 = !DILocation(line: 122, column: 26, scope: !2543)
!2546 = !DILocation(line: 121, column: 6, scope: !2526)
!2547 = !DILocation(line: 123, column: 4, scope: !2543)
!2548 = !DILocation(line: 124, column: 2, scope: !2526)
!2549 = !DILocation(line: 128, column: 24, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 128, column: 11)
!2551 = !DILocation(line: 128, column: 27, scope: !2550)
!2552 = !DILocation(line: 128, column: 11, scope: !2527)
!2553 = !DILocation(line: 130, column: 4, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2550, file: !1, line: 129, column: 2)
!2555 = !DILocation(line: 131, column: 4, scope: !2554)
!2556 = !DILocation(line: 132, column: 2, scope: !2554)
!2557 = !DILocation(line: 0, scope: !2527)
!2558 = !DILocation(line: 133, column: 17, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2527, file: !1, line: 133, column: 11)
!2560 = !DILocation(line: 133, column: 24, scope: !2559)
!2561 = !DILocation(line: 133, column: 27, scope: !2559)
!2562 = !DILocation(line: 133, column: 34, scope: !2559)
!2563 = !DILocation(line: 133, column: 11, scope: !2527)
!2564 = !DILocation(line: 135, column: 4, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 134, column: 2)
!2566 = !DILocation(line: 136, column: 4, scope: !2565)
!2567 = !DILocation(line: 137, column: 2, scope: !2565)
!2568 = distinct !{!2568, !2530, !2569}
!2569 = !DILocation(line: 138, column: 5, scope: !2519)
!2570 = !DILocation(line: 139, column: 1, scope: !2519)
