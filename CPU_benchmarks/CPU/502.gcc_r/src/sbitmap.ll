; ModuleID = 'sbitmap.bc'
source_filename = "sbitmap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.loop = type opaque
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
%struct.gimple_seq_d = type opaque
%struct.gimple_df = type opaque
%struct.loops = type opaque
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type opaque
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.sbitmap_iterator = type { i64*, i32, i32, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [10 x i8] c"sbitmap.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"n_bits = %d, set = {\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"\0A  \00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%s %d\0A\00", align 1
@popcount_table = internal unnamed_addr constant [256 x i8] c"\00\01\01\02\01\02\02\03\01\02\02\03\02\03\03\04\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\01\02\02\03\02\03\03\04\02\03\03\04\03\04\04\05\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\02\03\03\04\03\04\04\05\03\04\04\05\04\05\05\06\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\03\04\04\05\04\05\05\06\04\05\05\06\05\06\06\07\04\05\05\06\05\06\06\07\05\06\06\07\06\07\07\08", align 16, !dbg !0

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !410 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !423, metadata !DIExpression()), !dbg !425
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !424, metadata !DIExpression()), !dbg !425
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !426
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !427
  ret i32 %call, !dbg !428
}

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !429 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !433
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !434
  ret i32 %call, !dbg !435
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !436 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !496, metadata !DIExpression()), !dbg !497
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !498
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !498
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !498
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !498
  %cmp = icmp uge i8* %0, %1, !dbg !498
  %conv1 = zext i1 %cmp to i64, !dbg !498
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !498
  %tobool = icmp eq i64 %expval, 0, !dbg !498
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !498

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !498
  br label %cond.end, !dbg !498

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !498
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !498
  %2 = load i8, i8* %0, align 1, !dbg !498
  %conv3 = zext i8 %2 to i32, !dbg !498
  br label %cond.end, !dbg !498

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !498
  ret i32 %cond, !dbg !499
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #2

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !500 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !502, metadata !DIExpression()), !dbg !503
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !504
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !504
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !504
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !504
  %cmp = icmp uge i8* %0, %1, !dbg !504
  %conv1 = zext i1 %cmp to i64, !dbg !504
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !504
  %tobool = icmp eq i64 %expval, 0, !dbg !504
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !504

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !504
  br label %cond.end, !dbg !504

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !504
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !504
  %2 = load i8, i8* %0, align 1, !dbg !504
  %conv3 = zext i8 %2 to i32, !dbg !504
  br label %cond.end, !dbg !504

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !504
  ret i32 %cond, !dbg !505
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !506 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !507
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !507
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !507
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !507
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !507
  %cmp = icmp uge i8* %1, %2, !dbg !507
  %conv1 = zext i1 %cmp to i64, !dbg !507
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !507
  %tobool = icmp eq i64 %expval, 0, !dbg !507
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !507

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !507
  br label %cond.end, !dbg !507

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !507
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !507
  %3 = load i8, i8* %1, align 1, !dbg !507
  %conv3 = zext i8 %3 to i32, !dbg !507
  br label %cond.end, !dbg !507

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !507
  ret i32 %cond, !dbg !508
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !509 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !513, metadata !DIExpression()), !dbg !514
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !515
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !516
  ret i32 %call, !dbg !517
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !518 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !522, metadata !DIExpression()), !dbg !524
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !523, metadata !DIExpression()), !dbg !524
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !525
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !525
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !525
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !525
  %cmp = icmp uge i8* %0, %1, !dbg !525
  %conv1 = zext i1 %cmp to i64, !dbg !525
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !525
  %tobool = icmp eq i64 %expval, 0, !dbg !525
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !525

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !525
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !525
  br label %cond.end, !dbg !525

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !525
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !525
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !525
  store i8 %conv2, i8* %0, align 1, !dbg !525
  %conv6 = and i32 %__c, 255, !dbg !525
  br label %cond.end, !dbg !525

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !525
  ret i32 %cond, !dbg !526
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !527 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !529, metadata !DIExpression()), !dbg !531
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !530, metadata !DIExpression()), !dbg !531
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !532
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !532
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !532
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !532
  %cmp = icmp uge i8* %0, %1, !dbg !532
  %conv1 = zext i1 %cmp to i64, !dbg !532
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !532
  %tobool = icmp eq i64 %expval, 0, !dbg !532
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !532

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !532
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !532
  br label %cond.end, !dbg !532

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !532
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !532
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !532
  store i8 %conv2, i8* %0, align 1, !dbg !532
  %conv6 = and i32 %__c, 255, !dbg !532
  br label %cond.end, !dbg !532

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !532
  ret i32 %cond, !dbg !533
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !534 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !536, metadata !DIExpression()), !dbg !537
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !538
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !538
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !538
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !538
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !538
  %cmp = icmp uge i8* %1, %2, !dbg !538
  %conv1 = zext i1 %cmp to i64, !dbg !538
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !538
  %tobool = icmp eq i64 %expval, 0, !dbg !538
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !538

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !538
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !538
  br label %cond.end, !dbg !538

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !538
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !538
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !538
  store i8 %conv4, i8* %1, align 1, !dbg !538
  %conv6 = and i32 %__c, 255, !dbg !538
  br label %cond.end, !dbg !538

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !538
  ret i32 %cond, !dbg !539
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !540 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !546, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata i64* %__n, metadata !547, metadata !DIExpression()), !dbg !549
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !548, metadata !DIExpression()), !dbg !549
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !550
  ret i64 %call, !dbg !551
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !552 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !554, metadata !DIExpression()), !dbg !555
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !556
  %0 = load i32, i32* %_flags, align 8, !dbg !556
  %and = lshr i32 %0, 4, !dbg !556
  %and.lobit = and i32 %and, 1, !dbg !556
  ret i32 %and.lobit, !dbg !557
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !558 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !560, metadata !DIExpression()), !dbg !561
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !562
  %0 = load i32, i32* %_flags, align 8, !dbg !562
  %and = lshr i32 %0, 5, !dbg !562
  %and.lobit = and i32 %and, 1, !dbg !562
  ret i32 %and.lobit, !dbg !563
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !564 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !567, metadata !DIExpression()), !dbg !568
  %__c.off = add i32 %__c, 128, !dbg !569
  %0 = icmp ult i32 %__c.off, 384, !dbg !569
  br i1 %0, label %cond.true, label %cond.end, !dbg !569

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !570
  %1 = load i32*, i32** %call, align 8, !dbg !571
  %idxprom = sext i32 %__c to i64, !dbg !572
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !572
  %2 = load i32, i32* %arrayidx, align 4, !dbg !572
  br label %cond.end, !dbg !573

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !573
  ret i32 %cond, !dbg !574
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !575 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !577, metadata !DIExpression()), !dbg !578
  %__c.off = add i32 %__c, 128, !dbg !579
  %0 = icmp ult i32 %__c.off, 384, !dbg !579
  br i1 %0, label %cond.true, label %cond.end, !dbg !579

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !580
  %1 = load i32*, i32** %call, align 8, !dbg !581
  %idxprom = sext i32 %__c to i64, !dbg !582
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !582
  %2 = load i32, i32* %arrayidx, align 4, !dbg !582
  br label %cond.end, !dbg !583

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !583
  ret i32 %cond, !dbg !584
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !585 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !590, metadata !DIExpression()), !dbg !591
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !592
  %conv = trunc i64 %call to i32, !dbg !593
  ret i32 %conv, !dbg !594
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !595 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !599, metadata !DIExpression()), !dbg !600
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !601
  ret i64 %call, !dbg !602
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !603 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !608, metadata !DIExpression()), !dbg !609
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !610
  ret i64 %call, !dbg !611
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !612 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !623, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i8* %__base, metadata !624, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !625, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %__size, metadata !626, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !627, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 0, metadata !628, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !629, metadata !DIExpression()), !dbg !633
  br label %while.cond, !dbg !634

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !635
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !633
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !629, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !628, metadata !DIExpression()), !dbg !633
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !636
  br i1 %cmp, label %while.body, label %cleanup, !dbg !634

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !637
  %div = lshr i64 %add, 1, !dbg !639
  call void @llvm.dbg.value(metadata i64 %div, metadata !630, metadata !DIExpression()), !dbg !633
  %mul = mul i64 %div, %__size, !dbg !640
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !641
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !631, metadata !DIExpression()), !dbg !633
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !642
  call void @llvm.dbg.value(metadata i32 %call, metadata !632, metadata !DIExpression()), !dbg !633
  %cmp1 = icmp slt i32 %call, 0, !dbg !643
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !645

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !646
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !648

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !649
  call void @llvm.dbg.value(metadata i64 %add4, metadata !628, metadata !DIExpression()), !dbg !633
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !633
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !633
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !629, metadata !DIExpression()), !dbg !633
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !628, metadata !DIExpression()), !dbg !633
  br label %while.cond, !dbg !634, !llvm.loop !650

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !633
  ret i8* %retval.0, !dbg !652
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !653 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !659, metadata !DIExpression()), !dbg !660
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !661
  ret double %call, !dbg !662
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !663 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !672, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !673, metadata !DIExpression()), !dbg !675
  call void @llvm.dbg.value(metadata i32 %base, metadata !674, metadata !DIExpression()), !dbg !675
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !676
  ret i64 %call, !dbg !677
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !678 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !684, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !685, metadata !DIExpression()), !dbg !687
  call void @llvm.dbg.value(metadata i32 %base, metadata !686, metadata !DIExpression()), !dbg !687
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !688
  ret i64 %call, !dbg !689
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !690 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !701, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !702, metadata !DIExpression()), !dbg !704
  call void @llvm.dbg.value(metadata i32 %base, metadata !703, metadata !DIExpression()), !dbg !704
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !705
  ret i64 %call, !dbg !706
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !707 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !711, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !712, metadata !DIExpression()), !dbg !714
  call void @llvm.dbg.value(metadata i32 %base, metadata !713, metadata !DIExpression()), !dbg !714
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !715
  ret i64 %call, !dbg !716
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !717 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !759, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !760, metadata !DIExpression()), !dbg !761
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !762
  ret i32 %call, !dbg !763
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !764 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !766, metadata !DIExpression()), !dbg !768
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !767, metadata !DIExpression()), !dbg !768
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !769
  ret i32 %call, !dbg !770
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !771 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !775, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !776, metadata !DIExpression()), !dbg !777
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !778
  ret i32 %call, !dbg !779
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !780 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !784, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !785, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !786, metadata !DIExpression()), !dbg !788
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !787, metadata !DIExpression()), !dbg !788
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !789
  ret i32 %call, !dbg !790
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !791 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !795, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !796, metadata !DIExpression()), !dbg !798
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !797, metadata !DIExpression()), !dbg !798
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !797, metadata !DIExpression(DW_OP_deref)), !dbg !798
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !799
  ret i32 %call, !dbg !800
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !801 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !805, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i8* %__path, metadata !806, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !807, metadata !DIExpression()), !dbg !809
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !808, metadata !DIExpression()), !dbg !809
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !808, metadata !DIExpression(DW_OP_deref)), !dbg !809
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !810
  ret i32 %call, !dbg !811
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !812 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !836, metadata !DIExpression()), !dbg !838
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !837, metadata !DIExpression()), !dbg !838
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !839
  ret i32 %call, !dbg !840
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !841 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !843, metadata !DIExpression()), !dbg !845
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !844, metadata !DIExpression()), !dbg !845
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !846
  ret i32 %call, !dbg !847
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !848 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !852, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !853, metadata !DIExpression()), !dbg !854
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !855
  ret i32 %call, !dbg !856
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !857 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !861, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !862, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !863, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !864, metadata !DIExpression()), !dbg !865
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !866
  ret i32 %call, !dbg !867
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_elms) local_unnamed_addr #4 !dbg !868 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !872, metadata !DIExpression()), !dbg !877
  %sub = add i32 %n_elms, 63, !dbg !878
  %div = lshr i32 %sub, 6, !dbg !878
  call void @llvm.dbg.value(metadata i32 %div, metadata !874, metadata !DIExpression()), !dbg !877
  %0 = shl nuw nsw i32 %div, 3, !dbg !879
  call void @llvm.dbg.value(metadata i32 %0, metadata !873, metadata !DIExpression()), !dbg !877
  %1 = add nuw nsw i32 %0, 16, !dbg !880
  call void @llvm.dbg.value(metadata i32 %1, metadata !875, metadata !DIExpression()), !dbg !877
  %conv6 = zext i32 %1 to i64, !dbg !881
  %call = tail call i8* @xmalloc(i64 %conv6) #6, !dbg !882
  %2 = bitcast i8* %call to %struct.simple_bitmap_def*, !dbg !883
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %2, metadata !876, metadata !DIExpression()), !dbg !877
  %n_bits = getelementptr inbounds i8, i8* %call, i64 8, !dbg !884
  %3 = bitcast i8* %n_bits to i32*, !dbg !884
  store i32 %n_elms, i32* %3, align 8, !dbg !885
  %size7 = getelementptr inbounds i8, i8* %call, i64 12, !dbg !886
  %4 = bitcast i8* %size7 to i32*, !dbg !886
  store i32 %div, i32* %4, align 4, !dbg !887
  %popcount = bitcast i8* %call to i8**, !dbg !888
  store i8* null, i8** %popcount, align 8, !dbg !889
  ret %struct.simple_bitmap_def* %2, !dbg !890
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local %struct.simple_bitmap_def* @sbitmap_alloc_with_popcount(i32 %n_elms) local_unnamed_addr #4 !dbg !891 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !893, metadata !DIExpression()), !dbg !896
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %n_elms) #7, !dbg !897
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !894, metadata !DIExpression()), !dbg !896
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 2, !dbg !898
  %0 = load i32, i32* %size, align 4, !dbg !898
  %conv = zext i32 %0 to i64, !dbg !898
  %call1 = tail call i8* @xmalloc(i64 %conv) #6, !dbg !898
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !899
  store i8* %call1, i8** %popcount, align 8, !dbg !900
  ret %struct.simple_bitmap_def* %call, !dbg !901
}

; Function Attrs: nounwind uwtable
define dso_local %struct.simple_bitmap_def* @sbitmap_resize(%struct.simple_bitmap_def* %bmap, i32 %n_elms, i32 %def) local_unnamed_addr #4 !dbg !902 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !906, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !907, metadata !DIExpression()), !dbg !913
  call void @llvm.dbg.value(metadata i32 %def, metadata !908, metadata !DIExpression()), !dbg !913
  %sub = add i32 %n_elms, 63, !dbg !914
  %div = lshr i32 %sub, 6, !dbg !914
  call void @llvm.dbg.value(metadata i32 %div, metadata !910, metadata !DIExpression()), !dbg !913
  %0 = shl nuw nsw i32 %div, 3, !dbg !915
  call void @llvm.dbg.value(metadata i32 %0, metadata !909, metadata !DIExpression()), !dbg !913
  %conv2 = zext i32 %0 to i64, !dbg !916
  %size3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !918
  %1 = load i32, i32* %size3, align 4, !dbg !918
  %conv4 = zext i32 %1 to i64, !dbg !918
  %mul5 = shl nuw nsw i64 %conv4, 3, !dbg !918
  %cmp = icmp ult i64 %mul5, %conv2, !dbg !919
  br i1 %cmp, label %if.then, label %if.end18, !dbg !920

if.then:                                          ; preds = %entry
  %2 = add nuw nsw i32 %0, 16, !dbg !921
  call void @llvm.dbg.value(metadata i32 %2, metadata !911, metadata !DIExpression()), !dbg !913
  %3 = bitcast %struct.simple_bitmap_def* %bmap to i8*, !dbg !923
  %conv11 = zext i32 %2 to i64, !dbg !924
  %call = tail call i8* @xrealloc(i8* %3, i64 %conv11) #6, !dbg !925
  %4 = bitcast i8* %call to %struct.simple_bitmap_def*, !dbg !926
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %4, metadata !906, metadata !DIExpression()), !dbg !913
  %popcount = bitcast i8* %call to i8**, !dbg !927
  %5 = load i8*, i8** %popcount, align 8, !dbg !927
  %tobool = icmp eq i8* %5, null, !dbg !929
  br i1 %tobool, label %if.end18, label %if.then12, !dbg !930

if.then12:                                        ; preds = %if.then
  %conv14 = zext i32 %div to i64, !dbg !931
  %call16 = tail call i8* @xrealloc(i8* nonnull %5, i64 %conv14) #6, !dbg !931
  store i8* %call16, i8** %popcount, align 8, !dbg !932
  br label %if.end18, !dbg !933

if.end18:                                         ; preds = %if.then, %if.then12, %entry
  %bmap.addr.0 = phi %struct.simple_bitmap_def* [ %bmap, %entry ], [ %4, %if.then12 ], [ %4, %if.then ]
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap.addr.0, metadata !906, metadata !DIExpression()), !dbg !913
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 1, !dbg !934
  %6 = load i32, i32* %n_bits, align 8, !dbg !934
  %cmp19 = icmp ult i32 %6, %n_elms, !dbg !936
  br i1 %cmp19, label %if.then21, label %if.else77, !dbg !937

if.then21:                                        ; preds = %if.end18
  %tobool22 = icmp eq i32 %def, 0, !dbg !938
  %size24 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 2, !dbg !941
  %7 = load i32, i32* %size24, align 4, !dbg !941
  %idx.ext = zext i32 %7 to i64, !dbg !941
  %add.ptr = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 3, i64 %idx.ext, !dbg !941
  %8 = bitcast i64* %add.ptr to i8*, !dbg !941
  %mul28 = shl nuw nsw i64 %idx.ext, 3, !dbg !941
  %sub29 = sub nsw i64 %conv2, %mul28, !dbg !941
  br i1 %tobool22, label %if.else, label %if.then23, !dbg !942

if.then23:                                        ; preds = %if.then21
  %call30 = tail call i8* @memset(i8* nonnull %8, i32 -1, i64 %sub29) #6, !dbg !943
  %9 = load i32, i32* %n_bits, align 8, !dbg !945
  %rem = and i32 %9, 63, !dbg !946
  call void @llvm.dbg.value(metadata i32 %rem, metadata !912, metadata !DIExpression()), !dbg !913
  %tobool32 = icmp eq i32 %rem, 0, !dbg !947
  br i1 %tobool32, label %if.end38, label %if.then33, !dbg !949

if.then33:                                        ; preds = %if.then23
  %sub34 = sub nuw nsw i32 64, %rem, !dbg !950
  %sh_prom = zext i32 %sub34 to i64, !dbg !951
  %shr = lshr i64 -1, %sh_prom, !dbg !951
  %neg = xor i64 %shr, -1, !dbg !952
  %10 = load i32, i32* %size24, align 4, !dbg !953
  %sub37 = add i32 %10, -1, !dbg !954
  %idxprom = zext i32 %sub37 to i64, !dbg !955
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 3, i64 %idxprom, !dbg !955
  %11 = load i64, i64* %arrayidx, align 8, !dbg !956
  %or = or i64 %11, %neg, !dbg !956
  store i64 %or, i64* %arrayidx, align 8, !dbg !956
  br label %if.end38, !dbg !955

if.end38:                                         ; preds = %if.then23, %if.then33
  %rem39 = and i32 %n_elms, 63, !dbg !957
  call void @llvm.dbg.value(metadata i32 %rem39, metadata !912, metadata !DIExpression()), !dbg !913
  %tobool40 = icmp eq i32 %rem39, 0, !dbg !958
  br i1 %tobool40, label %if.end109, label %if.then41, !dbg !960

if.then41:                                        ; preds = %if.end38
  %sub42 = sub nuw nsw i32 64, %rem39, !dbg !961
  %sh_prom43 = zext i32 %sub42 to i64, !dbg !962
  %shr44 = lshr i64 -1, %sh_prom43, !dbg !962
  %sub46 = add nsw i32 %div, -1, !dbg !963
  %idxprom47 = zext i32 %sub46 to i64, !dbg !964
  %arrayidx48 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 3, i64 %idxprom47, !dbg !964
  %12 = load i64, i64* %arrayidx48, align 8, !dbg !965
  %and = and i64 %12, %shr44, !dbg !965
  store i64 %and, i64* %arrayidx48, align 8, !dbg !965
  br label %if.end109, !dbg !964

if.else:                                          ; preds = %if.then21
  %call60 = tail call i8* @memset(i8* nonnull %8, i32 0, i64 %sub29) #6, !dbg !966
  %popcount61 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 0, !dbg !968
  %13 = load i8*, i8** %popcount61, align 8, !dbg !968
  %tobool62 = icmp eq i8* %13, null, !dbg !970
  br i1 %tobool62, label %if.end109, label %if.then63, !dbg !971

if.then63:                                        ; preds = %if.else
  %14 = load i32, i32* %size24, align 4, !dbg !972
  %idx.ext66 = zext i32 %14 to i64, !dbg !973
  %add.ptr67 = getelementptr inbounds i8, i8* %13, i64 %idx.ext66, !dbg !973
  %conv68 = zext i32 %div to i64, !dbg !974
  %sub73 = sub nsw i64 %conv68, %idx.ext66, !dbg !975
  %call74 = tail call i8* @memset(i8* nonnull %add.ptr67, i32 0, i64 %sub73) #6, !dbg !976
  br label %if.end109, !dbg !976

if.else77:                                        ; preds = %if.end18
  %cmp79 = icmp ugt i32 %6, %n_elms, !dbg !977
  br i1 %cmp79, label %if.then81, label %if.end109, !dbg !979

if.then81:                                        ; preds = %if.else77
  %rem82 = and i32 %n_elms, 63, !dbg !980
  call void @llvm.dbg.value(metadata i32 %rem82, metadata !912, metadata !DIExpression()), !dbg !913
  %tobool83 = icmp eq i32 %rem82, 0, !dbg !982
  br i1 %tobool83, label %if.end109, label %if.then84, !dbg !984

if.then84:                                        ; preds = %if.then81
  %sub85 = sub nuw nsw i32 64, %rem82, !dbg !985
  %sh_prom86 = zext i32 %sub85 to i64, !dbg !987
  %shr87 = lshr i64 -1, %sh_prom86, !dbg !987
  %sub89 = add nsw i32 %div, -1, !dbg !988
  %idxprom90 = zext i32 %sub89 to i64, !dbg !989
  %arrayidx91 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 3, i64 %idxprom90, !dbg !989
  %15 = load i64, i64* %arrayidx91, align 8, !dbg !990
  %and92 = and i64 %15, %shr87, !dbg !990
  store i64 %and92, i64* %arrayidx91, align 8, !dbg !990
  %popcount93 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 0, !dbg !991
  %16 = load i8*, i8** %popcount93, align 8, !dbg !991
  %tobool94 = icmp eq i8* %16, null, !dbg !993
  br i1 %tobool94, label %if.end109, label %if.then95, !dbg !994

if.then95:                                        ; preds = %if.then84
  %call100 = tail call fastcc i64 @sbitmap_elt_popcount(i64 %and92) #7, !dbg !995
  %conv101 = trunc i64 %call100 to i8, !dbg !995
  %17 = load i8*, i8** %popcount93, align 8, !dbg !996
  %arrayidx105 = getelementptr inbounds i8, i8* %17, i64 %idxprom90, !dbg !997
  store i8 %conv101, i8* %arrayidx105, align 1, !dbg !998
  br label %if.end109, !dbg !997

if.end109:                                        ; preds = %if.end38, %if.else, %if.then84, %if.then81, %if.else77, %if.then95, %if.then41, %if.then63
  store i32 %n_elms, i32* %n_bits, align 8, !dbg !999
  %size111 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap.addr.0, i64 0, i32 2, !dbg !1000
  store i32 %div, i32* %size111, align 4, !dbg !1001
  ret %struct.simple_bitmap_def* %bmap.addr.0, !dbg !1002
}

declare dso_local i8* @xrealloc(i8*, i64) local_unnamed_addr #1

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i64 @sbitmap_elt_popcount(i64 %a) unnamed_addr #4 !dbg !1003 {
entry:
  call void @llvm.dbg.value(metadata i64 %a, metadata !1007, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 0, metadata !1008, metadata !DIExpression()), !dbg !1010
  %cmp = icmp eq i64 %a, 0, !dbg !1011
  br i1 %cmp, label %cleanup, label %for.cond.preheader, !dbg !1013

for.cond.preheader:                               ; preds = %entry
  br label %for.cond, !dbg !1014

for.cond:                                         ; preds = %for.cond.preheader, %for.body
  %indvars.iv = phi i64 [ 0, %for.cond.preheader ], [ %indvars.iv.next, %for.body ], !dbg !1016
  %ret.0 = phi i64 [ 0, %for.cond.preheader ], [ %add, %for.body ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 %ret.0, metadata !1008, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1009, metadata !DIExpression()), !dbg !1010
  %cmp1 = icmp ult i64 %indvars.iv, 64, !dbg !1017
  br i1 %cmp1, label %for.body, label %cleanup.loopexit, !dbg !1014

for.body:                                         ; preds = %for.cond
  %shr = lshr i64 %a, %indvars.iv, !dbg !1019
  %and = and i64 %shr, 255, !dbg !1020
  %arrayidx = getelementptr inbounds [256 x i8], [256 x i8]* @popcount_table, i64 0, i64 %and, !dbg !1021
  %0 = load i8, i8* %arrayidx, align 1, !dbg !1021
  %conv = zext i8 %0 to i64, !dbg !1021
  %add = add i64 %ret.0, %conv, !dbg !1022
  call void @llvm.dbg.value(metadata i64 %add, metadata !1008, metadata !DIExpression()), !dbg !1010
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8, !dbg !1023
  call void @llvm.dbg.value(metadata i32 undef, metadata !1009, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1010
  br label %for.cond, !dbg !1024, !llvm.loop !1025

cleanup.loopexit:                                 ; preds = %for.cond
  %ret.0.lcssa = phi i64 [ %ret.0, %for.cond ], !dbg !1010
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1008, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1008, metadata !DIExpression()), !dbg !1010
  call void @llvm.dbg.value(metadata i64 %ret.0.lcssa, metadata !1008, metadata !DIExpression()), !dbg !1010
  br label %cleanup, !dbg !1027

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %ret.0.lcssa, %cleanup.loopexit ], !dbg !1010
  ret i64 %retval.0, !dbg !1027
}

; Function Attrs: nounwind uwtable
define dso_local %struct.simple_bitmap_def* @sbitmap_realloc(%struct.simple_bitmap_def* %src, i32 %n_elms) local_unnamed_addr #4 !dbg !1028 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %src, metadata !1032, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !1033, metadata !DIExpression()), !dbg !1038
  %sub = add i32 %n_elms, 63, !dbg !1039
  %div = lshr i32 %sub, 6, !dbg !1039
  call void @llvm.dbg.value(metadata i32 %div, metadata !1035, metadata !DIExpression()), !dbg !1038
  %0 = shl nuw nsw i32 %div, 3, !dbg !1040
  call void @llvm.dbg.value(metadata i32 %0, metadata !1034, metadata !DIExpression()), !dbg !1038
  call void @llvm.dbg.value(metadata i32 undef, metadata !1036, metadata !DIExpression()), !dbg !1038
  %size6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 2, !dbg !1041
  %1 = load i32, i32* %size6, align 4, !dbg !1041
  %conv7 = zext i32 %1 to i64, !dbg !1041
  %mul8 = shl nuw nsw i64 %conv7, 3, !dbg !1041
  %conv9 = zext i32 %0 to i64, !dbg !1043
  %cmp = icmp ult i64 %mul8, %conv9, !dbg !1044
  br i1 %cmp, label %if.end, label %if.then, !dbg !1045

if.then:                                          ; preds = %entry
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 1, !dbg !1046
  store i32 %n_elms, i32* %n_bits, align 8, !dbg !1048
  br label %cleanup, !dbg !1049

if.end:                                           ; preds = %entry
  %2 = add nuw nsw i32 %0, 16, !dbg !1050
  call void @llvm.dbg.value(metadata i32 %2, metadata !1036, metadata !DIExpression()), !dbg !1038
  %3 = bitcast %struct.simple_bitmap_def* %src to i8*, !dbg !1051
  %conv11 = zext i32 %2 to i64, !dbg !1052
  %call = tail call i8* @xrealloc(i8* %3, i64 %conv11) #6, !dbg !1053
  %4 = bitcast i8* %call to %struct.simple_bitmap_def*, !dbg !1054
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %4, metadata !1037, metadata !DIExpression()), !dbg !1038
  %n_bits12 = getelementptr inbounds i8, i8* %call, i64 8, !dbg !1055
  %5 = bitcast i8* %n_bits12 to i32*, !dbg !1055
  store i32 %n_elms, i32* %5, align 8, !dbg !1056
  %size13 = getelementptr inbounds i8, i8* %call, i64 12, !dbg !1057
  %6 = bitcast i8* %size13 to i32*, !dbg !1057
  store i32 %div, i32* %6, align 4, !dbg !1058
  br label %cleanup, !dbg !1059

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.simple_bitmap_def* [ %src, %if.then ], [ %4, %if.end ], !dbg !1038
  ret %struct.simple_bitmap_def* %retval.0, !dbg !1060
}

; Function Attrs: nounwind uwtable
define dso_local %struct.simple_bitmap_def** @sbitmap_vector_alloc(i32 %n_vecs, i32 %n_elms) local_unnamed_addr #4 !dbg !1061 {
entry:
  call void @llvm.dbg.value(metadata i32 %n_vecs, metadata !1065, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %n_elms, metadata !1066, metadata !DIExpression()), !dbg !1086
  %sub = add i32 %n_elms, 63, !dbg !1087
  %div = lshr i32 %sub, 6, !dbg !1087
  call void @llvm.dbg.value(metadata i32 %div, metadata !1071, metadata !DIExpression()), !dbg !1086
  %0 = shl nuw nsw i32 %div, 3, !dbg !1088
  call void @llvm.dbg.value(metadata i32 %0, metadata !1068, metadata !DIExpression()), !dbg !1086
  %1 = add nuw nsw i32 %0, 16, !dbg !1089
  call void @llvm.dbg.value(metadata i32 %1, metadata !1070, metadata !DIExpression()), !dbg !1086
  %mul7 = shl i32 %n_vecs, 3, !dbg !1090
  call void @llvm.dbg.value(metadata i32 %mul7, metadata !1073, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %mul7, metadata !1073, metadata !DIExpression()), !dbg !1086
  %mul13 = mul i32 %1, %n_vecs, !dbg !1091
  %add14 = add i32 %mul7, %mul13, !dbg !1092
  call void @llvm.dbg.value(metadata i32 %add14, metadata !1072, metadata !DIExpression()), !dbg !1086
  %conv15 = zext i32 %add14 to i64, !dbg !1093
  %call = tail call i8* @xmalloc(i64 %conv15) #6, !dbg !1094
  %2 = bitcast i8* %call to %struct.simple_bitmap_def**, !dbg !1095
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %2, metadata !1074, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 0, metadata !1067, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i32 %mul7, metadata !1069, metadata !DIExpression()), !dbg !1086
  %wide.trip.count = zext i32 %n_vecs to i64, !dbg !1096
  br label %for.cond, !dbg !1097

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1098
  %offset.0 = phi i32 [ %add18, %for.body ], [ %mul7, %entry ], !dbg !1098
  call void @llvm.dbg.value(metadata i32 %offset.0, metadata !1069, metadata !DIExpression()), !dbg !1086
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1067, metadata !DIExpression()), !dbg !1086
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !1096
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1099

for.body:                                         ; preds = %for.cond
  %idx.ext = zext i32 %offset.0 to i64, !dbg !1100
  %add.ptr = getelementptr inbounds i8, i8* %call, i64 %idx.ext, !dbg !1100
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1082, metadata !DIExpression()), !dbg !1101
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %2, i64 %indvars.iv, !dbg !1102
  %3 = bitcast %struct.simple_bitmap_def** %arrayidx to i8**, !dbg !1103
  store i8* %add.ptr, i8** %3, align 8, !dbg !1103
  %n_bits = getelementptr inbounds i8, i8* %add.ptr, i64 8, !dbg !1104
  %4 = bitcast i8* %n_bits to i32*, !dbg !1104
  store i32 %n_elms, i32* %4, align 8, !dbg !1105
  %size17 = getelementptr inbounds i8, i8* %add.ptr, i64 12, !dbg !1106
  %5 = bitcast i8* %size17 to i32*, !dbg !1106
  store i32 %div, i32* %5, align 4, !dbg !1107
  %popcount = bitcast i8* %add.ptr to i8**, !dbg !1108
  store i8* null, i8** %popcount, align 8, !dbg !1109
  %add18 = add i32 %offset.0, %1, !dbg !1110
  call void @llvm.dbg.value(metadata i32 %add18, metadata !1069, metadata !DIExpression()), !dbg !1086
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1111
  br label %for.cond, !dbg !1112, !llvm.loop !1113

for.end:                                          ; preds = %for.cond
  ret %struct.simple_bitmap_def** %2, !dbg !1115
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %src) local_unnamed_addr #4 !dbg !1116 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1123, metadata !DIExpression()), !dbg !1125
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %src, metadata !1124, metadata !DIExpression()), !dbg !1125
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1126
  %0 = bitcast i64* %arraydecay to i8*, !dbg !1126
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 3, i64 0, !dbg !1127
  %1 = bitcast i64* %arraydecay2 to i8*, !dbg !1127
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1128
  %2 = load i32, i32* %size, align 4, !dbg !1128
  %conv = zext i32 %2 to i64, !dbg !1129
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1130
  %call = tail call i8* @memcpy(i8* nonnull %0, i8* nonnull %1, i64 %mul) #6, !dbg !1131
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1132
  %3 = load i8*, i8** %popcount, align 8, !dbg !1132
  %tobool = icmp eq i8* %3, null, !dbg !1134
  br i1 %tobool, label %if.end, label %if.then, !dbg !1135

if.then:                                          ; preds = %entry
  %popcount4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 0, !dbg !1136
  %4 = load i8*, i8** %popcount4, align 8, !dbg !1136
  %5 = load i32, i32* %size, align 4, !dbg !1137
  %conv6 = zext i32 %5 to i64, !dbg !1138
  %call8 = tail call i8* @memcpy(i8* nonnull %3, i8* %4, i64 %conv6) #6, !dbg !1139
  br label %if.end, !dbg !1139

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1140
}

declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_copy_n(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %src, i32 %n) local_unnamed_addr #4 !dbg !1141 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1145, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %src, metadata !1146, metadata !DIExpression()), !dbg !1148
  call void @llvm.dbg.value(metadata i32 %n, metadata !1147, metadata !DIExpression()), !dbg !1148
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1149
  %0 = bitcast i64* %arraydecay to i8*, !dbg !1149
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 3, i64 0, !dbg !1150
  %1 = bitcast i64* %arraydecay2 to i8*, !dbg !1150
  %conv = zext i32 %n to i64, !dbg !1151
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1152
  %call = tail call i8* @memcpy(i8* nonnull %0, i8* nonnull %1, i64 %mul) #6, !dbg !1153
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1154
  %2 = load i8*, i8** %popcount, align 8, !dbg !1154
  %tobool = icmp eq i8* %2, null, !dbg !1156
  br i1 %tobool, label %if.end, label %if.then, !dbg !1157

if.then:                                          ; preds = %entry
  %popcount4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 0, !dbg !1158
  %3 = load i8*, i8** %popcount4, align 8, !dbg !1158
  %call7 = tail call i8* @memcpy(i8* nonnull %2, i8* %3, i64 %conv) #6, !dbg !1159
  br label %if.end, !dbg !1159

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1160
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sbitmap_equal(%struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1161 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1165, metadata !DIExpression()), !dbg !1167
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1166, metadata !DIExpression()), !dbg !1167
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1168
  %0 = bitcast i64* %arraydecay to i8*, !dbg !1168
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1169
  %1 = bitcast i64* %arraydecay2 to i8*, !dbg !1169
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 2, !dbg !1170
  %2 = load i32, i32* %size, align 4, !dbg !1170
  %conv = zext i32 %2 to i64, !dbg !1171
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1172
  %call = tail call i32 @memcmp(i8* nonnull %0, i8* nonnull %1, i64 %mul) #6, !dbg !1173
  %tobool = icmp eq i32 %call, 0, !dbg !1174
  %lnot.ext = zext i1 %tobool to i32, !dbg !1174
  ret i32 %lnot.ext, !dbg !1175
}

declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_empty_p(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !1176 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !1180, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.value(metadata i32 0, metadata !1181, metadata !DIExpression()), !dbg !1182
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !1183
  %0 = load i32, i32* %size, align 4, !dbg !1183
  br label %for.cond, !dbg !1186

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1187
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1181, metadata !DIExpression()), !dbg !1182
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1188
  br i1 %exitcond, label %cleanup, label %for.body, !dbg !1189

for.body:                                         ; preds = %for.cond
  %idxprom = zext i32 %i.0 to i64, !dbg !1190
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom, !dbg !1190
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1190
  %tobool = icmp eq i64 %1, 0, !dbg !1190
  br i1 %tobool, label %for.inc, label %cleanup, !dbg !1192

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !1193
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1181, metadata !DIExpression()), !dbg !1182
  br label %for.cond, !dbg !1194, !llvm.loop !1195

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !1182
  ret i8 %retval.0, !dbg !1197
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_range_empty_p(%struct.simple_bitmap_def* %bmap, i32 %start, i32 %n) local_unnamed_addr #4 !dbg !1198 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !1202, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %start, metadata !1203, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %n, metadata !1204, metadata !DIExpression()), !dbg !1208
  %div = lshr i32 %start, 6, !dbg !1209
  call void @llvm.dbg.value(metadata i32 %div, metadata !1205, metadata !DIExpression()), !dbg !1208
  %rem = and i32 %start, 63, !dbg !1210
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1207, metadata !DIExpression()), !dbg !1208
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 1, !dbg !1211
  %0 = load i32, i32* %n_bits, align 8, !dbg !1211
  %add = add i32 %start, %n, !dbg !1211
  %cmp = icmp ult i32 %0, %add, !dbg !1211
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !1211

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1211
  br label %cond.end, !dbg !1211

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %div to i64, !dbg !1212
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom, !dbg !1212
  %1 = load i64, i64* %arrayidx, align 8, !dbg !1212
  call void @llvm.dbg.value(metadata i64 %1, metadata !1206, metadata !DIExpression()), !dbg !1208
  %sh_prom = zext i32 %rem to i64, !dbg !1213
  %shr = lshr i64 %1, %sh_prom, !dbg !1213
  call void @llvm.dbg.value(metadata i64 %shr, metadata !1206, metadata !DIExpression()), !dbg !1208
  %add1 = add i32 %rem, %n, !dbg !1214
  %cmp2 = icmp ult i32 %add1, 65, !dbg !1216
  br i1 %cmp2, label %if.then, label %if.end9, !dbg !1217

if.then:                                          ; preds = %cond.end
  %cmp4 = icmp eq i32 %add1, 64, !dbg !1218
  br i1 %cmp4, label %if.end, label %if.then5, !dbg !1221

if.then5:                                         ; preds = %if.then
  %notmask2 = shl nsw i32 -1, %n, !dbg !1222
  %sub = xor i32 %notmask2, -1, !dbg !1222
  %conv = sext i32 %sub to i64, !dbg !1223
  %and = and i64 %shr, %conv, !dbg !1224
  call void @llvm.dbg.value(metadata i64 %and, metadata !1206, metadata !DIExpression()), !dbg !1208
  br label %if.end, !dbg !1225

if.end:                                           ; preds = %if.then, %if.then5
  %elm.0 = phi i64 [ %and, %if.then5 ], [ %shr, %if.then ], !dbg !1208
  call void @llvm.dbg.value(metadata i64 %elm.0, metadata !1206, metadata !DIExpression()), !dbg !1208
  %cmp6 = icmp eq i64 %elm.0, 0, !dbg !1226
  br label %cleanup, !dbg !1227

if.end9:                                          ; preds = %cond.end
  %tobool = icmp eq i64 %shr, 0, !dbg !1228
  br i1 %tobool, label %if.end11, label %cleanup, !dbg !1230

if.end11:                                         ; preds = %if.end9
  %sub121 = or i32 %start, -64, !dbg !1231
  %sub13 = add i32 %sub121, %n, !dbg !1231
  call void @llvm.dbg.value(metadata i32 %sub13, metadata !1204, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %div, metadata !1205, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1208
  %2 = lshr i32 %start, 6, !dbg !1232
  %3 = zext i32 %2 to i64, !dbg !1232
  br label %while.cond, !dbg !1232

while.cond:                                       ; preds = %if.end21, %if.end11
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end21 ], [ %3, %if.end11 ]
  %n.addr.0 = phi i32 [ %sub23, %if.end21 ], [ %sub13, %if.end11 ], !dbg !1208
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1208
  call void @llvm.dbg.value(metadata i32 %n.addr.0, metadata !1204, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 undef, metadata !1205, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1208
  %cmp14 = icmp ugt i32 %n.addr.0, 63, !dbg !1233
  br i1 %cmp14, label %while.body, label %while.end, !dbg !1232

while.body:                                       ; preds = %while.cond
  %arrayidx18 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %indvars.iv.next, !dbg !1234
  %4 = load i64, i64* %arrayidx18, align 8, !dbg !1234
  %tobool19 = icmp eq i64 %4, 0, !dbg !1234
  br i1 %tobool19, label %if.end21, label %cleanup.loopexit, !dbg !1237

if.end21:                                         ; preds = %while.body
  call void @llvm.dbg.value(metadata i32 undef, metadata !1205, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1208
  %sub23 = add i32 %n.addr.0, -64, !dbg !1238
  call void @llvm.dbg.value(metadata i32 %sub23, metadata !1204, metadata !DIExpression()), !dbg !1208
  br label %while.cond, !dbg !1232, !llvm.loop !1239

while.end:                                        ; preds = %while.cond
  %n.addr.0.lcssa = phi i32 [ %n.addr.0, %while.cond ], !dbg !1208
  %indvars.iv.next.lcssa = phi i64 [ %indvars.iv.next, %while.cond ], !dbg !1208
  call void @llvm.dbg.value(metadata i32 %n.addr.0.lcssa, metadata !1204, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %n.addr.0.lcssa, metadata !1204, metadata !DIExpression()), !dbg !1208
  call void @llvm.dbg.value(metadata i32 %n.addr.0.lcssa, metadata !1204, metadata !DIExpression()), !dbg !1208
  %tobool24 = icmp eq i32 %n.addr.0.lcssa, 0, !dbg !1241
  br i1 %tobool24, label %cleanup, label %if.then25, !dbg !1243

if.then25:                                        ; preds = %while.end
  %idxprom27 = and i64 %indvars.iv.next.lcssa, 4294967295, !dbg !1244
  %arrayidx28 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom27, !dbg !1244
  %5 = load i64, i64* %arrayidx28, align 8, !dbg !1244
  call void @llvm.dbg.value(metadata i64 %5, metadata !1206, metadata !DIExpression()), !dbg !1208
  %notmask = shl nsw i32 -1, %n.addr.0.lcssa, !dbg !1246
  %sub30 = xor i32 %notmask, -1, !dbg !1246
  %conv31 = sext i32 %sub30 to i64, !dbg !1247
  %and32 = and i64 %5, %conv31, !dbg !1248
  call void @llvm.dbg.value(metadata i64 %and32, metadata !1206, metadata !DIExpression()), !dbg !1208
  %cmp33 = icmp eq i64 %and32, 0, !dbg !1249
  br label %cleanup, !dbg !1250

cleanup.loopexit:                                 ; preds = %while.body
  br label %cleanup, !dbg !1208

cleanup:                                          ; preds = %cleanup.loopexit, %while.end, %if.end9, %if.then25, %if.end
  %retval.0.shrunk = phi i1 [ %cmp6, %if.end ], [ %cmp33, %if.then25 ], [ false, %if.end9 ], [ true, %while.end ], [ false, %cleanup.loopexit ]
  %retval.0 = zext i1 %retval.0.shrunk to i8, !dbg !1208
  ret i8 %retval.0, !dbg !1251
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_zero(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !1252 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !1256, metadata !DIExpression()), !dbg !1257
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 0, !dbg !1258
  %0 = bitcast i64* %arraydecay to i8*, !dbg !1258
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !1259
  %1 = load i32, i32* %size, align 4, !dbg !1259
  %conv = zext i32 %1 to i64, !dbg !1259
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1259
  %call = tail call i8* @memset(i8* nonnull %0, i32 0, i64 %mul) #6, !dbg !1260
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 0, !dbg !1261
  %2 = load i8*, i8** %popcount, align 8, !dbg !1261
  %tobool = icmp eq i8* %2, null, !dbg !1263
  br i1 %tobool, label %if.end, label %if.then, !dbg !1264

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %size, align 4, !dbg !1265
  %conv3 = zext i32 %3 to i64, !dbg !1266
  %call5 = tail call i8* @memset(i8* nonnull %2, i32 0, i64 %conv3) #6, !dbg !1267
  br label %if.end, !dbg !1267

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !1268
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_ones(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !1269 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !1271, metadata !DIExpression()), !dbg !1273
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 0, !dbg !1274
  %0 = bitcast i64* %arraydecay to i8*, !dbg !1274
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !1275
  %1 = load i32, i32* %size, align 4, !dbg !1275
  %conv = zext i32 %1 to i64, !dbg !1275
  %mul = shl nuw nsw i64 %conv, 3, !dbg !1275
  %call = tail call i8* @memset(i8* nonnull %0, i32 -1, i64 %mul) #6, !dbg !1276
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 0, !dbg !1277
  %2 = load i8*, i8** %popcount, align 8, !dbg !1277
  %tobool = icmp eq i8* %2, null, !dbg !1279
  br i1 %tobool, label %if.end, label %if.then, !dbg !1280

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %size, align 4, !dbg !1281
  %conv3 = zext i32 %3 to i64, !dbg !1282
  %call5 = tail call i8* @memset(i8* nonnull %2, i32 -1, i64 %conv3) #6, !dbg !1283
  br label %if.end, !dbg !1283

if.end:                                           ; preds = %entry, %if.then
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 1, !dbg !1284
  %4 = load i32, i32* %n_bits, align 8, !dbg !1284
  %rem = and i32 %4, 63, !dbg !1285
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1272, metadata !DIExpression()), !dbg !1273
  %tobool6 = icmp eq i32 %rem, 0, !dbg !1286
  br i1 %tobool6, label %if.end27, label %if.then7, !dbg !1288

if.then7:                                         ; preds = %if.end
  %sub = sub nuw nsw i32 64, %rem, !dbg !1289
  %sh_prom = zext i32 %sub to i64, !dbg !1291
  %shr = lshr i64 -1, %sh_prom, !dbg !1291
  %5 = load i32, i32* %size, align 4, !dbg !1292
  %sub10 = add i32 %5, -1, !dbg !1293
  %idxprom = zext i32 %sub10 to i64, !dbg !1294
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom, !dbg !1294
  store i64 %shr, i64* %arrayidx, align 8, !dbg !1295
  %6 = load i8*, i8** %popcount, align 8, !dbg !1296
  %tobool12 = icmp eq i8* %6, null, !dbg !1298
  br i1 %tobool12, label %if.end27, label %if.then13, !dbg !1299

if.then13:                                        ; preds = %if.then7
  %call19 = tail call fastcc i64 @sbitmap_elt_popcount(i64 %shr) #7, !dbg !1300
  %conv20 = trunc i64 %call19 to i8, !dbg !1300
  %7 = load i8*, i8** %popcount, align 8, !dbg !1301
  %8 = load i32, i32* %size, align 4, !dbg !1302
  %sub23 = add i32 %8, -1, !dbg !1303
  %idxprom24 = zext i32 %sub23 to i64, !dbg !1304
  %arrayidx25 = getelementptr inbounds i8, i8* %7, i64 %idxprom24, !dbg !1304
  store i8 %conv20, i8* %arrayidx25, align 1, !dbg !1305
  br label %if.end27, !dbg !1304

if.end27:                                         ; preds = %if.then7, %if.end, %if.then13
  ret void, !dbg !1306
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_vector_zero(%struct.simple_bitmap_def** %bmap, i32 %n_vecs) local_unnamed_addr #4 !dbg !1307 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bmap, metadata !1311, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 %n_vecs, metadata !1312, metadata !DIExpression()), !dbg !1314
  call void @llvm.dbg.value(metadata i32 0, metadata !1313, metadata !DIExpression()), !dbg !1314
  %wide.trip.count = zext i32 %n_vecs to i64, !dbg !1315
  br label %for.cond, !dbg !1318

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1319
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1313, metadata !DIExpression()), !dbg !1314
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !1315
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1320

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, i64 %indvars.iv, !dbg !1321
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !1321
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %0) #7, !dbg !1322
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1323
  br label %for.cond, !dbg !1324, !llvm.loop !1325

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1327
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_vector_ones(%struct.simple_bitmap_def** %bmap, i32 %n_vecs) local_unnamed_addr #4 !dbg !1328 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bmap, metadata !1330, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 %n_vecs, metadata !1331, metadata !DIExpression()), !dbg !1333
  call void @llvm.dbg.value(metadata i32 0, metadata !1332, metadata !DIExpression()), !dbg !1333
  %wide.trip.count = zext i32 %n_vecs to i64, !dbg !1334
  br label %for.cond, !dbg !1337

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !1338
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !1332, metadata !DIExpression()), !dbg !1333
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !1334
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1339

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmap, i64 %indvars.iv, !dbg !1340
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !1340
  tail call void @sbitmap_ones(%struct.simple_bitmap_def* %0) #7, !dbg !1341
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !1342
  br label %for.cond, !dbg !1343, !llvm.loop !1344

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1346
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_union_of_diff_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !1347 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1351, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1352, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1353, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !1354, metadata !DIExpression()), !dbg !1371
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1372
  %0 = load i32, i32* %size, align 4, !dbg !1372
  call void @llvm.dbg.value(metadata i32 %0, metadata !1356, metadata !DIExpression()), !dbg !1371
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1373
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1357, metadata !DIExpression()), !dbg !1371
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1374
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1360, metadata !DIExpression()), !dbg !1371
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1375
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1364, metadata !DIExpression()), !dbg !1371
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !1376
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !1365, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 0, metadata !1366, metadata !DIExpression()), !dbg !1371
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1377
  %1 = load i8*, i8** %popcount, align 8, !dbg !1377
  %tobool = icmp eq i8* %1, null, !dbg !1377
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1377

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 394, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1377
  br label %cond.end, !dbg !1377

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1355, metadata !DIExpression()), !dbg !1371
  br label %for.cond, !dbg !1378

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr10, %for.body ], !dbg !1371
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1379
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1371
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !1371
  %cp.0 = phi i64* [ %arraydecay6, %cond.end ], [ %incdec.ptr8, %for.body ], !dbg !1371
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or9, %for.body ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1366, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !1365, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1364, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1360, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1355, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1357, metadata !DIExpression()), !dbg !1371
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1380
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1381

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1382
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1360, metadata !DIExpression()), !dbg !1371
  %2 = load i64, i64* %ap.0, align 8, !dbg !1383
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1384
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1364, metadata !DIExpression()), !dbg !1371
  %3 = load i64, i64* %bp.0, align 8, !dbg !1385
  %incdec.ptr8 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !1386
  call void @llvm.dbg.value(metadata i64* %incdec.ptr8, metadata !1365, metadata !DIExpression()), !dbg !1371
  %4 = load i64, i64* %cp.0, align 8, !dbg !1387
  %neg = xor i64 %4, -1, !dbg !1388
  %and = and i64 %3, %neg, !dbg !1389
  %or = or i64 %2, %and, !dbg !1390
  call void @llvm.dbg.value(metadata i64 %or, metadata !1367, metadata !DIExpression()), !dbg !1391
  %5 = load i64, i64* %dstp.0, align 8, !dbg !1392
  %xor = xor i64 %5, %or, !dbg !1393
  %or9 = or i64 %changed.0, %xor, !dbg !1394
  call void @llvm.dbg.value(metadata i64 %or9, metadata !1366, metadata !DIExpression()), !dbg !1371
  %incdec.ptr10 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1395
  call void @llvm.dbg.value(metadata i64* %incdec.ptr10, metadata !1357, metadata !DIExpression()), !dbg !1371
  store i64 %or, i64* %dstp.0, align 8, !dbg !1396
  %inc = add i32 %i.0, 1, !dbg !1397
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1355, metadata !DIExpression()), !dbg !1371
  br label %for.cond, !dbg !1398, !llvm.loop !1399

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !1371
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1366, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1366, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1366, metadata !DIExpression()), !dbg !1371
  %cmp11 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1401
  %conv12 = zext i1 %cmp11 to i8, !dbg !1402
  ret i8 %conv12, !dbg !1403
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_union_of_diff(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !1404 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1408, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1409, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1410, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !1411, metadata !DIExpression()), !dbg !1418
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1419
  %0 = load i32, i32* %size, align 4, !dbg !1419
  call void @llvm.dbg.value(metadata i32 %0, metadata !1413, metadata !DIExpression()), !dbg !1418
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1420
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1414, metadata !DIExpression()), !dbg !1418
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1421
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1415, metadata !DIExpression()), !dbg !1418
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1422
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1416, metadata !DIExpression()), !dbg !1418
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !1423
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !1417, metadata !DIExpression()), !dbg !1418
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1424
  %1 = load i8*, i8** %popcount, align 8, !dbg !1424
  %tobool = icmp eq i8* %1, null, !dbg !1424
  br i1 %tobool, label %land.lhs.true, label %cond.true, !dbg !1424

land.lhs.true:                                    ; preds = %entry
  %popcount7 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 0, !dbg !1424
  %2 = load i8*, i8** %popcount7, align 8, !dbg !1424
  %tobool8 = icmp eq i8* %2, null, !dbg !1424
  br i1 %tobool8, label %land.lhs.true9, label %cond.true, !dbg !1424

land.lhs.true9:                                   ; preds = %land.lhs.true
  %popcount10 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 0, !dbg !1424
  %3 = load i8*, i8** %popcount10, align 8, !dbg !1424
  %tobool11 = icmp eq i8* %3, null, !dbg !1424
  br i1 %tobool11, label %land.lhs.true12, label %cond.true, !dbg !1424

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %popcount13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 0, !dbg !1424
  %4 = load i8*, i8** %popcount13, align 8, !dbg !1424
  %tobool14 = icmp eq i8* %4, null, !dbg !1424
  br i1 %tobool14, label %cond.end, label %cond.true, !dbg !1424

cond.true:                                        ; preds = %land.lhs.true12, %land.lhs.true9, %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1424
  br label %cond.end, !dbg !1424

cond.end:                                         ; preds = %land.lhs.true12, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1412, metadata !DIExpression()), !dbg !1418
  br label %for.cond, !dbg !1425

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1427
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr17, %for.body ], !dbg !1418
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1418
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr15, %for.body ], !dbg !1418
  %cp.0 = phi i64* [ %arraydecay6, %cond.end ], [ %incdec.ptr16, %for.body ], !dbg !1418
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !1417, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1416, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1415, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1414, metadata !DIExpression()), !dbg !1418
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1412, metadata !DIExpression()), !dbg !1418
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1428
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1430

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1431
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1415, metadata !DIExpression()), !dbg !1418
  %5 = load i64, i64* %ap.0, align 8, !dbg !1432
  %incdec.ptr15 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1433
  call void @llvm.dbg.value(metadata i64* %incdec.ptr15, metadata !1416, metadata !DIExpression()), !dbg !1418
  %6 = load i64, i64* %bp.0, align 8, !dbg !1434
  %incdec.ptr16 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !1435
  call void @llvm.dbg.value(metadata i64* %incdec.ptr16, metadata !1417, metadata !DIExpression()), !dbg !1418
  %7 = load i64, i64* %cp.0, align 8, !dbg !1436
  %neg = xor i64 %7, -1, !dbg !1437
  %and = and i64 %6, %neg, !dbg !1438
  %or = or i64 %5, %and, !dbg !1439
  %incdec.ptr17 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1440
  call void @llvm.dbg.value(metadata i64* %incdec.ptr17, metadata !1414, metadata !DIExpression()), !dbg !1418
  store i64 %or, i64* %dstp.0, align 8, !dbg !1441
  %inc = add i32 %i.0, 1, !dbg !1442
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1412, metadata !DIExpression()), !dbg !1418
  br label %for.cond, !dbg !1443, !llvm.loop !1444

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1446
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_not(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %src) local_unnamed_addr #4 !dbg !1447 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1449, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %src, metadata !1450, metadata !DIExpression()), !dbg !1456
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1457
  %0 = load i32, i32* %size, align 4, !dbg !1457
  call void @llvm.dbg.value(metadata i32 %0, metadata !1452, metadata !DIExpression()), !dbg !1456
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1458
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1453, metadata !DIExpression()), !dbg !1456
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 3, i64 0, !dbg !1459
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1454, metadata !DIExpression()), !dbg !1456
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1460
  %1 = load i8*, i8** %popcount, align 8, !dbg !1460
  %tobool = icmp eq i8* %1, null, !dbg !1460
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1460

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 432, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1460
  br label %cond.end, !dbg !1460

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1451, metadata !DIExpression()), !dbg !1456
  br label %for.cond, !dbg !1461

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1463
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr3, %for.body ], !dbg !1456
  %srcp.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1456
  call void @llvm.dbg.value(metadata i64* %srcp.0, metadata !1454, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1453, metadata !DIExpression()), !dbg !1456
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1451, metadata !DIExpression()), !dbg !1456
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1464
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1466

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %srcp.0, i64 1, !dbg !1467
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1454, metadata !DIExpression()), !dbg !1456
  %2 = load i64, i64* %srcp.0, align 8, !dbg !1468
  %neg = xor i64 %2, -1, !dbg !1469
  %incdec.ptr3 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1470
  call void @llvm.dbg.value(metadata i64* %incdec.ptr3, metadata !1453, metadata !DIExpression()), !dbg !1456
  store i64 %neg, i64* %dstp.0, align 8, !dbg !1471
  %inc = add i32 %i.0, 1, !dbg !1472
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1451, metadata !DIExpression()), !dbg !1456
  br label %for.cond, !dbg !1473, !llvm.loop !1474

for.end:                                          ; preds = %for.cond
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %src, i64 0, i32 1, !dbg !1476
  %3 = load i32, i32* %n_bits, align 8, !dbg !1476
  %rem = and i32 %3, 63, !dbg !1477
  call void @llvm.dbg.value(metadata i32 %rem, metadata !1455, metadata !DIExpression()), !dbg !1456
  %tobool4 = icmp eq i32 %rem, 0, !dbg !1478
  br i1 %tobool4, label %if.end, label %if.then, !dbg !1480

if.then:                                          ; preds = %for.end
  %sub = add i32 %0, -1, !dbg !1481
  %idxprom = zext i32 %sub to i64, !dbg !1482
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 %idxprom, !dbg !1482
  %4 = load i64, i64* %arrayidx, align 8, !dbg !1482
  %sub6 = sub nuw nsw i32 64, %rem, !dbg !1483
  %sh_prom = zext i32 %sub6 to i64, !dbg !1484
  %shr = lshr i64 -1, %sh_prom, !dbg !1484
  %and = and i64 %4, %shr, !dbg !1485
  store i64 %and, i64* %arrayidx, align 8, !dbg !1486
  br label %if.end, !dbg !1487

if.end:                                           ; preds = %for.end, %if.then
  ret void, !dbg !1488
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_difference(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1489 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1493, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1494, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1495, metadata !DIExpression()), !dbg !1502
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1503
  %0 = load i32, i32* %size, align 4, !dbg !1503
  call void @llvm.dbg.value(metadata i32 %0, metadata !1497, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %0, metadata !1498, metadata !DIExpression()), !dbg !1502
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1504
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1499, metadata !DIExpression()), !dbg !1502
  %arraydecay3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1505
  call void @llvm.dbg.value(metadata i64* %arraydecay3, metadata !1500, metadata !DIExpression()), !dbg !1502
  %arraydecay5 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1506
  call void @llvm.dbg.value(metadata i64* %arraydecay5, metadata !1501, metadata !DIExpression()), !dbg !1502
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1507
  %1 = load i8*, i8** %popcount, align 8, !dbg !1507
  %tobool = icmp eq i8* %1, null, !dbg !1507
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1507

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 456, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1507
  br label %cond.end, !dbg !1507

cond.end:                                         ; preds = %entry, %cond.true
  %size6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 2, !dbg !1508
  %2 = load i32, i32* %size6, align 4, !dbg !1508
  %cmp = icmp ult i32 %2, %0, !dbg !1508
  br i1 %cmp, label %cond.true7, label %cond.end9, !dbg !1508

cond.true7:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 459, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1508
  br label %cond.end9, !dbg !1508

cond.end9:                                        ; preds = %cond.end, %cond.true7
  %size11 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 2, !dbg !1509
  %3 = load i32, i32* %size11, align 4, !dbg !1509
  %cmp12 = icmp ult i32 %3, %0, !dbg !1511
  br i1 %cmp12, label %if.then, label %if.end, !dbg !1512

if.then:                                          ; preds = %cond.end9
  call void @llvm.dbg.value(metadata i32 %3, metadata !1498, metadata !DIExpression()), !dbg !1502
  br label %if.end, !dbg !1513

if.end:                                           ; preds = %if.then, %cond.end9
  %min_size.0 = phi i32 [ %3, %if.then ], [ %0, %cond.end9 ], !dbg !1502
  call void @llvm.dbg.value(metadata i32 %min_size.0, metadata !1498, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 0, metadata !1496, metadata !DIExpression()), !dbg !1502
  br label %for.cond, !dbg !1514

for.cond:                                         ; preds = %for.body, %if.end
  %i.0 = phi i32 [ 0, %if.end ], [ %inc, %for.body ], !dbg !1516
  %dstp.0 = phi i64* [ %arraydecay, %if.end ], [ %incdec.ptr16, %for.body ], !dbg !1502
  %ap.0 = phi i64* [ %arraydecay3, %if.end ], [ %incdec.ptr, %for.body ], !dbg !1502
  %bp.0 = phi i64* [ %arraydecay5, %if.end ], [ %incdec.ptr15, %for.body ], !dbg !1502
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1501, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1496, metadata !DIExpression()), !dbg !1502
  %cmp14 = icmp ult i32 %i.0, %min_size.0, !dbg !1517
  br i1 %cmp14, label %for.body, label %for.end, !dbg !1519

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1520
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1500, metadata !DIExpression()), !dbg !1502
  %4 = load i64, i64* %ap.0, align 8, !dbg !1521
  %incdec.ptr15 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1522
  call void @llvm.dbg.value(metadata i64* %incdec.ptr15, metadata !1501, metadata !DIExpression()), !dbg !1502
  %5 = load i64, i64* %bp.0, align 8, !dbg !1523
  %neg = xor i64 %5, -1, !dbg !1524
  %and = and i64 %4, %neg, !dbg !1525
  %incdec.ptr16 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1526
  call void @llvm.dbg.value(metadata i64* %incdec.ptr16, metadata !1499, metadata !DIExpression()), !dbg !1502
  store i64 %and, i64* %dstp.0, align 8, !dbg !1527
  %inc = add i32 %i.0, 1, !dbg !1528
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1496, metadata !DIExpression()), !dbg !1502
  br label %for.cond, !dbg !1529, !llvm.loop !1530

for.end:                                          ; preds = %for.cond
  %dstp.0.lcssa = phi i64* [ %dstp.0, %for.cond ], !dbg !1502
  %ap.0.lcssa = phi i64* [ %ap.0, %for.cond ], !dbg !1502
  call void @llvm.dbg.value(metadata i64* %dstp.0.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %ap.0.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %min_size.0, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %dstp.0.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %ap.0.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %min_size.0, metadata !1496, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %dstp.0.lcssa, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %ap.0.lcssa, metadata !1500, metadata !DIExpression()), !dbg !1502
  %cmp17 = icmp ne %struct.simple_bitmap_def* %dst, %a, !dbg !1532
  %cmp18 = icmp ne i32 %min_size.0, %0, !dbg !1534
  %or.cond = and i1 %cmp17, %cmp18, !dbg !1535
  br i1 %or.cond, label %for.cond20.preheader, label %if.end28, !dbg !1535

for.cond20.preheader:                             ; preds = %for.end
  br label %for.cond20, !dbg !1536

for.cond20:                                       ; preds = %for.cond20.preheader, %for.body22
  %i.1 = phi i32 [ %inc26, %for.body22 ], [ %min_size.0, %for.cond20.preheader ], !dbg !1502
  %dstp.1 = phi i64* [ %incdec.ptr24, %for.body22 ], [ %dstp.0.lcssa, %for.cond20.preheader ], !dbg !1502
  %ap.1 = phi i64* [ %incdec.ptr23, %for.body22 ], [ %ap.0.lcssa, %for.cond20.preheader ], !dbg !1502
  call void @llvm.dbg.value(metadata i64* %ap.1, metadata !1500, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i64* %dstp.1, metadata !1499, metadata !DIExpression()), !dbg !1502
  call void @llvm.dbg.value(metadata i32 %i.1, metadata !1496, metadata !DIExpression()), !dbg !1502
  %cmp21 = icmp ult i32 %i.1, %0, !dbg !1538
  br i1 %cmp21, label %for.body22, label %if.end28.loopexit, !dbg !1536

for.body22:                                       ; preds = %for.cond20
  %incdec.ptr23 = getelementptr inbounds i64, i64* %ap.1, i64 1, !dbg !1540
  call void @llvm.dbg.value(metadata i64* %incdec.ptr23, metadata !1500, metadata !DIExpression()), !dbg !1502
  %6 = load i64, i64* %ap.1, align 8, !dbg !1541
  %incdec.ptr24 = getelementptr inbounds i64, i64* %dstp.1, i64 1, !dbg !1542
  call void @llvm.dbg.value(metadata i64* %incdec.ptr24, metadata !1499, metadata !DIExpression()), !dbg !1502
  store i64 %6, i64* %dstp.1, align 8, !dbg !1543
  %inc26 = add i32 %i.1, 1, !dbg !1544
  call void @llvm.dbg.value(metadata i32 %inc26, metadata !1496, metadata !DIExpression()), !dbg !1502
  br label %for.cond20, !dbg !1545, !llvm.loop !1546

if.end28.loopexit:                                ; preds = %for.cond20
  br label %if.end28, !dbg !1548

if.end28:                                         ; preds = %if.end28.loopexit, %for.end
  ret void, !dbg !1548
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_any_common_bits(%struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1549 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1553, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1554, metadata !DIExpression()), !dbg !1559
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1560
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1555, metadata !DIExpression()), !dbg !1559
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1561
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1556, metadata !DIExpression()), !dbg !1559
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 2, !dbg !1562
  %0 = load i32, i32* %size, align 4, !dbg !1562
  %size3 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 2, !dbg !1562
  %1 = load i32, i32* %size3, align 4, !dbg !1562
  %cmp = icmp ult i32 %0, %1, !dbg !1562
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !1562

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !1562

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !1562

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ %1, %cond.false ], !dbg !1562
  call void @llvm.dbg.value(metadata i32 %cond, metadata !1558, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i32 0, metadata !1557, metadata !DIExpression()), !dbg !1559
  br label %for.cond, !dbg !1563

for.cond:                                         ; preds = %for.inc, %cond.end
  %bp.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr7, %for.inc ], !dbg !1559
  %ap.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr, %for.inc ], !dbg !1559
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.inc ], !dbg !1565
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1557, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1555, metadata !DIExpression()), !dbg !1559
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1556, metadata !DIExpression()), !dbg !1559
  %cmp6 = icmp ult i32 %i.0, %cond, !dbg !1566
  br i1 %cmp6, label %for.body, label %cleanup, !dbg !1568

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1555, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1559
  %2 = load i64, i64* %ap.0, align 8, !dbg !1569
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1556, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1559
  %3 = load i64, i64* %bp.0, align 8, !dbg !1571
  %and = and i64 %2, %3, !dbg !1572
  %cmp8 = icmp eq i64 %and, 0, !dbg !1573
  br i1 %cmp8, label %for.inc, label %cleanup, !dbg !1574

for.inc:                                          ; preds = %for.body
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1575
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1556, metadata !DIExpression()), !dbg !1559
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1576
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1555, metadata !DIExpression()), !dbg !1559
  %inc = add i32 %i.0, 1, !dbg !1577
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1557, metadata !DIExpression()), !dbg !1559
  br label %for.cond, !dbg !1578, !llvm.loop !1579

cleanup:                                          ; preds = %for.body, %for.cond
  %retval.0 = phi i8 [ 1, %for.body ], [ 0, %for.cond ], !dbg !1559
  ret i8 %retval.0, !dbg !1581
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1582 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1586, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1587, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1588, metadata !DIExpression()), !dbg !1599
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1600
  %0 = load i32, i32* %size, align 4, !dbg !1600
  call void @llvm.dbg.value(metadata i32 %0, metadata !1590, metadata !DIExpression()), !dbg !1599
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1601
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1591, metadata !DIExpression()), !dbg !1599
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1602
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1592, metadata !DIExpression()), !dbg !1599
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1603
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1593, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 0, metadata !1594, metadata !DIExpression()), !dbg !1599
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1604
  %1 = load i8*, i8** %popcount, align 8, !dbg !1604
  %tobool = icmp eq i8* %1, null, !dbg !1604
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1604

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 503, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1604
  br label %cond.end, !dbg !1604

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1589, metadata !DIExpression()), !dbg !1599
  br label %for.cond, !dbg !1605

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr6, %for.body ], !dbg !1599
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1606
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1599
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr5, %for.body ], !dbg !1599
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or, %for.body ], !dbg !1599
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1593, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1592, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1589, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1591, metadata !DIExpression()), !dbg !1599
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1607
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1608

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1609
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1592, metadata !DIExpression()), !dbg !1599
  %2 = load i64, i64* %ap.0, align 8, !dbg !1610
  %incdec.ptr5 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1611
  call void @llvm.dbg.value(metadata i64* %incdec.ptr5, metadata !1593, metadata !DIExpression()), !dbg !1599
  %3 = load i64, i64* %bp.0, align 8, !dbg !1612
  %and = and i64 %2, %3, !dbg !1613
  call void @llvm.dbg.value(metadata i64 %and, metadata !1595, metadata !DIExpression()), !dbg !1614
  %4 = load i64, i64* %dstp.0, align 8, !dbg !1615
  %xor = xor i64 %4, %and, !dbg !1616
  %or = or i64 %changed.0, %xor, !dbg !1617
  call void @llvm.dbg.value(metadata i64 %or, metadata !1594, metadata !DIExpression()), !dbg !1599
  %incdec.ptr6 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1618
  call void @llvm.dbg.value(metadata i64* %incdec.ptr6, metadata !1591, metadata !DIExpression()), !dbg !1599
  store i64 %and, i64* %dstp.0, align 8, !dbg !1619
  %inc = add i32 %i.0, 1, !dbg !1620
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1589, metadata !DIExpression()), !dbg !1599
  br label %for.cond, !dbg !1621, !llvm.loop !1622

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !1599
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1599
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1594, metadata !DIExpression()), !dbg !1599
  %cmp7 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1624
  %conv8 = zext i1 %cmp7 to i8, !dbg !1625
  ret i8 %conv8, !dbg !1626
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_a_and_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1627 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1629, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1630, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1631, metadata !DIExpression()), !dbg !1646
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1647
  %0 = load i32, i32* %size, align 4, !dbg !1647
  call void @llvm.dbg.value(metadata i32 %0, metadata !1633, metadata !DIExpression()), !dbg !1646
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1648
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1634, metadata !DIExpression()), !dbg !1646
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1649
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1635, metadata !DIExpression()), !dbg !1646
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1650
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1636, metadata !DIExpression()), !dbg !1646
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1651
  %1 = load i8*, i8** %popcount, align 8, !dbg !1651
  %cmp = icmp eq i8* %1, null, !dbg !1652
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1637, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %1, metadata !1638, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 0, metadata !1632, metadata !DIExpression()), !dbg !1646
  br i1 %cmp, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1653

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1653

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1653

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %dstp.0.us = phi i64* [ %arraydecay, %entry.split.us ], [ %incdec.ptr18.us, %for.body.us ], !dbg !1646
  %i.0.us = phi i32 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !1654
  %ap.0.us = phi i64* [ %arraydecay2, %entry.split.us ], [ %incdec.ptr.us, %for.body.us ], !dbg !1646
  %bp.0.us = phi i64* [ %arraydecay4, %entry.split.us ], [ %incdec.ptr9.us, %for.body.us ], !dbg !1646
  call void @llvm.dbg.value(metadata i8* %1, metadata !1638, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1636, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1635, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !1632, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %dstp.0.us, metadata !1634, metadata !DIExpression()), !dbg !1646
  %exitcond = icmp eq i32 %i.0.us, %0, !dbg !1655
  br i1 %exitcond, label %for.end.us-lcssa.us, label %for.body.us, !dbg !1656

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1635, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1636, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1646
  call void @llvm.dbg.value(metadata i64 undef, metadata !1639, metadata !DIExpression()), !dbg !1657
  %2 = load i64, i64* %ap.0.us, align 8, !dbg !1658
  %3 = load i64, i64* %bp.0.us, align 8, !dbg !1659
  %and.us = and i64 %2, %3, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %and.us, metadata !1639, metadata !DIExpression()), !dbg !1657
  %incdec.ptr9.us = getelementptr inbounds i64, i64* %bp.0.us, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9.us, metadata !1636, metadata !DIExpression()), !dbg !1646
  %incdec.ptr.us = getelementptr inbounds i64, i64* %ap.0.us, i64 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.us, metadata !1635, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %1, metadata !1638, metadata !DIExpression()), !dbg !1646
  %incdec.ptr18.us = getelementptr inbounds i64, i64* %dstp.0.us, i64 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64* %incdec.ptr18.us, metadata !1634, metadata !DIExpression()), !dbg !1646
  store i64 %and.us, i64* %dstp.0.us, align 8, !dbg !1664
  %inc.us = add i32 %i.0.us, 1, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !1632, metadata !DIExpression()), !dbg !1646
  br label %for.cond.us, !dbg !1666, !llvm.loop !1667

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !1669

for.cond:                                         ; preds = %if.end, %entry.entry.split_crit_edge
  %dstp.0 = phi i64* [ %arraydecay, %entry.entry.split_crit_edge ], [ %incdec.ptr18, %if.end ], !dbg !1646
  %i.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %inc, %if.end ], !dbg !1654
  %ap.0 = phi i64* [ %arraydecay2, %entry.entry.split_crit_edge ], [ %incdec.ptr, %if.end ], !dbg !1646
  %bp.0 = phi i64* [ %arraydecay4, %entry.entry.split_crit_edge ], [ %incdec.ptr9, %if.end ], !dbg !1646
  %popcountp.0 = phi i8* [ %1, %entry.entry.split_crit_edge ], [ %incdec.ptr16, %if.end ], !dbg !1646
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1638, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1636, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1635, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1632, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1634, metadata !DIExpression()), !dbg !1646
  %exitcond1 = icmp eq i32 %i.0, %0, !dbg !1655
  br i1 %exitcond1, label %for.end.us-lcssa, label %for.body, !dbg !1656

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1662
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1635, metadata !DIExpression()), !dbg !1646
  %4 = load i64, i64* %ap.0, align 8, !dbg !1658
  %incdec.ptr9 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1661
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9, metadata !1636, metadata !DIExpression()), !dbg !1646
  %5 = load i64, i64* %bp.0, align 8, !dbg !1659
  %and = and i64 %4, %5, !dbg !1660
  call void @llvm.dbg.value(metadata i64 %and, metadata !1639, metadata !DIExpression()), !dbg !1657
  %6 = load i64, i64* %dstp.0, align 8, !dbg !1670
  %cmp10 = icmp eq i64 %6, %and, !dbg !1671
  call void @llvm.dbg.value(metadata i1 %cmp10, metadata !1643, metadata !DIExpression()), !dbg !1672
  br i1 %cmp10, label %if.end, label %if.then14, !dbg !1673

if.then14:                                        ; preds = %for.body
  %call = tail call fastcc i64 @sbitmap_elt_popcount(i64 %and) #7, !dbg !1674
  %conv15 = trunc i64 %call to i8, !dbg !1674
  store i8 %conv15, i8* %popcountp.0, align 1, !dbg !1676
  br label %if.end, !dbg !1677

if.end:                                           ; preds = %for.body, %if.then14
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1638, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1646
  %incdec.ptr16 = getelementptr inbounds i8, i8* %popcountp.0, i64 1, !dbg !1678
  call void @llvm.dbg.value(metadata i8* %incdec.ptr16, metadata !1638, metadata !DIExpression()), !dbg !1646
  call void @llvm.dbg.value(metadata i8* %incdec.ptr16, metadata !1638, metadata !DIExpression()), !dbg !1646
  %incdec.ptr18 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1663
  call void @llvm.dbg.value(metadata i64* %incdec.ptr18, metadata !1634, metadata !DIExpression()), !dbg !1646
  store i64 %and, i64* %dstp.0, align 8, !dbg !1664
  %inc = add i32 %i.0, 1, !dbg !1665
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1632, metadata !DIExpression()), !dbg !1646
  br label %for.cond, !dbg !1666, !llvm.loop !1667

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !1669

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  ret void, !dbg !1669
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_xor_b_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1679 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1681, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1682, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1683, metadata !DIExpression()), !dbg !1694
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1695
  %0 = load i32, i32* %size, align 4, !dbg !1695
  call void @llvm.dbg.value(metadata i32 %0, metadata !1685, metadata !DIExpression()), !dbg !1694
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1696
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1686, metadata !DIExpression()), !dbg !1694
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1697
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1687, metadata !DIExpression()), !dbg !1694
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1698
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1688, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 0, metadata !1689, metadata !DIExpression()), !dbg !1694
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1699
  %1 = load i8*, i8** %popcount, align 8, !dbg !1699
  %tobool = icmp eq i8* %1, null, !dbg !1699
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1699

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 555, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1699
  br label %cond.end, !dbg !1699

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1684, metadata !DIExpression()), !dbg !1694
  br label %for.cond, !dbg !1700

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !1694
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1701
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1694
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr5, %for.body ], !dbg !1694
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or, %for.body ], !dbg !1694
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1688, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1687, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1684, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1686, metadata !DIExpression()), !dbg !1694
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1702
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1703

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1704
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1687, metadata !DIExpression()), !dbg !1694
  %2 = load i64, i64* %ap.0, align 8, !dbg !1705
  %incdec.ptr5 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1706
  call void @llvm.dbg.value(metadata i64* %incdec.ptr5, metadata !1688, metadata !DIExpression()), !dbg !1694
  %3 = load i64, i64* %bp.0, align 8, !dbg !1707
  %xor = xor i64 %2, %3, !dbg !1708
  call void @llvm.dbg.value(metadata i64 %xor, metadata !1690, metadata !DIExpression()), !dbg !1709
  %4 = load i64, i64* %dstp.0, align 8, !dbg !1710
  %xor6 = xor i64 %4, %xor, !dbg !1711
  %or = or i64 %changed.0, %xor6, !dbg !1712
  call void @llvm.dbg.value(metadata i64 %or, metadata !1689, metadata !DIExpression()), !dbg !1694
  %incdec.ptr7 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1713
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1686, metadata !DIExpression()), !dbg !1694
  store i64 %xor, i64* %dstp.0, align 8, !dbg !1714
  %inc = add i32 %i.0, 1, !dbg !1715
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1684, metadata !DIExpression()), !dbg !1694
  br label %for.cond, !dbg !1716, !llvm.loop !1717

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !1694
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1689, metadata !DIExpression()), !dbg !1694
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1689, metadata !DIExpression()), !dbg !1694
  %cmp8 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1719
  %conv9 = zext i1 %cmp8 to i8, !dbg !1720
  ret i8 %conv9, !dbg !1721
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_a_xor_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1722 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1724, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1725, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1726, metadata !DIExpression()), !dbg !1741
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1742
  %0 = load i32, i32* %size, align 4, !dbg !1742
  call void @llvm.dbg.value(metadata i32 %0, metadata !1728, metadata !DIExpression()), !dbg !1741
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1743
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1729, metadata !DIExpression()), !dbg !1741
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1744
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1730, metadata !DIExpression()), !dbg !1741
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1745
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1731, metadata !DIExpression()), !dbg !1741
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1746
  %1 = load i8*, i8** %popcount, align 8, !dbg !1746
  %cmp = icmp eq i8* %1, null, !dbg !1747
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1732, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %1, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 0, metadata !1727, metadata !DIExpression()), !dbg !1741
  br i1 %cmp, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1748

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1748

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1748

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %dstp.0.us = phi i64* [ %arraydecay, %entry.split.us ], [ %incdec.ptr19.us, %for.body.us ], !dbg !1741
  %i.0.us = phi i32 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !1749
  %ap.0.us = phi i64* [ %arraydecay2, %entry.split.us ], [ %incdec.ptr.us, %for.body.us ], !dbg !1741
  %bp.0.us = phi i64* [ %arraydecay4, %entry.split.us ], [ %incdec.ptr9.us, %for.body.us ], !dbg !1741
  call void @llvm.dbg.value(metadata i8* %1, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1731, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !1727, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %dstp.0.us, metadata !1729, metadata !DIExpression()), !dbg !1741
  %exitcond = icmp eq i32 %i.0.us, %0, !dbg !1750
  br i1 %exitcond, label %for.end.us-lcssa.us, label %for.body.us, !dbg !1751

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1730, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1731, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1741
  call void @llvm.dbg.value(metadata i64 undef, metadata !1734, metadata !DIExpression()), !dbg !1752
  %2 = load i64, i64* %ap.0.us, align 8, !dbg !1753
  %3 = load i64, i64* %bp.0.us, align 8, !dbg !1754
  %xor.us = xor i64 %2, %3, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %xor.us, metadata !1734, metadata !DIExpression()), !dbg !1752
  %incdec.ptr9.us = getelementptr inbounds i64, i64* %bp.0.us, i64 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9.us, metadata !1731, metadata !DIExpression()), !dbg !1741
  %incdec.ptr.us = getelementptr inbounds i64, i64* %ap.0.us, i64 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.us, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %1, metadata !1733, metadata !DIExpression()), !dbg !1741
  %incdec.ptr19.us = getelementptr inbounds i64, i64* %dstp.0.us, i64 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64* %incdec.ptr19.us, metadata !1729, metadata !DIExpression()), !dbg !1741
  store i64 %xor.us, i64* %dstp.0.us, align 8, !dbg !1759
  %inc.us = add i32 %i.0.us, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !1727, metadata !DIExpression()), !dbg !1741
  br label %for.cond.us, !dbg !1761, !llvm.loop !1762

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !1764

for.cond:                                         ; preds = %if.end, %entry.entry.split_crit_edge
  %dstp.0 = phi i64* [ %arraydecay, %entry.entry.split_crit_edge ], [ %incdec.ptr19, %if.end ], !dbg !1741
  %i.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %inc, %if.end ], !dbg !1749
  %ap.0 = phi i64* [ %arraydecay2, %entry.entry.split_crit_edge ], [ %incdec.ptr, %if.end ], !dbg !1741
  %bp.0 = phi i64* [ %arraydecay4, %entry.entry.split_crit_edge ], [ %incdec.ptr9, %if.end ], !dbg !1741
  %popcountp.0 = phi i8* [ %1, %entry.entry.split_crit_edge ], [ %incdec.ptr17, %if.end ], !dbg !1741
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1731, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1730, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1727, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1729, metadata !DIExpression()), !dbg !1741
  %exitcond1 = icmp eq i32 %i.0, %0, !dbg !1750
  br i1 %exitcond1, label %for.end.us-lcssa, label %for.body, !dbg !1751

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1757
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1730, metadata !DIExpression()), !dbg !1741
  %4 = load i64, i64* %ap.0, align 8, !dbg !1753
  %incdec.ptr9 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1756
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9, metadata !1731, metadata !DIExpression()), !dbg !1741
  %5 = load i64, i64* %bp.0, align 8, !dbg !1754
  %xor = xor i64 %4, %5, !dbg !1755
  call void @llvm.dbg.value(metadata i64 %xor, metadata !1734, metadata !DIExpression()), !dbg !1752
  %6 = load i64, i64* %dstp.0, align 8, !dbg !1765
  %cmp11 = icmp eq i64 %6, %xor, !dbg !1766
  call void @llvm.dbg.value(metadata i1 %cmp11, metadata !1738, metadata !DIExpression()), !dbg !1767
  br i1 %cmp11, label %if.end, label %if.then15, !dbg !1768

if.then15:                                        ; preds = %for.body
  %call = tail call fastcc i64 @sbitmap_elt_popcount(i64 %xor) #7, !dbg !1769
  %conv16 = trunc i64 %call to i8, !dbg !1769
  store i8 %conv16, i8* %popcountp.0, align 1, !dbg !1771
  br label %if.end, !dbg !1772

if.end:                                           ; preds = %for.body, %if.then15
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1733, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1741
  %incdec.ptr17 = getelementptr inbounds i8, i8* %popcountp.0, i64 1, !dbg !1773
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !1733, metadata !DIExpression()), !dbg !1741
  call void @llvm.dbg.value(metadata i8* %incdec.ptr17, metadata !1733, metadata !DIExpression()), !dbg !1741
  %incdec.ptr19 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1758
  call void @llvm.dbg.value(metadata i64* %incdec.ptr19, metadata !1729, metadata !DIExpression()), !dbg !1741
  store i64 %xor, i64* %dstp.0, align 8, !dbg !1759
  %inc = add i32 %i.0, 1, !dbg !1760
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1727, metadata !DIExpression()), !dbg !1741
  br label %for.cond, !dbg !1761, !llvm.loop !1762

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !1764

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  ret void, !dbg !1764
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1774 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1776, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1777, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1778, metadata !DIExpression()), !dbg !1789
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1790
  %0 = load i32, i32* %size, align 4, !dbg !1790
  call void @llvm.dbg.value(metadata i32 %0, metadata !1780, metadata !DIExpression()), !dbg !1789
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1791
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1781, metadata !DIExpression()), !dbg !1789
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1792
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1782, metadata !DIExpression()), !dbg !1789
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1793
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1783, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 0, metadata !1784, metadata !DIExpression()), !dbg !1789
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1794
  %1 = load i8*, i8** %popcount, align 8, !dbg !1794
  %tobool = icmp eq i8* %1, null, !dbg !1794
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1794

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 607, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1794
  br label %cond.end, !dbg !1794

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1779, metadata !DIExpression()), !dbg !1789
  br label %for.cond, !dbg !1795

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !1789
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1796
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1789
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr5, %for.body ], !dbg !1789
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or6, %for.body ], !dbg !1789
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1784, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1783, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1782, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1779, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1781, metadata !DIExpression()), !dbg !1789
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1797
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1798

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1799
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1782, metadata !DIExpression()), !dbg !1789
  %2 = load i64, i64* %ap.0, align 8, !dbg !1800
  %incdec.ptr5 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1801
  call void @llvm.dbg.value(metadata i64* %incdec.ptr5, metadata !1783, metadata !DIExpression()), !dbg !1789
  %3 = load i64, i64* %bp.0, align 8, !dbg !1802
  %or = or i64 %2, %3, !dbg !1803
  call void @llvm.dbg.value(metadata i64 %or, metadata !1785, metadata !DIExpression()), !dbg !1804
  %4 = load i64, i64* %dstp.0, align 8, !dbg !1805
  %xor = xor i64 %4, %or, !dbg !1806
  %or6 = or i64 %changed.0, %xor, !dbg !1807
  call void @llvm.dbg.value(metadata i64 %or6, metadata !1784, metadata !DIExpression()), !dbg !1789
  %incdec.ptr7 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1808
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1781, metadata !DIExpression()), !dbg !1789
  store i64 %or, i64* %dstp.0, align 8, !dbg !1809
  %inc = add i32 %i.0, 1, !dbg !1810
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1779, metadata !DIExpression()), !dbg !1789
  br label %for.cond, !dbg !1811, !llvm.loop !1812

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !1789
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1784, metadata !DIExpression()), !dbg !1789
  %cmp8 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1814
  %conv9 = zext i1 %cmp8 to i8, !dbg !1815
  ret i8 %conv9, !dbg !1816
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_a_or_b(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1817 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1819, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1820, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1821, metadata !DIExpression()), !dbg !1836
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1837
  %0 = load i32, i32* %size, align 4, !dbg !1837
  call void @llvm.dbg.value(metadata i32 %0, metadata !1823, metadata !DIExpression()), !dbg !1836
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1838
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1824, metadata !DIExpression()), !dbg !1836
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1839
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1825, metadata !DIExpression()), !dbg !1836
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1840
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1826, metadata !DIExpression()), !dbg !1836
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1841
  %1 = load i8*, i8** %popcount, align 8, !dbg !1841
  %cmp = icmp eq i8* %1, null, !dbg !1842
  call void @llvm.dbg.value(metadata i1 %cmp, metadata !1827, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %1, metadata !1828, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 0, metadata !1822, metadata !DIExpression()), !dbg !1836
  br i1 %cmp, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !1843

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !1843

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !1843

for.cond.us:                                      ; preds = %for.body.us, %entry.split.us
  %dstp.0.us = phi i64* [ %arraydecay, %entry.split.us ], [ %incdec.ptr18.us, %for.body.us ], !dbg !1836
  %i.0.us = phi i32 [ 0, %entry.split.us ], [ %inc.us, %for.body.us ], !dbg !1844
  %ap.0.us = phi i64* [ %arraydecay2, %entry.split.us ], [ %incdec.ptr.us, %for.body.us ], !dbg !1836
  %bp.0.us = phi i64* [ %arraydecay4, %entry.split.us ], [ %incdec.ptr9.us, %for.body.us ], !dbg !1836
  call void @llvm.dbg.value(metadata i8* %1, metadata !1828, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1826, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1825, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %i.0.us, metadata !1822, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %dstp.0.us, metadata !1824, metadata !DIExpression()), !dbg !1836
  %exitcond = icmp eq i32 %i.0.us, %0, !dbg !1845
  br i1 %exitcond, label %for.end.us-lcssa.us, label %for.body.us, !dbg !1846

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata i64* %ap.0.us, metadata !1825, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %bp.0.us, metadata !1826, metadata !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value)), !dbg !1836
  call void @llvm.dbg.value(metadata i64 undef, metadata !1829, metadata !DIExpression()), !dbg !1847
  %2 = load i64, i64* %ap.0.us, align 8, !dbg !1848
  %3 = load i64, i64* %bp.0.us, align 8, !dbg !1849
  %or.us = or i64 %2, %3, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %or.us, metadata !1829, metadata !DIExpression()), !dbg !1847
  %incdec.ptr9.us = getelementptr inbounds i64, i64* %bp.0.us, i64 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9.us, metadata !1826, metadata !DIExpression()), !dbg !1836
  %incdec.ptr.us = getelementptr inbounds i64, i64* %ap.0.us, i64 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64* %incdec.ptr.us, metadata !1825, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %1, metadata !1828, metadata !DIExpression()), !dbg !1836
  %incdec.ptr18.us = getelementptr inbounds i64, i64* %dstp.0.us, i64 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64* %incdec.ptr18.us, metadata !1824, metadata !DIExpression()), !dbg !1836
  store i64 %or.us, i64* %dstp.0.us, align 8, !dbg !1854
  %inc.us = add i32 %i.0.us, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %inc.us, metadata !1822, metadata !DIExpression()), !dbg !1836
  br label %for.cond.us, !dbg !1856, !llvm.loop !1857

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !1859

for.cond:                                         ; preds = %if.end, %entry.entry.split_crit_edge
  %dstp.0 = phi i64* [ %arraydecay, %entry.entry.split_crit_edge ], [ %incdec.ptr18, %if.end ], !dbg !1836
  %i.0 = phi i32 [ 0, %entry.entry.split_crit_edge ], [ %inc, %if.end ], !dbg !1844
  %ap.0 = phi i64* [ %arraydecay2, %entry.entry.split_crit_edge ], [ %incdec.ptr, %if.end ], !dbg !1836
  %bp.0 = phi i64* [ %arraydecay4, %entry.entry.split_crit_edge ], [ %incdec.ptr9, %if.end ], !dbg !1836
  %popcountp.0 = phi i8* [ %1, %entry.entry.split_crit_edge ], [ %incdec.ptr16, %if.end ], !dbg !1836
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1828, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1826, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1825, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1822, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1824, metadata !DIExpression()), !dbg !1836
  %exitcond1 = icmp eq i32 %i.0, %0, !dbg !1845
  br i1 %exitcond1, label %for.end.us-lcssa, label %for.body, !dbg !1846

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1852
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1825, metadata !DIExpression()), !dbg !1836
  %4 = load i64, i64* %ap.0, align 8, !dbg !1848
  %incdec.ptr9 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1851
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9, metadata !1826, metadata !DIExpression()), !dbg !1836
  %5 = load i64, i64* %bp.0, align 8, !dbg !1849
  %or = or i64 %4, %5, !dbg !1850
  call void @llvm.dbg.value(metadata i64 %or, metadata !1829, metadata !DIExpression()), !dbg !1847
  %6 = load i64, i64* %dstp.0, align 8, !dbg !1860
  %cmp10 = icmp eq i64 %6, %or, !dbg !1861
  call void @llvm.dbg.value(metadata i1 %cmp10, metadata !1833, metadata !DIExpression()), !dbg !1862
  br i1 %cmp10, label %if.end, label %if.then14, !dbg !1863

if.then14:                                        ; preds = %for.body
  %call = tail call fastcc i64 @sbitmap_elt_popcount(i64 %or) #7, !dbg !1864
  %conv15 = trunc i64 %call to i8, !dbg !1864
  store i8 %conv15, i8* %popcountp.0, align 1, !dbg !1866
  br label %if.end, !dbg !1867

if.end:                                           ; preds = %for.body, %if.then14
  call void @llvm.dbg.value(metadata i8* %popcountp.0, metadata !1828, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !1836
  %incdec.ptr16 = getelementptr inbounds i8, i8* %popcountp.0, i64 1, !dbg !1868
  call void @llvm.dbg.value(metadata i8* %incdec.ptr16, metadata !1828, metadata !DIExpression()), !dbg !1836
  call void @llvm.dbg.value(metadata i8* %incdec.ptr16, metadata !1828, metadata !DIExpression()), !dbg !1836
  %incdec.ptr18 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1853
  call void @llvm.dbg.value(metadata i64* %incdec.ptr18, metadata !1824, metadata !DIExpression()), !dbg !1836
  store i64 %or, i64* %dstp.0, align 8, !dbg !1854
  %inc = add i32 %i.0, 1, !dbg !1855
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1822, metadata !DIExpression()), !dbg !1836
  br label %for.cond, !dbg !1856, !llvm.loop !1857

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !1859

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  ret void, !dbg !1859
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_subset_b_p(%struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b) local_unnamed_addr #4 !dbg !1869 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1871, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1872, metadata !DIExpression()), !dbg !1877
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 2, !dbg !1878
  %0 = load i32, i32* %size, align 4, !dbg !1878
  call void @llvm.dbg.value(metadata i32 %0, metadata !1874, metadata !DIExpression()), !dbg !1877
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1879
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1875, metadata !DIExpression()), !dbg !1877
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1881
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 0, metadata !1873, metadata !DIExpression()), !dbg !1877
  br label %for.cond, !dbg !1882

for.cond:                                         ; preds = %for.inc, %entry
  %ap.0 = phi i64* [ %arraydecay, %entry ], [ %incdec.ptr, %for.inc ], !dbg !1883
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !1883
  %bp.0 = phi i64* [ %arraydecay2, %entry ], [ %incdec.ptr4, %for.inc ], !dbg !1883
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1876, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1873, metadata !DIExpression()), !dbg !1877
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1875, metadata !DIExpression()), !dbg !1877
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1884
  br i1 %exitcond, label %cleanup, label %for.body, !dbg !1886

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %ap.0, align 8, !dbg !1887
  %2 = load i64, i64* %bp.0, align 8, !dbg !1889
  %or = or i64 %1, %2, !dbg !1890
  %cmp3 = icmp eq i64 %or, %2, !dbg !1891
  br i1 %cmp3, label %for.inc, label %cleanup, !dbg !1892

for.inc:                                          ; preds = %for.body
  %inc = add i32 %i.0, 1, !dbg !1893
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1873, metadata !DIExpression()), !dbg !1877
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1894
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1875, metadata !DIExpression()), !dbg !1877
  %incdec.ptr4 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1895
  call void @llvm.dbg.value(metadata i64* %incdec.ptr4, metadata !1876, metadata !DIExpression()), !dbg !1877
  br label %for.cond, !dbg !1896, !llvm.loop !1897

cleanup:                                          ; preds = %for.cond, %for.body
  %retval.0 = phi i8 [ 0, %for.body ], [ 1, %for.cond ], !dbg !1877
  ret i8 %retval.0, !dbg !1899
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_or_b_and_c_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !1900 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1902, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1903, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1904, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !1905, metadata !DIExpression()), !dbg !1917
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1918
  %0 = load i32, i32* %size, align 4, !dbg !1918
  call void @llvm.dbg.value(metadata i32 %0, metadata !1907, metadata !DIExpression()), !dbg !1917
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1919
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1908, metadata !DIExpression()), !dbg !1917
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1920
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1909, metadata !DIExpression()), !dbg !1917
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1921
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1910, metadata !DIExpression()), !dbg !1917
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !1922
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !1911, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 0, metadata !1912, metadata !DIExpression()), !dbg !1917
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1923
  %1 = load i8*, i8** %popcount, align 8, !dbg !1923
  %tobool = icmp eq i8* %1, null, !dbg !1923
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1923

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 675, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1923
  br label %cond.end, !dbg !1923

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1906, metadata !DIExpression()), !dbg !1917
  br label %for.cond, !dbg !1924

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr10, %for.body ], !dbg !1917
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1925
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1917
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !1917
  %cp.0 = phi i64* [ %arraydecay6, %cond.end ], [ %incdec.ptr8, %for.body ], !dbg !1917
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or9, %for.body ], !dbg !1917
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !1911, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1910, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1909, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1906, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1908, metadata !DIExpression()), !dbg !1917
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1926
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1927

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1928
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1909, metadata !DIExpression()), !dbg !1917
  %2 = load i64, i64* %ap.0, align 8, !dbg !1929
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1930
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1910, metadata !DIExpression()), !dbg !1917
  %3 = load i64, i64* %bp.0, align 8, !dbg !1931
  %incdec.ptr8 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !1932
  call void @llvm.dbg.value(metadata i64* %incdec.ptr8, metadata !1911, metadata !DIExpression()), !dbg !1917
  %4 = load i64, i64* %cp.0, align 8, !dbg !1933
  %and = and i64 %3, %4, !dbg !1934
  %or = or i64 %2, %and, !dbg !1935
  call void @llvm.dbg.value(metadata i64 %or, metadata !1913, metadata !DIExpression()), !dbg !1936
  %5 = load i64, i64* %dstp.0, align 8, !dbg !1937
  %xor = xor i64 %5, %or, !dbg !1938
  %or9 = or i64 %changed.0, %xor, !dbg !1939
  call void @llvm.dbg.value(metadata i64 %or9, metadata !1912, metadata !DIExpression()), !dbg !1917
  %incdec.ptr10 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1940
  call void @llvm.dbg.value(metadata i64* %incdec.ptr10, metadata !1908, metadata !DIExpression()), !dbg !1917
  store i64 %or, i64* %dstp.0, align 8, !dbg !1941
  %inc = add i32 %i.0, 1, !dbg !1942
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1906, metadata !DIExpression()), !dbg !1917
  br label %for.cond, !dbg !1943, !llvm.loop !1944

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !1917
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1912, metadata !DIExpression()), !dbg !1917
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !1912, metadata !DIExpression()), !dbg !1917
  %cmp11 = icmp ne i64 %changed.0.lcssa, 0, !dbg !1946
  %conv12 = zext i1 %cmp11 to i8, !dbg !1947
  ret i8 %conv12, !dbg !1948
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_a_or_b_and_c(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !1949 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1951, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1952, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1953, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !1954, metadata !DIExpression()), !dbg !1961
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !1962
  %0 = load i32, i32* %size, align 4, !dbg !1962
  call void @llvm.dbg.value(metadata i32 %0, metadata !1956, metadata !DIExpression()), !dbg !1961
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !1963
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1957, metadata !DIExpression()), !dbg !1961
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !1964
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1958, metadata !DIExpression()), !dbg !1961
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !1965
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1959, metadata !DIExpression()), !dbg !1961
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !1966
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !1960, metadata !DIExpression()), !dbg !1961
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !1967
  %1 = load i8*, i8** %popcount, align 8, !dbg !1967
  %tobool = icmp eq i8* %1, null, !dbg !1967
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !1967

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 696, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !1967
  br label %cond.end, !dbg !1967

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1955, metadata !DIExpression()), !dbg !1961
  br label %for.cond, !dbg !1968

for.cond:                                         ; preds = %for.body, %cond.end
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !1970
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr9, %for.body ], !dbg !1961
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !1961
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !1961
  %cp.0 = phi i64* [ %arraydecay6, %cond.end ], [ %incdec.ptr8, %for.body ], !dbg !1961
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !1960, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1959, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1958, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1957, metadata !DIExpression()), !dbg !1961
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1955, metadata !DIExpression()), !dbg !1961
  %exitcond = icmp eq i32 %i.0, %0, !dbg !1971
  br i1 %exitcond, label %for.end, label %for.body, !dbg !1973

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !1974
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1958, metadata !DIExpression()), !dbg !1961
  %2 = load i64, i64* %ap.0, align 8, !dbg !1975
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !1976
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1959, metadata !DIExpression()), !dbg !1961
  %3 = load i64, i64* %bp.0, align 8, !dbg !1977
  %incdec.ptr8 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !1978
  call void @llvm.dbg.value(metadata i64* %incdec.ptr8, metadata !1960, metadata !DIExpression()), !dbg !1961
  %4 = load i64, i64* %cp.0, align 8, !dbg !1979
  %and = and i64 %3, %4, !dbg !1980
  %or = or i64 %2, %and, !dbg !1981
  %incdec.ptr9 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !1982
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9, metadata !1957, metadata !DIExpression()), !dbg !1961
  store i64 %or, i64* %dstp.0, align 8, !dbg !1983
  %inc = add i32 %i.0, 1, !dbg !1984
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1955, metadata !DIExpression()), !dbg !1961
  br label %for.cond, !dbg !1985, !llvm.loop !1986

for.end:                                          ; preds = %for.cond
  ret void, !dbg !1988
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @sbitmap_a_and_b_or_c_cg(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !1989 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !1991, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !1992, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !1993, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !1994, metadata !DIExpression()), !dbg !2006
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !2007
  %0 = load i32, i32* %size, align 4, !dbg !2007
  call void @llvm.dbg.value(metadata i32 %0, metadata !1996, metadata !DIExpression()), !dbg !2006
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !2008
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !1997, metadata !DIExpression()), !dbg !2006
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !2009
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !1998, metadata !DIExpression()), !dbg !2006
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !2010
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !1999, metadata !DIExpression()), !dbg !2006
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !2011
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 0, metadata !2001, metadata !DIExpression()), !dbg !2006
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !2012
  %1 = load i8*, i8** %popcount, align 8, !dbg !2012
  %tobool = icmp eq i8* %1, null, !dbg !2012
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2012

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 715, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2012
  br label %cond.end, !dbg !2012

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata i32 0, metadata !1995, metadata !DIExpression()), !dbg !2006
  br label %for.cond, !dbg !2013

for.cond:                                         ; preds = %for.body, %cond.end
  %dstp.0 = phi i64* [ %arraydecay, %cond.end ], [ %incdec.ptr10, %for.body ], !dbg !2006
  %i.0 = phi i32 [ 0, %cond.end ], [ %inc, %for.body ], !dbg !2014
  %ap.0 = phi i64* [ %arraydecay2, %cond.end ], [ %incdec.ptr, %for.body ], !dbg !2006
  %bp.0 = phi i64* [ %arraydecay4, %cond.end ], [ %incdec.ptr7, %for.body ], !dbg !2006
  %cp.0 = phi i64* [ %arraydecay6, %cond.end ], [ %incdec.ptr8, %for.body ], !dbg !2006
  %changed.0 = phi i64 [ 0, %cond.end ], [ %or9, %for.body ], !dbg !2006
  call void @llvm.dbg.value(metadata i64 %changed.0, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !2000, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !1999, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !1998, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !1995, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !1997, metadata !DIExpression()), !dbg !2006
  %exitcond = icmp eq i32 %i.0, %0, !dbg !2015
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2016

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !2017
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !1998, metadata !DIExpression()), !dbg !2006
  %2 = load i64, i64* %ap.0, align 8, !dbg !2018
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !2019
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !1999, metadata !DIExpression()), !dbg !2006
  %3 = load i64, i64* %bp.0, align 8, !dbg !2020
  %incdec.ptr8 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !2021
  call void @llvm.dbg.value(metadata i64* %incdec.ptr8, metadata !2000, metadata !DIExpression()), !dbg !2006
  %4 = load i64, i64* %cp.0, align 8, !dbg !2022
  %or = or i64 %3, %4, !dbg !2023
  %and = and i64 %2, %or, !dbg !2024
  call void @llvm.dbg.value(metadata i64 %and, metadata !2002, metadata !DIExpression()), !dbg !2025
  %5 = load i64, i64* %dstp.0, align 8, !dbg !2026
  %xor = xor i64 %5, %and, !dbg !2027
  %or9 = or i64 %changed.0, %xor, !dbg !2028
  call void @llvm.dbg.value(metadata i64 %or9, metadata !2001, metadata !DIExpression()), !dbg !2006
  %incdec.ptr10 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !2029
  call void @llvm.dbg.value(metadata i64* %incdec.ptr10, metadata !1997, metadata !DIExpression()), !dbg !2006
  store i64 %and, i64* %dstp.0, align 8, !dbg !2030
  %inc = add i32 %i.0, 1, !dbg !2031
  call void @llvm.dbg.value(metadata i32 %inc, metadata !1995, metadata !DIExpression()), !dbg !2006
  br label %for.cond, !dbg !2032, !llvm.loop !2033

for.end:                                          ; preds = %for.cond
  %changed.0.lcssa = phi i64 [ %changed.0, %for.cond ], !dbg !2006
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !2001, metadata !DIExpression()), !dbg !2006
  call void @llvm.dbg.value(metadata i64 %changed.0.lcssa, metadata !2001, metadata !DIExpression()), !dbg !2006
  %cmp11 = icmp ne i64 %changed.0.lcssa, 0, !dbg !2035
  %conv12 = zext i1 %cmp11 to i8, !dbg !2036
  ret i8 %conv12, !dbg !2037
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_a_and_b_or_c(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %a, %struct.simple_bitmap_def* %b, %struct.simple_bitmap_def* %c) local_unnamed_addr #4 !dbg !2038 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !2040, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !2041, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %b, metadata !2042, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %c, metadata !2043, metadata !DIExpression()), !dbg !2050
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !2051
  %0 = load i32, i32* %size, align 4, !dbg !2051
  call void @llvm.dbg.value(metadata i32 %0, metadata !2045, metadata !DIExpression()), !dbg !2050
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !2052
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !2046, metadata !DIExpression()), !dbg !2050
  %arraydecay2 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 0, !dbg !2053
  call void @llvm.dbg.value(metadata i64* %arraydecay2, metadata !2047, metadata !DIExpression()), !dbg !2050
  %arraydecay4 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %b, i64 0, i32 3, i64 0, !dbg !2054
  call void @llvm.dbg.value(metadata i64* %arraydecay4, metadata !2048, metadata !DIExpression()), !dbg !2050
  %arraydecay6 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %c, i64 0, i32 3, i64 0, !dbg !2055
  call void @llvm.dbg.value(metadata i64* %arraydecay6, metadata !2049, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 0, metadata !2044, metadata !DIExpression()), !dbg !2050
  br label %for.cond, !dbg !2056

for.cond:                                         ; preds = %for.body, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.body ], !dbg !2058
  %dstp.0 = phi i64* [ %arraydecay, %entry ], [ %incdec.ptr9, %for.body ], !dbg !2050
  %ap.0 = phi i64* [ %arraydecay2, %entry ], [ %incdec.ptr, %for.body ], !dbg !2050
  %bp.0 = phi i64* [ %arraydecay4, %entry ], [ %incdec.ptr7, %for.body ], !dbg !2050
  %cp.0 = phi i64* [ %arraydecay6, %entry ], [ %incdec.ptr8, %for.body ], !dbg !2050
  call void @llvm.dbg.value(metadata i64* %cp.0, metadata !2049, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64* %bp.0, metadata !2048, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64* %ap.0, metadata !2047, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i64* %dstp.0, metadata !2046, metadata !DIExpression()), !dbg !2050
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2044, metadata !DIExpression()), !dbg !2050
  %exitcond = icmp eq i32 %i.0, %0, !dbg !2059
  br i1 %exitcond, label %for.end, label %for.body, !dbg !2061

for.body:                                         ; preds = %for.cond
  %incdec.ptr = getelementptr inbounds i64, i64* %ap.0, i64 1, !dbg !2062
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !2047, metadata !DIExpression()), !dbg !2050
  %1 = load i64, i64* %ap.0, align 8, !dbg !2063
  %incdec.ptr7 = getelementptr inbounds i64, i64* %bp.0, i64 1, !dbg !2064
  call void @llvm.dbg.value(metadata i64* %incdec.ptr7, metadata !2048, metadata !DIExpression()), !dbg !2050
  %2 = load i64, i64* %bp.0, align 8, !dbg !2065
  %incdec.ptr8 = getelementptr inbounds i64, i64* %cp.0, i64 1, !dbg !2066
  call void @llvm.dbg.value(metadata i64* %incdec.ptr8, metadata !2049, metadata !DIExpression()), !dbg !2050
  %3 = load i64, i64* %cp.0, align 8, !dbg !2067
  %or = or i64 %2, %3, !dbg !2068
  %and = and i64 %1, %or, !dbg !2069
  %incdec.ptr9 = getelementptr inbounds i64, i64* %dstp.0, i64 1, !dbg !2070
  call void @llvm.dbg.value(metadata i64* %incdec.ptr9, metadata !2046, metadata !DIExpression()), !dbg !2050
  store i64 %and, i64* %dstp.0, align 8, !dbg !2071
  %inc = add i32 %i.0, 1, !dbg !2072
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2044, metadata !DIExpression()), !dbg !2050
  br label %for.cond, !dbg !2073, !llvm.loop !2074

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2076
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_intersection_of_succs(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) local_unnamed_addr #4 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !2081, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %src, metadata !2082, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %bb, metadata !2083, metadata !DIExpression()), !dbg !3118
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3119
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3119
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3119
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3119
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3119
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3119
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3119

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3119
  br label %cond.end, !dbg !3119

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3119
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb) #7, !dbg !3119
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2084, metadata !DIExpression()), !dbg !3118
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !3120
  %3 = load i32, i32* %size, align 4, !dbg !3120
  call void @llvm.dbg.value(metadata i32 %3, metadata !3108, metadata !DIExpression()), !dbg !3118
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !3121
  %4 = load i8*, i8** %popcount, align 8, !dbg !3121
  %tobool4 = icmp eq i8* %4, null, !dbg !3121
  br i1 %tobool4, label %cond.end7, label %cond.true5, !dbg !3121

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 752, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3121
  br label %cond.end7, !dbg !3121

cond.end7:                                        ; preds = %cond.end, %cond.true5
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3109, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 0, metadata !3110, metadata !DIExpression()), !dbg !3118
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 1, !dbg !3122
  br label %for.cond, !dbg !3125

for.cond:                                         ; preds = %for.inc, %cond.end7
  %e.0 = phi %struct.edge_def* [ null, %cond.end7 ], [ %call25, %for.inc ], !dbg !3126
  %ix.0 = phi i32 [ 0, %cond.end7 ], [ %inc, %for.inc ], !dbg !3126
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !3110, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !3109, metadata !DIExpression()), !dbg !3118
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3127
  %tobool9 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3127
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !3127

cond.true10:                                      ; preds = %for.cond
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3127
  br label %cond.end14, !dbg !3127

cond.end14:                                       ; preds = %for.cond, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %for.cond ], !dbg !3127
  %call16 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond15) #7, !dbg !3127
  %cmp = icmp ult i32 %ix.0, %call16, !dbg !3128
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3129

for.body:                                         ; preds = %cond.end14
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3130
  %tobool18 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !3130
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !3130

cond.true19:                                      ; preds = %for.body
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !3130
  br label %cond.end23, !dbg !3130

cond.end23:                                       ; preds = %for.body, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %for.body ], !dbg !3130
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 %ix.0) #7, !dbg !3130
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !3109, metadata !DIExpression()), !dbg !3118
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 1, !dbg !3132
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3132
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3134
  %cfg27 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3134
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27, align 8, !dbg !3134
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !3134
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3134
  %cmp28 = icmp eq %struct.basic_block_def* %7, %10, !dbg !3135
  br i1 %cmp28, label %for.inc, label %if.end, !dbg !3136

if.end:                                           ; preds = %cond.end23
  %call25.lcssa = phi %struct.edge_def* [ %call25, %cond.end23 ], !dbg !3130
  %.lcssa = phi %struct.basic_block_def* [ %7, %cond.end23 ], !dbg !3132
  %ix.0.lcssa7 = phi i32 [ %ix.0, %cond.end23 ], !dbg !3126
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3110, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3110, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3110, metadata !DIExpression()), !dbg !3118
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3137
  %11 = load i32, i32* %index, align 8, !dbg !3137
  %idxprom = sext i32 %11 to i64, !dbg !3138
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom, !dbg !3138
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3138
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %12) #7, !dbg !3139
  br label %for.end, !dbg !3140

for.inc:                                          ; preds = %cond.end23
  %inc = add i32 %ix.0, 1, !dbg !3141
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3110, metadata !DIExpression()), !dbg !3118
  br label %for.cond, !dbg !3142, !llvm.loop !3143

for.end.loopexit:                                 ; preds = %cond.end14
  %e.0.lcssa = phi %struct.edge_def* [ %e.0, %cond.end14 ], !dbg !3126
  %ix.0.lcssa = phi i32 [ %ix.0, %cond.end14 ], !dbg !3126
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3110, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3110, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3109, metadata !DIExpression()), !dbg !3118
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3110, metadata !DIExpression()), !dbg !3118
  br label %for.end, !dbg !3145

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %ix.08 = phi i32 [ %ix.0.lcssa7, %if.end ], [ %ix.0.lcssa, %for.end.loopexit ]
  %e.1 = phi %struct.edge_def* [ %call25.lcssa, %if.end ], [ %e.0.lcssa, %for.end.loopexit ], !dbg !3126
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.1, metadata !3109, metadata !DIExpression()), !dbg !3118
  %cmp30 = icmp eq %struct.edge_def* %e.1, null, !dbg !3145
  br i1 %cmp30, label %if.then31, label %if.else, !dbg !3146

if.then31:                                        ; preds = %for.end
  tail call void @sbitmap_ones(%struct.simple_bitmap_def* %dst) #7, !dbg !3147
  br label %if.end79, !dbg !3147

if.else:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 %ix.08, metadata !3110, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3118
  %arraydecay66 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !3148
  br label %for.cond33, !dbg !3149

for.cond33:                                       ; preds = %cleanup, %if.else
  %ix.1.in = phi i32 [ %ix.08, %if.else ], [ %ix.1, %cleanup ]
  %ix.1 = add i32 %ix.1.in, 1, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3110, metadata !DIExpression()), !dbg !3118
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3151
  %tobool35 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !3151
  br i1 %tobool35, label %cond.end40, label %cond.true36, !dbg !3151

cond.true36:                                      ; preds = %for.cond33
  %base38 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !3151
  br label %cond.end40, !dbg !3151

cond.end40:                                       ; preds = %for.cond33, %cond.true36
  %cond41 = phi %struct.VEC_edge_base* [ %base38, %cond.true36 ], [ null, %for.cond33 ], !dbg !3151
  %call42 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond41) #7, !dbg !3151
  %cmp43 = icmp ult i32 %ix.1, %call42, !dbg !3152
  br i1 %cmp43, label %for.body44, label %if.end79.loopexit, !dbg !3153

for.body44:                                       ; preds = %cond.end40
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3154
  %tobool46 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !3154
  br i1 %tobool46, label %cond.end51, label %cond.true47, !dbg !3154

cond.true47:                                      ; preds = %for.body44
  %base49 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !3154
  br label %cond.end51, !dbg !3154

cond.end51:                                       ; preds = %for.body44, %cond.true47
  %cond52 = phi %struct.VEC_edge_base* [ %base49, %cond.true47 ], [ null, %for.body44 ], !dbg !3154
  %call53 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond52, i32 %ix.1) #7, !dbg !3154
  call void @llvm.dbg.value(metadata %struct.edge_def* %call53, metadata !3109, metadata !DIExpression()), !dbg !3118
  %dest54 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call53, i64 0, i32 1, !dbg !3155
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %dest54, align 8, !dbg !3155
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3157
  %cfg56 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !3157
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg56, align 8, !dbg !3157
  %x_exit_block_ptr57 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 1, !dbg !3157
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr57, align 8, !dbg !3157
  %cmp58 = icmp eq %struct.basic_block_def* %15, %18, !dbg !3158
  br i1 %cmp58, label %cleanup, label %if.end60, !dbg !3159

if.end60:                                         ; preds = %cond.end51
  %index62 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !3160
  %19 = load i32, i32* %index62, align 8, !dbg !3160
  %idxprom63 = sext i32 %19 to i64, !dbg !3161
  %arrayidx64 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom63, !dbg !3161
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx64, align 8, !dbg !3161
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i64 0, i32 3, i64 0, !dbg !3161
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !3116, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64* %arraydecay66, metadata !3117, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 0, metadata !3111, metadata !DIExpression()), !dbg !3148
  br label %for.cond67, !dbg !3162

for.cond67:                                       ; preds = %for.body69, %if.end60
  %i.0 = phi i32 [ 0, %if.end60 ], [ %inc72, %for.body69 ], !dbg !3164
  %p.0 = phi i64* [ %arraydecay, %if.end60 ], [ %incdec.ptr, %for.body69 ], !dbg !3148
  %r.0 = phi i64* [ %arraydecay66, %if.end60 ], [ %incdec.ptr70, %for.body69 ], !dbg !3148
  call void @llvm.dbg.value(metadata i64* %r.0, metadata !3117, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i64* %p.0, metadata !3116, metadata !DIExpression()), !dbg !3148
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3111, metadata !DIExpression()), !dbg !3148
  %exitcond = icmp eq i32 %i.0, %3, !dbg !3165
  br i1 %exitcond, label %cleanup.loopexit, label %for.body69, !dbg !3167

for.body69:                                       ; preds = %for.cond67
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1, !dbg !3168
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !3116, metadata !DIExpression()), !dbg !3148
  %21 = load i64, i64* %p.0, align 8, !dbg !3169
  %incdec.ptr70 = getelementptr inbounds i64, i64* %r.0, i64 1, !dbg !3170
  call void @llvm.dbg.value(metadata i64* %incdec.ptr70, metadata !3117, metadata !DIExpression()), !dbg !3148
  %22 = load i64, i64* %r.0, align 8, !dbg !3171
  %and = and i64 %22, %21, !dbg !3171
  store i64 %and, i64* %r.0, align 8, !dbg !3171
  %inc72 = add i32 %i.0, 1, !dbg !3172
  call void @llvm.dbg.value(metadata i32 %inc72, metadata !3111, metadata !DIExpression()), !dbg !3148
  br label %for.cond67, !dbg !3173, !llvm.loop !3174

cleanup.loopexit:                                 ; preds = %for.cond67
  br label %cleanup, !dbg !3176

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end51
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3110, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3118
  br label %for.cond33, !dbg !3176, !llvm.loop !3177

if.end79.loopexit:                                ; preds = %cond.end40
  br label %if.end79, !dbg !3179

if.end79:                                         ; preds = %if.end79.loopexit, %if.then31
  ret void, !dbg !3179
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3180 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3186, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3187, metadata !DIExpression()), !dbg !3188
  br label %land.end, !dbg !3189

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3189
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3189
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !3189
  ret %struct.basic_block_def* %0, !dbg !3189
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !3190 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3196, metadata !DIExpression()), !dbg !3197
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !3198
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3198

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !3198
  %0 = load i32, i32* %num, align 8, !dbg !3198
  br label %cond.end, !dbg !3198

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3198
  ret i32 %cond, !dbg !3198
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3199 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !3203, metadata !DIExpression()), !dbg !3205
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3204, metadata !DIExpression()), !dbg !3205
  br label %land.end, !dbg !3206

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3206
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3206
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !3206
  ret %struct.edge_def* %0, !dbg !3206
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_intersection_of_preds(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) local_unnamed_addr #4 !dbg !3207 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !3209, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %src, metadata !3210, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %bb, metadata !3211, metadata !DIExpression()), !dbg !3223
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3224
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3224
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3224
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3224
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3224
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3224
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3224

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3224
  br label %cond.end, !dbg !3224

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3224
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb) #7, !dbg !3224
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3212, metadata !DIExpression()), !dbg !3223
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !3225
  %3 = load i32, i32* %size, align 4, !dbg !3225
  call void @llvm.dbg.value(metadata i32 %3, metadata !3213, metadata !DIExpression()), !dbg !3223
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !3226
  %4 = load i8*, i8** %popcount, align 8, !dbg !3226
  %tobool4 = icmp eq i8* %4, null, !dbg !3226
  br i1 %tobool4, label %cond.end7, label %cond.true5, !dbg !3226

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 794, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3226
  br label %cond.end7, !dbg !3226

cond.end7:                                        ; preds = %cond.end, %cond.true5
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !3214, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 0, metadata !3215, metadata !DIExpression()), !dbg !3223
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3227
  br label %for.cond, !dbg !3230

for.cond:                                         ; preds = %for.inc, %cond.end7
  %e.0 = phi %struct.edge_def* [ null, %cond.end7 ], [ %call25, %for.inc ], !dbg !3231
  %ix.0 = phi i32 [ 0, %cond.end7 ], [ %inc, %for.inc ], !dbg !3231
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0, metadata !3214, metadata !DIExpression()), !dbg !3223
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3232
  %tobool9 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3232
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !3232

cond.true10:                                      ; preds = %for.cond
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3232
  br label %cond.end14, !dbg !3232

cond.end14:                                       ; preds = %for.cond, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %for.cond ], !dbg !3232
  %call16 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond15) #7, !dbg !3232
  %cmp = icmp ult i32 %ix.0, %call16, !dbg !3233
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3234

for.body:                                         ; preds = %cond.end14
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3235
  %tobool18 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !3235
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !3235

cond.true19:                                      ; preds = %for.body
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !3235
  br label %cond.end23, !dbg !3235

cond.end23:                                       ; preds = %for.body, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %for.body ], !dbg !3235
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 %ix.0) #7, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !3214, metadata !DIExpression()), !dbg !3223
  %src26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 0, !dbg !3237
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src26, align 8, !dbg !3237
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3239
  %cfg28 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3239
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28, align 8, !dbg !3239
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3239
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3239
  %cmp29 = icmp eq %struct.basic_block_def* %7, %10, !dbg !3240
  br i1 %cmp29, label %for.inc, label %if.end, !dbg !3241

if.end:                                           ; preds = %cond.end23
  %call25.lcssa = phi %struct.edge_def* [ %call25, %cond.end23 ], !dbg !3235
  %.lcssa = phi %struct.basic_block_def* [ %7, %cond.end23 ], !dbg !3237
  %ix.0.lcssa7 = phi i32 [ %ix.0, %cond.end23 ], !dbg !3231
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa7, metadata !3215, metadata !DIExpression()), !dbg !3223
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3242
  %11 = load i32, i32* %index, align 8, !dbg !3242
  %idxprom = sext i32 %11 to i64, !dbg !3243
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom, !dbg !3243
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3243
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %12) #7, !dbg !3244
  br label %for.end, !dbg !3245

for.inc:                                          ; preds = %cond.end23
  %inc = add i32 %ix.0, 1, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3215, metadata !DIExpression()), !dbg !3223
  br label %for.cond, !dbg !3247, !llvm.loop !3248

for.end.loopexit:                                 ; preds = %cond.end14
  %e.0.lcssa = phi %struct.edge_def* [ %e.0, %cond.end14 ], !dbg !3231
  %ix.0.lcssa = phi i32 [ %ix.0, %cond.end14 ], !dbg !3231
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3214, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3214, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.0.lcssa, metadata !3214, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3215, metadata !DIExpression()), !dbg !3223
  br label %for.end, !dbg !3250

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %ix.08 = phi i32 [ %ix.0.lcssa7, %if.end ], [ %ix.0.lcssa, %for.end.loopexit ]
  %e.1 = phi %struct.edge_def* [ %call25.lcssa, %if.end ], [ %e.0.lcssa, %for.end.loopexit ], !dbg !3231
  call void @llvm.dbg.value(metadata %struct.edge_def* %e.1, metadata !3214, metadata !DIExpression()), !dbg !3223
  %cmp31 = icmp eq %struct.edge_def* %e.1, null, !dbg !3250
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !3251

if.then32:                                        ; preds = %for.end
  tail call void @sbitmap_ones(%struct.simple_bitmap_def* %dst) #7, !dbg !3252
  br label %if.end80, !dbg !3252

if.else:                                          ; preds = %for.end
  call void @llvm.dbg.value(metadata i32 %ix.08, metadata !3215, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3223
  %arraydecay67 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !3253
  br label %for.cond34, !dbg !3254

for.cond34:                                       ; preds = %cleanup, %if.else
  %ix.1.in = phi i32 [ %ix.08, %if.else ], [ %ix.1, %cleanup ]
  %ix.1 = add i32 %ix.1.in, 1, !dbg !3255
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3215, metadata !DIExpression()), !dbg !3223
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3256
  %tobool36 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !3256
  br i1 %tobool36, label %cond.end41, label %cond.true37, !dbg !3256

cond.true37:                                      ; preds = %for.cond34
  %base39 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !3256
  br label %cond.end41, !dbg !3256

cond.end41:                                       ; preds = %for.cond34, %cond.true37
  %cond42 = phi %struct.VEC_edge_base* [ %base39, %cond.true37 ], [ null, %for.cond34 ], !dbg !3256
  %call43 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond42) #7, !dbg !3256
  %cmp44 = icmp ult i32 %ix.1, %call43, !dbg !3257
  br i1 %cmp44, label %for.body45, label %if.end80.loopexit, !dbg !3258

for.body45:                                       ; preds = %cond.end41
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3259
  %tobool47 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !3259
  br i1 %tobool47, label %cond.end52, label %cond.true48, !dbg !3259

cond.true48:                                      ; preds = %for.body45
  %base50 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !3259
  br label %cond.end52, !dbg !3259

cond.end52:                                       ; preds = %for.body45, %cond.true48
  %cond53 = phi %struct.VEC_edge_base* [ %base50, %cond.true48 ], [ null, %for.body45 ], !dbg !3259
  %call54 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond53, i32 %ix.1) #7, !dbg !3259
  call void @llvm.dbg.value(metadata %struct.edge_def* %call54, metadata !3214, metadata !DIExpression()), !dbg !3223
  %src55 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call54, i64 0, i32 0, !dbg !3260
  %15 = load %struct.basic_block_def*, %struct.basic_block_def** %src55, align 8, !dbg !3260
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3262
  %cfg57 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 1, !dbg !3262
  %17 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg57, align 8, !dbg !3262
  %x_entry_block_ptr58 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %17, i64 0, i32 0, !dbg !3262
  %18 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr58, align 8, !dbg !3262
  %cmp59 = icmp eq %struct.basic_block_def* %15, %18, !dbg !3263
  br i1 %cmp59, label %cleanup, label %if.end61, !dbg !3264

if.end61:                                         ; preds = %cond.end52
  %index63 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %15, i64 0, i32 9, !dbg !3265
  %19 = load i32, i32* %index63, align 8, !dbg !3265
  %idxprom64 = sext i32 %19 to i64, !dbg !3266
  %arrayidx65 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom64, !dbg !3266
  %20 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx65, align 8, !dbg !3266
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %20, i64 0, i32 3, i64 0, !dbg !3266
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !3221, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64* %arraydecay67, metadata !3222, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 0, metadata !3216, metadata !DIExpression()), !dbg !3253
  br label %for.cond68, !dbg !3267

for.cond68:                                       ; preds = %for.body70, %if.end61
  %i.0 = phi i32 [ 0, %if.end61 ], [ %inc73, %for.body70 ], !dbg !3269
  %p.0 = phi i64* [ %arraydecay, %if.end61 ], [ %incdec.ptr, %for.body70 ], !dbg !3253
  %r.0 = phi i64* [ %arraydecay67, %if.end61 ], [ %incdec.ptr71, %for.body70 ], !dbg !3253
  call void @llvm.dbg.value(metadata i64* %r.0, metadata !3222, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i64* %p.0, metadata !3221, metadata !DIExpression()), !dbg !3253
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3216, metadata !DIExpression()), !dbg !3253
  %exitcond = icmp eq i32 %i.0, %3, !dbg !3270
  br i1 %exitcond, label %cleanup.loopexit, label %for.body70, !dbg !3272

for.body70:                                       ; preds = %for.cond68
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1, !dbg !3273
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !3221, metadata !DIExpression()), !dbg !3253
  %21 = load i64, i64* %p.0, align 8, !dbg !3274
  %incdec.ptr71 = getelementptr inbounds i64, i64* %r.0, i64 1, !dbg !3275
  call void @llvm.dbg.value(metadata i64* %incdec.ptr71, metadata !3222, metadata !DIExpression()), !dbg !3253
  %22 = load i64, i64* %r.0, align 8, !dbg !3276
  %and = and i64 %22, %21, !dbg !3276
  store i64 %and, i64* %r.0, align 8, !dbg !3276
  %inc73 = add i32 %i.0, 1, !dbg !3277
  call void @llvm.dbg.value(metadata i32 %inc73, metadata !3216, metadata !DIExpression()), !dbg !3253
  br label %for.cond68, !dbg !3278, !llvm.loop !3279

cleanup.loopexit:                                 ; preds = %for.cond68
  br label %cleanup, !dbg !3281

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end52
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3215, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3223
  br label %for.cond34, !dbg !3281, !llvm.loop !3282

if.end80.loopexit:                                ; preds = %cond.end41
  br label %if.end80, !dbg !3284

if.end80:                                         ; preds = %if.end80.loopexit, %if.then32
  ret void, !dbg !3284
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_union_of_succs(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) local_unnamed_addr #4 !dbg !3285 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !3287, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %src, metadata !3288, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %bb, metadata !3289, metadata !DIExpression()), !dbg !3301
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3302
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3302
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3302
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3302
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3302
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3302
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3302

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3302
  br label %cond.end, !dbg !3302

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3302
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb) #7, !dbg !3302
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3290, metadata !DIExpression()), !dbg !3301
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !3303
  %3 = load i32, i32* %size, align 4, !dbg !3303
  call void @llvm.dbg.value(metadata i32 %3, metadata !3291, metadata !DIExpression()), !dbg !3301
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !3304
  %4 = load i8*, i8** %popcount, align 8, !dbg !3304
  %tobool4 = icmp eq i8* %4, null, !dbg !3304
  br i1 %tobool4, label %cond.end7, label %cond.true5, !dbg !3304

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 836, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3304
  br label %cond.end7, !dbg !3304

cond.end7:                                        ; preds = %cond.end, %cond.true5
  call void @llvm.dbg.value(metadata i32 0, metadata !3293, metadata !DIExpression()), !dbg !3301
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 1, !dbg !3305
  br label %for.cond, !dbg !3308

for.cond:                                         ; preds = %for.inc, %cond.end7
  %ix.0 = phi i32 [ 0, %cond.end7 ], [ %inc, %for.inc ], !dbg !3309
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !3293, metadata !DIExpression()), !dbg !3301
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3310
  %tobool9 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3310
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !3310

cond.true10:                                      ; preds = %for.cond
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3310
  br label %cond.end14, !dbg !3310

cond.end14:                                       ; preds = %for.cond, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %for.cond ], !dbg !3310
  %call16 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond15) #7, !dbg !3310
  %cmp = icmp ult i32 %ix.0, %call16, !dbg !3311
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3312

for.body:                                         ; preds = %cond.end14
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3313
  %tobool18 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !3313
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !3313

cond.true19:                                      ; preds = %for.body
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !3313
  br label %cond.end23, !dbg !3313

cond.end23:                                       ; preds = %for.body, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %for.body ], !dbg !3313
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 %ix.0) #7, !dbg !3313
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !3292, metadata !DIExpression()), !dbg !3301
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 1, !dbg !3315
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3315
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3317
  %cfg27 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3317
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg27, align 8, !dbg !3317
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 1, !dbg !3317
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3317
  %cmp28 = icmp eq %struct.basic_block_def* %7, %10, !dbg !3318
  br i1 %cmp28, label %for.inc, label %if.end, !dbg !3319

if.end:                                           ; preds = %cond.end23
  %.lcssa = phi %struct.basic_block_def* [ %7, %cond.end23 ], !dbg !3315
  %ix.0.lcssa5 = phi i32 [ %ix.0, %cond.end23 ], !dbg !3309
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3293, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3293, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3293, metadata !DIExpression()), !dbg !3301
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3320
  %11 = load i32, i32* %index, align 8, !dbg !3320
  %idxprom = sext i32 %11 to i64, !dbg !3321
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom, !dbg !3321
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3321
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %12) #7, !dbg !3322
  br label %for.end, !dbg !3323

for.inc:                                          ; preds = %cond.end23
  %inc = add i32 %ix.0, 1, !dbg !3324
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3293, metadata !DIExpression()), !dbg !3301
  br label %for.cond, !dbg !3325, !llvm.loop !3326

for.end.loopexit:                                 ; preds = %cond.end14
  %ix.0.lcssa = phi i32 [ %ix.0, %cond.end14 ], !dbg !3309
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3293, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3293, metadata !DIExpression()), !dbg !3301
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3293, metadata !DIExpression()), !dbg !3301
  br label %for.end, !dbg !3328

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %ix.06 = phi i32 [ %ix.0.lcssa, %for.end.loopexit ], [ %ix.0.lcssa5, %if.end ]
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3328
  %tobool31 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !3328
  br i1 %tobool31, label %cond.end36, label %cond.true32, !dbg !3328

cond.true32:                                      ; preds = %for.end
  %base34 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !3328
  br label %cond.end36, !dbg !3328

cond.end36:                                       ; preds = %for.end, %cond.true32
  %cond37 = phi %struct.VEC_edge_base* [ %base34, %cond.true32 ], [ null, %for.end ], !dbg !3328
  %call38 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond37) #7, !dbg !3328
  %cmp39 = icmp eq i32 %ix.06, %call38, !dbg !3329
  br i1 %cmp39, label %if.then40, label %if.else, !dbg !3330

if.then40:                                        ; preds = %cond.end36
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %dst) #7, !dbg !3331
  br label %if.end88, !dbg !3331

if.else:                                          ; preds = %cond.end36
  call void @llvm.dbg.value(metadata i32 %ix.06, metadata !3293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3301
  %arraydecay75 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !3332
  br label %for.cond42, !dbg !3333

for.cond42:                                       ; preds = %cleanup, %if.else
  %ix.1.in = phi i32 [ %ix.06, %if.else ], [ %ix.1, %cleanup ]
  %ix.1 = add i32 %ix.1.in, 1, !dbg !3334
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3293, metadata !DIExpression()), !dbg !3301
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3335
  %tobool44 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !3335
  br i1 %tobool44, label %cond.end49, label %cond.true45, !dbg !3335

cond.true45:                                      ; preds = %for.cond42
  %base47 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !3335
  br label %cond.end49, !dbg !3335

cond.end49:                                       ; preds = %for.cond42, %cond.true45
  %cond50 = phi %struct.VEC_edge_base* [ %base47, %cond.true45 ], [ null, %for.cond42 ], !dbg !3335
  %call51 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond50) #7, !dbg !3335
  %cmp52 = icmp ult i32 %ix.1, %call51, !dbg !3336
  br i1 %cmp52, label %for.body53, label %if.end88.loopexit, !dbg !3337

for.body53:                                       ; preds = %cond.end49
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3338
  %tobool55 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !3338
  br i1 %tobool55, label %cond.end60, label %cond.true56, !dbg !3338

cond.true56:                                      ; preds = %for.body53
  %base58 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !3338
  br label %cond.end60, !dbg !3338

cond.end60:                                       ; preds = %for.body53, %cond.true56
  %cond61 = phi %struct.VEC_edge_base* [ %base58, %cond.true56 ], [ null, %for.body53 ], !dbg !3338
  %call62 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond61, i32 %ix.1) #7, !dbg !3338
  call void @llvm.dbg.value(metadata %struct.edge_def* %call62, metadata !3292, metadata !DIExpression()), !dbg !3301
  %dest63 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call62, i64 0, i32 1, !dbg !3339
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %dest63, align 8, !dbg !3339
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3341
  %cfg65 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !3341
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg65, align 8, !dbg !3341
  %x_exit_block_ptr66 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 1, !dbg !3341
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr66, align 8, !dbg !3341
  %cmp67 = icmp eq %struct.basic_block_def* %16, %19, !dbg !3342
  br i1 %cmp67, label %cleanup, label %if.end69, !dbg !3343

if.end69:                                         ; preds = %cond.end60
  %index71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !3344
  %20 = load i32, i32* %index71, align 8, !dbg !3344
  %idxprom72 = sext i32 %20 to i64, !dbg !3345
  %arrayidx73 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom72, !dbg !3345
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx73, align 8, !dbg !3345
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i64 0, i32 3, i64 0, !dbg !3345
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !3299, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64* %arraydecay75, metadata !3300, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 0, metadata !3294, metadata !DIExpression()), !dbg !3332
  br label %for.cond76, !dbg !3346

for.cond76:                                       ; preds = %for.body78, %if.end69
  %i.0 = phi i32 [ 0, %if.end69 ], [ %inc81, %for.body78 ], !dbg !3348
  %p.0 = phi i64* [ %arraydecay, %if.end69 ], [ %incdec.ptr, %for.body78 ], !dbg !3332
  %r.0 = phi i64* [ %arraydecay75, %if.end69 ], [ %incdec.ptr79, %for.body78 ], !dbg !3332
  call void @llvm.dbg.value(metadata i64* %r.0, metadata !3300, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i64* %p.0, metadata !3299, metadata !DIExpression()), !dbg !3332
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3294, metadata !DIExpression()), !dbg !3332
  %exitcond = icmp eq i32 %i.0, %3, !dbg !3349
  br i1 %exitcond, label %cleanup.loopexit, label %for.body78, !dbg !3351

for.body78:                                       ; preds = %for.cond76
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1, !dbg !3352
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !3299, metadata !DIExpression()), !dbg !3332
  %22 = load i64, i64* %p.0, align 8, !dbg !3353
  %incdec.ptr79 = getelementptr inbounds i64, i64* %r.0, i64 1, !dbg !3354
  call void @llvm.dbg.value(metadata i64* %incdec.ptr79, metadata !3300, metadata !DIExpression()), !dbg !3332
  %23 = load i64, i64* %r.0, align 8, !dbg !3355
  %or = or i64 %23, %22, !dbg !3355
  store i64 %or, i64* %r.0, align 8, !dbg !3355
  %inc81 = add i32 %i.0, 1, !dbg !3356
  call void @llvm.dbg.value(metadata i32 %inc81, metadata !3294, metadata !DIExpression()), !dbg !3332
  br label %for.cond76, !dbg !3357, !llvm.loop !3358

cleanup.loopexit:                                 ; preds = %for.cond76
  br label %cleanup, !dbg !3360

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end60
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3293, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3301
  br label %for.cond42, !dbg !3360, !llvm.loop !3361

if.end88.loopexit:                                ; preds = %cond.end49
  br label %if.end88, !dbg !3363

if.end88:                                         ; preds = %if.end88.loopexit, %if.then40
  ret void, !dbg !3363
}

; Function Attrs: nounwind uwtable
define dso_local void @sbitmap_union_of_preds(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def** %src, i32 %bb) local_unnamed_addr #4 !dbg !3364 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %dst, metadata !3366, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %src, metadata !3367, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %bb, metadata !3368, metadata !DIExpression()), !dbg !3380
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3381
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3381
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3381
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 2, !dbg !3381
  %2 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3381
  %tobool = icmp eq %struct.VEC_basic_block_gc* %2, null, !dbg !3381
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3381

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %2, i64 0, i32 0, !dbg !3381
  br label %cond.end, !dbg !3381

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3381
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %bb) #7, !dbg !3381
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3369, metadata !DIExpression()), !dbg !3380
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 2, !dbg !3382
  %3 = load i32, i32* %size, align 4, !dbg !3382
  call void @llvm.dbg.value(metadata i32 %3, metadata !3370, metadata !DIExpression()), !dbg !3380
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 0, !dbg !3383
  %4 = load i8*, i8** %popcount, align 8, !dbg !3383
  %tobool4 = icmp eq i8* %4, null, !dbg !3383
  br i1 %tobool4, label %cond.end7, label %cond.true5, !dbg !3383

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 878, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3383
  br label %cond.end7, !dbg !3383

cond.end7:                                        ; preds = %cond.end, %cond.true5
  call void @llvm.dbg.value(metadata i32 0, metadata !3372, metadata !DIExpression()), !dbg !3380
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3384
  br label %for.cond, !dbg !3387

for.cond:                                         ; preds = %for.inc, %cond.end7
  %ix.0 = phi i32 [ 0, %cond.end7 ], [ %inc, %for.inc ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %ix.0, metadata !3372, metadata !DIExpression()), !dbg !3380
  %5 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3389
  %tobool9 = icmp eq %struct.VEC_edge_gc* %5, null, !dbg !3389
  br i1 %tobool9, label %cond.end14, label %cond.true10, !dbg !3389

cond.true10:                                      ; preds = %for.cond
  %base12 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %5, i64 0, i32 0, !dbg !3389
  br label %cond.end14, !dbg !3389

cond.end14:                                       ; preds = %for.cond, %cond.true10
  %cond15 = phi %struct.VEC_edge_base* [ %base12, %cond.true10 ], [ null, %for.cond ], !dbg !3389
  %call16 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond15) #7, !dbg !3389
  %cmp = icmp ult i32 %ix.0, %call16, !dbg !3390
  br i1 %cmp, label %for.body, label %for.end.loopexit, !dbg !3391

for.body:                                         ; preds = %cond.end14
  %6 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3392
  %tobool18 = icmp eq %struct.VEC_edge_gc* %6, null, !dbg !3392
  br i1 %tobool18, label %cond.end23, label %cond.true19, !dbg !3392

cond.true19:                                      ; preds = %for.body
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %6, i64 0, i32 0, !dbg !3392
  br label %cond.end23, !dbg !3392

cond.end23:                                       ; preds = %for.body, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %for.body ], !dbg !3392
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 %ix.0) #7, !dbg !3392
  call void @llvm.dbg.value(metadata %struct.edge_def* %call25, metadata !3371, metadata !DIExpression()), !dbg !3380
  %src26 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call25, i64 0, i32 0, !dbg !3394
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %src26, align 8, !dbg !3394
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3396
  %cfg28 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3396
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28, align 8, !dbg !3396
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 0, !dbg !3396
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3396
  %cmp29 = icmp eq %struct.basic_block_def* %7, %10, !dbg !3397
  br i1 %cmp29, label %for.inc, label %if.end, !dbg !3398

if.end:                                           ; preds = %cond.end23
  %.lcssa = phi %struct.basic_block_def* [ %7, %cond.end23 ], !dbg !3394
  %ix.0.lcssa5 = phi i32 [ %ix.0, %cond.end23 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3372, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3372, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa5, metadata !3372, metadata !DIExpression()), !dbg !3380
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.lcssa, i64 0, i32 9, !dbg !3399
  %11 = load i32, i32* %index, align 8, !dbg !3399
  %idxprom = sext i32 %11 to i64, !dbg !3400
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom, !dbg !3400
  %12 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3400
  tail call void @sbitmap_copy(%struct.simple_bitmap_def* %dst, %struct.simple_bitmap_def* %12) #7, !dbg !3401
  br label %for.end, !dbg !3402

for.inc:                                          ; preds = %cond.end23
  %inc = add i32 %ix.0, 1, !dbg !3403
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3372, metadata !DIExpression()), !dbg !3380
  br label %for.cond, !dbg !3404, !llvm.loop !3405

for.end.loopexit:                                 ; preds = %cond.end14
  %ix.0.lcssa = phi i32 [ %ix.0, %cond.end14 ], !dbg !3388
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3372, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3372, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.value(metadata i32 %ix.0.lcssa, metadata !3372, metadata !DIExpression()), !dbg !3380
  br label %for.end, !dbg !3407

for.end:                                          ; preds = %for.end.loopexit, %if.end
  %ix.06 = phi i32 [ %ix.0.lcssa, %for.end.loopexit ], [ %ix.0.lcssa5, %if.end ]
  %13 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3407
  %tobool32 = icmp eq %struct.VEC_edge_gc* %13, null, !dbg !3407
  br i1 %tobool32, label %cond.end37, label %cond.true33, !dbg !3407

cond.true33:                                      ; preds = %for.end
  %base35 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %13, i64 0, i32 0, !dbg !3407
  br label %cond.end37, !dbg !3407

cond.end37:                                       ; preds = %for.end, %cond.true33
  %cond38 = phi %struct.VEC_edge_base* [ %base35, %cond.true33 ], [ null, %for.end ], !dbg !3407
  %call39 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond38) #7, !dbg !3407
  %cmp40 = icmp eq i32 %ix.06, %call39, !dbg !3408
  br i1 %cmp40, label %if.then41, label %if.else, !dbg !3409

if.then41:                                        ; preds = %cond.end37
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %dst) #7, !dbg !3410
  br label %if.end89, !dbg !3410

if.else:                                          ; preds = %cond.end37
  call void @llvm.dbg.value(metadata i32 %ix.06, metadata !3372, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3380
  %arraydecay76 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %dst, i64 0, i32 3, i64 0, !dbg !3411
  br label %for.cond43, !dbg !3412

for.cond43:                                       ; preds = %cleanup, %if.else
  %ix.1.in = phi i32 [ %ix.06, %if.else ], [ %ix.1, %cleanup ]
  %ix.1 = add i32 %ix.1.in, 1, !dbg !3413
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3372, metadata !DIExpression()), !dbg !3380
  %14 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3414
  %tobool45 = icmp eq %struct.VEC_edge_gc* %14, null, !dbg !3414
  br i1 %tobool45, label %cond.end50, label %cond.true46, !dbg !3414

cond.true46:                                      ; preds = %for.cond43
  %base48 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %14, i64 0, i32 0, !dbg !3414
  br label %cond.end50, !dbg !3414

cond.end50:                                       ; preds = %for.cond43, %cond.true46
  %cond51 = phi %struct.VEC_edge_base* [ %base48, %cond.true46 ], [ null, %for.cond43 ], !dbg !3414
  %call52 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond51) #7, !dbg !3414
  %cmp53 = icmp ult i32 %ix.1, %call52, !dbg !3415
  br i1 %cmp53, label %for.body54, label %if.end89.loopexit, !dbg !3416

for.body54:                                       ; preds = %cond.end50
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3417
  %tobool56 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !3417
  br i1 %tobool56, label %cond.end61, label %cond.true57, !dbg !3417

cond.true57:                                      ; preds = %for.body54
  %base59 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %15, i64 0, i32 0, !dbg !3417
  br label %cond.end61, !dbg !3417

cond.end61:                                       ; preds = %for.body54, %cond.true57
  %cond62 = phi %struct.VEC_edge_base* [ %base59, %cond.true57 ], [ null, %for.body54 ], !dbg !3417
  %call63 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond62, i32 %ix.1) #7, !dbg !3417
  call void @llvm.dbg.value(metadata %struct.edge_def* %call63, metadata !3371, metadata !DIExpression()), !dbg !3380
  %src64 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call63, i64 0, i32 0, !dbg !3418
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %src64, align 8, !dbg !3418
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3420
  %cfg66 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 1, !dbg !3420
  %18 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg66, align 8, !dbg !3420
  %x_entry_block_ptr67 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 0, !dbg !3420
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr67, align 8, !dbg !3420
  %cmp68 = icmp eq %struct.basic_block_def* %16, %19, !dbg !3421
  br i1 %cmp68, label %cleanup, label %if.end70, !dbg !3422

if.end70:                                         ; preds = %cond.end61
  %index72 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !3423
  %20 = load i32, i32* %index72, align 8, !dbg !3423
  %idxprom73 = sext i32 %20 to i64, !dbg !3424
  %arrayidx74 = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %src, i64 %idxprom73, !dbg !3424
  %21 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx74, align 8, !dbg !3424
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %21, i64 0, i32 3, i64 0, !dbg !3424
  call void @llvm.dbg.value(metadata i64* %arraydecay, metadata !3378, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64* %arraydecay76, metadata !3379, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 0, metadata !3373, metadata !DIExpression()), !dbg !3411
  br label %for.cond77, !dbg !3425

for.cond77:                                       ; preds = %for.body79, %if.end70
  %i.0 = phi i32 [ 0, %if.end70 ], [ %inc82, %for.body79 ], !dbg !3427
  %p.0 = phi i64* [ %arraydecay, %if.end70 ], [ %incdec.ptr, %for.body79 ], !dbg !3411
  %r.0 = phi i64* [ %arraydecay76, %if.end70 ], [ %incdec.ptr80, %for.body79 ], !dbg !3411
  call void @llvm.dbg.value(metadata i64* %r.0, metadata !3379, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i64* %p.0, metadata !3378, metadata !DIExpression()), !dbg !3411
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3373, metadata !DIExpression()), !dbg !3411
  %exitcond = icmp eq i32 %i.0, %3, !dbg !3428
  br i1 %exitcond, label %cleanup.loopexit, label %for.body79, !dbg !3430

for.body79:                                       ; preds = %for.cond77
  %incdec.ptr = getelementptr inbounds i64, i64* %p.0, i64 1, !dbg !3431
  call void @llvm.dbg.value(metadata i64* %incdec.ptr, metadata !3378, metadata !DIExpression()), !dbg !3411
  %22 = load i64, i64* %p.0, align 8, !dbg !3432
  %incdec.ptr80 = getelementptr inbounds i64, i64* %r.0, i64 1, !dbg !3433
  call void @llvm.dbg.value(metadata i64* %incdec.ptr80, metadata !3379, metadata !DIExpression()), !dbg !3411
  %23 = load i64, i64* %r.0, align 8, !dbg !3434
  %or = or i64 %23, %22, !dbg !3434
  store i64 %or, i64* %r.0, align 8, !dbg !3434
  %inc82 = add i32 %i.0, 1, !dbg !3435
  call void @llvm.dbg.value(metadata i32 %inc82, metadata !3373, metadata !DIExpression()), !dbg !3411
  br label %for.cond77, !dbg !3436, !llvm.loop !3437

cleanup.loopexit:                                 ; preds = %for.cond77
  br label %cleanup, !dbg !3439

cleanup:                                          ; preds = %cleanup.loopexit, %cond.end61
  call void @llvm.dbg.value(metadata i32 %ix.1, metadata !3372, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3380
  br label %for.cond43, !dbg !3439, !llvm.loop !3440

if.end89.loopexit:                                ; preds = %cond.end50
  br label %if.end89, !dbg !3442

if.end89:                                         ; preds = %if.end89.loopexit, %if.then41
  ret void, !dbg !3442
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sbitmap_first_set_bit(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !3443 {
entry:
  %n = alloca i32, align 4
  %sbi = alloca %struct.sbitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3447, metadata !DIExpression()), !dbg !3458
  %0 = bitcast i32* %n to i8*, !dbg !3459
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3459
  call void @llvm.dbg.value(metadata i32 0, metadata !3448, metadata !DIExpression()), !dbg !3458
  store i32 0, i32* %n, align 4, !dbg !3460
  %1 = bitcast %struct.sbitmap_iterator* %sbi to i8*, !dbg !3461
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3461
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3449, metadata !DIExpression(DW_OP_deref)), !dbg !3458
  call fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* nonnull %sbi, %struct.simple_bitmap_def* %bmap, i32 0) #7, !dbg !3462
  call void @llvm.dbg.value(metadata i32* %n, metadata !3448, metadata !DIExpression(DW_OP_deref)), !dbg !3458
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %sbi, metadata !3449, metadata !DIExpression(DW_OP_deref)), !dbg !3458
  %call = call fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* nonnull %sbi, i32* nonnull %n) #7, !dbg !3464
  %tobool = icmp eq i8 %call, 0, !dbg !3462
  %2 = load i32, i32* %n, align 4, !dbg !3462
  call void @llvm.dbg.value(metadata i32 %2, metadata !3448, metadata !DIExpression()), !dbg !3458
  %retval.0 = select i1 %tobool, i32 -1, i32 %2, !dbg !3462
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !3466
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3466
  ret i32 %retval.0, !dbg !3466
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @sbitmap_iter_init(%struct.sbitmap_iterator* %i, %struct.simple_bitmap_def* %bmp, i32 %min) unnamed_addr #0 !dbg !3467 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3472, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmp, metadata !3473, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.value(metadata i32 0, metadata !3474, metadata !DIExpression()), !dbg !3475
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3476
  store i32 0, i32* %word_num, align 4, !dbg !3477
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3478
  store i32 0, i32* %bit_num, align 8, !dbg !3479
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 2, !dbg !3480
  %0 = load i32, i32* %size, align 4, !dbg !3480
  %size1 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3481
  store i32 %0, i32* %size1, align 8, !dbg !3482
  %arraydecay = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmp, i64 0, i32 3, i64 0, !dbg !3483
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3484
  store i64* %arraydecay, i64** %ptr, align 8, !dbg !3485
  %cmp = icmp eq i32 %0, 0, !dbg !3486
  br i1 %cmp, label %if.then, label %if.else, !dbg !3488

if.then:                                          ; preds = %entry
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3489
  store i64 0, i64* %word, align 8, !dbg !3490
  br label %if.end, !dbg !3491

if.else:                                          ; preds = %entry
  %1 = load i64, i64* %arraydecay, align 8, !dbg !3492
  %word7 = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3493
  store i64 %1, i64* %word7, align 8, !dbg !3494
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3495
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @sbitmap_iter_cond(%struct.sbitmap_iterator* %i, i32* %n) unnamed_addr #0 !dbg !3496 {
entry:
  call void @llvm.dbg.value(metadata %struct.sbitmap_iterator* %i, metadata !3501, metadata !DIExpression()), !dbg !3503
  call void @llvm.dbg.value(metadata i32* %n, metadata !3502, metadata !DIExpression()), !dbg !3503
  %word = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 4, !dbg !3504
  %word_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 2, !dbg !3507
  %size = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 1, !dbg !3509
  %bit_num = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 3, !dbg !3507
  %ptr = getelementptr inbounds %struct.sbitmap_iterator, %struct.sbitmap_iterator* %i, i64 0, i32 0, !dbg !3504
  %.pre = load i64, i64* %word, align 8, !dbg !3511
  br label %for.cond, !dbg !3512

for.cond:                                         ; preds = %if.end, %entry
  %0 = phi i64 [ %4, %if.end ], [ %.pre, %entry ], !dbg !3511
  %cmp = icmp eq i64 %0, 0, !dbg !3513
  br i1 %cmp, label %for.body, label %for.cond6.preheader, !dbg !3514

for.cond6.preheader:                              ; preds = %for.cond
  %.lcssa4 = phi i64 [ %0, %for.cond ], !dbg !3511
  %.pre1 = load i32, i32* %bit_num, align 8, !dbg !3503
  br label %for.cond6, !dbg !3515

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %word_num, align 4, !dbg !3517
  %inc = add i32 %1, 1, !dbg !3517
  store i32 %inc, i32* %word_num, align 4, !dbg !3517
  %2 = load i32, i32* %size, align 8, !dbg !3518
  %cmp2 = icmp ult i32 %inc, %2, !dbg !3519
  br i1 %cmp2, label %if.end, label %return.loopexit, !dbg !3520

if.end:                                           ; preds = %for.body
  %mul = shl i32 %inc, 6, !dbg !3521
  store i32 %mul, i32* %bit_num, align 8, !dbg !3522
  %3 = load i64*, i64** %ptr, align 8, !dbg !3523
  %idxprom = zext i32 %inc to i64, !dbg !3524
  %arrayidx = getelementptr inbounds i64, i64* %3, i64 %idxprom, !dbg !3524
  %4 = load i64, i64* %arrayidx, align 8, !dbg !3524
  store i64 %4, i64* %word, align 8, !dbg !3525
  br label %for.cond, !dbg !3526, !llvm.loop !3527

for.cond6:                                        ; preds = %for.cond6.preheader, %for.body9
  %5 = phi i32 [ %.pre1, %for.cond6.preheader ], [ %inc11, %for.body9 ], !dbg !3503
  %6 = phi i64 [ %.lcssa4, %for.cond6.preheader ], [ %shr, %for.body9 ], !dbg !3529
  %and = and i64 %6, 1, !dbg !3531
  %cmp8 = icmp eq i64 %and, 0, !dbg !3532
  br i1 %cmp8, label %for.body9, label %for.end14, !dbg !3515

for.body9:                                        ; preds = %for.cond6
  %inc11 = add i32 %5, 1, !dbg !3533
  store i32 %inc11, i32* %bit_num, align 8, !dbg !3533
  %shr = lshr i64 %6, 1, !dbg !3534
  store i64 %shr, i64* %word, align 8, !dbg !3534
  br label %for.cond6, !dbg !3535, !llvm.loop !3536

for.end14:                                        ; preds = %for.cond6
  %.lcssa = phi i32 [ %5, %for.cond6 ], !dbg !3503
  store i32 %.lcssa, i32* %n, align 4, !dbg !3538
  br label %return, !dbg !3539

return.loopexit:                                  ; preds = %for.body
  br label %return, !dbg !3540

return:                                           ; preds = %return.loopexit, %for.end14
  %retval.0 = phi i8 [ 1, %for.end14 ], [ 0, %return.loopexit ], !dbg !3503
  ret i8 %retval.0, !dbg !3540
}

; Function Attrs: nounwind uwtable
define dso_local i32 @sbitmap_last_set_bit(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !3541 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3543, metadata !DIExpression()), !dbg !3555
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3545, metadata !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value)), !dbg !3555
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !3556
  %0 = load i32, i32* %size, align 4, !dbg !3556
  call void @llvm.dbg.value(metadata i32 %0, metadata !3544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3555
  br label %for.cond, !dbg !3557

for.cond:                                         ; preds = %for.inc, %entry
  %i.0.in = phi i32 [ %0, %entry ], [ %i.0, %for.inc ]
  %retval.0 = phi i32 [ undef, %entry ], [ %retval.1, %for.inc ]
  %i.0 = add i32 %i.0.in, -1, !dbg !3558
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3544, metadata !DIExpression()), !dbg !3555
  %cmp = icmp sgt i32 %i.0, -1, !dbg !3559
  br i1 %cmp, label %for.body, label %cleanup7, !dbg !3560

for.body:                                         ; preds = %for.cond
  %idxprom = sext i32 %i.0 to i64, !dbg !3561
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom, !dbg !3561
  %1 = load i64, i64* %arrayidx, align 8, !dbg !3561
  call void @llvm.dbg.value(metadata i64 %1, metadata !3547, metadata !DIExpression()), !dbg !3562
  %cmp1 = icmp eq i64 %1, 0, !dbg !3563
  br i1 %cmp1, label %cleanup, label %if.then, !dbg !3564

if.then:                                          ; preds = %for.body
  %mul = shl i32 %i.0.in, 6, !dbg !3565
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3566
  call void @llvm.dbg.value(metadata i64 -9223372036854775808, metadata !3554, metadata !DIExpression()), !dbg !3566
  br label %while.cond, !dbg !3567

while.cond:                                       ; preds = %if.end, %if.then
  %index.0.in = phi i32 [ %mul, %if.then ], [ %index.0, %if.end ]
  %mask.0 = phi i64 [ -9223372036854775808, %if.then ], [ %shr, %if.end ], !dbg !3566
  %index.0 = add i32 %index.0.in, -1, !dbg !3566
  call void @llvm.dbg.value(metadata i64 %mask.0, metadata !3554, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !3551, metadata !DIExpression()), !dbg !3566
  %and = and i64 %1, %mask.0, !dbg !3568
  %cmp3 = icmp eq i64 %and, 0, !dbg !3571
  br i1 %cmp3, label %if.end, label %cleanup.loopexit, !dbg !3572

if.end:                                           ; preds = %while.cond
  %shr = lshr i64 %mask.0, 1, !dbg !3573
  call void @llvm.dbg.value(metadata i64 %shr, metadata !3554, metadata !DIExpression()), !dbg !3566
  call void @llvm.dbg.value(metadata i32 %index.0, metadata !3551, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3566
  br label %while.cond, !dbg !3567, !llvm.loop !3574

cleanup.loopexit:                                 ; preds = %while.cond
  %index.0.lcssa = phi i32 [ %index.0, %while.cond ], !dbg !3566
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %for.body
  %cleanup.dest.slot.0 = phi i1 [ true, %for.body ], [ false, %cleanup.loopexit ]
  %retval.1 = phi i32 [ %retval.0, %for.body ], [ %index.0.lcssa, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %for.inc, label %cleanup7

for.inc:                                          ; preds = %cleanup
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3544, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3555
  br label %for.cond, !dbg !3576, !llvm.loop !3577

cleanup7:                                         ; preds = %for.cond, %cleanup
  %retval.2 = phi i32 [ %retval.1, %cleanup ], [ -1, %for.cond ], !dbg !3555
  ret i32 %retval.2, !dbg !3579
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_sbitmap(%struct._IO_FILE* %file, %struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !3580 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3584, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3585, metadata !DIExpression()), !dbg !3591
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 2, !dbg !3592
  %0 = load i32, i32* %size, align 4, !dbg !3592
  call void @llvm.dbg.value(metadata i32 %0, metadata !3589, metadata !DIExpression()), !dbg !3591
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 1, !dbg !3593
  %1 = load i32, i32* %n_bits, align 8, !dbg !3593
  call void @llvm.dbg.value(metadata i32 %1, metadata !3590, metadata !DIExpression()), !dbg !3591
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3594
  call void @llvm.dbg.value(metadata i32 0, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 0, metadata !3586, metadata !DIExpression()), !dbg !3591
  %2 = zext i32 %0 to i64, !dbg !3595
  br label %for.cond, !dbg !3595

for.cond:                                         ; preds = %for.inc14, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.inc14 ], [ 0, %entry ], !dbg !3597
  %n.0 = phi i32 [ %n.1.lcssa, %for.inc14 ], [ 0, %entry ], !dbg !3598
  call void @llvm.dbg.value(metadata i32 %n.0, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3586, metadata !DIExpression()), !dbg !3591
  %cmp = icmp ult i64 %indvars.iv2, %2, !dbg !3599
  %cmp1 = icmp ult i32 %n.0, %1, !dbg !3601
  %spec.select = and i1 %cmp, %cmp1, !dbg !3602
  br i1 %spec.select, label %for.cond2.preheader, label %for.end16, !dbg !3603

for.cond2.preheader:                              ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %indvars.iv2, !dbg !3604
  br label %for.cond2, !dbg !3608

for.cond2:                                        ; preds = %for.cond2.preheader, %if.end
  %indvars.iv = phi i64 [ 0, %for.cond2.preheader ], [ %indvars.iv.next, %if.end ], !dbg !3597
  %n.1 = phi i32 [ %n.0, %for.cond2.preheader ], [ %inc13, %if.end ], !dbg !3597
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3588, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %n.1, metadata !3587, metadata !DIExpression()), !dbg !3591
  %cmp3 = icmp ult i64 %indvars.iv, 64, !dbg !3609
  %cmp5 = icmp ult i32 %n.1, %1, !dbg !3610
  %spec.select1 = and i1 %cmp3, %cmp5, !dbg !3611
  br i1 %spec.select1, label %for.body7, label %for.inc14, !dbg !3608

for.body7:                                        ; preds = %for.cond2
  %cmp8 = icmp ne i32 %n.1, 0, !dbg !3612
  %rem = urem i32 %n.1, 10, !dbg !3614
  %cmp9 = icmp eq i32 %rem, 0, !dbg !3615
  %or.cond = and i1 %cmp8, %cmp9, !dbg !3616
  br i1 %or.cond, label %if.then, label %if.end, !dbg !3616

if.then:                                          ; preds = %for.body7
  %call10 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3617
  br label %if.end, !dbg !3617

if.end:                                           ; preds = %if.then, %for.body7
  %3 = load i64, i64* %arrayidx, align 8, !dbg !3618
  %shl = shl i64 1, %indvars.iv, !dbg !3619
  %and = and i64 %3, %shl, !dbg !3620
  %cmp11 = icmp ne i64 %and, 0, !dbg !3621
  %conv = zext i1 %cmp11 to i32, !dbg !3621
  %call12 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %conv) #6, !dbg !3622
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3623
  call void @llvm.dbg.value(metadata i32 undef, metadata !3588, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3591
  %inc13 = add i32 %n.1, 1, !dbg !3624
  call void @llvm.dbg.value(metadata i32 %inc13, metadata !3587, metadata !DIExpression()), !dbg !3591
  br label %for.cond2, !dbg !3625, !llvm.loop !3626

for.inc14:                                        ; preds = %for.cond2
  %n.1.lcssa = phi i32 [ %n.1, %for.cond2 ], !dbg !3597
  call void @llvm.dbg.value(metadata i32 %n.1.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %n.1.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3591
  call void @llvm.dbg.value(metadata i32 %n.1.lcssa, metadata !3587, metadata !DIExpression()), !dbg !3591
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3628
  br label %for.cond, !dbg !3629, !llvm.loop !3630

for.end16:                                        ; preds = %for.cond
  %call17 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3632
  ret void, !dbg !3633
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @dump_sbitmap_file(%struct._IO_FILE* %file, %struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !3634 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3636, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3637, metadata !DIExpression()), !dbg !3640
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 1, !dbg !3641
  %0 = load i32, i32* %n_bits, align 8, !dbg !3641
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %0) #6, !dbg !3642
  call void @llvm.dbg.value(metadata i32 30, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 0, metadata !3638, metadata !DIExpression()), !dbg !3640
  br label %for.cond, !dbg !3643

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3645
  %pos.0 = phi i32 [ 30, %entry ], [ %pos.2, %for.inc ], !dbg !3645
  call void @llvm.dbg.value(metadata i32 %pos.0, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3638, metadata !DIExpression()), !dbg !3640
  %1 = load i32, i32* %n_bits, align 8, !dbg !3646
  %cmp = icmp ult i32 %i.0, %1, !dbg !3648
  br i1 %cmp, label %for.body, label %for.end, !dbg !3649

for.body:                                         ; preds = %for.cond
  %div = lshr i32 %i.0, 6, !dbg !3650
  %idxprom = zext i32 %div to i64, !dbg !3650
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %bmap, i64 0, i32 3, i64 %idxprom, !dbg !3650
  %2 = load i64, i64* %arrayidx, align 8, !dbg !3650
  %rem = and i32 %i.0, 63, !dbg !3650
  %sh_prom = zext i32 %rem to i64, !dbg !3650
  %3 = shl i64 1, %sh_prom, !dbg !3650
  %4 = and i64 %2, %3, !dbg !3650
  %tobool = icmp eq i64 %4, 0, !dbg !3650
  br i1 %tobool, label %for.inc, label %if.then, !dbg !3652

if.then:                                          ; preds = %for.body
  %cmp2 = icmp ugt i32 %pos.0, 70, !dbg !3653
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3656

if.then3:                                         ; preds = %if.then
  %call4 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3657
  call void @llvm.dbg.value(metadata i32 0, metadata !3639, metadata !DIExpression()), !dbg !3640
  br label %if.end, !dbg !3659

if.end:                                           ; preds = %if.then3, %if.then
  %pos.1 = phi i32 [ 0, %if.then3 ], [ %pos.0, %if.then ], !dbg !3645
  call void @llvm.dbg.value(metadata i32 %pos.1, metadata !3639, metadata !DIExpression()), !dbg !3640
  %call5 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i32 %i.0) #6, !dbg !3660
  %cmp6 = icmp ugt i32 %i.0, 9, !dbg !3661
  %add = select i1 %cmp6, i32 3, i32 2, !dbg !3662
  %cmp7 = icmp ugt i32 %i.0, 99, !dbg !3663
  %conv8 = zext i1 %cmp7 to i32, !dbg !3663
  %add9 = add nuw nsw i32 %add, %conv8, !dbg !3664
  %cmp10 = icmp ugt i32 %i.0, 999, !dbg !3665
  %conv11 = zext i1 %cmp10 to i32, !dbg !3665
  %add12 = add nuw nsw i32 %add9, %conv11, !dbg !3666
  %add13 = add i32 %pos.1, %add12, !dbg !3667
  call void @llvm.dbg.value(metadata i32 %add13, metadata !3639, metadata !DIExpression()), !dbg !3640
  br label %for.inc, !dbg !3668

for.inc:                                          ; preds = %for.body, %if.end
  %pos.2 = phi i32 [ %add13, %if.end ], [ %pos.0, %for.body ], !dbg !3645
  call void @llvm.dbg.value(metadata i32 %pos.2, metadata !3639, metadata !DIExpression()), !dbg !3640
  %inc = add i32 %i.0, 1, !dbg !3669
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3638, metadata !DIExpression()), !dbg !3640
  br label %for.cond, !dbg !3670, !llvm.loop !3671

for.end:                                          ; preds = %for.cond
  %call15 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0)) #6, !dbg !3673
  ret void, !dbg !3674
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_sbitmap(%struct.simple_bitmap_def* %bmap) local_unnamed_addr #4 !dbg !3675 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %bmap, metadata !3679, metadata !DIExpression()), !dbg !3680
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !3681
  tail call void @dump_sbitmap_file(%struct._IO_FILE* %0, %struct.simple_bitmap_def* %bmap) #7, !dbg !3682
  ret void, !dbg !3683
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_sbitmap_vector(%struct._IO_FILE* %file, i8* %title, i8* %subtitle, %struct.simple_bitmap_def** %bmaps, i32 %n_maps) local_unnamed_addr #4 !dbg !3684 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !3688, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %title, metadata !3689, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i8* %subtitle, metadata !3690, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def** %bmaps, metadata !3691, metadata !DIExpression()), !dbg !3694
  call void @llvm.dbg.value(metadata i32 %n_maps, metadata !3692, metadata !DIExpression()), !dbg !3694
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %title) #6, !dbg !3695
  call void @llvm.dbg.value(metadata i32 0, metadata !3693, metadata !DIExpression()), !dbg !3694
  %0 = sext i32 %n_maps to i64, !dbg !3696
  br label %for.cond, !dbg !3696

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %entry ], !dbg !3698
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3693, metadata !DIExpression()), !dbg !3694
  %cmp = icmp slt i64 %indvars.iv, %0, !dbg !3699
  br i1 %cmp, label %for.body, label %for.end, !dbg !3701

for.body:                                         ; preds = %for.cond
  %1 = trunc i64 %indvars.iv to i32, !dbg !3702
  %call1 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i8* %subtitle, i32 %1) #6, !dbg !3702
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %bmaps, i64 %indvars.iv, !dbg !3704
  %2 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** %arrayidx, align 8, !dbg !3704
  tail call void @dump_sbitmap(%struct._IO_FILE* %file, %struct.simple_bitmap_def* %2) #7, !dbg !3705
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3706
  call void @llvm.dbg.value(metadata i32 undef, metadata !3693, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !3694
  br label %for.cond, !dbg !3707, !llvm.loop !3708

for.end:                                          ; preds = %for.cond
  %call2 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3710
  ret void, !dbg !3711
}

; Function Attrs: nounwind uwtable
define dso_local i64 @sbitmap_popcount(%struct.simple_bitmap_def* %a, i64 %maxbit) local_unnamed_addr #4 !dbg !3712 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %a, metadata !3716, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %maxbit, metadata !3717, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 0, metadata !3718, metadata !DIExpression()), !dbg !3725
  %cmp = icmp eq i64 %maxbit, 0, !dbg !3726
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3728

if.end:                                           ; preds = %entry
  %n_bits = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 1, !dbg !3729
  %0 = load i32, i32* %n_bits, align 8, !dbg !3729
  %conv = zext i32 %0 to i64, !dbg !3731
  %cmp1 = icmp ugt i64 %conv, %maxbit, !dbg !3732
  br i1 %cmp1, label %if.end6, label %if.then3, !dbg !3733

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %conv, metadata !3717, metadata !DIExpression()), !dbg !3725
  br label %if.end6, !dbg !3734

if.end6:                                          ; preds = %if.end, %if.then3
  %maxbit.addr.0 = phi i64 [ %conv, %if.then3 ], [ %maxbit, %if.end ]
  call void @llvm.dbg.value(metadata i64 %maxbit.addr.0, metadata !3717, metadata !DIExpression()), !dbg !3725
  %size = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 2, !dbg !3735
  %1 = load i32, i32* %size, align 4, !dbg !3735
  %conv7 = zext i32 %1 to i64, !dbg !3735
  %sub = add i64 %maxbit.addr.0, 64, !dbg !3735
  %div = lshr i64 %sub, 6, !dbg !3735
  %sub9 = add nsw i64 %div, -1, !dbg !3735
  %cmp10 = icmp ugt i64 %sub9, %conv7, !dbg !3735
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !3735

cond.true:                                        ; preds = %if.end6
  br label %cond.end, !dbg !3735

cond.false:                                       ; preds = %if.end6
  br label %cond.end, !dbg !3735

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv7, %cond.true ], [ %sub9, %cond.false ], !dbg !3735
  call void @llvm.dbg.value(metadata i32 %conv19, metadata !3720, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i32 0, metadata !3719, metadata !DIExpression()), !dbg !3725
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 0, !dbg !3736
  %wide.trip.count = and i64 %cond, 4294967295, !dbg !3741
  br label %for.cond, !dbg !3742

for.cond:                                         ; preds = %for.inc, %cond.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %cond.end ], !dbg !3743
  %count.0 = phi i64 [ %count.1, %for.inc ], [ 0, %cond.end ], !dbg !3725
  call void @llvm.dbg.value(metadata i64 %count.0, metadata !3718, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3719, metadata !DIExpression()), !dbg !3725
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !3741
  br i1 %exitcond, label %for.end, label %for.body, !dbg !3744

for.body:                                         ; preds = %for.cond
  %2 = load i8*, i8** %popcount, align 8, !dbg !3745
  %tobool = icmp eq i8* %2, null, !dbg !3746
  br i1 %tobool, label %if.else, label %if.then22, !dbg !3747

if.then22:                                        ; preds = %for.body
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %indvars.iv, !dbg !3748
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3748
  %conv24 = zext i8 %3 to i64, !dbg !3748
  br label %for.inc, !dbg !3750

if.else:                                          ; preds = %for.body
  %arrayidx27 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 %indvars.iv, !dbg !3751
  %4 = load i64, i64* %arrayidx27, align 8, !dbg !3751
  %call = tail call fastcc i64 @sbitmap_elt_popcount(i64 %4) #7, !dbg !3751
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.else
  %conv24.pn = phi i64 [ %conv24, %if.then22 ], [ %call, %if.else ]
  %count.1 = add i64 %count.0, %conv24.pn, !dbg !3736
  call void @llvm.dbg.value(metadata i64 %count.1, metadata !3718, metadata !DIExpression()), !dbg !3725
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3752
  br label %for.cond, !dbg !3753, !llvm.loop !3754

for.end:                                          ; preds = %for.cond
  %count.0.lcssa = phi i64 [ %count.0, %for.cond ], !dbg !3725
  %conv19 = trunc i64 %cond to i32, !dbg !3735
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !3718, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !3718, metadata !DIExpression()), !dbg !3725
  call void @llvm.dbg.value(metadata i64 %count.0.lcssa, metadata !3718, metadata !DIExpression()), !dbg !3725
  %5 = load i32, i32* %size, align 4, !dbg !3756
  %cmp31 = icmp ugt i32 %5, %conv19, !dbg !3757
  br i1 %cmp31, label %if.then33, label %cleanup, !dbg !3758

if.then33:                                        ; preds = %for.end
  call void @llvm.dbg.value(metadata i64 undef, metadata !3724, metadata !DIExpression()), !dbg !3759
  %6 = trunc i64 %maxbit.addr.0 to i32, !dbg !3760
  %conv37 = and i32 %6, 63, !dbg !3760
  call void @llvm.dbg.value(metadata i32 %conv37, metadata !3721, metadata !DIExpression()), !dbg !3759
  %cmp38 = icmp eq i32 %conv37, 0, !dbg !3761
  br i1 %cmp38, label %cleanup, label %if.then40, !dbg !3763

if.then40:                                        ; preds = %if.then33
  %idxprom35 = and i64 %cond, 4294967295, !dbg !3764
  %arrayidx36 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %a, i64 0, i32 3, i64 %idxprom35, !dbg !3764
  %7 = load i64, i64* %arrayidx36, align 8, !dbg !3764
  call void @llvm.dbg.value(metadata i64 %7, metadata !3724, metadata !DIExpression()), !dbg !3759
  %sub41 = sub nuw nsw i32 64, %conv37, !dbg !3765
  %sh_prom = zext i32 %sub41 to i64, !dbg !3767
  %shr = lshr i64 -1, %sh_prom, !dbg !3767
  %and = and i64 %7, %shr, !dbg !3768
  call void @llvm.dbg.value(metadata i64 %and, metadata !3724, metadata !DIExpression()), !dbg !3759
  %call42 = tail call fastcc i64 @sbitmap_elt_popcount(i64 %and) #7, !dbg !3769
  %add43 = add i64 %count.0.lcssa, %call42, !dbg !3770
  call void @llvm.dbg.value(metadata i64 %add43, metadata !3718, metadata !DIExpression()), !dbg !3725
  br label %cleanup, !dbg !3771

cleanup:                                          ; preds = %if.then33, %for.end, %if.then40, %entry
  %retval.0 = phi i64 [ 0, %entry ], [ %count.0.lcssa, %for.end ], [ %add43, %if.then40 ], [ %count.0.lcssa, %if.then33 ], !dbg !3725
  ret i64 %retval.0, !dbg !3772
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #5

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { argmemonly nounwind }
attributes #4 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone speculatable }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!406, !407, !408}
!llvm.ident = !{!409}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "popcount_table", scope: !2, file: !3, line: 1023, type: !402, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !377, globals: !401, nameTableKind: None)
!3 = !DIFile(filename: "sbitmap.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !150, !169, !176, !183}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "machine_mode", file: !6, line: 7, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./insn-modes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133}
!9 = !DIEnumerator(name: "VOIDmode", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "BLKmode", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "CCmode", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "CCGCmode", value: 3, isUnsigned: true)
!13 = !DIEnumerator(name: "CCGOCmode", value: 4, isUnsigned: true)
!14 = !DIEnumerator(name: "CCNOmode", value: 5, isUnsigned: true)
!15 = !DIEnumerator(name: "CCAmode", value: 6, isUnsigned: true)
!16 = !DIEnumerator(name: "CCCmode", value: 7, isUnsigned: true)
!17 = !DIEnumerator(name: "CCOmode", value: 8, isUnsigned: true)
!18 = !DIEnumerator(name: "CCSmode", value: 9, isUnsigned: true)
!19 = !DIEnumerator(name: "CCZmode", value: 10, isUnsigned: true)
!20 = !DIEnumerator(name: "CCFPmode", value: 11, isUnsigned: true)
!21 = !DIEnumerator(name: "CCFPUmode", value: 12, isUnsigned: true)
!22 = !DIEnumerator(name: "BImode", value: 13, isUnsigned: true)
!23 = !DIEnumerator(name: "QImode", value: 14, isUnsigned: true)
!24 = !DIEnumerator(name: "HImode", value: 15, isUnsigned: true)
!25 = !DIEnumerator(name: "SImode", value: 16, isUnsigned: true)
!26 = !DIEnumerator(name: "DImode", value: 17, isUnsigned: true)
!27 = !DIEnumerator(name: "TImode", value: 18, isUnsigned: true)
!28 = !DIEnumerator(name: "OImode", value: 19, isUnsigned: true)
!29 = !DIEnumerator(name: "QQmode", value: 20, isUnsigned: true)
!30 = !DIEnumerator(name: "HQmode", value: 21, isUnsigned: true)
!31 = !DIEnumerator(name: "SQmode", value: 22, isUnsigned: true)
!32 = !DIEnumerator(name: "DQmode", value: 23, isUnsigned: true)
!33 = !DIEnumerator(name: "TQmode", value: 24, isUnsigned: true)
!34 = !DIEnumerator(name: "UQQmode", value: 25, isUnsigned: true)
!35 = !DIEnumerator(name: "UHQmode", value: 26, isUnsigned: true)
!36 = !DIEnumerator(name: "USQmode", value: 27, isUnsigned: true)
!37 = !DIEnumerator(name: "UDQmode", value: 28, isUnsigned: true)
!38 = !DIEnumerator(name: "UTQmode", value: 29, isUnsigned: true)
!39 = !DIEnumerator(name: "HAmode", value: 30, isUnsigned: true)
!40 = !DIEnumerator(name: "SAmode", value: 31, isUnsigned: true)
!41 = !DIEnumerator(name: "DAmode", value: 32, isUnsigned: true)
!42 = !DIEnumerator(name: "TAmode", value: 33, isUnsigned: true)
!43 = !DIEnumerator(name: "UHAmode", value: 34, isUnsigned: true)
!44 = !DIEnumerator(name: "USAmode", value: 35, isUnsigned: true)
!45 = !DIEnumerator(name: "UDAmode", value: 36, isUnsigned: true)
!46 = !DIEnumerator(name: "UTAmode", value: 37, isUnsigned: true)
!47 = !DIEnumerator(name: "SFmode", value: 38, isUnsigned: true)
!48 = !DIEnumerator(name: "DFmode", value: 39, isUnsigned: true)
!49 = !DIEnumerator(name: "XFmode", value: 40, isUnsigned: true)
!50 = !DIEnumerator(name: "TFmode", value: 41, isUnsigned: true)
!51 = !DIEnumerator(name: "SDmode", value: 42, isUnsigned: true)
!52 = !DIEnumerator(name: "DDmode", value: 43, isUnsigned: true)
!53 = !DIEnumerator(name: "TDmode", value: 44, isUnsigned: true)
!54 = !DIEnumerator(name: "CQImode", value: 45, isUnsigned: true)
!55 = !DIEnumerator(name: "CHImode", value: 46, isUnsigned: true)
!56 = !DIEnumerator(name: "CSImode", value: 47, isUnsigned: true)
!57 = !DIEnumerator(name: "CDImode", value: 48, isUnsigned: true)
!58 = !DIEnumerator(name: "CTImode", value: 49, isUnsigned: true)
!59 = !DIEnumerator(name: "COImode", value: 50, isUnsigned: true)
!60 = !DIEnumerator(name: "SCmode", value: 51, isUnsigned: true)
!61 = !DIEnumerator(name: "DCmode", value: 52, isUnsigned: true)
!62 = !DIEnumerator(name: "XCmode", value: 53, isUnsigned: true)
!63 = !DIEnumerator(name: "TCmode", value: 54, isUnsigned: true)
!64 = !DIEnumerator(name: "V2QImode", value: 55, isUnsigned: true)
!65 = !DIEnumerator(name: "V4QImode", value: 56, isUnsigned: true)
!66 = !DIEnumerator(name: "V2HImode", value: 57, isUnsigned: true)
!67 = !DIEnumerator(name: "V1SImode", value: 58, isUnsigned: true)
!68 = !DIEnumerator(name: "V8QImode", value: 59, isUnsigned: true)
!69 = !DIEnumerator(name: "V4HImode", value: 60, isUnsigned: true)
!70 = !DIEnumerator(name: "V2SImode", value: 61, isUnsigned: true)
!71 = !DIEnumerator(name: "V1DImode", value: 62, isUnsigned: true)
!72 = !DIEnumerator(name: "V16QImode", value: 63, isUnsigned: true)
!73 = !DIEnumerator(name: "V8HImode", value: 64, isUnsigned: true)
!74 = !DIEnumerator(name: "V4SImode", value: 65, isUnsigned: true)
!75 = !DIEnumerator(name: "V2DImode", value: 66, isUnsigned: true)
!76 = !DIEnumerator(name: "V1TImode", value: 67, isUnsigned: true)
!77 = !DIEnumerator(name: "V32QImode", value: 68, isUnsigned: true)
!78 = !DIEnumerator(name: "V16HImode", value: 69, isUnsigned: true)
!79 = !DIEnumerator(name: "V8SImode", value: 70, isUnsigned: true)
!80 = !DIEnumerator(name: "V4DImode", value: 71, isUnsigned: true)
!81 = !DIEnumerator(name: "V2TImode", value: 72, isUnsigned: true)
!82 = !DIEnumerator(name: "V64QImode", value: 73, isUnsigned: true)
!83 = !DIEnumerator(name: "V32HImode", value: 74, isUnsigned: true)
!84 = !DIEnumerator(name: "V16SImode", value: 75, isUnsigned: true)
!85 = !DIEnumerator(name: "V8DImode", value: 76, isUnsigned: true)
!86 = !DIEnumerator(name: "V4TImode", value: 77, isUnsigned: true)
!87 = !DIEnumerator(name: "V2SFmode", value: 78, isUnsigned: true)
!88 = !DIEnumerator(name: "V4SFmode", value: 79, isUnsigned: true)
!89 = !DIEnumerator(name: "V2DFmode", value: 80, isUnsigned: true)
!90 = !DIEnumerator(name: "V8SFmode", value: 81, isUnsigned: true)
!91 = !DIEnumerator(name: "V4DFmode", value: 82, isUnsigned: true)
!92 = !DIEnumerator(name: "V2TFmode", value: 83, isUnsigned: true)
!93 = !DIEnumerator(name: "V16SFmode", value: 84, isUnsigned: true)
!94 = !DIEnumerator(name: "V8DFmode", value: 85, isUnsigned: true)
!95 = !DIEnumerator(name: "V4TFmode", value: 86, isUnsigned: true)
!96 = !DIEnumerator(name: "MAX_MACHINE_MODE", value: 87, isUnsigned: true)
!97 = !DIEnumerator(name: "MIN_MODE_RANDOM", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "MAX_MODE_RANDOM", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "MIN_MODE_CC", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "MAX_MODE_CC", value: 12, isUnsigned: true)
!101 = !DIEnumerator(name: "MIN_MODE_INT", value: 14, isUnsigned: true)
!102 = !DIEnumerator(name: "MAX_MODE_INT", value: 19, isUnsigned: true)
!103 = !DIEnumerator(name: "MIN_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!104 = !DIEnumerator(name: "MAX_MODE_PARTIAL_INT", value: 0, isUnsigned: true)
!105 = !DIEnumerator(name: "MIN_MODE_FRACT", value: 20, isUnsigned: true)
!106 = !DIEnumerator(name: "MAX_MODE_FRACT", value: 24, isUnsigned: true)
!107 = !DIEnumerator(name: "MIN_MODE_UFRACT", value: 25, isUnsigned: true)
!108 = !DIEnumerator(name: "MAX_MODE_UFRACT", value: 29, isUnsigned: true)
!109 = !DIEnumerator(name: "MIN_MODE_ACCUM", value: 30, isUnsigned: true)
!110 = !DIEnumerator(name: "MAX_MODE_ACCUM", value: 33, isUnsigned: true)
!111 = !DIEnumerator(name: "MIN_MODE_UACCUM", value: 34, isUnsigned: true)
!112 = !DIEnumerator(name: "MAX_MODE_UACCUM", value: 37, isUnsigned: true)
!113 = !DIEnumerator(name: "MIN_MODE_FLOAT", value: 38, isUnsigned: true)
!114 = !DIEnumerator(name: "MAX_MODE_FLOAT", value: 41, isUnsigned: true)
!115 = !DIEnumerator(name: "MIN_MODE_DECIMAL_FLOAT", value: 42, isUnsigned: true)
!116 = !DIEnumerator(name: "MAX_MODE_DECIMAL_FLOAT", value: 44, isUnsigned: true)
!117 = !DIEnumerator(name: "MIN_MODE_COMPLEX_INT", value: 45, isUnsigned: true)
!118 = !DIEnumerator(name: "MAX_MODE_COMPLEX_INT", value: 50, isUnsigned: true)
!119 = !DIEnumerator(name: "MIN_MODE_COMPLEX_FLOAT", value: 51, isUnsigned: true)
!120 = !DIEnumerator(name: "MAX_MODE_COMPLEX_FLOAT", value: 54, isUnsigned: true)
!121 = !DIEnumerator(name: "MIN_MODE_VECTOR_INT", value: 55, isUnsigned: true)
!122 = !DIEnumerator(name: "MAX_MODE_VECTOR_INT", value: 77, isUnsigned: true)
!123 = !DIEnumerator(name: "MIN_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!124 = !DIEnumerator(name: "MAX_MODE_VECTOR_FRACT", value: 0, isUnsigned: true)
!125 = !DIEnumerator(name: "MIN_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!126 = !DIEnumerator(name: "MAX_MODE_VECTOR_UFRACT", value: 0, isUnsigned: true)
!127 = !DIEnumerator(name: "MIN_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!128 = !DIEnumerator(name: "MAX_MODE_VECTOR_ACCUM", value: 0, isUnsigned: true)
!129 = !DIEnumerator(name: "MIN_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!130 = !DIEnumerator(name: "MAX_MODE_VECTOR_UACCUM", value: 0, isUnsigned: true)
!131 = !DIEnumerator(name: "MIN_MODE_VECTOR_FLOAT", value: 78, isUnsigned: true)
!132 = !DIEnumerator(name: "MAX_MODE_VECTOR_FLOAT", value: 86, isUnsigned: true)
!133 = !DIEnumerator(name: "NUM_MACHINE_MODES", value: 87, isUnsigned: true)
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !135, line: 363, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139}
!137 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!140 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !135, line: 355, baseType: !7, size: 32, elements: !141)
!141 = !{!142, !143, !144}
!142 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!143 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!144 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !146, line: 474, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149}
!148 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!150 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !151, line: 280, baseType: !7, size: 32, elements: !152)
!151 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!152 = !{!153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168}
!153 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!154 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!155 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!156 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!157 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!158 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!159 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!169 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !151, line: 1817, baseType: !7, size: 32, elements: !170)
!170 = !{!171, !172, !173, !174, !175}
!171 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!176 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !151, line: 1805, baseType: !7, size: 32, elements: !177)
!177 = !{!178, !179, !180, !181, !182}
!178 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!182 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!183 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !151, line: 39, baseType: !7, size: 32, elements: !184)
!184 = !{!185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376}
!185 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!186 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!187 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!188 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!189 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!190 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!191 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!192 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!193 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!194 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!195 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!196 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!197 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!198 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!199 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!200 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!201 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!202 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!203 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!204 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!205 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!206 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!207 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!208 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!209 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!210 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!213 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!214 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!215 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!216 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!217 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!218 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!219 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!220 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!221 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!222 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!223 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!224 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!225 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!226 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!228 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!229 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!230 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!231 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!232 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!233 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!234 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!235 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!236 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!237 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!238 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!239 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!240 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!241 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!242 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!243 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!244 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!245 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!246 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!247 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!248 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!249 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!250 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!251 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!252 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!253 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!254 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!255 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!256 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!257 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!258 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!259 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!260 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!261 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!262 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!263 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!264 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!265 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!266 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!267 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!268 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!269 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!270 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!271 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!272 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!273 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!274 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!275 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!276 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!277 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!278 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!279 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!280 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!281 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!282 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!283 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!284 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!285 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!286 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!287 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!288 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!289 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!290 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!291 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!292 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!293 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!294 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!295 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!296 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!297 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!298 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!299 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!300 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!301 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!302 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!303 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!304 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!305 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!306 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!307 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!308 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!309 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!310 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!311 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!312 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!313 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!314 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!315 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!316 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!317 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!318 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!319 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!320 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!321 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!322 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!323 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!324 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!325 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!326 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!327 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!328 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!329 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!330 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!331 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!332 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!333 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!334 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!335 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!336 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!337 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!338 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!339 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!340 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!341 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!342 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!343 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!344 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!345 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!346 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!347 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!349 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!350 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!351 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!352 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!353 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!354 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!355 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!356 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!357 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!358 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!359 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!360 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!361 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!362 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!363 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!364 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!365 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!366 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!367 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!370 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!371 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!372 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!373 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!374 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!375 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!376 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!377 = !{!378, !379, !380, !381, !384, !385, !7, !387, !397, !382, !400}
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!380 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !388, line: 45, baseType: !389)
!388 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !388, line: 39, size: 192, elements: !391)
!391 = !{!392, !393, !394, !395}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !390, file: !388, line: 41, baseType: !378, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !390, file: !388, line: 42, baseType: !7, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !388, line: 43, baseType: !7, size: 32, offset: 96)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !390, file: !388, line: 44, baseType: !396, size: 64, offset: 128)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 64, elements: !398)
!397 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!398 = !{!399}
!399 = !DISubrange(count: 1)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!401 = !{!0}
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !403, size: 2048, elements: !404)
!403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !379)
!404 = !{!405}
!405 = !DISubrange(count: 256)
!406 = !{i32 2, !"Dwarf Version", i32 4}
!407 = !{i32 2, !"Debug Info Version", i32 3}
!408 = !{i32 1, !"wchar_size", i32 4}
!409 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!410 = distinct !DISubprogram(name: "vprintf", scope: !411, file: !411, line: 39, type: !412, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !422)
!411 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!412 = !DISubroutineType(types: !413)
!413 = !{!380, !414, !415}
!414 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !385)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !417)
!417 = !{!418, !419, !420, !421}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !416, file: !3, baseType: !7, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !416, file: !3, baseType: !7, size: 32, offset: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !416, file: !3, baseType: !384, size: 64, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !416, file: !3, baseType: !384, size: 64, offset: 128)
!422 = !{!423, !424}
!423 = !DILocalVariable(name: "__fmt", arg: 1, scope: !410, file: !411, line: 39, type: !414)
!424 = !DILocalVariable(name: "__arg", arg: 2, scope: !410, file: !411, line: 39, type: !415)
!425 = !DILocation(line: 0, scope: !410)
!426 = !DILocation(line: 41, column: 20, scope: !410)
!427 = !DILocation(line: 41, column: 10, scope: !410)
!428 = !DILocation(line: 41, column: 3, scope: !410)
!429 = distinct !DISubprogram(name: "getchar", scope: !411, file: !411, line: 47, type: !430, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!380}
!432 = !{}
!433 = !DILocation(line: 49, column: 16, scope: !429)
!434 = !DILocation(line: 49, column: 10, scope: !429)
!435 = !DILocation(line: 49, column: 3, scope: !429)
!436 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !411, file: !411, line: 56, type: !437, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !495)
!437 = !DISubroutineType(types: !438)
!438 = !{!380, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !441, line: 7, baseType: !442)
!441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !443, line: 49, size: 1728, elements: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!444 = !{!445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !460, !462, !463, !464, !468, !470, !472, !474, !477, !479, !482, !485, !486, !487, !490, !491}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !442, file: !443, line: 51, baseType: !380, size: 32)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !442, file: !443, line: 54, baseType: !382, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !442, file: !443, line: 55, baseType: !382, size: 64, offset: 128)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !442, file: !443, line: 56, baseType: !382, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !442, file: !443, line: 57, baseType: !382, size: 64, offset: 256)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !442, file: !443, line: 58, baseType: !382, size: 64, offset: 320)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !442, file: !443, line: 59, baseType: !382, size: 64, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !442, file: !443, line: 60, baseType: !382, size: 64, offset: 448)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !442, file: !443, line: 61, baseType: !382, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !442, file: !443, line: 64, baseType: !382, size: 64, offset: 576)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !442, file: !443, line: 65, baseType: !382, size: 64, offset: 640)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !442, file: !443, line: 66, baseType: !382, size: 64, offset: 704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !442, file: !443, line: 68, baseType: !458, size: 64, offset: 768)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !443, line: 36, flags: DIFlagFwdDecl)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !442, file: !443, line: 70, baseType: !461, size: 64, offset: 832)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !442, file: !443, line: 72, baseType: !380, size: 32, offset: 896)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !442, file: !443, line: 73, baseType: !380, size: 32, offset: 928)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !442, file: !443, line: 74, baseType: !465, size: 64, offset: 960)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !466, line: 152, baseType: !467)
!466 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!467 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !442, file: !443, line: 77, baseType: !469, size: 16, offset: 1024)
!469 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !442, file: !443, line: 78, baseType: !471, size: 8, offset: 1040)
!471 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !442, file: !443, line: 79, baseType: !473, size: 8, offset: 1048)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 8, elements: !398)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !442, file: !443, line: 81, baseType: !475, size: 64, offset: 1088)
!475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !476, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !443, line: 43, baseType: null)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !442, file: !443, line: 89, baseType: !478, size: 64, offset: 1152)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !466, line: 153, baseType: !467)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !442, file: !443, line: 91, baseType: !480, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !443, line: 37, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !442, file: !443, line: 92, baseType: !483, size: 64, offset: 1280)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !443, line: 38, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !442, file: !443, line: 93, baseType: !461, size: 64, offset: 1344)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !442, file: !443, line: 94, baseType: !384, size: 64, offset: 1408)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !442, file: !443, line: 95, baseType: !488, size: 64, offset: 1472)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !489, line: 46, baseType: !397)
!489 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!490 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !442, file: !443, line: 96, baseType: !380, size: 32, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !442, file: !443, line: 98, baseType: !492, size: 160, offset: 1568)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 160, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 20)
!495 = !{!496}
!496 = !DILocalVariable(name: "__fp", arg: 1, scope: !436, file: !411, line: 56, type: !439)
!497 = !DILocation(line: 0, scope: !436)
!498 = !DILocation(line: 58, column: 10, scope: !436)
!499 = !DILocation(line: 58, column: 3, scope: !436)
!500 = distinct !DISubprogram(name: "getc_unlocked", scope: !411, file: !411, line: 66, type: !437, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !501)
!501 = !{!502}
!502 = !DILocalVariable(name: "__fp", arg: 1, scope: !500, file: !411, line: 66, type: !439)
!503 = !DILocation(line: 0, scope: !500)
!504 = !DILocation(line: 68, column: 10, scope: !500)
!505 = !DILocation(line: 68, column: 3, scope: !500)
!506 = distinct !DISubprogram(name: "getchar_unlocked", scope: !411, file: !411, line: 73, type: !430, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !432)
!507 = !DILocation(line: 75, column: 10, scope: !506)
!508 = !DILocation(line: 75, column: 3, scope: !506)
!509 = distinct !DISubprogram(name: "putchar", scope: !411, file: !411, line: 82, type: !510, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !512)
!510 = !DISubroutineType(types: !511)
!511 = !{!380, !380}
!512 = !{!513}
!513 = !DILocalVariable(name: "__c", arg: 1, scope: !509, file: !411, line: 82, type: !380)
!514 = !DILocation(line: 0, scope: !509)
!515 = !DILocation(line: 84, column: 21, scope: !509)
!516 = !DILocation(line: 84, column: 10, scope: !509)
!517 = !DILocation(line: 84, column: 3, scope: !509)
!518 = distinct !DISubprogram(name: "fputc_unlocked", scope: !411, file: !411, line: 91, type: !519, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!380, !380, !439}
!521 = !{!522, !523}
!522 = !DILocalVariable(name: "__c", arg: 1, scope: !518, file: !411, line: 91, type: !380)
!523 = !DILocalVariable(name: "__stream", arg: 2, scope: !518, file: !411, line: 91, type: !439)
!524 = !DILocation(line: 0, scope: !518)
!525 = !DILocation(line: 93, column: 10, scope: !518)
!526 = !DILocation(line: 93, column: 3, scope: !518)
!527 = distinct !DISubprogram(name: "putc_unlocked", scope: !411, file: !411, line: 101, type: !519, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !528)
!528 = !{!529, !530}
!529 = !DILocalVariable(name: "__c", arg: 1, scope: !527, file: !411, line: 101, type: !380)
!530 = !DILocalVariable(name: "__stream", arg: 2, scope: !527, file: !411, line: 101, type: !439)
!531 = !DILocation(line: 0, scope: !527)
!532 = !DILocation(line: 103, column: 10, scope: !527)
!533 = !DILocation(line: 103, column: 3, scope: !527)
!534 = distinct !DISubprogram(name: "putchar_unlocked", scope: !411, file: !411, line: 108, type: !510, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !535)
!535 = !{!536}
!536 = !DILocalVariable(name: "__c", arg: 1, scope: !534, file: !411, line: 108, type: !380)
!537 = !DILocation(line: 0, scope: !534)
!538 = !DILocation(line: 110, column: 10, scope: !534)
!539 = !DILocation(line: 110, column: 3, scope: !534)
!540 = distinct !DISubprogram(name: "getline", scope: !411, file: !411, line: 118, type: !541, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !545)
!541 = !DISubroutineType(types: !542)
!542 = !{!543, !381, !544, !439}
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !466, line: 193, baseType: !467)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!545 = !{!546, !547, !548}
!546 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !540, file: !411, line: 118, type: !381)
!547 = !DILocalVariable(name: "__n", arg: 2, scope: !540, file: !411, line: 118, type: !544)
!548 = !DILocalVariable(name: "__stream", arg: 3, scope: !540, file: !411, line: 118, type: !439)
!549 = !DILocation(line: 0, scope: !540)
!550 = !DILocation(line: 120, column: 10, scope: !540)
!551 = !DILocation(line: 120, column: 3, scope: !540)
!552 = distinct !DISubprogram(name: "feof_unlocked", scope: !411, file: !411, line: 128, type: !437, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !553)
!553 = !{!554}
!554 = !DILocalVariable(name: "__stream", arg: 1, scope: !552, file: !411, line: 128, type: !439)
!555 = !DILocation(line: 0, scope: !552)
!556 = !DILocation(line: 130, column: 10, scope: !552)
!557 = !DILocation(line: 130, column: 3, scope: !552)
!558 = distinct !DISubprogram(name: "ferror_unlocked", scope: !411, file: !411, line: 135, type: !437, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !559)
!559 = !{!560}
!560 = !DILocalVariable(name: "__stream", arg: 1, scope: !558, file: !411, line: 135, type: !439)
!561 = !DILocation(line: 0, scope: !558)
!562 = !DILocation(line: 137, column: 10, scope: !558)
!563 = !DILocation(line: 137, column: 3, scope: !558)
!564 = distinct !DISubprogram(name: "tolower", scope: !565, file: !565, line: 207, type: !510, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !566)
!565 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!566 = !{!567}
!567 = !DILocalVariable(name: "__c", arg: 1, scope: !564, file: !565, line: 207, type: !380)
!568 = !DILocation(line: 0, scope: !564)
!569 = !DILocation(line: 209, column: 22, scope: !564)
!570 = !DILocation(line: 209, column: 39, scope: !564)
!571 = !DILocation(line: 209, column: 38, scope: !564)
!572 = !DILocation(line: 209, column: 37, scope: !564)
!573 = !DILocation(line: 209, column: 10, scope: !564)
!574 = !DILocation(line: 209, column: 3, scope: !564)
!575 = distinct !DISubprogram(name: "toupper", scope: !565, file: !565, line: 213, type: !510, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !576)
!576 = !{!577}
!577 = !DILocalVariable(name: "__c", arg: 1, scope: !575, file: !565, line: 213, type: !380)
!578 = !DILocation(line: 0, scope: !575)
!579 = !DILocation(line: 215, column: 22, scope: !575)
!580 = !DILocation(line: 215, column: 39, scope: !575)
!581 = !DILocation(line: 215, column: 38, scope: !575)
!582 = !DILocation(line: 215, column: 37, scope: !575)
!583 = !DILocation(line: 215, column: 10, scope: !575)
!584 = !DILocation(line: 215, column: 3, scope: !575)
!585 = distinct !DISubprogram(name: "atoi", scope: !586, file: !586, line: 361, type: !587, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !589)
!586 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!587 = !DISubroutineType(types: !588)
!588 = !{!380, !385}
!589 = !{!590}
!590 = !DILocalVariable(name: "__nptr", arg: 1, scope: !585, file: !586, line: 361, type: !385)
!591 = !DILocation(line: 0, scope: !585)
!592 = !DILocation(line: 363, column: 16, scope: !585)
!593 = !DILocation(line: 363, column: 10, scope: !585)
!594 = !DILocation(line: 363, column: 3, scope: !585)
!595 = distinct !DISubprogram(name: "atol", scope: !586, file: !586, line: 366, type: !596, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!467, !385}
!598 = !{!599}
!599 = !DILocalVariable(name: "__nptr", arg: 1, scope: !595, file: !586, line: 366, type: !385)
!600 = !DILocation(line: 0, scope: !595)
!601 = !DILocation(line: 368, column: 10, scope: !595)
!602 = !DILocation(line: 368, column: 3, scope: !595)
!603 = distinct !DISubprogram(name: "atoll", scope: !586, file: !586, line: 373, type: !604, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !607)
!604 = !DISubroutineType(types: !605)
!605 = !{!606, !385}
!606 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!607 = !{!608}
!608 = !DILocalVariable(name: "__nptr", arg: 1, scope: !603, file: !586, line: 373, type: !385)
!609 = !DILocation(line: 0, scope: !603)
!610 = !DILocation(line: 375, column: 10, scope: !603)
!611 = !DILocation(line: 375, column: 3, scope: !603)
!612 = distinct !DISubprogram(name: "bsearch", scope: !613, file: !613, line: 20, type: !614, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !622)
!613 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!614 = !DISubroutineType(types: !615)
!615 = !{!384, !616, !616, !488, !488, !618}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !586, line: 808, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!380, !616, !616}
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632}
!623 = !DILocalVariable(name: "__key", arg: 1, scope: !612, file: !613, line: 20, type: !616)
!624 = !DILocalVariable(name: "__base", arg: 2, scope: !612, file: !613, line: 20, type: !616)
!625 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !612, file: !613, line: 20, type: !488)
!626 = !DILocalVariable(name: "__size", arg: 4, scope: !612, file: !613, line: 20, type: !488)
!627 = !DILocalVariable(name: "__compar", arg: 5, scope: !612, file: !613, line: 21, type: !618)
!628 = !DILocalVariable(name: "__l", scope: !612, file: !613, line: 23, type: !488)
!629 = !DILocalVariable(name: "__u", scope: !612, file: !613, line: 23, type: !488)
!630 = !DILocalVariable(name: "__idx", scope: !612, file: !613, line: 23, type: !488)
!631 = !DILocalVariable(name: "__p", scope: !612, file: !613, line: 24, type: !616)
!632 = !DILocalVariable(name: "__comparison", scope: !612, file: !613, line: 25, type: !380)
!633 = !DILocation(line: 0, scope: !612)
!634 = !DILocation(line: 29, column: 3, scope: !612)
!635 = !DILocation(line: 27, column: 7, scope: !612)
!636 = !DILocation(line: 29, column: 14, scope: !612)
!637 = !DILocation(line: 31, column: 20, scope: !638)
!638 = distinct !DILexicalBlock(scope: !612, file: !613, line: 30, column: 5)
!639 = !DILocation(line: 31, column: 27, scope: !638)
!640 = !DILocation(line: 32, column: 56, scope: !638)
!641 = !DILocation(line: 32, column: 47, scope: !638)
!642 = !DILocation(line: 33, column: 22, scope: !638)
!643 = !DILocation(line: 34, column: 24, scope: !644)
!644 = distinct !DILexicalBlock(scope: !638, file: !613, line: 34, column: 11)
!645 = !DILocation(line: 34, column: 11, scope: !638)
!646 = !DILocation(line: 36, column: 29, scope: !647)
!647 = distinct !DILexicalBlock(scope: !644, file: !613, line: 36, column: 16)
!648 = !DILocation(line: 36, column: 16, scope: !644)
!649 = !DILocation(line: 37, column: 14, scope: !647)
!650 = distinct !{!650, !634, !651}
!651 = !DILocation(line: 40, column: 5, scope: !612)
!652 = !DILocation(line: 43, column: 1, scope: !612)
!653 = distinct !DISubprogram(name: "atof", scope: !654, file: !654, line: 25, type: !655, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !658)
!654 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!655 = !DISubroutineType(types: !656)
!656 = !{!657, !385}
!657 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!658 = !{!659}
!659 = !DILocalVariable(name: "__nptr", arg: 1, scope: !653, file: !654, line: 25, type: !385)
!660 = !DILocation(line: 0, scope: !653)
!661 = !DILocation(line: 27, column: 10, scope: !653)
!662 = !DILocation(line: 27, column: 3, scope: !653)
!663 = distinct !DISubprogram(name: "strtoimax", scope: !664, file: !664, line: 324, type: !665, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !671)
!664 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!665 = !DISubroutineType(types: !666)
!666 = !{!667, !414, !670, !380}
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !668, line: 101, baseType: !669)
!668 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !466, line: 72, baseType: !467)
!670 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !381)
!671 = !{!672, !673, !674}
!672 = !DILocalVariable(name: "nptr", arg: 1, scope: !663, file: !664, line: 324, type: !414)
!673 = !DILocalVariable(name: "endptr", arg: 2, scope: !663, file: !664, line: 324, type: !670)
!674 = !DILocalVariable(name: "base", arg: 3, scope: !663, file: !664, line: 324, type: !380)
!675 = !DILocation(line: 0, scope: !663)
!676 = !DILocation(line: 327, column: 10, scope: !663)
!677 = !DILocation(line: 327, column: 3, scope: !663)
!678 = distinct !DISubprogram(name: "strtoumax", scope: !664, file: !664, line: 336, type: !679, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !683)
!679 = !DISubroutineType(types: !680)
!680 = !{!681, !414, !670, !380}
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !668, line: 102, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !466, line: 73, baseType: !397)
!683 = !{!684, !685, !686}
!684 = !DILocalVariable(name: "nptr", arg: 1, scope: !678, file: !664, line: 336, type: !414)
!685 = !DILocalVariable(name: "endptr", arg: 2, scope: !678, file: !664, line: 336, type: !670)
!686 = !DILocalVariable(name: "base", arg: 3, scope: !678, file: !664, line: 336, type: !380)
!687 = !DILocation(line: 0, scope: !678)
!688 = !DILocation(line: 339, column: 10, scope: !678)
!689 = !DILocation(line: 339, column: 3, scope: !678)
!690 = distinct !DISubprogram(name: "wcstoimax", scope: !664, file: !664, line: 348, type: !691, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !700)
!691 = !DISubroutineType(types: !692)
!692 = !{!667, !693, !697, !380}
!693 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !696)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !664, line: 34, baseType: !380)
!697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!700 = !{!701, !702, !703}
!701 = !DILocalVariable(name: "nptr", arg: 1, scope: !690, file: !664, line: 348, type: !693)
!702 = !DILocalVariable(name: "endptr", arg: 2, scope: !690, file: !664, line: 348, type: !697)
!703 = !DILocalVariable(name: "base", arg: 3, scope: !690, file: !664, line: 348, type: !380)
!704 = !DILocation(line: 0, scope: !690)
!705 = !DILocation(line: 351, column: 10, scope: !690)
!706 = !DILocation(line: 351, column: 3, scope: !690)
!707 = distinct !DISubprogram(name: "wcstoumax", scope: !664, file: !664, line: 362, type: !708, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !710)
!708 = !DISubroutineType(types: !709)
!709 = !{!681, !693, !697, !380}
!710 = !{!711, !712, !713}
!711 = !DILocalVariable(name: "nptr", arg: 1, scope: !707, file: !664, line: 362, type: !693)
!712 = !DILocalVariable(name: "endptr", arg: 2, scope: !707, file: !664, line: 362, type: !697)
!713 = !DILocalVariable(name: "base", arg: 3, scope: !707, file: !664, line: 362, type: !380)
!714 = !DILocation(line: 0, scope: !707)
!715 = !DILocation(line: 365, column: 10, scope: !707)
!716 = !DILocation(line: 365, column: 3, scope: !707)
!717 = distinct !DISubprogram(name: "stat", scope: !718, file: !718, line: 453, type: !719, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !758)
!718 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!719 = !DISubroutineType(types: !720)
!720 = !{!380, !385, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !723, line: 46, size: 1152, elements: !724)
!723 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!724 = !{!725, !727, !729, !731, !733, !735, !737, !738, !739, !740, !742, !744, !752, !753, !754}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !722, file: !723, line: 48, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !466, line: 145, baseType: !397)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !722, file: !723, line: 53, baseType: !728, size: 64, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !466, line: 148, baseType: !397)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !722, file: !723, line: 61, baseType: !730, size: 64, offset: 128)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !466, line: 151, baseType: !397)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !722, file: !723, line: 62, baseType: !732, size: 32, offset: 192)
!732 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !466, line: 150, baseType: !7)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !722, file: !723, line: 64, baseType: !734, size: 32, offset: 224)
!734 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !466, line: 146, baseType: !7)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !722, file: !723, line: 65, baseType: !736, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !466, line: 147, baseType: !7)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !722, file: !723, line: 67, baseType: !380, size: 32, offset: 288)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !722, file: !723, line: 69, baseType: !726, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !722, file: !723, line: 74, baseType: !465, size: 64, offset: 384)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !722, file: !723, line: 78, baseType: !741, size: 64, offset: 448)
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !466, line: 174, baseType: !467)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !722, file: !723, line: 80, baseType: !743, size: 64, offset: 512)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !466, line: 179, baseType: !467)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !722, file: !723, line: 91, baseType: !745, size: 128, offset: 576)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !746, line: 10, size: 128, elements: !747)
!746 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!747 = !{!748, !750}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !745, file: !746, line: 12, baseType: !749, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !466, line: 160, baseType: !467)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !745, file: !746, line: 16, baseType: !751, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !466, line: 196, baseType: !467)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !722, file: !723, line: 92, baseType: !745, size: 128, offset: 704)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !722, file: !723, line: 93, baseType: !745, size: 128, offset: 832)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !722, file: !723, line: 106, baseType: !755, size: 192, offset: 960)
!755 = !DICompositeType(tag: DW_TAG_array_type, baseType: !751, size: 192, elements: !756)
!756 = !{!757}
!757 = !DISubrange(count: 3)
!758 = !{!759, !760}
!759 = !DILocalVariable(name: "__path", arg: 1, scope: !717, file: !718, line: 453, type: !385)
!760 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !717, file: !718, line: 453, type: !721)
!761 = !DILocation(line: 0, scope: !717)
!762 = !DILocation(line: 455, column: 10, scope: !717)
!763 = !DILocation(line: 455, column: 3, scope: !717)
!764 = distinct !DISubprogram(name: "lstat", scope: !718, file: !718, line: 460, type: !719, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !765)
!765 = !{!766, !767}
!766 = !DILocalVariable(name: "__path", arg: 1, scope: !764, file: !718, line: 460, type: !385)
!767 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !764, file: !718, line: 460, type: !721)
!768 = !DILocation(line: 0, scope: !764)
!769 = !DILocation(line: 462, column: 10, scope: !764)
!770 = !DILocation(line: 462, column: 3, scope: !764)
!771 = distinct !DISubprogram(name: "fstat", scope: !718, file: !718, line: 467, type: !772, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !774)
!772 = !DISubroutineType(types: !773)
!773 = !{!380, !380, !721}
!774 = !{!775, !776}
!775 = !DILocalVariable(name: "__fd", arg: 1, scope: !771, file: !718, line: 467, type: !380)
!776 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !771, file: !718, line: 467, type: !721)
!777 = !DILocation(line: 0, scope: !771)
!778 = !DILocation(line: 469, column: 10, scope: !771)
!779 = !DILocation(line: 469, column: 3, scope: !771)
!780 = distinct !DISubprogram(name: "fstatat", scope: !718, file: !718, line: 474, type: !781, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !783)
!781 = !DISubroutineType(types: !782)
!782 = !{!380, !380, !385, !721, !380}
!783 = !{!784, !785, !786, !787}
!784 = !DILocalVariable(name: "__fd", arg: 1, scope: !780, file: !718, line: 474, type: !380)
!785 = !DILocalVariable(name: "__filename", arg: 2, scope: !780, file: !718, line: 474, type: !385)
!786 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !780, file: !718, line: 474, type: !721)
!787 = !DILocalVariable(name: "__flag", arg: 4, scope: !780, file: !718, line: 474, type: !380)
!788 = !DILocation(line: 0, scope: !780)
!789 = !DILocation(line: 477, column: 10, scope: !780)
!790 = !DILocation(line: 477, column: 3, scope: !780)
!791 = distinct !DISubprogram(name: "mknod", scope: !718, file: !718, line: 483, type: !792, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !794)
!792 = !DISubroutineType(types: !793)
!793 = !{!380, !385, !732, !726}
!794 = !{!795, !796, !797}
!795 = !DILocalVariable(name: "__path", arg: 1, scope: !791, file: !718, line: 483, type: !385)
!796 = !DILocalVariable(name: "__mode", arg: 2, scope: !791, file: !718, line: 483, type: !732)
!797 = !DILocalVariable(name: "__dev", arg: 3, scope: !791, file: !718, line: 483, type: !726)
!798 = !DILocation(line: 0, scope: !791)
!799 = !DILocation(line: 485, column: 10, scope: !791)
!800 = !DILocation(line: 485, column: 3, scope: !791)
!801 = distinct !DISubprogram(name: "mknodat", scope: !718, file: !718, line: 491, type: !802, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !804)
!802 = !DISubroutineType(types: !803)
!803 = !{!380, !380, !385, !732, !726}
!804 = !{!805, !806, !807, !808}
!805 = !DILocalVariable(name: "__fd", arg: 1, scope: !801, file: !718, line: 491, type: !380)
!806 = !DILocalVariable(name: "__path", arg: 2, scope: !801, file: !718, line: 491, type: !385)
!807 = !DILocalVariable(name: "__mode", arg: 3, scope: !801, file: !718, line: 491, type: !732)
!808 = !DILocalVariable(name: "__dev", arg: 4, scope: !801, file: !718, line: 491, type: !726)
!809 = !DILocation(line: 0, scope: !801)
!810 = !DILocation(line: 494, column: 10, scope: !801)
!811 = !DILocation(line: 494, column: 3, scope: !801)
!812 = distinct !DISubprogram(name: "stat64", scope: !718, file: !718, line: 502, type: !813, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !835)
!813 = !DISubroutineType(types: !814)
!814 = !{!380, !385, !815}
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !723, line: 119, size: 1152, elements: !817)
!817 = !{!818, !819, !821, !822, !823, !824, !825, !826, !827, !828, !829, !831, !832, !833, !834}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !816, file: !723, line: 121, baseType: !726, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !816, file: !723, line: 123, baseType: !820, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !466, line: 149, baseType: !397)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !816, file: !723, line: 124, baseType: !730, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !816, file: !723, line: 125, baseType: !732, size: 32, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !816, file: !723, line: 132, baseType: !734, size: 32, offset: 224)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !816, file: !723, line: 133, baseType: !736, size: 32, offset: 256)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !816, file: !723, line: 135, baseType: !380, size: 32, offset: 288)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !816, file: !723, line: 136, baseType: !726, size: 64, offset: 320)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !816, file: !723, line: 137, baseType: !465, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !816, file: !723, line: 143, baseType: !741, size: 64, offset: 448)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !816, file: !723, line: 144, baseType: !830, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !466, line: 180, baseType: !467)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !816, file: !723, line: 152, baseType: !745, size: 128, offset: 576)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !816, file: !723, line: 153, baseType: !745, size: 128, offset: 704)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !816, file: !723, line: 154, baseType: !745, size: 128, offset: 832)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !816, file: !723, line: 164, baseType: !755, size: 192, offset: 960)
!835 = !{!836, !837}
!836 = !DILocalVariable(name: "__path", arg: 1, scope: !812, file: !718, line: 502, type: !385)
!837 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !812, file: !718, line: 502, type: !815)
!838 = !DILocation(line: 0, scope: !812)
!839 = !DILocation(line: 504, column: 10, scope: !812)
!840 = !DILocation(line: 504, column: 3, scope: !812)
!841 = distinct !DISubprogram(name: "lstat64", scope: !718, file: !718, line: 509, type: !813, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !842)
!842 = !{!843, !844}
!843 = !DILocalVariable(name: "__path", arg: 1, scope: !841, file: !718, line: 509, type: !385)
!844 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !841, file: !718, line: 509, type: !815)
!845 = !DILocation(line: 0, scope: !841)
!846 = !DILocation(line: 511, column: 10, scope: !841)
!847 = !DILocation(line: 511, column: 3, scope: !841)
!848 = distinct !DISubprogram(name: "fstat64", scope: !718, file: !718, line: 516, type: !849, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{!380, !380, !815}
!851 = !{!852, !853}
!852 = !DILocalVariable(name: "__fd", arg: 1, scope: !848, file: !718, line: 516, type: !380)
!853 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !848, file: !718, line: 516, type: !815)
!854 = !DILocation(line: 0, scope: !848)
!855 = !DILocation(line: 518, column: 10, scope: !848)
!856 = !DILocation(line: 518, column: 3, scope: !848)
!857 = distinct !DISubprogram(name: "fstatat64", scope: !718, file: !718, line: 523, type: !858, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !860)
!858 = !DISubroutineType(types: !859)
!859 = !{!380, !380, !385, !815, !380}
!860 = !{!861, !862, !863, !864}
!861 = !DILocalVariable(name: "__fd", arg: 1, scope: !857, file: !718, line: 523, type: !380)
!862 = !DILocalVariable(name: "__filename", arg: 2, scope: !857, file: !718, line: 523, type: !385)
!863 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !857, file: !718, line: 523, type: !815)
!864 = !DILocalVariable(name: "__flag", arg: 4, scope: !857, file: !718, line: 523, type: !380)
!865 = !DILocation(line: 0, scope: !857)
!866 = !DILocation(line: 526, column: 10, scope: !857)
!867 = !DILocation(line: 526, column: 3, scope: !857)
!868 = distinct !DISubprogram(name: "sbitmap_alloc", scope: !3, file: !3, line: 73, type: !869, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !871)
!869 = !DISubroutineType(types: !870)
!870 = !{!387, !7}
!871 = !{!872, !873, !874, !875, !876}
!872 = !DILocalVariable(name: "n_elms", arg: 1, scope: !868, file: !3, line: 73, type: !7)
!873 = !DILocalVariable(name: "bytes", scope: !868, file: !3, line: 75, type: !7)
!874 = !DILocalVariable(name: "size", scope: !868, file: !3, line: 75, type: !7)
!875 = !DILocalVariable(name: "amt", scope: !868, file: !3, line: 75, type: !7)
!876 = !DILocalVariable(name: "bmap", scope: !868, file: !3, line: 76, type: !387)
!877 = !DILocation(line: 0, scope: !868)
!878 = !DILocation(line: 78, column: 10, scope: !868)
!879 = !DILocation(line: 79, column: 16, scope: !868)
!880 = !DILocation(line: 81, column: 11, scope: !868)
!881 = !DILocation(line: 82, column: 29, scope: !868)
!882 = !DILocation(line: 82, column: 20, scope: !868)
!883 = !DILocation(line: 82, column: 10, scope: !868)
!884 = !DILocation(line: 83, column: 9, scope: !868)
!885 = !DILocation(line: 83, column: 16, scope: !868)
!886 = !DILocation(line: 84, column: 9, scope: !868)
!887 = !DILocation(line: 84, column: 14, scope: !868)
!888 = !DILocation(line: 85, column: 9, scope: !868)
!889 = !DILocation(line: 85, column: 18, scope: !868)
!890 = !DILocation(line: 86, column: 3, scope: !868)
!891 = distinct !DISubprogram(name: "sbitmap_alloc_with_popcount", scope: !3, file: !3, line: 92, type: !869, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !892)
!892 = !{!893, !894}
!893 = !DILocalVariable(name: "n_elms", arg: 1, scope: !891, file: !3, line: 92, type: !7)
!894 = !DILocalVariable(name: "bmap", scope: !891, file: !3, line: 94, type: !895)
!895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!896 = !DILocation(line: 0, scope: !891)
!897 = !DILocation(line: 94, column: 24, scope: !891)
!898 = !DILocation(line: 95, column: 20, scope: !891)
!899 = !DILocation(line: 95, column: 9, scope: !891)
!900 = !DILocation(line: 95, column: 18, scope: !891)
!901 = !DILocation(line: 96, column: 3, scope: !891)
!902 = distinct !DISubprogram(name: "sbitmap_resize", scope: !3, file: !3, line: 104, type: !903, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !905)
!903 = !DISubroutineType(types: !904)
!904 = !{!387, !387, !7, !380}
!905 = !{!906, !907, !908, !909, !910, !911, !912}
!906 = !DILocalVariable(name: "bmap", arg: 1, scope: !902, file: !3, line: 104, type: !387)
!907 = !DILocalVariable(name: "n_elms", arg: 2, scope: !902, file: !3, line: 104, type: !7)
!908 = !DILocalVariable(name: "def", arg: 3, scope: !902, file: !3, line: 104, type: !380)
!909 = !DILocalVariable(name: "bytes", scope: !902, file: !3, line: 106, type: !7)
!910 = !DILocalVariable(name: "size", scope: !902, file: !3, line: 106, type: !7)
!911 = !DILocalVariable(name: "amt", scope: !902, file: !3, line: 106, type: !7)
!912 = !DILocalVariable(name: "last_bit", scope: !902, file: !3, line: 107, type: !7)
!913 = !DILocation(line: 0, scope: !902)
!914 = !DILocation(line: 109, column: 10, scope: !902)
!915 = !DILocation(line: 110, column: 16, scope: !902)
!916 = !DILocation(line: 111, column: 7, scope: !917)
!917 = distinct !DILexicalBlock(scope: !902, file: !3, line: 111, column: 7)
!918 = !DILocation(line: 111, column: 15, scope: !917)
!919 = !DILocation(line: 111, column: 13, scope: !917)
!920 = !DILocation(line: 111, column: 7, scope: !902)
!921 = !DILocation(line: 114, column: 14, scope: !922)
!922 = distinct !DILexicalBlock(scope: !917, file: !3, line: 112, column: 5)
!923 = !DILocation(line: 115, column: 34, scope: !922)
!924 = !DILocation(line: 115, column: 40, scope: !922)
!925 = !DILocation(line: 115, column: 24, scope: !922)
!926 = !DILocation(line: 115, column: 14, scope: !922)
!927 = !DILocation(line: 116, column: 17, scope: !928)
!928 = distinct !DILexicalBlock(scope: !922, file: !3, line: 116, column: 11)
!929 = !DILocation(line: 116, column: 11, scope: !928)
!930 = !DILocation(line: 116, column: 11, scope: !922)
!931 = !DILocation(line: 117, column: 19, scope: !928)
!932 = !DILocation(line: 117, column: 17, scope: !928)
!933 = !DILocation(line: 117, column: 2, scope: !928)
!934 = !DILocation(line: 120, column: 22, scope: !935)
!935 = distinct !DILexicalBlock(scope: !902, file: !3, line: 120, column: 7)
!936 = !DILocation(line: 120, column: 14, scope: !935)
!937 = !DILocation(line: 120, column: 7, scope: !902)
!938 = !DILocation(line: 122, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !940, file: !3, line: 122, column: 11)
!940 = distinct !DILexicalBlock(scope: !935, file: !3, line: 121, column: 5)
!941 = !DILocation(line: 0, scope: !939)
!942 = !DILocation(line: 122, column: 11, scope: !940)
!943 = !DILocation(line: 124, column: 4, scope: !944)
!944 = distinct !DILexicalBlock(scope: !939, file: !3, line: 123, column: 2)
!945 = !DILocation(line: 128, column: 21, scope: !944)
!946 = !DILocation(line: 128, column: 28, scope: !944)
!947 = !DILocation(line: 129, column: 8, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !3, line: 129, column: 8)
!949 = !DILocation(line: 129, column: 8, scope: !944)
!950 = !DILocation(line: 131, column: 55, scope: !948)
!951 = !DILocation(line: 131, column: 34, scope: !948)
!952 = !DILocation(line: 131, column: 11, scope: !948)
!953 = !DILocation(line: 130, column: 23, scope: !948)
!954 = !DILocation(line: 130, column: 28, scope: !948)
!955 = !DILocation(line: 130, column: 6, scope: !948)
!956 = !DILocation(line: 131, column: 8, scope: !948)
!957 = !DILocation(line: 134, column: 22, scope: !944)
!958 = !DILocation(line: 135, column: 8, scope: !959)
!959 = distinct !DILexicalBlock(scope: !944, file: !3, line: 135, column: 8)
!960 = !DILocation(line: 135, column: 8, scope: !944)
!961 = !DILocation(line: 137, column: 53, scope: !959)
!962 = !DILocation(line: 137, column: 32, scope: !959)
!963 = !DILocation(line: 136, column: 22, scope: !959)
!964 = !DILocation(line: 136, column: 6, scope: !959)
!965 = !DILocation(line: 137, column: 8, scope: !959)
!966 = !DILocation(line: 141, column: 4, scope: !967)
!967 = distinct !DILexicalBlock(scope: !939, file: !3, line: 140, column: 2)
!968 = !DILocation(line: 143, column: 14, scope: !969)
!969 = distinct !DILexicalBlock(scope: !967, file: !3, line: 143, column: 8)
!970 = !DILocation(line: 143, column: 8, scope: !969)
!971 = !DILocation(line: 143, column: 8, scope: !967)
!972 = !DILocation(line: 144, column: 37, scope: !969)
!973 = !DILocation(line: 144, column: 29, scope: !969)
!974 = !DILocation(line: 145, column: 8, scope: !969)
!975 = !DILocation(line: 146, column: 7, scope: !969)
!976 = !DILocation(line: 144, column: 6, scope: !969)
!977 = !DILocation(line: 150, column: 19, scope: !978)
!978 = distinct !DILexicalBlock(scope: !935, file: !3, line: 150, column: 12)
!979 = !DILocation(line: 150, column: 12, scope: !935)
!980 = !DILocation(line: 153, column: 25, scope: !981)
!981 = distinct !DILexicalBlock(scope: !978, file: !3, line: 151, column: 5)
!982 = !DILocation(line: 154, column: 11, scope: !983)
!983 = distinct !DILexicalBlock(scope: !981, file: !3, line: 154, column: 11)
!984 = !DILocation(line: 154, column: 11, scope: !981)
!985 = !DILocation(line: 157, column: 51, scope: !986)
!986 = distinct !DILexicalBlock(scope: !983, file: !3, line: 155, column: 2)
!987 = !DILocation(line: 157, column: 30, scope: !986)
!988 = !DILocation(line: 156, column: 20, scope: !986)
!989 = !DILocation(line: 156, column: 4, scope: !986)
!990 = !DILocation(line: 157, column: 6, scope: !986)
!991 = !DILocation(line: 158, column: 14, scope: !992)
!992 = distinct !DILexicalBlock(scope: !986, file: !3, line: 158, column: 8)
!993 = !DILocation(line: 158, column: 8, scope: !992)
!994 = !DILocation(line: 158, column: 8, scope: !986)
!995 = !DILocation(line: 159, column: 33, scope: !992)
!996 = !DILocation(line: 159, column: 12, scope: !992)
!997 = !DILocation(line: 159, column: 6, scope: !992)
!998 = !DILocation(line: 159, column: 31, scope: !992)
!999 = !DILocation(line: 163, column: 16, scope: !902)
!1000 = !DILocation(line: 164, column: 9, scope: !902)
!1001 = !DILocation(line: 164, column: 14, scope: !902)
!1002 = !DILocation(line: 165, column: 3, scope: !902)
!1003 = distinct !DISubprogram(name: "sbitmap_elt_popcount", scope: !3, file: !3, line: 1038, type: !1004, scopeLine: 1039, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1006)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!397, !397}
!1006 = !{!1007, !1008, !1009}
!1007 = !DILocalVariable(name: "a", arg: 1, scope: !1003, file: !3, line: 1038, type: !397)
!1008 = !DILocalVariable(name: "ret", scope: !1003, file: !3, line: 1040, type: !397)
!1009 = !DILocalVariable(name: "i", scope: !1003, file: !3, line: 1041, type: !7)
!1010 = !DILocation(line: 0, scope: !1003)
!1011 = !DILocation(line: 1043, column: 9, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1043, column: 7)
!1013 = !DILocation(line: 1043, column: 7, scope: !1003)
!1014 = !DILocation(line: 1047, column: 3, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !3, line: 1047, column: 3)
!1016 = !DILocation(line: 0, scope: !1015)
!1017 = !DILocation(line: 1047, column: 17, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 1047, column: 3)
!1019 = !DILocation(line: 1048, column: 30, scope: !1018)
!1020 = !DILocation(line: 1048, column: 36, scope: !1018)
!1021 = !DILocation(line: 1048, column: 12, scope: !1018)
!1022 = !DILocation(line: 1048, column: 9, scope: !1018)
!1023 = !DILocation(line: 1047, column: 39, scope: !1018)
!1024 = !DILocation(line: 1047, column: 3, scope: !1018)
!1025 = distinct !{!1025, !1014, !1026}
!1026 = !DILocation(line: 1048, column: 42, scope: !1015)
!1027 = !DILocation(line: 1050, column: 1, scope: !1003)
!1028 = distinct !DISubprogram(name: "sbitmap_realloc", scope: !3, file: !3, line: 171, type: !1029, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1031)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!387, !387, !7}
!1031 = !{!1032, !1033, !1034, !1035, !1036, !1037}
!1032 = !DILocalVariable(name: "src", arg: 1, scope: !1028, file: !3, line: 171, type: !387)
!1033 = !DILocalVariable(name: "n_elms", arg: 2, scope: !1028, file: !3, line: 171, type: !7)
!1034 = !DILocalVariable(name: "bytes", scope: !1028, file: !3, line: 173, type: !7)
!1035 = !DILocalVariable(name: "size", scope: !1028, file: !3, line: 173, type: !7)
!1036 = !DILocalVariable(name: "amt", scope: !1028, file: !3, line: 173, type: !7)
!1037 = !DILocalVariable(name: "bmap", scope: !1028, file: !3, line: 174, type: !387)
!1038 = !DILocation(line: 0, scope: !1028)
!1039 = !DILocation(line: 176, column: 10, scope: !1028)
!1040 = !DILocation(line: 177, column: 16, scope: !1028)
!1041 = !DILocation(line: 181, column: 7, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1028, file: !3, line: 181, column: 7)
!1043 = !DILocation(line: 181, column: 36, scope: !1042)
!1044 = !DILocation(line: 181, column: 33, scope: !1042)
!1045 = !DILocation(line: 181, column: 7, scope: !1028)
!1046 = !DILocation(line: 183, column: 12, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 182, column: 5)
!1048 = !DILocation(line: 183, column: 19, scope: !1047)
!1049 = !DILocation(line: 184, column: 7, scope: !1047)
!1050 = !DILocation(line: 179, column: 11, scope: !1028)
!1051 = !DILocation(line: 187, column: 30, scope: !1028)
!1052 = !DILocation(line: 187, column: 35, scope: !1028)
!1053 = !DILocation(line: 187, column: 20, scope: !1028)
!1054 = !DILocation(line: 187, column: 10, scope: !1028)
!1055 = !DILocation(line: 188, column: 9, scope: !1028)
!1056 = !DILocation(line: 188, column: 16, scope: !1028)
!1057 = !DILocation(line: 189, column: 9, scope: !1028)
!1058 = !DILocation(line: 189, column: 14, scope: !1028)
!1059 = !DILocation(line: 190, column: 3, scope: !1028)
!1060 = !DILocation(line: 191, column: 1, scope: !1028)
!1061 = distinct !DISubprogram(name: "sbitmap_vector_alloc", scope: !3, file: !3, line: 196, type: !1062, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1064)
!1062 = !DISubroutineType(types: !1063)
!1063 = !{!400, !7, !7}
!1064 = !{!1065, !1066, !1067, !1068, !1069, !1070, !1071, !1072, !1073, !1074, !1075, !1081, !1082}
!1065 = !DILocalVariable(name: "n_vecs", arg: 1, scope: !1061, file: !3, line: 196, type: !7)
!1066 = !DILocalVariable(name: "n_elms", arg: 2, scope: !1061, file: !3, line: 196, type: !7)
!1067 = !DILocalVariable(name: "i", scope: !1061, file: !3, line: 198, type: !7)
!1068 = !DILocalVariable(name: "bytes", scope: !1061, file: !3, line: 198, type: !7)
!1069 = !DILocalVariable(name: "offset", scope: !1061, file: !3, line: 198, type: !7)
!1070 = !DILocalVariable(name: "elm_bytes", scope: !1061, file: !3, line: 198, type: !7)
!1071 = !DILocalVariable(name: "size", scope: !1061, file: !3, line: 198, type: !7)
!1072 = !DILocalVariable(name: "amt", scope: !1061, file: !3, line: 198, type: !7)
!1073 = !DILocalVariable(name: "vector_bytes", scope: !1061, file: !3, line: 198, type: !7)
!1074 = !DILocalVariable(name: "bitmap_vector", scope: !1061, file: !3, line: 199, type: !400)
!1075 = !DILocalVariable(name: "align", scope: !1076, file: !3, line: 214, type: !1077)
!1076 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 212, column: 3)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1061, file: !3, line: 214, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !1077, file: !3, line: 214, baseType: !383, size: 8)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !1077, file: !3, line: 214, baseType: !397, size: 64, offset: 64)
!1081 = !DILocalVariable(name: "alignment", scope: !1076, file: !3, line: 215, type: !380)
!1082 = !DILocalVariable(name: "b", scope: !1083, file: !3, line: 224, type: !387)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 223, column: 5)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 222, column: 3)
!1085 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 222, column: 3)
!1086 = !DILocation(line: 0, scope: !1061)
!1087 = !DILocation(line: 201, column: 10, scope: !1061)
!1088 = !DILocation(line: 202, column: 16, scope: !1061)
!1089 = !DILocation(line: 204, column: 17, scope: !1061)
!1090 = !DILocation(line: 205, column: 25, scope: !1061)
!1091 = !DILocation(line: 219, column: 32, scope: !1061)
!1092 = !DILocation(line: 219, column: 22, scope: !1061)
!1093 = !DILocation(line: 220, column: 40, scope: !1061)
!1094 = !DILocation(line: 220, column: 31, scope: !1061)
!1095 = !DILocation(line: 220, column: 19, scope: !1061)
!1096 = !DILocation(line: 222, column: 40, scope: !1084)
!1097 = !DILocation(line: 222, column: 8, scope: !1085)
!1098 = !DILocation(line: 0, scope: !1085)
!1099 = !DILocation(line: 222, column: 3, scope: !1085)
!1100 = !DILocation(line: 224, column: 53, scope: !1083)
!1101 = !DILocation(line: 0, scope: !1083)
!1102 = !DILocation(line: 226, column: 7, scope: !1083)
!1103 = !DILocation(line: 226, column: 24, scope: !1083)
!1104 = !DILocation(line: 227, column: 10, scope: !1083)
!1105 = !DILocation(line: 227, column: 17, scope: !1083)
!1106 = !DILocation(line: 228, column: 10, scope: !1083)
!1107 = !DILocation(line: 228, column: 15, scope: !1083)
!1108 = !DILocation(line: 229, column: 10, scope: !1083)
!1109 = !DILocation(line: 229, column: 19, scope: !1083)
!1110 = !DILocation(line: 222, column: 62, scope: !1084)
!1111 = !DILocation(line: 222, column: 51, scope: !1084)
!1112 = !DILocation(line: 222, column: 3, scope: !1084)
!1113 = distinct !{!1113, !1099, !1114}
!1114 = !DILocation(line: 230, column: 5, scope: !1085)
!1115 = !DILocation(line: 232, column: 3, scope: !1061)
!1116 = distinct !DISubprogram(name: "sbitmap_copy", scope: !3, file: !3, line: 238, type: !1117, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1122)
!1117 = !DISubroutineType(types: !1118)
!1118 = !{null, !387, !1119}
!1119 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap", file: !388, line: 46, baseType: !1120)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!1122 = !{!1123, !1124}
!1123 = !DILocalVariable(name: "dst", arg: 1, scope: !1116, file: !3, line: 238, type: !387)
!1124 = !DILocalVariable(name: "src", arg: 2, scope: !1116, file: !3, line: 238, type: !1119)
!1125 = !DILocation(line: 0, scope: !1116)
!1126 = !DILocation(line: 240, column: 11, scope: !1116)
!1127 = !DILocation(line: 240, column: 22, scope: !1116)
!1128 = !DILocation(line: 240, column: 66, scope: !1116)
!1129 = !DILocation(line: 240, column: 61, scope: !1116)
!1130 = !DILocation(line: 240, column: 59, scope: !1116)
!1131 = !DILocation(line: 240, column: 3, scope: !1116)
!1132 = !DILocation(line: 241, column: 12, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 241, column: 7)
!1134 = !DILocation(line: 241, column: 7, scope: !1133)
!1135 = !DILocation(line: 241, column: 7, scope: !1116)
!1136 = !DILocation(line: 242, column: 33, scope: !1133)
!1137 = !DILocation(line: 242, column: 73, scope: !1133)
!1138 = !DILocation(line: 242, column: 68, scope: !1133)
!1139 = !DILocation(line: 242, column: 5, scope: !1133)
!1140 = !DILocation(line: 243, column: 1, scope: !1116)
!1141 = distinct !DISubprogram(name: "sbitmap_copy_n", scope: !3, file: !3, line: 248, type: !1142, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1144)
!1142 = !DISubroutineType(types: !1143)
!1143 = !{null, !387, !1119, !7}
!1144 = !{!1145, !1146, !1147}
!1145 = !DILocalVariable(name: "dst", arg: 1, scope: !1141, file: !3, line: 248, type: !387)
!1146 = !DILocalVariable(name: "src", arg: 2, scope: !1141, file: !3, line: 248, type: !1119)
!1147 = !DILocalVariable(name: "n", arg: 3, scope: !1141, file: !3, line: 248, type: !7)
!1148 = !DILocation(line: 0, scope: !1141)
!1149 = !DILocation(line: 250, column: 11, scope: !1141)
!1150 = !DILocation(line: 250, column: 22, scope: !1141)
!1151 = !DILocation(line: 250, column: 61, scope: !1141)
!1152 = !DILocation(line: 250, column: 59, scope: !1141)
!1153 = !DILocation(line: 250, column: 3, scope: !1141)
!1154 = !DILocation(line: 251, column: 12, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 251, column: 7)
!1156 = !DILocation(line: 251, column: 7, scope: !1155)
!1157 = !DILocation(line: 251, column: 7, scope: !1141)
!1158 = !DILocation(line: 252, column: 33, scope: !1155)
!1159 = !DILocation(line: 252, column: 5, scope: !1155)
!1160 = !DILocation(line: 253, column: 1, scope: !1141)
!1161 = distinct !DISubprogram(name: "sbitmap_equal", scope: !3, file: !3, line: 257, type: !1162, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1164)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!380, !1119, !1119}
!1164 = !{!1165, !1166}
!1165 = !DILocalVariable(name: "a", arg: 1, scope: !1161, file: !3, line: 257, type: !1119)
!1166 = !DILocalVariable(name: "b", arg: 2, scope: !1161, file: !3, line: 257, type: !1119)
!1167 = !DILocation(line: 0, scope: !1161)
!1168 = !DILocation(line: 259, column: 19, scope: !1161)
!1169 = !DILocation(line: 259, column: 28, scope: !1161)
!1170 = !DILocation(line: 259, column: 68, scope: !1161)
!1171 = !DILocation(line: 259, column: 65, scope: !1161)
!1172 = !DILocation(line: 259, column: 63, scope: !1161)
!1173 = !DILocation(line: 259, column: 11, scope: !1161)
!1174 = !DILocation(line: 259, column: 10, scope: !1161)
!1175 = !DILocation(line: 259, column: 3, scope: !1161)
!1176 = distinct !DISubprogram(name: "sbitmap_empty_p", scope: !3, file: !3, line: 265, type: !1177, scopeLine: 266, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1179)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!379, !1119}
!1179 = !{!1180, !1181}
!1180 = !DILocalVariable(name: "bmap", arg: 1, scope: !1176, file: !3, line: 265, type: !1119)
!1181 = !DILocalVariable(name: "i", scope: !1176, file: !3, line: 267, type: !7)
!1182 = !DILocation(line: 0, scope: !1176)
!1183 = !DILocation(line: 0, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 268, column: 3)
!1185 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 268, column: 3)
!1186 = !DILocation(line: 268, column: 8, scope: !1185)
!1187 = !DILocation(line: 0, scope: !1185)
!1188 = !DILocation(line: 268, column: 14, scope: !1184)
!1189 = !DILocation(line: 268, column: 3, scope: !1185)
!1190 = !DILocation(line: 269, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 269, column: 9)
!1192 = !DILocation(line: 269, column: 9, scope: !1184)
!1193 = !DILocation(line: 268, column: 28, scope: !1184)
!1194 = !DILocation(line: 268, column: 3, scope: !1184)
!1195 = distinct !{!1195, !1189, !1196}
!1196 = !DILocation(line: 270, column: 14, scope: !1185)
!1197 = !DILocation(line: 273, column: 1, scope: !1176)
!1198 = distinct !DISubprogram(name: "sbitmap_range_empty_p", scope: !3, file: !3, line: 279, type: !1199, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1201)
!1199 = !DISubroutineType(types: !1200)
!1200 = !{!379, !1119, !7, !7}
!1201 = !{!1202, !1203, !1204, !1205, !1206, !1207}
!1202 = !DILocalVariable(name: "bmap", arg: 1, scope: !1198, file: !3, line: 279, type: !1119)
!1203 = !DILocalVariable(name: "start", arg: 2, scope: !1198, file: !3, line: 279, type: !7)
!1204 = !DILocalVariable(name: "n", arg: 3, scope: !1198, file: !3, line: 279, type: !7)
!1205 = !DILocalVariable(name: "i", scope: !1198, file: !3, line: 281, type: !7)
!1206 = !DILocalVariable(name: "elm", scope: !1198, file: !3, line: 282, type: !397)
!1207 = !DILocalVariable(name: "shift", scope: !1198, file: !3, line: 283, type: !7)
!1208 = !DILocation(line: 0, scope: !1198)
!1209 = !DILocation(line: 281, column: 26, scope: !1198)
!1210 = !DILocation(line: 283, column: 30, scope: !1198)
!1211 = !DILocation(line: 285, column: 3, scope: !1198)
!1212 = !DILocation(line: 287, column: 9, scope: !1198)
!1213 = !DILocation(line: 288, column: 13, scope: !1198)
!1214 = !DILocation(line: 290, column: 13, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 290, column: 7)
!1216 = !DILocation(line: 290, column: 17, scope: !1215)
!1217 = !DILocation(line: 290, column: 7, scope: !1198)
!1218 = !DILocation(line: 293, column: 21, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 293, column: 11)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 291, column: 5)
!1221 = !DILocation(line: 293, column: 11, scope: !1220)
!1222 = !DILocation(line: 294, column: 26, scope: !1219)
!1223 = !DILocation(line: 294, column: 16, scope: !1219)
!1224 = !DILocation(line: 294, column: 13, scope: !1219)
!1225 = !DILocation(line: 294, column: 9, scope: !1219)
!1226 = !DILocation(line: 295, column: 19, scope: !1220)
!1227 = !DILocation(line: 295, column: 7, scope: !1220)
!1228 = !DILocation(line: 298, column: 7, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 298, column: 7)
!1230 = !DILocation(line: 298, column: 7, scope: !1198)
!1231 = !DILocation(line: 301, column: 5, scope: !1198)
!1232 = !DILocation(line: 305, column: 3, scope: !1198)
!1233 = !DILocation(line: 305, column: 12, scope: !1198)
!1234 = !DILocation(line: 307, column: 11, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 307, column: 11)
!1236 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 306, column: 5)
!1237 = !DILocation(line: 307, column: 11, scope: !1236)
!1238 = !DILocation(line: 310, column: 9, scope: !1236)
!1239 = distinct !{!1239, !1232, !1240}
!1240 = !DILocation(line: 311, column: 5, scope: !1198)
!1241 = !DILocation(line: 314, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 314, column: 7)
!1243 = !DILocation(line: 314, column: 7, scope: !1198)
!1244 = !DILocation(line: 316, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 315, column: 5)
!1246 = !DILocation(line: 317, column: 24, scope: !1245)
!1247 = !DILocation(line: 317, column: 14, scope: !1245)
!1248 = !DILocation(line: 317, column: 11, scope: !1245)
!1249 = !DILocation(line: 318, column: 19, scope: !1245)
!1250 = !DILocation(line: 318, column: 7, scope: !1245)
!1251 = !DILocation(line: 322, column: 1, scope: !1198)
!1252 = distinct !DISubprogram(name: "sbitmap_zero", scope: !3, file: !3, line: 329, type: !1253, scopeLine: 330, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1255)
!1253 = !DISubroutineType(types: !1254)
!1254 = !{null, !387}
!1255 = !{!1256}
!1256 = !DILocalVariable(name: "bmap", arg: 1, scope: !1252, file: !3, line: 329, type: !387)
!1257 = !DILocation(line: 0, scope: !1252)
!1258 = !DILocation(line: 331, column: 11, scope: !1252)
!1259 = !DILocation(line: 331, column: 26, scope: !1252)
!1260 = !DILocation(line: 331, column: 3, scope: !1252)
!1261 = !DILocation(line: 332, column: 13, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 332, column: 7)
!1263 = !DILocation(line: 332, column: 7, scope: !1262)
!1264 = !DILocation(line: 332, column: 7, scope: !1252)
!1265 = !DILocation(line: 333, column: 38, scope: !1262)
!1266 = !DILocation(line: 333, column: 32, scope: !1262)
!1267 = !DILocation(line: 333, column: 5, scope: !1262)
!1268 = !DILocation(line: 334, column: 1, scope: !1252)
!1269 = distinct !DISubprogram(name: "sbitmap_ones", scope: !3, file: !3, line: 339, type: !1253, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1270)
!1270 = !{!1271, !1272}
!1271 = !DILocalVariable(name: "bmap", arg: 1, scope: !1269, file: !3, line: 339, type: !387)
!1272 = !DILocalVariable(name: "last_bit", scope: !1269, file: !3, line: 341, type: !7)
!1273 = !DILocation(line: 0, scope: !1269)
!1274 = !DILocation(line: 343, column: 11, scope: !1269)
!1275 = !DILocation(line: 343, column: 27, scope: !1269)
!1276 = !DILocation(line: 343, column: 3, scope: !1269)
!1277 = !DILocation(line: 344, column: 13, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 344, column: 7)
!1279 = !DILocation(line: 344, column: 7, scope: !1278)
!1280 = !DILocation(line: 344, column: 7, scope: !1269)
!1281 = !DILocation(line: 345, column: 39, scope: !1278)
!1282 = !DILocation(line: 345, column: 33, scope: !1278)
!1283 = !DILocation(line: 345, column: 5, scope: !1278)
!1284 = !DILocation(line: 347, column: 20, scope: !1269)
!1285 = !DILocation(line: 347, column: 27, scope: !1269)
!1286 = !DILocation(line: 348, column: 7, scope: !1287)
!1287 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 348, column: 7)
!1288 = !DILocation(line: 348, column: 7, scope: !1269)
!1289 = !DILocation(line: 351, column: 46, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 349, column: 5)
!1291 = !DILocation(line: 351, column: 25, scope: !1290)
!1292 = !DILocation(line: 350, column: 24, scope: !1290)
!1293 = !DILocation(line: 350, column: 29, scope: !1290)
!1294 = !DILocation(line: 350, column: 7, scope: !1290)
!1295 = !DILocation(line: 351, column: 2, scope: !1290)
!1296 = !DILocation(line: 352, column: 17, scope: !1297)
!1297 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 352, column: 11)
!1298 = !DILocation(line: 352, column: 11, scope: !1297)
!1299 = !DILocation(line: 352, column: 11, scope: !1290)
!1300 = !DILocation(line: 354, column: 6, scope: !1297)
!1301 = !DILocation(line: 353, column: 8, scope: !1297)
!1302 = !DILocation(line: 353, column: 23, scope: !1297)
!1303 = !DILocation(line: 353, column: 28, scope: !1297)
!1304 = !DILocation(line: 353, column: 2, scope: !1297)
!1305 = !DILocation(line: 354, column: 4, scope: !1297)
!1306 = !DILocation(line: 356, column: 1, scope: !1269)
!1307 = distinct !DISubprogram(name: "sbitmap_vector_zero", scope: !3, file: !3, line: 361, type: !1308, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1310)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !400, !7}
!1310 = !{!1311, !1312, !1313}
!1311 = !DILocalVariable(name: "bmap", arg: 1, scope: !1307, file: !3, line: 361, type: !400)
!1312 = !DILocalVariable(name: "n_vecs", arg: 2, scope: !1307, file: !3, line: 361, type: !7)
!1313 = !DILocalVariable(name: "i", scope: !1307, file: !3, line: 363, type: !7)
!1314 = !DILocation(line: 0, scope: !1307)
!1315 = !DILocation(line: 365, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 365, column: 3)
!1317 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 365, column: 3)
!1318 = !DILocation(line: 365, column: 8, scope: !1317)
!1319 = !DILocation(line: 0, scope: !1317)
!1320 = !DILocation(line: 365, column: 3, scope: !1317)
!1321 = !DILocation(line: 366, column: 19, scope: !1316)
!1322 = !DILocation(line: 366, column: 5, scope: !1316)
!1323 = !DILocation(line: 365, column: 28, scope: !1316)
!1324 = !DILocation(line: 365, column: 3, scope: !1316)
!1325 = distinct !{!1325, !1320, !1326}
!1326 = !DILocation(line: 366, column: 26, scope: !1317)
!1327 = !DILocation(line: 367, column: 1, scope: !1307)
!1328 = distinct !DISubprogram(name: "sbitmap_vector_ones", scope: !3, file: !3, line: 372, type: !1308, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DILocalVariable(name: "bmap", arg: 1, scope: !1328, file: !3, line: 372, type: !400)
!1331 = !DILocalVariable(name: "n_vecs", arg: 2, scope: !1328, file: !3, line: 372, type: !7)
!1332 = !DILocalVariable(name: "i", scope: !1328, file: !3, line: 374, type: !7)
!1333 = !DILocation(line: 0, scope: !1328)
!1334 = !DILocation(line: 376, column: 17, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 376, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 376, column: 3)
!1337 = !DILocation(line: 376, column: 8, scope: !1336)
!1338 = !DILocation(line: 0, scope: !1336)
!1339 = !DILocation(line: 376, column: 3, scope: !1336)
!1340 = !DILocation(line: 377, column: 19, scope: !1335)
!1341 = !DILocation(line: 377, column: 5, scope: !1335)
!1342 = !DILocation(line: 376, column: 28, scope: !1335)
!1343 = !DILocation(line: 376, column: 3, scope: !1335)
!1344 = distinct !{!1344, !1339, !1345}
!1345 = !DILocation(line: 377, column: 26, scope: !1336)
!1346 = !DILocation(line: 378, column: 1, scope: !1328)
!1347 = distinct !DISubprogram(name: "sbitmap_union_of_diff_cg", scope: !3, file: !3, line: 385, type: !1348, scopeLine: 386, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1350)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{!379, !387, !1119, !1119, !1119}
!1350 = !{!1351, !1352, !1353, !1354, !1355, !1356, !1357, !1360, !1364, !1365, !1366, !1367}
!1351 = !DILocalVariable(name: "dst", arg: 1, scope: !1347, file: !3, line: 385, type: !387)
!1352 = !DILocalVariable(name: "a", arg: 2, scope: !1347, file: !3, line: 385, type: !1119)
!1353 = !DILocalVariable(name: "b", arg: 3, scope: !1347, file: !3, line: 385, type: !1119)
!1354 = !DILocalVariable(name: "c", arg: 4, scope: !1347, file: !3, line: 385, type: !1119)
!1355 = !DILocalVariable(name: "i", scope: !1347, file: !3, line: 387, type: !7)
!1356 = !DILocalVariable(name: "n", scope: !1347, file: !3, line: 387, type: !7)
!1357 = !DILocalVariable(name: "dstp", scope: !1347, file: !3, line: 388, type: !1358)
!1358 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_ptr", file: !388, line: 48, baseType: !1359)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!1360 = !DILocalVariable(name: "ap", scope: !1347, file: !3, line: 389, type: !1361)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_sbitmap_ptr", file: !388, line: 49, baseType: !1362)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!1364 = !DILocalVariable(name: "bp", scope: !1347, file: !3, line: 390, type: !1361)
!1365 = !DILocalVariable(name: "cp", scope: !1347, file: !3, line: 391, type: !1361)
!1366 = !DILocalVariable(name: "changed", scope: !1347, file: !3, line: 392, type: !397)
!1367 = !DILocalVariable(name: "tmp", scope: !1368, file: !3, line: 398, type: !1363)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !3, line: 397, column: 5)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 396, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 396, column: 3)
!1371 = !DILocation(line: 0, scope: !1347)
!1372 = !DILocation(line: 387, column: 28, scope: !1347)
!1373 = !DILocation(line: 388, column: 22, scope: !1347)
!1374 = !DILocation(line: 389, column: 26, scope: !1347)
!1375 = !DILocation(line: 390, column: 26, scope: !1347)
!1376 = !DILocation(line: 391, column: 26, scope: !1347)
!1377 = !DILocation(line: 394, column: 3, scope: !1347)
!1378 = !DILocation(line: 396, column: 8, scope: !1370)
!1379 = !DILocation(line: 0, scope: !1370)
!1380 = !DILocation(line: 396, column: 17, scope: !1369)
!1381 = !DILocation(line: 396, column: 3, scope: !1370)
!1382 = !DILocation(line: 398, column: 39, scope: !1368)
!1383 = !DILocation(line: 398, column: 36, scope: !1368)
!1384 = !DILocation(line: 398, column: 48, scope: !1368)
!1385 = !DILocation(line: 398, column: 45, scope: !1368)
!1386 = !DILocation(line: 398, column: 57, scope: !1368)
!1387 = !DILocation(line: 398, column: 54, scope: !1368)
!1388 = !DILocation(line: 398, column: 53, scope: !1368)
!1389 = !DILocation(line: 398, column: 51, scope: !1368)
!1390 = !DILocation(line: 398, column: 42, scope: !1368)
!1391 = !DILocation(line: 0, scope: !1368)
!1392 = !DILocation(line: 399, column: 18, scope: !1368)
!1393 = !DILocation(line: 399, column: 24, scope: !1368)
!1394 = !DILocation(line: 399, column: 15, scope: !1368)
!1395 = !DILocation(line: 400, column: 12, scope: !1368)
!1396 = !DILocation(line: 400, column: 15, scope: !1368)
!1397 = !DILocation(line: 396, column: 23, scope: !1369)
!1398 = !DILocation(line: 396, column: 3, scope: !1369)
!1399 = distinct !{!1399, !1381, !1400}
!1400 = !DILocation(line: 401, column: 5, scope: !1370)
!1401 = !DILocation(line: 403, column: 18, scope: !1347)
!1402 = !DILocation(line: 403, column: 10, scope: !1347)
!1403 = !DILocation(line: 403, column: 3, scope: !1347)
!1404 = distinct !DISubprogram(name: "sbitmap_union_of_diff", scope: !3, file: !3, line: 407, type: !1405, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1407)
!1405 = !DISubroutineType(types: !1406)
!1406 = !{null, !387, !1119, !1119, !1119}
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417}
!1408 = !DILocalVariable(name: "dst", arg: 1, scope: !1404, file: !3, line: 407, type: !387)
!1409 = !DILocalVariable(name: "a", arg: 2, scope: !1404, file: !3, line: 407, type: !1119)
!1410 = !DILocalVariable(name: "b", arg: 3, scope: !1404, file: !3, line: 407, type: !1119)
!1411 = !DILocalVariable(name: "c", arg: 4, scope: !1404, file: !3, line: 407, type: !1119)
!1412 = !DILocalVariable(name: "i", scope: !1404, file: !3, line: 409, type: !7)
!1413 = !DILocalVariable(name: "n", scope: !1404, file: !3, line: 409, type: !7)
!1414 = !DILocalVariable(name: "dstp", scope: !1404, file: !3, line: 410, type: !1358)
!1415 = !DILocalVariable(name: "ap", scope: !1404, file: !3, line: 411, type: !1361)
!1416 = !DILocalVariable(name: "bp", scope: !1404, file: !3, line: 412, type: !1361)
!1417 = !DILocalVariable(name: "cp", scope: !1404, file: !3, line: 413, type: !1361)
!1418 = !DILocation(line: 0, scope: !1404)
!1419 = !DILocation(line: 409, column: 28, scope: !1404)
!1420 = !DILocation(line: 410, column: 22, scope: !1404)
!1421 = !DILocation(line: 411, column: 26, scope: !1404)
!1422 = !DILocation(line: 412, column: 26, scope: !1404)
!1423 = !DILocation(line: 413, column: 26, scope: !1404)
!1424 = !DILocation(line: 415, column: 3, scope: !1404)
!1425 = !DILocation(line: 418, column: 8, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 418, column: 3)
!1427 = !DILocation(line: 0, scope: !1426)
!1428 = !DILocation(line: 418, column: 17, scope: !1429)
!1429 = distinct !DILexicalBlock(scope: !1426, file: !3, line: 418, column: 3)
!1430 = !DILocation(line: 418, column: 3, scope: !1426)
!1431 = !DILocation(line: 419, column: 18, scope: !1429)
!1432 = !DILocation(line: 419, column: 15, scope: !1429)
!1433 = !DILocation(line: 419, column: 27, scope: !1429)
!1434 = !DILocation(line: 419, column: 24, scope: !1429)
!1435 = !DILocation(line: 419, column: 36, scope: !1429)
!1436 = !DILocation(line: 419, column: 33, scope: !1429)
!1437 = !DILocation(line: 419, column: 32, scope: !1429)
!1438 = !DILocation(line: 419, column: 30, scope: !1429)
!1439 = !DILocation(line: 419, column: 21, scope: !1429)
!1440 = !DILocation(line: 419, column: 10, scope: !1429)
!1441 = !DILocation(line: 419, column: 13, scope: !1429)
!1442 = !DILocation(line: 418, column: 23, scope: !1429)
!1443 = !DILocation(line: 418, column: 3, scope: !1429)
!1444 = distinct !{!1444, !1430, !1445}
!1445 = !DILocation(line: 419, column: 38, scope: !1426)
!1446 = !DILocation(line: 420, column: 1, scope: !1404)
!1447 = distinct !DISubprogram(name: "sbitmap_not", scope: !3, file: !3, line: 425, type: !1117, scopeLine: 426, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455}
!1449 = !DILocalVariable(name: "dst", arg: 1, scope: !1447, file: !3, line: 425, type: !387)
!1450 = !DILocalVariable(name: "src", arg: 2, scope: !1447, file: !3, line: 425, type: !1119)
!1451 = !DILocalVariable(name: "i", scope: !1447, file: !3, line: 427, type: !7)
!1452 = !DILocalVariable(name: "n", scope: !1447, file: !3, line: 427, type: !7)
!1453 = !DILocalVariable(name: "dstp", scope: !1447, file: !3, line: 428, type: !1358)
!1454 = !DILocalVariable(name: "srcp", scope: !1447, file: !3, line: 429, type: !1361)
!1455 = !DILocalVariable(name: "last_bit", scope: !1447, file: !3, line: 430, type: !7)
!1456 = !DILocation(line: 0, scope: !1447)
!1457 = !DILocation(line: 427, column: 28, scope: !1447)
!1458 = !DILocation(line: 428, column: 22, scope: !1447)
!1459 = !DILocation(line: 429, column: 28, scope: !1447)
!1460 = !DILocation(line: 432, column: 3, scope: !1447)
!1461 = !DILocation(line: 434, column: 8, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 434, column: 3)
!1463 = !DILocation(line: 0, scope: !1462)
!1464 = !DILocation(line: 434, column: 17, scope: !1465)
!1465 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 434, column: 3)
!1466 = !DILocation(line: 434, column: 3, scope: !1462)
!1467 = !DILocation(line: 435, column: 21, scope: !1465)
!1468 = !DILocation(line: 435, column: 16, scope: !1465)
!1469 = !DILocation(line: 435, column: 15, scope: !1465)
!1470 = !DILocation(line: 435, column: 10, scope: !1465)
!1471 = !DILocation(line: 435, column: 13, scope: !1465)
!1472 = !DILocation(line: 434, column: 23, scope: !1465)
!1473 = !DILocation(line: 434, column: 3, scope: !1465)
!1474 = distinct !{!1474, !1466, !1475}
!1475 = !DILocation(line: 435, column: 21, scope: !1462)
!1476 = !DILocation(line: 438, column: 19, scope: !1447)
!1477 = !DILocation(line: 438, column: 26, scope: !1447)
!1478 = !DILocation(line: 439, column: 7, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 439, column: 7)
!1480 = !DILocation(line: 439, column: 7, scope: !1447)
!1481 = !DILocation(line: 440, column: 33, scope: !1479)
!1482 = !DILocation(line: 440, column: 22, scope: !1479)
!1483 = !DILocation(line: 441, column: 52, scope: !1479)
!1484 = !DILocation(line: 441, column: 31, scope: !1479)
!1485 = !DILocation(line: 441, column: 7, scope: !1479)
!1486 = !DILocation(line: 440, column: 20, scope: !1479)
!1487 = !DILocation(line: 440, column: 5, scope: !1479)
!1488 = !DILocation(line: 442, column: 1, scope: !1447)
!1489 = distinct !DISubprogram(name: "sbitmap_difference", scope: !3, file: !3, line: 448, type: !1490, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1492)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !387, !1119, !1119}
!1492 = !{!1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501}
!1493 = !DILocalVariable(name: "dst", arg: 1, scope: !1489, file: !3, line: 448, type: !387)
!1494 = !DILocalVariable(name: "a", arg: 2, scope: !1489, file: !3, line: 448, type: !1119)
!1495 = !DILocalVariable(name: "b", arg: 3, scope: !1489, file: !3, line: 448, type: !1119)
!1496 = !DILocalVariable(name: "i", scope: !1489, file: !3, line: 450, type: !7)
!1497 = !DILocalVariable(name: "dst_size", scope: !1489, file: !3, line: 450, type: !7)
!1498 = !DILocalVariable(name: "min_size", scope: !1489, file: !3, line: 451, type: !7)
!1499 = !DILocalVariable(name: "dstp", scope: !1489, file: !3, line: 452, type: !1358)
!1500 = !DILocalVariable(name: "ap", scope: !1489, file: !3, line: 453, type: !1361)
!1501 = !DILocalVariable(name: "bp", scope: !1489, file: !3, line: 454, type: !1361)
!1502 = !DILocation(line: 0, scope: !1489)
!1503 = !DILocation(line: 450, column: 35, scope: !1489)
!1504 = !DILocation(line: 452, column: 22, scope: !1489)
!1505 = !DILocation(line: 453, column: 26, scope: !1489)
!1506 = !DILocation(line: 454, column: 26, scope: !1489)
!1507 = !DILocation(line: 456, column: 3, scope: !1489)
!1508 = !DILocation(line: 459, column: 3, scope: !1489)
!1509 = !DILocation(line: 462, column: 10, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 462, column: 7)
!1511 = !DILocation(line: 462, column: 15, scope: !1510)
!1512 = !DILocation(line: 462, column: 7, scope: !1489)
!1513 = !DILocation(line: 463, column: 5, scope: !1510)
!1514 = !DILocation(line: 464, column: 8, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 464, column: 3)
!1516 = !DILocation(line: 0, scope: !1515)
!1517 = !DILocation(line: 464, column: 17, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 464, column: 3)
!1519 = !DILocation(line: 464, column: 3, scope: !1515)
!1520 = !DILocation(line: 465, column: 18, scope: !1518)
!1521 = !DILocation(line: 465, column: 15, scope: !1518)
!1522 = !DILocation(line: 465, column: 28, scope: !1518)
!1523 = !DILocation(line: 465, column: 25, scope: !1518)
!1524 = !DILocation(line: 465, column: 24, scope: !1518)
!1525 = !DILocation(line: 465, column: 21, scope: !1518)
!1526 = !DILocation(line: 465, column: 10, scope: !1518)
!1527 = !DILocation(line: 465, column: 13, scope: !1518)
!1528 = !DILocation(line: 464, column: 30, scope: !1518)
!1529 = !DILocation(line: 464, column: 3, scope: !1518)
!1530 = distinct !{!1530, !1519, !1531}
!1531 = !DILocation(line: 465, column: 30, scope: !1515)
!1532 = !DILocation(line: 468, column: 11, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1489, file: !3, line: 468, column: 7)
!1534 = !DILocation(line: 468, column: 21, scope: !1533)
!1535 = !DILocation(line: 468, column: 16, scope: !1533)
!1536 = !DILocation(line: 469, column: 5, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 469, column: 5)
!1538 = !DILocation(line: 469, column: 14, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 469, column: 5)
!1540 = !DILocation(line: 470, column: 20, scope: !1539)
!1541 = !DILocation(line: 470, column: 17, scope: !1539)
!1542 = !DILocation(line: 470, column: 12, scope: !1539)
!1543 = !DILocation(line: 470, column: 15, scope: !1539)
!1544 = !DILocation(line: 469, column: 27, scope: !1539)
!1545 = !DILocation(line: 469, column: 5, scope: !1539)
!1546 = distinct !{!1546, !1536, !1547}
!1547 = !DILocation(line: 470, column: 20, scope: !1537)
!1548 = !DILocation(line: 471, column: 1, scope: !1489)
!1549 = distinct !DISubprogram(name: "sbitmap_any_common_bits", scope: !3, file: !3, line: 477, type: !1550, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1552)
!1550 = !DISubroutineType(types: !1551)
!1551 = !{!379, !1119, !1119}
!1552 = !{!1553, !1554, !1555, !1556, !1557, !1558}
!1553 = !DILocalVariable(name: "a", arg: 1, scope: !1549, file: !3, line: 477, type: !1119)
!1554 = !DILocalVariable(name: "b", arg: 2, scope: !1549, file: !3, line: 477, type: !1119)
!1555 = !DILocalVariable(name: "ap", scope: !1549, file: !3, line: 479, type: !1361)
!1556 = !DILocalVariable(name: "bp", scope: !1549, file: !3, line: 480, type: !1361)
!1557 = !DILocalVariable(name: "i", scope: !1549, file: !3, line: 481, type: !7)
!1558 = !DILocalVariable(name: "n", scope: !1549, file: !3, line: 481, type: !7)
!1559 = !DILocation(line: 0, scope: !1549)
!1560 = !DILocation(line: 479, column: 26, scope: !1549)
!1561 = !DILocation(line: 480, column: 26, scope: !1549)
!1562 = !DILocation(line: 483, column: 7, scope: !1549)
!1563 = !DILocation(line: 484, column: 8, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 484, column: 3)
!1565 = !DILocation(line: 0, scope: !1564)
!1566 = !DILocation(line: 484, column: 17, scope: !1567)
!1567 = distinct !DILexicalBlock(scope: !1564, file: !3, line: 484, column: 3)
!1568 = !DILocation(line: 484, column: 3, scope: !1564)
!1569 = !DILocation(line: 485, column: 10, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1567, file: !3, line: 485, column: 9)
!1571 = !DILocation(line: 485, column: 18, scope: !1570)
!1572 = !DILocation(line: 485, column: 16, scope: !1570)
!1573 = !DILocation(line: 485, column: 25, scope: !1570)
!1574 = !DILocation(line: 485, column: 9, scope: !1567)
!1575 = !DILocation(line: 485, column: 21, scope: !1570)
!1576 = !DILocation(line: 485, column: 13, scope: !1570)
!1577 = !DILocation(line: 484, column: 23, scope: !1567)
!1578 = !DILocation(line: 484, column: 3, scope: !1567)
!1579 = distinct !{!1579, !1568, !1580}
!1580 = !DILocation(line: 486, column: 14, scope: !1564)
!1581 = !DILocation(line: 489, column: 1, scope: !1549)
!1582 = distinct !DISubprogram(name: "sbitmap_a_and_b_cg", scope: !3, file: !3, line: 495, type: !1583, scopeLine: 496, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!379, !387, !1119, !1119}
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1591, !1592, !1593, !1594, !1595}
!1586 = !DILocalVariable(name: "dst", arg: 1, scope: !1582, file: !3, line: 495, type: !387)
!1587 = !DILocalVariable(name: "a", arg: 2, scope: !1582, file: !3, line: 495, type: !1119)
!1588 = !DILocalVariable(name: "b", arg: 3, scope: !1582, file: !3, line: 495, type: !1119)
!1589 = !DILocalVariable(name: "i", scope: !1582, file: !3, line: 497, type: !7)
!1590 = !DILocalVariable(name: "n", scope: !1582, file: !3, line: 497, type: !7)
!1591 = !DILocalVariable(name: "dstp", scope: !1582, file: !3, line: 498, type: !1358)
!1592 = !DILocalVariable(name: "ap", scope: !1582, file: !3, line: 499, type: !1361)
!1593 = !DILocalVariable(name: "bp", scope: !1582, file: !3, line: 500, type: !1361)
!1594 = !DILocalVariable(name: "changed", scope: !1582, file: !3, line: 501, type: !397)
!1595 = !DILocalVariable(name: "tmp", scope: !1596, file: !3, line: 507, type: !1363)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 506, column: 5)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !3, line: 505, column: 3)
!1598 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 505, column: 3)
!1599 = !DILocation(line: 0, scope: !1582)
!1600 = !DILocation(line: 497, column: 28, scope: !1582)
!1601 = !DILocation(line: 498, column: 22, scope: !1582)
!1602 = !DILocation(line: 499, column: 26, scope: !1582)
!1603 = !DILocation(line: 500, column: 26, scope: !1582)
!1604 = !DILocation(line: 503, column: 3, scope: !1582)
!1605 = !DILocation(line: 505, column: 8, scope: !1598)
!1606 = !DILocation(line: 0, scope: !1598)
!1607 = !DILocation(line: 505, column: 17, scope: !1597)
!1608 = !DILocation(line: 505, column: 3, scope: !1598)
!1609 = !DILocation(line: 507, column: 39, scope: !1596)
!1610 = !DILocation(line: 507, column: 36, scope: !1596)
!1611 = !DILocation(line: 507, column: 47, scope: !1596)
!1612 = !DILocation(line: 507, column: 44, scope: !1596)
!1613 = !DILocation(line: 507, column: 42, scope: !1596)
!1614 = !DILocation(line: 0, scope: !1596)
!1615 = !DILocation(line: 508, column: 18, scope: !1596)
!1616 = !DILocation(line: 508, column: 24, scope: !1596)
!1617 = !DILocation(line: 508, column: 15, scope: !1596)
!1618 = !DILocation(line: 509, column: 12, scope: !1596)
!1619 = !DILocation(line: 509, column: 15, scope: !1596)
!1620 = !DILocation(line: 505, column: 23, scope: !1597)
!1621 = !DILocation(line: 505, column: 3, scope: !1597)
!1622 = distinct !{!1622, !1608, !1623}
!1623 = !DILocation(line: 510, column: 5, scope: !1598)
!1624 = !DILocation(line: 512, column: 18, scope: !1582)
!1625 = !DILocation(line: 512, column: 10, scope: !1582)
!1626 = !DILocation(line: 512, column: 3, scope: !1582)
!1627 = distinct !DISubprogram(name: "sbitmap_a_and_b", scope: !3, file: !3, line: 516, type: !1490, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1628)
!1628 = !{!1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1643}
!1629 = !DILocalVariable(name: "dst", arg: 1, scope: !1627, file: !3, line: 516, type: !387)
!1630 = !DILocalVariable(name: "a", arg: 2, scope: !1627, file: !3, line: 516, type: !1119)
!1631 = !DILocalVariable(name: "b", arg: 3, scope: !1627, file: !3, line: 516, type: !1119)
!1632 = !DILocalVariable(name: "i", scope: !1627, file: !3, line: 518, type: !7)
!1633 = !DILocalVariable(name: "n", scope: !1627, file: !3, line: 518, type: !7)
!1634 = !DILocalVariable(name: "dstp", scope: !1627, file: !3, line: 519, type: !1358)
!1635 = !DILocalVariable(name: "ap", scope: !1627, file: !3, line: 520, type: !1361)
!1636 = !DILocalVariable(name: "bp", scope: !1627, file: !3, line: 521, type: !1361)
!1637 = !DILocalVariable(name: "has_popcount", scope: !1627, file: !3, line: 522, type: !379)
!1638 = !DILocalVariable(name: "popcountp", scope: !1627, file: !3, line: 523, type: !378)
!1639 = !DILocalVariable(name: "tmp", scope: !1640, file: !3, line: 527, type: !1363)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 526, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 525, column: 3)
!1642 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 525, column: 3)
!1643 = !DILocalVariable(name: "wordchanged", scope: !1644, file: !3, line: 530, type: !379)
!1644 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 529, column: 2)
!1645 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 528, column: 11)
!1646 = !DILocation(line: 0, scope: !1627)
!1647 = !DILocation(line: 518, column: 28, scope: !1627)
!1648 = !DILocation(line: 519, column: 22, scope: !1627)
!1649 = !DILocation(line: 520, column: 26, scope: !1627)
!1650 = !DILocation(line: 521, column: 26, scope: !1627)
!1651 = !DILocation(line: 522, column: 28, scope: !1627)
!1652 = !DILocation(line: 522, column: 37, scope: !1627)
!1653 = !DILocation(line: 525, column: 8, scope: !1642)
!1654 = !DILocation(line: 0, scope: !1642)
!1655 = !DILocation(line: 525, column: 17, scope: !1641)
!1656 = !DILocation(line: 525, column: 3, scope: !1642)
!1657 = !DILocation(line: 0, scope: !1640)
!1658 = !DILocation(line: 527, column: 36, scope: !1640)
!1659 = !DILocation(line: 527, column: 44, scope: !1640)
!1660 = !DILocation(line: 527, column: 42, scope: !1640)
!1661 = !DILocation(line: 527, column: 47, scope: !1640)
!1662 = !DILocation(line: 527, column: 39, scope: !1640)
!1663 = !DILocation(line: 535, column: 12, scope: !1640)
!1664 = !DILocation(line: 535, column: 15, scope: !1640)
!1665 = !DILocation(line: 525, column: 23, scope: !1641)
!1666 = !DILocation(line: 525, column: 3, scope: !1641)
!1667 = distinct !{!1667, !1656, !1668}
!1668 = !DILocation(line: 536, column: 5, scope: !1642)
!1669 = !DILocation(line: 541, column: 1, scope: !1627)
!1670 = !DILocation(line: 530, column: 24, scope: !1644)
!1671 = !DILocation(line: 530, column: 37, scope: !1644)
!1672 = !DILocation(line: 0, scope: !1644)
!1673 = !DILocation(line: 531, column: 8, scope: !1644)
!1674 = !DILocation(line: 532, column: 19, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 531, column: 8)
!1676 = !DILocation(line: 532, column: 17, scope: !1675)
!1677 = !DILocation(line: 532, column: 6, scope: !1675)
!1678 = !DILocation(line: 533, column: 13, scope: !1644)
!1679 = distinct !DISubprogram(name: "sbitmap_a_xor_b_cg", scope: !3, file: !3, line: 547, type: !1583, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1680)
!1680 = !{!1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690}
!1681 = !DILocalVariable(name: "dst", arg: 1, scope: !1679, file: !3, line: 547, type: !387)
!1682 = !DILocalVariable(name: "a", arg: 2, scope: !1679, file: !3, line: 547, type: !1119)
!1683 = !DILocalVariable(name: "b", arg: 3, scope: !1679, file: !3, line: 547, type: !1119)
!1684 = !DILocalVariable(name: "i", scope: !1679, file: !3, line: 549, type: !7)
!1685 = !DILocalVariable(name: "n", scope: !1679, file: !3, line: 549, type: !7)
!1686 = !DILocalVariable(name: "dstp", scope: !1679, file: !3, line: 550, type: !1358)
!1687 = !DILocalVariable(name: "ap", scope: !1679, file: !3, line: 551, type: !1361)
!1688 = !DILocalVariable(name: "bp", scope: !1679, file: !3, line: 552, type: !1361)
!1689 = !DILocalVariable(name: "changed", scope: !1679, file: !3, line: 553, type: !397)
!1690 = !DILocalVariable(name: "tmp", scope: !1691, file: !3, line: 559, type: !1363)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 558, column: 5)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 557, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 557, column: 3)
!1694 = !DILocation(line: 0, scope: !1679)
!1695 = !DILocation(line: 549, column: 28, scope: !1679)
!1696 = !DILocation(line: 550, column: 22, scope: !1679)
!1697 = !DILocation(line: 551, column: 26, scope: !1679)
!1698 = !DILocation(line: 552, column: 26, scope: !1679)
!1699 = !DILocation(line: 555, column: 3, scope: !1679)
!1700 = !DILocation(line: 557, column: 8, scope: !1693)
!1701 = !DILocation(line: 0, scope: !1693)
!1702 = !DILocation(line: 557, column: 17, scope: !1692)
!1703 = !DILocation(line: 557, column: 3, scope: !1693)
!1704 = !DILocation(line: 559, column: 39, scope: !1691)
!1705 = !DILocation(line: 559, column: 36, scope: !1691)
!1706 = !DILocation(line: 559, column: 47, scope: !1691)
!1707 = !DILocation(line: 559, column: 44, scope: !1691)
!1708 = !DILocation(line: 559, column: 42, scope: !1691)
!1709 = !DILocation(line: 0, scope: !1691)
!1710 = !DILocation(line: 560, column: 18, scope: !1691)
!1711 = !DILocation(line: 560, column: 24, scope: !1691)
!1712 = !DILocation(line: 560, column: 15, scope: !1691)
!1713 = !DILocation(line: 561, column: 12, scope: !1691)
!1714 = !DILocation(line: 561, column: 15, scope: !1691)
!1715 = !DILocation(line: 557, column: 23, scope: !1692)
!1716 = !DILocation(line: 557, column: 3, scope: !1692)
!1717 = distinct !{!1717, !1703, !1718}
!1718 = !DILocation(line: 562, column: 5, scope: !1693)
!1719 = !DILocation(line: 564, column: 18, scope: !1679)
!1720 = !DILocation(line: 564, column: 10, scope: !1679)
!1721 = !DILocation(line: 564, column: 3, scope: !1679)
!1722 = distinct !DISubprogram(name: "sbitmap_a_xor_b", scope: !3, file: !3, line: 568, type: !1490, scopeLine: 569, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1723)
!1723 = !{!1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1738}
!1724 = !DILocalVariable(name: "dst", arg: 1, scope: !1722, file: !3, line: 568, type: !387)
!1725 = !DILocalVariable(name: "a", arg: 2, scope: !1722, file: !3, line: 568, type: !1119)
!1726 = !DILocalVariable(name: "b", arg: 3, scope: !1722, file: !3, line: 568, type: !1119)
!1727 = !DILocalVariable(name: "i", scope: !1722, file: !3, line: 570, type: !7)
!1728 = !DILocalVariable(name: "n", scope: !1722, file: !3, line: 570, type: !7)
!1729 = !DILocalVariable(name: "dstp", scope: !1722, file: !3, line: 571, type: !1358)
!1730 = !DILocalVariable(name: "ap", scope: !1722, file: !3, line: 572, type: !1361)
!1731 = !DILocalVariable(name: "bp", scope: !1722, file: !3, line: 573, type: !1361)
!1732 = !DILocalVariable(name: "has_popcount", scope: !1722, file: !3, line: 574, type: !379)
!1733 = !DILocalVariable(name: "popcountp", scope: !1722, file: !3, line: 575, type: !378)
!1734 = !DILocalVariable(name: "tmp", scope: !1735, file: !3, line: 579, type: !1363)
!1735 = distinct !DILexicalBlock(scope: !1736, file: !3, line: 578, column: 5)
!1736 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 577, column: 3)
!1737 = distinct !DILexicalBlock(scope: !1722, file: !3, line: 577, column: 3)
!1738 = !DILocalVariable(name: "wordchanged", scope: !1739, file: !3, line: 582, type: !379)
!1739 = distinct !DILexicalBlock(scope: !1740, file: !3, line: 581, column: 2)
!1740 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 580, column: 11)
!1741 = !DILocation(line: 0, scope: !1722)
!1742 = !DILocation(line: 570, column: 28, scope: !1722)
!1743 = !DILocation(line: 571, column: 22, scope: !1722)
!1744 = !DILocation(line: 572, column: 26, scope: !1722)
!1745 = !DILocation(line: 573, column: 26, scope: !1722)
!1746 = !DILocation(line: 574, column: 28, scope: !1722)
!1747 = !DILocation(line: 574, column: 37, scope: !1722)
!1748 = !DILocation(line: 577, column: 8, scope: !1737)
!1749 = !DILocation(line: 0, scope: !1737)
!1750 = !DILocation(line: 577, column: 17, scope: !1736)
!1751 = !DILocation(line: 577, column: 3, scope: !1737)
!1752 = !DILocation(line: 0, scope: !1735)
!1753 = !DILocation(line: 579, column: 36, scope: !1735)
!1754 = !DILocation(line: 579, column: 44, scope: !1735)
!1755 = !DILocation(line: 579, column: 42, scope: !1735)
!1756 = !DILocation(line: 579, column: 47, scope: !1735)
!1757 = !DILocation(line: 579, column: 39, scope: !1735)
!1758 = !DILocation(line: 587, column: 12, scope: !1735)
!1759 = !DILocation(line: 587, column: 15, scope: !1735)
!1760 = !DILocation(line: 577, column: 23, scope: !1736)
!1761 = !DILocation(line: 577, column: 3, scope: !1736)
!1762 = distinct !{!1762, !1751, !1763}
!1763 = !DILocation(line: 588, column: 5, scope: !1737)
!1764 = !DILocation(line: 593, column: 1, scope: !1722)
!1765 = !DILocation(line: 582, column: 24, scope: !1739)
!1766 = !DILocation(line: 582, column: 37, scope: !1739)
!1767 = !DILocation(line: 0, scope: !1739)
!1768 = !DILocation(line: 583, column: 8, scope: !1739)
!1769 = !DILocation(line: 584, column: 19, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1739, file: !3, line: 583, column: 8)
!1771 = !DILocation(line: 584, column: 17, scope: !1770)
!1772 = !DILocation(line: 584, column: 6, scope: !1770)
!1773 = !DILocation(line: 585, column: 13, scope: !1739)
!1774 = distinct !DISubprogram(name: "sbitmap_a_or_b_cg", scope: !3, file: !3, line: 599, type: !1583, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1775)
!1775 = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785}
!1776 = !DILocalVariable(name: "dst", arg: 1, scope: !1774, file: !3, line: 599, type: !387)
!1777 = !DILocalVariable(name: "a", arg: 2, scope: !1774, file: !3, line: 599, type: !1119)
!1778 = !DILocalVariable(name: "b", arg: 3, scope: !1774, file: !3, line: 599, type: !1119)
!1779 = !DILocalVariable(name: "i", scope: !1774, file: !3, line: 601, type: !7)
!1780 = !DILocalVariable(name: "n", scope: !1774, file: !3, line: 601, type: !7)
!1781 = !DILocalVariable(name: "dstp", scope: !1774, file: !3, line: 602, type: !1358)
!1782 = !DILocalVariable(name: "ap", scope: !1774, file: !3, line: 603, type: !1361)
!1783 = !DILocalVariable(name: "bp", scope: !1774, file: !3, line: 604, type: !1361)
!1784 = !DILocalVariable(name: "changed", scope: !1774, file: !3, line: 605, type: !397)
!1785 = !DILocalVariable(name: "tmp", scope: !1786, file: !3, line: 611, type: !1363)
!1786 = distinct !DILexicalBlock(scope: !1787, file: !3, line: 610, column: 5)
!1787 = distinct !DILexicalBlock(scope: !1788, file: !3, line: 609, column: 3)
!1788 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 609, column: 3)
!1789 = !DILocation(line: 0, scope: !1774)
!1790 = !DILocation(line: 601, column: 28, scope: !1774)
!1791 = !DILocation(line: 602, column: 22, scope: !1774)
!1792 = !DILocation(line: 603, column: 26, scope: !1774)
!1793 = !DILocation(line: 604, column: 26, scope: !1774)
!1794 = !DILocation(line: 607, column: 3, scope: !1774)
!1795 = !DILocation(line: 609, column: 8, scope: !1788)
!1796 = !DILocation(line: 0, scope: !1788)
!1797 = !DILocation(line: 609, column: 17, scope: !1787)
!1798 = !DILocation(line: 609, column: 3, scope: !1788)
!1799 = !DILocation(line: 611, column: 39, scope: !1786)
!1800 = !DILocation(line: 611, column: 36, scope: !1786)
!1801 = !DILocation(line: 611, column: 47, scope: !1786)
!1802 = !DILocation(line: 611, column: 44, scope: !1786)
!1803 = !DILocation(line: 611, column: 42, scope: !1786)
!1804 = !DILocation(line: 0, scope: !1786)
!1805 = !DILocation(line: 612, column: 18, scope: !1786)
!1806 = !DILocation(line: 612, column: 24, scope: !1786)
!1807 = !DILocation(line: 612, column: 15, scope: !1786)
!1808 = !DILocation(line: 613, column: 12, scope: !1786)
!1809 = !DILocation(line: 613, column: 15, scope: !1786)
!1810 = !DILocation(line: 609, column: 23, scope: !1787)
!1811 = !DILocation(line: 609, column: 3, scope: !1787)
!1812 = distinct !{!1812, !1798, !1813}
!1813 = !DILocation(line: 614, column: 5, scope: !1788)
!1814 = !DILocation(line: 616, column: 18, scope: !1774)
!1815 = !DILocation(line: 616, column: 10, scope: !1774)
!1816 = !DILocation(line: 616, column: 3, scope: !1774)
!1817 = distinct !DISubprogram(name: "sbitmap_a_or_b", scope: !3, file: !3, line: 620, type: !1490, scopeLine: 621, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1818)
!1818 = !{!1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1833}
!1819 = !DILocalVariable(name: "dst", arg: 1, scope: !1817, file: !3, line: 620, type: !387)
!1820 = !DILocalVariable(name: "a", arg: 2, scope: !1817, file: !3, line: 620, type: !1119)
!1821 = !DILocalVariable(name: "b", arg: 3, scope: !1817, file: !3, line: 620, type: !1119)
!1822 = !DILocalVariable(name: "i", scope: !1817, file: !3, line: 622, type: !7)
!1823 = !DILocalVariable(name: "n", scope: !1817, file: !3, line: 622, type: !7)
!1824 = !DILocalVariable(name: "dstp", scope: !1817, file: !3, line: 623, type: !1358)
!1825 = !DILocalVariable(name: "ap", scope: !1817, file: !3, line: 624, type: !1361)
!1826 = !DILocalVariable(name: "bp", scope: !1817, file: !3, line: 625, type: !1361)
!1827 = !DILocalVariable(name: "has_popcount", scope: !1817, file: !3, line: 626, type: !379)
!1828 = !DILocalVariable(name: "popcountp", scope: !1817, file: !3, line: 627, type: !378)
!1829 = !DILocalVariable(name: "tmp", scope: !1830, file: !3, line: 631, type: !1363)
!1830 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 630, column: 5)
!1831 = distinct !DILexicalBlock(scope: !1832, file: !3, line: 629, column: 3)
!1832 = distinct !DILexicalBlock(scope: !1817, file: !3, line: 629, column: 3)
!1833 = !DILocalVariable(name: "wordchanged", scope: !1834, file: !3, line: 634, type: !379)
!1834 = distinct !DILexicalBlock(scope: !1835, file: !3, line: 633, column: 2)
!1835 = distinct !DILexicalBlock(scope: !1830, file: !3, line: 632, column: 11)
!1836 = !DILocation(line: 0, scope: !1817)
!1837 = !DILocation(line: 622, column: 28, scope: !1817)
!1838 = !DILocation(line: 623, column: 22, scope: !1817)
!1839 = !DILocation(line: 624, column: 26, scope: !1817)
!1840 = !DILocation(line: 625, column: 26, scope: !1817)
!1841 = !DILocation(line: 626, column: 28, scope: !1817)
!1842 = !DILocation(line: 626, column: 37, scope: !1817)
!1843 = !DILocation(line: 629, column: 8, scope: !1832)
!1844 = !DILocation(line: 0, scope: !1832)
!1845 = !DILocation(line: 629, column: 17, scope: !1831)
!1846 = !DILocation(line: 629, column: 3, scope: !1832)
!1847 = !DILocation(line: 0, scope: !1830)
!1848 = !DILocation(line: 631, column: 36, scope: !1830)
!1849 = !DILocation(line: 631, column: 44, scope: !1830)
!1850 = !DILocation(line: 631, column: 42, scope: !1830)
!1851 = !DILocation(line: 631, column: 47, scope: !1830)
!1852 = !DILocation(line: 631, column: 39, scope: !1830)
!1853 = !DILocation(line: 639, column: 12, scope: !1830)
!1854 = !DILocation(line: 639, column: 15, scope: !1830)
!1855 = !DILocation(line: 629, column: 23, scope: !1831)
!1856 = !DILocation(line: 629, column: 3, scope: !1831)
!1857 = distinct !{!1857, !1846, !1858}
!1858 = !DILocation(line: 640, column: 5, scope: !1832)
!1859 = !DILocation(line: 645, column: 1, scope: !1817)
!1860 = !DILocation(line: 634, column: 24, scope: !1834)
!1861 = !DILocation(line: 634, column: 37, scope: !1834)
!1862 = !DILocation(line: 0, scope: !1834)
!1863 = !DILocation(line: 635, column: 8, scope: !1834)
!1864 = !DILocation(line: 636, column: 19, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1834, file: !3, line: 635, column: 8)
!1866 = !DILocation(line: 636, column: 17, scope: !1865)
!1867 = !DILocation(line: 636, column: 6, scope: !1865)
!1868 = !DILocation(line: 637, column: 13, scope: !1834)
!1869 = distinct !DISubprogram(name: "sbitmap_a_subset_b_p", scope: !3, file: !3, line: 650, type: !1550, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1870)
!1870 = !{!1871, !1872, !1873, !1874, !1875, !1876}
!1871 = !DILocalVariable(name: "a", arg: 1, scope: !1869, file: !3, line: 650, type: !1119)
!1872 = !DILocalVariable(name: "b", arg: 2, scope: !1869, file: !3, line: 650, type: !1119)
!1873 = !DILocalVariable(name: "i", scope: !1869, file: !3, line: 652, type: !7)
!1874 = !DILocalVariable(name: "n", scope: !1869, file: !3, line: 652, type: !7)
!1875 = !DILocalVariable(name: "ap", scope: !1869, file: !3, line: 653, type: !1361)
!1876 = !DILocalVariable(name: "bp", scope: !1869, file: !3, line: 653, type: !1361)
!1877 = !DILocation(line: 0, scope: !1869)
!1878 = !DILocation(line: 652, column: 26, scope: !1869)
!1879 = !DILocation(line: 655, column: 13, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1869, file: !3, line: 655, column: 3)
!1881 = !DILocation(line: 655, column: 27, scope: !1880)
!1882 = !DILocation(line: 655, column: 8, scope: !1880)
!1883 = !DILocation(line: 0, scope: !1880)
!1884 = !DILocation(line: 655, column: 45, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 655, column: 3)
!1886 = !DILocation(line: 655, column: 3, scope: !1880)
!1887 = !DILocation(line: 656, column: 10, scope: !1888)
!1888 = distinct !DILexicalBlock(scope: !1885, file: !3, line: 656, column: 9)
!1889 = !DILocation(line: 656, column: 16, scope: !1888)
!1890 = !DILocation(line: 656, column: 14, scope: !1888)
!1891 = !DILocation(line: 656, column: 21, scope: !1888)
!1892 = !DILocation(line: 656, column: 9, scope: !1885)
!1893 = !DILocation(line: 655, column: 51, scope: !1885)
!1894 = !DILocation(line: 655, column: 57, scope: !1885)
!1895 = !DILocation(line: 655, column: 63, scope: !1885)
!1896 = !DILocation(line: 655, column: 3, scope: !1885)
!1897 = distinct !{!1897, !1886, !1898}
!1898 = !DILocation(line: 657, column: 14, scope: !1880)
!1899 = !DILocation(line: 660, column: 1, scope: !1869)
!1900 = distinct !DISubprogram(name: "sbitmap_a_or_b_and_c_cg", scope: !3, file: !3, line: 666, type: !1348, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1901)
!1901 = !{!1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1911, !1912, !1913}
!1902 = !DILocalVariable(name: "dst", arg: 1, scope: !1900, file: !3, line: 666, type: !387)
!1903 = !DILocalVariable(name: "a", arg: 2, scope: !1900, file: !3, line: 666, type: !1119)
!1904 = !DILocalVariable(name: "b", arg: 3, scope: !1900, file: !3, line: 666, type: !1119)
!1905 = !DILocalVariable(name: "c", arg: 4, scope: !1900, file: !3, line: 666, type: !1119)
!1906 = !DILocalVariable(name: "i", scope: !1900, file: !3, line: 668, type: !7)
!1907 = !DILocalVariable(name: "n", scope: !1900, file: !3, line: 668, type: !7)
!1908 = !DILocalVariable(name: "dstp", scope: !1900, file: !3, line: 669, type: !1358)
!1909 = !DILocalVariable(name: "ap", scope: !1900, file: !3, line: 670, type: !1361)
!1910 = !DILocalVariable(name: "bp", scope: !1900, file: !3, line: 671, type: !1361)
!1911 = !DILocalVariable(name: "cp", scope: !1900, file: !3, line: 672, type: !1361)
!1912 = !DILocalVariable(name: "changed", scope: !1900, file: !3, line: 673, type: !397)
!1913 = !DILocalVariable(name: "tmp", scope: !1914, file: !3, line: 679, type: !1363)
!1914 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 678, column: 5)
!1915 = distinct !DILexicalBlock(scope: !1916, file: !3, line: 677, column: 3)
!1916 = distinct !DILexicalBlock(scope: !1900, file: !3, line: 677, column: 3)
!1917 = !DILocation(line: 0, scope: !1900)
!1918 = !DILocation(line: 668, column: 28, scope: !1900)
!1919 = !DILocation(line: 669, column: 22, scope: !1900)
!1920 = !DILocation(line: 670, column: 26, scope: !1900)
!1921 = !DILocation(line: 671, column: 26, scope: !1900)
!1922 = !DILocation(line: 672, column: 26, scope: !1900)
!1923 = !DILocation(line: 675, column: 3, scope: !1900)
!1924 = !DILocation(line: 677, column: 8, scope: !1916)
!1925 = !DILocation(line: 0, scope: !1916)
!1926 = !DILocation(line: 677, column: 17, scope: !1915)
!1927 = !DILocation(line: 677, column: 3, scope: !1916)
!1928 = !DILocation(line: 679, column: 39, scope: !1914)
!1929 = !DILocation(line: 679, column: 36, scope: !1914)
!1930 = !DILocation(line: 679, column: 48, scope: !1914)
!1931 = !DILocation(line: 679, column: 45, scope: !1914)
!1932 = !DILocation(line: 679, column: 56, scope: !1914)
!1933 = !DILocation(line: 679, column: 53, scope: !1914)
!1934 = !DILocation(line: 679, column: 51, scope: !1914)
!1935 = !DILocation(line: 679, column: 42, scope: !1914)
!1936 = !DILocation(line: 0, scope: !1914)
!1937 = !DILocation(line: 680, column: 18, scope: !1914)
!1938 = !DILocation(line: 680, column: 24, scope: !1914)
!1939 = !DILocation(line: 680, column: 15, scope: !1914)
!1940 = !DILocation(line: 681, column: 12, scope: !1914)
!1941 = !DILocation(line: 681, column: 15, scope: !1914)
!1942 = !DILocation(line: 677, column: 23, scope: !1915)
!1943 = !DILocation(line: 677, column: 3, scope: !1915)
!1944 = distinct !{!1944, !1927, !1945}
!1945 = !DILocation(line: 682, column: 5, scope: !1916)
!1946 = !DILocation(line: 684, column: 18, scope: !1900)
!1947 = !DILocation(line: 684, column: 10, scope: !1900)
!1948 = !DILocation(line: 684, column: 3, scope: !1900)
!1949 = distinct !DISubprogram(name: "sbitmap_a_or_b_and_c", scope: !3, file: !3, line: 688, type: !1405, scopeLine: 689, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1950)
!1950 = !{!1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960}
!1951 = !DILocalVariable(name: "dst", arg: 1, scope: !1949, file: !3, line: 688, type: !387)
!1952 = !DILocalVariable(name: "a", arg: 2, scope: !1949, file: !3, line: 688, type: !1119)
!1953 = !DILocalVariable(name: "b", arg: 3, scope: !1949, file: !3, line: 688, type: !1119)
!1954 = !DILocalVariable(name: "c", arg: 4, scope: !1949, file: !3, line: 688, type: !1119)
!1955 = !DILocalVariable(name: "i", scope: !1949, file: !3, line: 690, type: !7)
!1956 = !DILocalVariable(name: "n", scope: !1949, file: !3, line: 690, type: !7)
!1957 = !DILocalVariable(name: "dstp", scope: !1949, file: !3, line: 691, type: !1358)
!1958 = !DILocalVariable(name: "ap", scope: !1949, file: !3, line: 692, type: !1361)
!1959 = !DILocalVariable(name: "bp", scope: !1949, file: !3, line: 693, type: !1361)
!1960 = !DILocalVariable(name: "cp", scope: !1949, file: !3, line: 694, type: !1361)
!1961 = !DILocation(line: 0, scope: !1949)
!1962 = !DILocation(line: 690, column: 28, scope: !1949)
!1963 = !DILocation(line: 691, column: 22, scope: !1949)
!1964 = !DILocation(line: 692, column: 26, scope: !1949)
!1965 = !DILocation(line: 693, column: 26, scope: !1949)
!1966 = !DILocation(line: 694, column: 26, scope: !1949)
!1967 = !DILocation(line: 696, column: 3, scope: !1949)
!1968 = !DILocation(line: 698, column: 8, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1949, file: !3, line: 698, column: 3)
!1970 = !DILocation(line: 0, scope: !1969)
!1971 = !DILocation(line: 698, column: 17, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 698, column: 3)
!1973 = !DILocation(line: 698, column: 3, scope: !1969)
!1974 = !DILocation(line: 699, column: 18, scope: !1972)
!1975 = !DILocation(line: 699, column: 15, scope: !1972)
!1976 = !DILocation(line: 699, column: 27, scope: !1972)
!1977 = !DILocation(line: 699, column: 24, scope: !1972)
!1978 = !DILocation(line: 699, column: 35, scope: !1972)
!1979 = !DILocation(line: 699, column: 32, scope: !1972)
!1980 = !DILocation(line: 699, column: 30, scope: !1972)
!1981 = !DILocation(line: 699, column: 21, scope: !1972)
!1982 = !DILocation(line: 699, column: 10, scope: !1972)
!1983 = !DILocation(line: 699, column: 13, scope: !1972)
!1984 = !DILocation(line: 698, column: 23, scope: !1972)
!1985 = !DILocation(line: 698, column: 3, scope: !1972)
!1986 = distinct !{!1986, !1973, !1987}
!1987 = !DILocation(line: 699, column: 37, scope: !1969)
!1988 = !DILocation(line: 700, column: 1, scope: !1949)
!1989 = distinct !DISubprogram(name: "sbitmap_a_and_b_or_c_cg", scope: !3, file: !3, line: 706, type: !1348, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1990)
!1990 = !{!1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002}
!1991 = !DILocalVariable(name: "dst", arg: 1, scope: !1989, file: !3, line: 706, type: !387)
!1992 = !DILocalVariable(name: "a", arg: 2, scope: !1989, file: !3, line: 706, type: !1119)
!1993 = !DILocalVariable(name: "b", arg: 3, scope: !1989, file: !3, line: 706, type: !1119)
!1994 = !DILocalVariable(name: "c", arg: 4, scope: !1989, file: !3, line: 706, type: !1119)
!1995 = !DILocalVariable(name: "i", scope: !1989, file: !3, line: 708, type: !7)
!1996 = !DILocalVariable(name: "n", scope: !1989, file: !3, line: 708, type: !7)
!1997 = !DILocalVariable(name: "dstp", scope: !1989, file: !3, line: 709, type: !1358)
!1998 = !DILocalVariable(name: "ap", scope: !1989, file: !3, line: 710, type: !1361)
!1999 = !DILocalVariable(name: "bp", scope: !1989, file: !3, line: 711, type: !1361)
!2000 = !DILocalVariable(name: "cp", scope: !1989, file: !3, line: 712, type: !1361)
!2001 = !DILocalVariable(name: "changed", scope: !1989, file: !3, line: 713, type: !397)
!2002 = !DILocalVariable(name: "tmp", scope: !2003, file: !3, line: 719, type: !1363)
!2003 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 718, column: 5)
!2004 = distinct !DILexicalBlock(scope: !2005, file: !3, line: 717, column: 3)
!2005 = distinct !DILexicalBlock(scope: !1989, file: !3, line: 717, column: 3)
!2006 = !DILocation(line: 0, scope: !1989)
!2007 = !DILocation(line: 708, column: 28, scope: !1989)
!2008 = !DILocation(line: 709, column: 22, scope: !1989)
!2009 = !DILocation(line: 710, column: 26, scope: !1989)
!2010 = !DILocation(line: 711, column: 26, scope: !1989)
!2011 = !DILocation(line: 712, column: 26, scope: !1989)
!2012 = !DILocation(line: 715, column: 3, scope: !1989)
!2013 = !DILocation(line: 717, column: 8, scope: !2005)
!2014 = !DILocation(line: 0, scope: !2005)
!2015 = !DILocation(line: 717, column: 17, scope: !2004)
!2016 = !DILocation(line: 717, column: 3, scope: !2005)
!2017 = !DILocation(line: 719, column: 39, scope: !2003)
!2018 = !DILocation(line: 719, column: 36, scope: !2003)
!2019 = !DILocation(line: 719, column: 48, scope: !2003)
!2020 = !DILocation(line: 719, column: 45, scope: !2003)
!2021 = !DILocation(line: 719, column: 56, scope: !2003)
!2022 = !DILocation(line: 719, column: 53, scope: !2003)
!2023 = !DILocation(line: 719, column: 51, scope: !2003)
!2024 = !DILocation(line: 719, column: 42, scope: !2003)
!2025 = !DILocation(line: 0, scope: !2003)
!2026 = !DILocation(line: 720, column: 18, scope: !2003)
!2027 = !DILocation(line: 720, column: 24, scope: !2003)
!2028 = !DILocation(line: 720, column: 15, scope: !2003)
!2029 = !DILocation(line: 721, column: 12, scope: !2003)
!2030 = !DILocation(line: 721, column: 15, scope: !2003)
!2031 = !DILocation(line: 717, column: 23, scope: !2004)
!2032 = !DILocation(line: 717, column: 3, scope: !2004)
!2033 = distinct !{!2033, !2016, !2034}
!2034 = !DILocation(line: 722, column: 5, scope: !2005)
!2035 = !DILocation(line: 724, column: 18, scope: !1989)
!2036 = !DILocation(line: 724, column: 10, scope: !1989)
!2037 = !DILocation(line: 724, column: 3, scope: !1989)
!2038 = distinct !DISubprogram(name: "sbitmap_a_and_b_or_c", scope: !3, file: !3, line: 728, type: !1405, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2039)
!2039 = !{!2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049}
!2040 = !DILocalVariable(name: "dst", arg: 1, scope: !2038, file: !3, line: 728, type: !387)
!2041 = !DILocalVariable(name: "a", arg: 2, scope: !2038, file: !3, line: 728, type: !1119)
!2042 = !DILocalVariable(name: "b", arg: 3, scope: !2038, file: !3, line: 728, type: !1119)
!2043 = !DILocalVariable(name: "c", arg: 4, scope: !2038, file: !3, line: 728, type: !1119)
!2044 = !DILocalVariable(name: "i", scope: !2038, file: !3, line: 730, type: !7)
!2045 = !DILocalVariable(name: "n", scope: !2038, file: !3, line: 730, type: !7)
!2046 = !DILocalVariable(name: "dstp", scope: !2038, file: !3, line: 731, type: !1358)
!2047 = !DILocalVariable(name: "ap", scope: !2038, file: !3, line: 732, type: !1361)
!2048 = !DILocalVariable(name: "bp", scope: !2038, file: !3, line: 733, type: !1361)
!2049 = !DILocalVariable(name: "cp", scope: !2038, file: !3, line: 734, type: !1361)
!2050 = !DILocation(line: 0, scope: !2038)
!2051 = !DILocation(line: 730, column: 28, scope: !2038)
!2052 = !DILocation(line: 731, column: 22, scope: !2038)
!2053 = !DILocation(line: 732, column: 26, scope: !2038)
!2054 = !DILocation(line: 733, column: 26, scope: !2038)
!2055 = !DILocation(line: 734, column: 26, scope: !2038)
!2056 = !DILocation(line: 736, column: 8, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 736, column: 3)
!2058 = !DILocation(line: 0, scope: !2057)
!2059 = !DILocation(line: 736, column: 17, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 736, column: 3)
!2061 = !DILocation(line: 736, column: 3, scope: !2057)
!2062 = !DILocation(line: 737, column: 18, scope: !2060)
!2063 = !DILocation(line: 737, column: 15, scope: !2060)
!2064 = !DILocation(line: 737, column: 27, scope: !2060)
!2065 = !DILocation(line: 737, column: 24, scope: !2060)
!2066 = !DILocation(line: 737, column: 35, scope: !2060)
!2067 = !DILocation(line: 737, column: 32, scope: !2060)
!2068 = !DILocation(line: 737, column: 30, scope: !2060)
!2069 = !DILocation(line: 737, column: 21, scope: !2060)
!2070 = !DILocation(line: 737, column: 10, scope: !2060)
!2071 = !DILocation(line: 737, column: 13, scope: !2060)
!2072 = !DILocation(line: 736, column: 23, scope: !2060)
!2073 = !DILocation(line: 736, column: 3, scope: !2060)
!2074 = distinct !{!2074, !2061, !2075}
!2075 = !DILocation(line: 737, column: 37, scope: !2057)
!2076 = !DILocation(line: 738, column: 1, scope: !2038)
!2077 = distinct !DISubprogram(name: "sbitmap_intersection_of_succs", scope: !3, file: !3, line: 745, type: !2078, scopeLine: 746, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2080)
!2078 = !DISubroutineType(types: !2079)
!2079 = !{null, !387, !400, !380}
!2080 = !{!2081, !2082, !2083, !2084, !3108, !3109, !3110, !3111, !3116, !3117}
!2081 = !DILocalVariable(name: "dst", arg: 1, scope: !2077, file: !3, line: 745, type: !387)
!2082 = !DILocalVariable(name: "src", arg: 2, scope: !2077, file: !3, line: 745, type: !400)
!2083 = !DILocalVariable(name: "bb", arg: 3, scope: !2077, file: !3, line: 745, type: !380)
!2084 = !DILocalVariable(name: "b", scope: !2077, file: !3, line: 747, type: !2085)
!2085 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !2086, line: 111, baseType: !2087)
!2086 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !2089)
!2089 = !{!2090, !3073, !3074, !3075, !3078, !3082, !3083, !3084, !3102, !3103, !3104, !3105, !3106, !3107}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !2088, file: !135, line: 219, baseType: !2091, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !2094)
!2094 = !{!2095}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2093, file: !135, line: 151, baseType: !2096, size: 128)
!2096 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !2097)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !2098)
!2098 = !{!2099, !2100, !2101}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2097, file: !135, line: 150, baseType: !7, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2097, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2097, file: !135, line: 150, baseType: !2102, size: 64, offset: 64)
!2102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 64, elements: !398)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !2086, line: 108, baseType: !2104)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !2106)
!2106 = !{!2107, !2108, !2109, !3065, !3066, !3067, !3068, !3069, !3070, !3071}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2105, file: !135, line: 124, baseType: !2087, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2105, file: !135, line: 125, baseType: !2087, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !2105, file: !135, line: 131, baseType: !2110, size: 64, offset: 128)
!2110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !2111)
!2111 = !{!2112, !2116}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !2110, file: !135, line: 129, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !2086, line: 66, baseType: !2114)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !2086, line: 65, flags: DIFlagFwdDecl)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !2110, file: !135, line: 130, baseType: !2117, size: 64)
!2117 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !2086, line: 50, baseType: !2118)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !2120, line: 240, size: 384, elements: !2121)
!2120 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2121 = !{!2122, !2123, !2124, !2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2119, file: !2120, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2119, file: !2120, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !2119, file: !2120, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !2119, file: !2120, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !2119, file: !2120, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !2119, file: !2120, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !2119, file: !2120, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !2119, file: !2120, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !2119, file: !2120, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !2119, file: !2120, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !2119, file: !2120, line: 321, baseType: !2133, size: 320, offset: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !2120, line: 315, size: 320, elements: !2134)
!2134 = !{!2135, !3032, !3034, !3063, !3064}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !2133, file: !2120, line: 316, baseType: !2136, size: 64)
!2136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 64, elements: !398)
!2137 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !2120, line: 183, baseType: !2138)
!2138 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !2120, line: 166, size: 64, elements: !2139)
!2139 = !{!2140, !2141, !2142, !2143, !2144, !2152, !2153, !2165, !2168, !2228, !3010, !3011, !3022, !3029}
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !2138, file: !2120, line: 168, baseType: !380, size: 32)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !2138, file: !2120, line: 169, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !2138, file: !2120, line: 170, baseType: !385, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !2138, file: !2120, line: 171, baseType: !2117, size: 64)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !2138, file: !2120, line: 172, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !2086, line: 53, baseType: !2146)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !2120, line: 359, size: 128, elements: !2148)
!2148 = !{!2149, !2150}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !2147, file: !2120, line: 360, baseType: !380, size: 32)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2147, file: !2120, line: 361, baseType: !2151, size: 64, offset: 64)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2117, size: 64, elements: !398)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !2138, file: !2120, line: 173, baseType: !5, size: 32)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !2138, file: !2120, line: 174, baseType: !2154, size: 32)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !2120, line: 133, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2120, line: 115, size: 32, elements: !2156)
!2156 = !{!2157, !2158, !2159, !2160, !2161, !2162, !2163, !2164}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !2155, file: !2120, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !2155, file: !2120, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !2155, file: !2120, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !2155, file: !2120, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !2155, file: !2120, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !2155, file: !2120, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !2155, file: !2120, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !2155, file: !2120, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !2138, file: !2120, line: 175, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !2120, line: 175, flags: DIFlagFwdDecl)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !2138, file: !2120, line: 176, baseType: !2169, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !2171, line: 75, size: 256, elements: !2172)
!2171 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2172 = !{!2173, !2187, !2188, !2189}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !2170, file: !2171, line: 76, baseType: !2174, size: 64)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !2171, line: 68, baseType: !2176)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !2171, line: 63, size: 320, elements: !2177)
!2177 = !{!2178, !2180, !2181, !2182}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !2171, line: 64, baseType: !2179, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2176, file: !2171, line: 65, baseType: !2179, size: 64, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !2176, file: !2171, line: 66, baseType: !7, size: 32, offset: 128)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2176, file: !2171, line: 67, baseType: !2183, size: 128, offset: 192)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2184, size: 128, elements: !2185)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !2171, line: 29, baseType: !397)
!2185 = !{!2186}
!2186 = !DISubrange(count: 2)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !2170, file: !2171, line: 77, baseType: !2174, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !2170, file: !2171, line: 78, baseType: !7, size: 32, offset: 128)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !2170, file: !2171, line: 79, baseType: !2190, size: 64, offset: 192)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !2171, line: 49, baseType: !2192)
!2192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !2171, line: 45, size: 832, elements: !2193)
!2193 = !{!2194, !2195, !2196}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2192, file: !2171, line: 46, baseType: !2179, size: 64)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !2192, file: !2171, line: 47, baseType: !2169, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !2192, file: !2171, line: 48, baseType: !2197, size: 704, offset: 128)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !2198, line: 164, size: 704, elements: !2199)
!2198 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2199 = !{!2200, !2201, !2211, !2212, !2213, !2214, !2215, !2216, !2220, !2224, !2225, !2226, !2227}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !2197, file: !2198, line: 166, baseType: !467, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !2197, file: !2198, line: 167, baseType: !2202, size: 64, offset: 64)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !2198, line: 157, size: 192, elements: !2204)
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2203, file: !2198, line: 159, baseType: !382, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2203, file: !2198, line: 160, baseType: !2202, size: 64, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !2203, file: !2198, line: 161, baseType: !2208, size: 32, offset: 128)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !383, size: 32, elements: !2209)
!2209 = !{!2210}
!2210 = !DISubrange(count: 4)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !2197, file: !2198, line: 168, baseType: !382, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !2197, file: !2198, line: 169, baseType: !382, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !2197, file: !2198, line: 170, baseType: !382, size: 64, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !2197, file: !2198, line: 171, baseType: !467, size: 64, offset: 320)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !2197, file: !2198, line: 172, baseType: !380, size: 32, offset: 384)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !2197, file: !2198, line: 176, baseType: !2217, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!2202, !384, !467}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !2197, file: !2198, line: 177, baseType: !2221, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2222, size: 64)
!2222 = !DISubroutineType(types: !2223)
!2223 = !{null, !384, !2202}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !2197, file: !2198, line: 178, baseType: !384, size: 64, offset: 576)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !2197, file: !2198, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !2197, file: !2198, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !2197, file: !2198, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !2138, file: !2120, line: 177, baseType: !2229, size: 64)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !2086, line: 56, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !151, line: 3371, size: 1792, elements: !2232)
!2232 = !{!2233, !2266, !2272, !2283, !2300, !2311, !2316, !2322, !2328, !2340, !2352, !2390, !2395, !2423, !2431, !2432, !2437, !2446, !2452, !2457, !2461, !2465, !2635, !2684, !2690, !2697, !2704, !2730, !2755, !2772, !2784, !2806, !2821, !2992}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2231, file: !151, line: 3372, baseType: !2234, size: 64)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !151, line: 360, size: 64, elements: !2235)
!2235 = !{!2236, !2237, !2238, !2239, !2240, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262, !2263, !2264, !2265}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2234, file: !151, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !2234, file: !151, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !2234, file: !151, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !2234, file: !151, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !2234, file: !151, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !2234, file: !151, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !2234, file: !151, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !2234, file: !151, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !2234, file: !151, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !2234, file: !151, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !2234, file: !151, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !2234, file: !151, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !2234, file: !151, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !2234, file: !151, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !2234, file: !151, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !2234, file: !151, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !2234, file: !151, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !2234, file: !151, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2234, file: !151, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2234, file: !151, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2234, file: !151, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2234, file: !151, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2234, file: !151, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2234, file: !151, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2234, file: !151, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2234, file: !151, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !2234, file: !151, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !2234, file: !151, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !2234, file: !151, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !2234, file: !151, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2231, file: !151, line: 3373, baseType: !2267, size: 192)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !151, line: 402, size: 192, elements: !2268)
!2268 = !{!2269, !2270, !2271}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2267, file: !151, line: 403, baseType: !2234, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !2267, file: !151, line: 404, baseType: !2229, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2267, file: !151, line: 405, baseType: !2229, size: 64, offset: 128)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !2231, file: !151, line: 3374, baseType: !2273, size: 320)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !151, line: 1384, size: 320, elements: !2274)
!2274 = !{!2275, !2276}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2273, file: !151, line: 1385, baseType: !2267, size: 192)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !2273, file: !151, line: 1386, baseType: !2277, size: 128, offset: 192)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !2278, line: 58, baseType: !2279)
!2278 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2278, line: 54, size: 128, elements: !2280)
!2280 = !{!2281, !2282}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !2279, file: !2278, line: 56, baseType: !397, size: 64)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !2279, file: !2278, line: 57, baseType: !467, size: 64, offset: 64)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !2231, file: !151, line: 3375, baseType: !2284, size: 256)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !151, line: 1397, size: 256, elements: !2285)
!2285 = !{!2286, !2287}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2284, file: !151, line: 1398, baseType: !2267, size: 192)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !2284, file: !151, line: 1399, baseType: !2288, size: 64, offset: 192)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !2290, line: 52, size: 256, elements: !2291)
!2290 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2291 = !{!2292, !2293, !2294, !2295, !2296, !2297, !2298}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !2289, file: !2290, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !2289, file: !2290, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !2289, file: !2290, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !2289, file: !2290, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2289, file: !2290, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !2289, file: !2290, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2289, file: !2290, line: 62, baseType: !2299, size: 192, offset: 64)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !397, size: 192, elements: !756)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !2231, file: !151, line: 3376, baseType: !2301, size: 256)
!2301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !151, line: 1408, size: 256, elements: !2302)
!2302 = !{!2303, !2304}
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2301, file: !151, line: 1409, baseType: !2267, size: 192)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !2301, file: !151, line: 1410, baseType: !2305, size: 64, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2306, size: 64)
!2306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !2307, line: 27, size: 192, elements: !2308)
!2307 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2308 = !{!2309, !2310}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2306, file: !2307, line: 29, baseType: !2277, size: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2306, file: !2307, line: 30, baseType: !5, size: 32, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !2231, file: !151, line: 3377, baseType: !2312, size: 256)
!2312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !151, line: 1437, size: 256, elements: !2313)
!2313 = !{!2314, !2315}
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2312, file: !151, line: 1438, baseType: !2267, size: 192)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2312, file: !151, line: 1439, baseType: !2229, size: 64, offset: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2231, file: !151, line: 3378, baseType: !2317, size: 256)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !151, line: 1418, size: 256, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2317, file: !151, line: 1419, baseType: !2267, size: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2317, file: !151, line: 1420, baseType: !380, size: 32, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2317, file: !151, line: 1421, baseType: !473, size: 8, offset: 224)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !2231, file: !151, line: 3379, baseType: !2323, size: 320)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !151, line: 1428, size: 320, elements: !2324)
!2324 = !{!2325, !2326, !2327}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2323, file: !151, line: 1429, baseType: !2267, size: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !2323, file: !151, line: 1430, baseType: !2229, size: 64, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !2323, file: !151, line: 1431, baseType: !2229, size: 64, offset: 256)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !2231, file: !151, line: 3380, baseType: !2329, size: 320)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !151, line: 1460, size: 320, elements: !2330)
!2330 = !{!2331, !2332}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2329, file: !151, line: 1461, baseType: !2267, size: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2329, file: !151, line: 1462, baseType: !2333, size: 128, offset: 192)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !2334, line: 31, size: 128, elements: !2335)
!2334 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2335 = !{!2336, !2338, !2339}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2333, file: !2334, line: 32, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2333, file: !2334, line: 33, baseType: !7, size: 32, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !2333, file: !2334, line: 34, baseType: !7, size: 32, offset: 96)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !2231, file: !151, line: 3381, baseType: !2341, size: 384)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !151, line: 2507, size: 384, elements: !2342)
!2342 = !{!2343, !2344, !2349, !2350, !2351}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2341, file: !151, line: 2508, baseType: !2267, size: 192)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2341, file: !151, line: 2509, baseType: !2345, size: 32, offset: 192)
!2345 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !2346, line: 58, baseType: !2347)
!2346 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2347 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !2348, line: 44, baseType: !7)
!2348 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2341, file: !151, line: 2510, baseType: !7, size: 32, offset: 224)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2341, file: !151, line: 2511, baseType: !2229, size: 64, offset: 256)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2341, file: !151, line: 2512, baseType: !2229, size: 64, offset: 320)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !2231, file: !151, line: 3382, baseType: !2353, size: 896)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !151, line: 2652, size: 896, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373, !2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381, !2382, !2383, !2384, !2385, !2386, !2387}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2353, file: !151, line: 2653, baseType: !2341, size: 384)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2353, file: !151, line: 2654, baseType: !2229, size: 64, offset: 384)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2353, file: !151, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !2353, file: !151, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !2353, file: !151, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !2353, file: !151, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2353, file: !151, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !2353, file: !151, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !2353, file: !151, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !2353, file: !151, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2353, file: !151, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2353, file: !151, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2353, file: !151, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2353, file: !151, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2353, file: !151, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2353, file: !151, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2353, file: !151, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !2353, file: !151, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !2353, file: !151, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !2353, file: !151, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !2353, file: !151, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !2353, file: !151, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !2353, file: !151, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !2353, file: !151, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !2353, file: !151, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !2353, file: !151, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !2353, file: !151, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2353, file: !151, line: 2703, baseType: !7, size: 32, offset: 512)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2353, file: !151, line: 2705, baseType: !2229, size: 64, offset: 576)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !2353, file: !151, line: 2706, baseType: !2229, size: 64, offset: 640)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2353, file: !151, line: 2707, baseType: !2229, size: 64, offset: 704)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2353, file: !151, line: 2708, baseType: !2229, size: 64, offset: 768)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2353, file: !151, line: 2711, baseType: !2388, size: 64, offset: 832)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !151, line: 2711, flags: DIFlagFwdDecl)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !2231, file: !151, line: 3383, baseType: !2391, size: 960)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !151, line: 2756, size: 960, elements: !2392)
!2392 = !{!2393, !2394}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2391, file: !151, line: 2757, baseType: !2353, size: 896)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !2391, file: !151, line: 2758, baseType: !2117, size: 64, offset: 896)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !2231, file: !151, line: 3384, baseType: !2396, size: 1472)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !151, line: 3114, size: 1472, elements: !2397)
!2397 = !{!2398, !2419, !2420, !2421, !2422}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2396, file: !151, line: 3115, baseType: !2399, size: 1216)
!2399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !151, line: 2984, size: 1216, elements: !2400)
!2400 = !{!2401, !2402, !2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2411, !2412, !2413, !2414, !2415, !2416, !2417, !2418}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2399, file: !151, line: 2985, baseType: !2391, size: 960)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !2399, file: !151, line: 2986, baseType: !2229, size: 64, offset: 960)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !2399, file: !151, line: 2987, baseType: !2229, size: 64, offset: 1024)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !2399, file: !151, line: 2988, baseType: !2229, size: 64, offset: 1088)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !2399, file: !151, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !2399, file: !151, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !2399, file: !151, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !2399, file: !151, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !2399, file: !151, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !2399, file: !151, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !2399, file: !151, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !2399, file: !151, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !2399, file: !151, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !2399, file: !151, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !2399, file: !151, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !2399, file: !151, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !2399, file: !151, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !2399, file: !151, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !2396, file: !151, line: 3117, baseType: !2229, size: 64, offset: 1216)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !2396, file: !151, line: 3119, baseType: !2229, size: 64, offset: 1280)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !2396, file: !151, line: 3121, baseType: !2229, size: 64, offset: 1344)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !2396, file: !151, line: 3123, baseType: !2229, size: 64, offset: 1408)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !2231, file: !151, line: 3385, baseType: !2424, size: 1088)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !151, line: 2874, size: 1088, elements: !2425)
!2425 = !{!2426, !2427, !2428}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2424, file: !151, line: 2875, baseType: !2391, size: 960)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !2424, file: !151, line: 2876, baseType: !2117, size: 64, offset: 960)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2424, file: !151, line: 2877, baseType: !2429, size: 64, offset: 1024)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !151, line: 2856, flags: DIFlagFwdDecl)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !2231, file: !151, line: 3386, baseType: !2399, size: 1216)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !2231, file: !151, line: 3387, baseType: !2433, size: 1280)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !151, line: 3093, size: 1280, elements: !2434)
!2434 = !{!2435, !2436}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2433, file: !151, line: 3094, baseType: !2399, size: 1216)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2433, file: !151, line: 3095, baseType: !2429, size: 64, offset: 1216)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !2231, file: !151, line: 3388, baseType: !2438, size: 1216)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !151, line: 2824, size: 1216, elements: !2439)
!2439 = !{!2440, !2441, !2442, !2443, !2444, !2445}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2438, file: !151, line: 2825, baseType: !2353, size: 896)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2438, file: !151, line: 2827, baseType: !2229, size: 64, offset: 896)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !2438, file: !151, line: 2828, baseType: !2229, size: 64, offset: 960)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !2438, file: !151, line: 2829, baseType: !2229, size: 64, offset: 1024)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2438, file: !151, line: 2830, baseType: !2229, size: 64, offset: 1088)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !2438, file: !151, line: 2831, baseType: !2229, size: 64, offset: 1152)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !2231, file: !151, line: 3389, baseType: !2447, size: 1024)
!2447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !151, line: 2850, size: 1024, elements: !2448)
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2447, file: !151, line: 2851, baseType: !2391, size: 960)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !2447, file: !151, line: 2852, baseType: !380, size: 32, offset: 960)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !2447, file: !151, line: 2853, baseType: !380, size: 32, offset: 992)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !2231, file: !151, line: 3390, baseType: !2453, size: 1024)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !151, line: 2857, size: 1024, elements: !2454)
!2454 = !{!2455, !2456}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2453, file: !151, line: 2858, baseType: !2391, size: 960)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !2453, file: !151, line: 2859, baseType: !2429, size: 64, offset: 960)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !2231, file: !151, line: 3391, baseType: !2458, size: 960)
!2458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !151, line: 2862, size: 960, elements: !2459)
!2459 = !{!2460}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2458, file: !151, line: 2863, baseType: !2391, size: 960)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !2231, file: !151, line: 3392, baseType: !2462, size: 1472)
!2462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !151, line: 3304, size: 1472, elements: !2463)
!2463 = !{!2464}
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2462, file: !151, line: 3305, baseType: !2396, size: 1472)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !2231, file: !151, line: 3393, baseType: !2466, size: 1792)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !151, line: 3248, size: 1792, elements: !2467)
!2467 = !{!2468, !2469, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622, !2623, !2624, !2625, !2626, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2466, file: !151, line: 3249, baseType: !2396, size: 1472)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !2466, file: !151, line: 3251, baseType: !2470, size: 64, offset: 1472)
!2470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2471, size: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !2472, line: 463, size: 1152, elements: !2473)
!2472 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2473 = !{!2474, !2477, !2507, !2508, !2511, !2514, !2559, !2560, !2561, !2562, !2563, !2587, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !2471, file: !2472, line: 464, baseType: !2475, size: 64)
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !2472, line: 464, flags: DIFlagFwdDecl)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !2471, file: !2472, line: 467, baseType: !2478, size: 64, offset: 64)
!2478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2479, size: 64)
!2479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !2480)
!2480 = !{!2481, !2482, !2483, !2496, !2497, !2498, !2499, !2500, !2501, !2503, !2505, !2506}
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !2479, file: !135, line: 377, baseType: !2085, size: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !2479, file: !135, line: 378, baseType: !2085, size: 64, offset: 64)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !2479, file: !135, line: 381, baseType: !2484, size: 64, offset: 128)
!2484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2485, size: 64)
!2485 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !2486)
!2486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !2487)
!2487 = !{!2488}
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2486, file: !135, line: 282, baseType: !2489, size: 128)
!2489 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !2490)
!2490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !2491)
!2491 = !{!2492, !2493, !2494}
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2490, file: !135, line: 281, baseType: !7, size: 32)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2490, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2490, file: !135, line: 281, baseType: !2495, size: 64, offset: 64)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2085, size: 64, elements: !398)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !2479, file: !135, line: 384, baseType: !380, size: 32, offset: 192)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !2479, file: !135, line: 387, baseType: !380, size: 32, offset: 224)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !2479, file: !135, line: 390, baseType: !380, size: 32, offset: 256)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !2479, file: !135, line: 394, baseType: !2484, size: 64, offset: 320)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !2479, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !2479, file: !135, line: 399, baseType: !2502, size: 64, offset: 416)
!2502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !2185)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !2479, file: !135, line: 402, baseType: !2504, size: 64, offset: 480)
!2504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !2185)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !2479, file: !135, line: 406, baseType: !380, size: 32, offset: 544)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !2479, file: !135, line: 409, baseType: !380, size: 32, offset: 576)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !2471, file: !2472, line: 470, baseType: !2114, size: 64, offset: 128)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !2471, file: !2472, line: 473, baseType: !2509, size: 64, offset: 192)
!2509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2510, size: 64)
!2510 = !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !2472, line: 166, flags: DIFlagFwdDecl)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !2471, file: !2472, line: 476, baseType: !2512, size: 64, offset: 256)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !2472, line: 476, flags: DIFlagFwdDecl)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !2471, file: !2472, line: 479, baseType: !2515, size: 64, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !2516, line: 144, baseType: !2517)
!2516 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !2516, line: 100, size: 896, elements: !2519)
!2519 = !{!2520, !2526, !2528, !2533, !2535, !2536, !2537, !2538, !2539, !2540, !2545, !2547, !2548, !2553, !2558}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !2518, file: !2516, line: 102, baseType: !2521, size: 64)
!2521 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !2516, line: 52, baseType: !2522)
!2522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2523, size: 64)
!2523 = !DISubroutineType(types: !2524)
!2524 = !{!2525, !616}
!2525 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !2516, line: 47, baseType: !7)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !2518, file: !2516, line: 105, baseType: !2527, size: 64, offset: 64)
!2527 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !2516, line: 59, baseType: !619)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !2518, file: !2516, line: 108, baseType: !2529, size: 64, offset: 128)
!2529 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !2516, line: 63, baseType: !2530)
!2530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2531, size: 64)
!2531 = !DISubroutineType(types: !2532)
!2532 = !{null, !384}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2518, file: !2516, line: 111, baseType: !2534, size: 64, offset: 192)
!2534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2518, file: !2516, line: 114, baseType: !488, size: 64, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !2518, file: !2516, line: 117, baseType: !488, size: 64, offset: 320)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !2518, file: !2516, line: 120, baseType: !488, size: 64, offset: 384)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !2518, file: !2516, line: 124, baseType: !7, size: 32, offset: 448)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !2518, file: !2516, line: 128, baseType: !7, size: 32, offset: 480)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !2518, file: !2516, line: 131, baseType: !2541, size: 64, offset: 512)
!2541 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !2516, line: 75, baseType: !2542)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!384, !488, !488}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !2518, file: !2516, line: 132, baseType: !2546, size: 64, offset: 576)
!2546 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !2516, line: 78, baseType: !2530)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !2518, file: !2516, line: 135, baseType: !384, size: 64, offset: 640)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !2518, file: !2516, line: 136, baseType: !2549, size: 64, offset: 704)
!2549 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !2516, line: 82, baseType: !2550)
!2550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2551, size: 64)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!384, !384, !488, !488}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !2518, file: !2516, line: 137, baseType: !2554, size: 64, offset: 768)
!2554 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !2516, line: 83, baseType: !2555)
!2555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2556, size: 64)
!2556 = !DISubroutineType(types: !2557)
!2557 = !{null, !384, !384}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !2518, file: !2516, line: 141, baseType: !7, size: 32, offset: 832)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !2471, file: !2472, line: 484, baseType: !2229, size: 64, offset: 384)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !2471, file: !2472, line: 488, baseType: !2229, size: 64, offset: 448)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !2471, file: !2472, line: 493, baseType: !2229, size: 64, offset: 512)
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !2471, file: !2472, line: 496, baseType: !2229, size: 64, offset: 576)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !2471, file: !2472, line: 501, baseType: !2564, size: 64, offset: 640)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !146, line: 2355, size: 576, elements: !2566)
!2566 = !{!2567, !2570, !2571, !2572, !2573, !2575, !2576, !2581, !2582, !2583, !2584, !2585, !2586}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !2565, file: !146, line: 2356, baseType: !2568, size: 64)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !146, line: 2356, flags: DIFlagFwdDecl)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !2565, file: !146, line: 2357, baseType: !385, size: 64, offset: 64)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !2565, file: !146, line: 2358, baseType: !380, size: 32, offset: 128)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !2565, file: !146, line: 2359, baseType: !380, size: 32, offset: 160)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !2565, file: !146, line: 2360, baseType: !2574, size: 128, offset: 192)
!2574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !380, size: 128, elements: !2209)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !2565, file: !146, line: 2364, baseType: !380, size: 32, offset: 320)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !2565, file: !146, line: 2367, baseType: !2577, size: 128, offset: 384)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !146, line: 2349, size: 128, elements: !2578)
!2578 = !{!2579, !2580}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !2577, file: !146, line: 2351, baseType: !2117, size: 64)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2577, file: !146, line: 2352, baseType: !467, size: 64, offset: 64)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !2565, file: !146, line: 2371, baseType: !145, size: 32, offset: 512)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !2565, file: !146, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !2565, file: !146, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !2565, file: !146, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !2565, file: !146, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !2565, file: !146, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !2471, file: !2472, line: 504, baseType: !2588, size: 64, offset: 704)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !2472, line: 504, flags: DIFlagFwdDecl)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !2471, file: !2472, line: 507, baseType: !2515, size: 64, offset: 768)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !2471, file: !2472, line: 510, baseType: !380, size: 32, offset: 832)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !2471, file: !2472, line: 513, baseType: !380, size: 32, offset: 864)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !2471, file: !2472, line: 516, baseType: !2345, size: 32, offset: 896)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !2471, file: !2472, line: 519, baseType: !2345, size: 32, offset: 928)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !2471, file: !2472, line: 522, baseType: !7, size: 32, offset: 960)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !2471, file: !2472, line: 523, baseType: !7, size: 32, offset: 992)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !2471, file: !2472, line: 528, baseType: !385, size: 64, offset: 1024)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !2471, file: !2472, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !2471, file: !2472, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !2471, file: !2472, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !2471, file: !2472, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !2471, file: !2472, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !2471, file: !2472, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !2471, file: !2472, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !2471, file: !2472, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !2471, file: !2472, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !2471, file: !2472, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !2471, file: !2472, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !2471, file: !2472, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !2471, file: !2472, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !2471, file: !2472, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !2471, file: !2472, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !2471, file: !2472, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !2466, file: !151, line: 3254, baseType: !2229, size: 64, offset: 1536)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !2466, file: !151, line: 3257, baseType: !2229, size: 64, offset: 1600)
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !2466, file: !151, line: 3258, baseType: !2229, size: 64, offset: 1664)
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !2466, file: !151, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !2466, file: !151, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !2466, file: !151, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !2466, file: !151, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !2466, file: !151, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !2466, file: !151, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !2466, file: !151, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!2624 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !2466, file: !151, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !2466, file: !151, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !2466, file: !151, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !2466, file: !151, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !2466, file: !151, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !2466, file: !151, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !2466, file: !151, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !2466, file: !151, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !2466, file: !151, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !2466, file: !151, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !2466, file: !151, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2231, file: !151, line: 3394, baseType: !2636, size: 1344)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !151, line: 2279, size: 1344, elements: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2663, !2664, !2665, !2673, !2674, !2675, !2676, !2677, !2678, !2679, !2680, !2681}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2636, file: !151, line: 2280, baseType: !2267, size: 192)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2636, file: !151, line: 2281, baseType: !2229, size: 64, offset: 192)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2636, file: !151, line: 2282, baseType: !2229, size: 64, offset: 256)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !2636, file: !151, line: 2283, baseType: !2229, size: 64, offset: 320)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !2636, file: !151, line: 2284, baseType: !2229, size: 64, offset: 384)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !2636, file: !151, line: 2285, baseType: !7, size: 32, offset: 448)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !2636, file: !151, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !2636, file: !151, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !2636, file: !151, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !2636, file: !151, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !2636, file: !151, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !2636, file: !151, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2636, file: !151, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !2636, file: !151, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !2636, file: !151, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !2636, file: !151, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !2636, file: !151, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !2636, file: !151, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !2636, file: !151, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !2636, file: !151, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !2636, file: !151, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !2636, file: !151, line: 2305, baseType: !7, size: 32, offset: 512)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !2636, file: !151, line: 2306, baseType: !2661, size: 32, offset: 544)
!2661 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !2662, line: 31, baseType: !380)
!2662 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !2636, file: !151, line: 2307, baseType: !2229, size: 64, offset: 576)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !2636, file: !151, line: 2308, baseType: !2229, size: 64, offset: 640)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !2636, file: !151, line: 2314, baseType: !2666, size: 64, offset: 704)
!2666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !151, line: 2309, size: 64, elements: !2667)
!2667 = !{!2668, !2669, !2670}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2666, file: !151, line: 2310, baseType: !380, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2666, file: !151, line: 2311, baseType: !385, size: 64)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !2666, file: !151, line: 2312, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2672, size: 64)
!2672 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !151, line: 2277, flags: DIFlagFwdDecl)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2636, file: !151, line: 2315, baseType: !2229, size: 64, offset: 768)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !2636, file: !151, line: 2316, baseType: !2229, size: 64, offset: 832)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !2636, file: !151, line: 2317, baseType: !2229, size: 64, offset: 896)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !2636, file: !151, line: 2318, baseType: !2229, size: 64, offset: 960)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !2636, file: !151, line: 2319, baseType: !2229, size: 64, offset: 1024)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2636, file: !151, line: 2320, baseType: !2229, size: 64, offset: 1088)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2636, file: !151, line: 2321, baseType: !2229, size: 64, offset: 1152)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !2636, file: !151, line: 2322, baseType: !2229, size: 64, offset: 1216)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !2636, file: !151, line: 2324, baseType: !2682, size: 64, offset: 1280)
!2682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2683, size: 64)
!2683 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !151, line: 2324, flags: DIFlagFwdDecl)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2231, file: !151, line: 3395, baseType: !2685, size: 320)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !151, line: 1469, size: 320, elements: !2686)
!2686 = !{!2687, !2688, !2689}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2685, file: !151, line: 1470, baseType: !2267, size: 192)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !2685, file: !151, line: 1471, baseType: !2229, size: 64, offset: 192)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2685, file: !151, line: 1472, baseType: !2229, size: 64, offset: 256)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2231, file: !151, line: 3396, baseType: !2691, size: 320)
!2691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !151, line: 1482, size: 320, elements: !2692)
!2692 = !{!2693, !2694, !2695}
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2691, file: !151, line: 1483, baseType: !2267, size: 192)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2691, file: !151, line: 1484, baseType: !380, size: 32, offset: 192)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !2691, file: !151, line: 1485, baseType: !2696, size: 64, offset: 256)
!2696 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2229, size: 64, elements: !398)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !2231, file: !151, line: 3397, baseType: !2698, size: 384)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !151, line: 1829, size: 384, elements: !2699)
!2699 = !{!2700, !2701, !2702, !2703}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2698, file: !151, line: 1830, baseType: !2267, size: 192)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2698, file: !151, line: 1831, baseType: !2345, size: 32, offset: 192)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2698, file: !151, line: 1832, baseType: !2229, size: 64, offset: 256)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !2698, file: !151, line: 1835, baseType: !2696, size: 64, offset: 320)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !2231, file: !151, line: 3398, baseType: !2705, size: 704)
!2705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !151, line: 1898, size: 704, elements: !2706)
!2706 = !{!2707, !2708, !2709, !2713, !2714, !2717}
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2705, file: !151, line: 1899, baseType: !2267, size: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !2705, file: !151, line: 1902, baseType: !2229, size: 64, offset: 192)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !2705, file: !151, line: 1905, baseType: !2710, size: 64, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !2086, line: 58, baseType: !2711)
!2711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2712, size: 64)
!2712 = !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !2086, line: 57, flags: DIFlagFwdDecl)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2705, file: !151, line: 1908, baseType: !7, size: 32, offset: 320)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !2705, file: !151, line: 1911, baseType: !2715, size: 64, offset: 384)
!2715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2716, size: 64)
!2716 = !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !151, line: 1876, flags: DIFlagFwdDecl)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !2705, file: !151, line: 1914, baseType: !2718, size: 256, offset: 448)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !151, line: 1883, size: 256, elements: !2719)
!2719 = !{!2720, !2722, !2723, !2728}
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2718, file: !151, line: 1884, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2718, file: !151, line: 1885, baseType: !2721, size: 64, offset: 64)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !2718, file: !151, line: 1891, baseType: !2724, size: 64, offset: 128)
!2724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2718, file: !151, line: 1891, size: 64, elements: !2725)
!2725 = !{!2726, !2727}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2724, file: !151, line: 1891, baseType: !2710, size: 64)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !2724, file: !151, line: 1891, baseType: !2229, size: 64)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !2718, file: !151, line: 1892, baseType: !2729, size: 64, offset: 192)
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2231, file: !151, line: 3399, baseType: !2731, size: 704)
!2731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !151, line: 2008, size: 704, elements: !2732)
!2732 = !{!2733, !2734, !2735, !2736, !2737, !2738, !2750, !2751, !2752, !2753, !2754}
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2731, file: !151, line: 2009, baseType: !2267, size: 192)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !2731, file: !151, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !2731, file: !151, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2731, file: !151, line: 2014, baseType: !2345, size: 32, offset: 224)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !2731, file: !151, line: 2016, baseType: !2229, size: 64, offset: 256)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !2731, file: !151, line: 2017, baseType: !2739, size: 64, offset: 320)
!2739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2740, size: 64)
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !151, line: 183, baseType: !2741)
!2741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !151, line: 183, size: 128, elements: !2742)
!2742 = !{!2743}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2741, file: !151, line: 183, baseType: !2744, size: 128)
!2744 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !151, line: 182, baseType: !2745)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !151, line: 182, size: 128, elements: !2746)
!2746 = !{!2747, !2748, !2749}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2745, file: !151, line: 182, baseType: !7, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2745, file: !151, line: 182, baseType: !7, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2745, file: !151, line: 182, baseType: !2696, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !2731, file: !151, line: 2019, baseType: !2229, size: 64, offset: 384)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !2731, file: !151, line: 2020, baseType: !2229, size: 64, offset: 448)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !2731, file: !151, line: 2021, baseType: !2229, size: 64, offset: 512)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !2731, file: !151, line: 2022, baseType: !2229, size: 64, offset: 576)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !2731, file: !151, line: 2023, baseType: !2229, size: 64, offset: 640)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !2231, file: !151, line: 3400, baseType: !2756, size: 832)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !151, line: 2430, size: 832, elements: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2756, file: !151, line: 2431, baseType: !2267, size: 192)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2756, file: !151, line: 2433, baseType: !2229, size: 64, offset: 192)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !2756, file: !151, line: 2434, baseType: !2229, size: 64, offset: 256)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !2756, file: !151, line: 2435, baseType: !2229, size: 64, offset: 320)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !2756, file: !151, line: 2436, baseType: !2229, size: 64, offset: 384)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !2756, file: !151, line: 2437, baseType: !2739, size: 64, offset: 448)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !2756, file: !151, line: 2438, baseType: !2229, size: 64, offset: 512)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !2756, file: !151, line: 2440, baseType: !2229, size: 64, offset: 576)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !2756, file: !151, line: 2441, baseType: !2229, size: 64, offset: 640)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !2756, file: !151, line: 2443, baseType: !2768, size: 128, offset: 704)
!2768 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !151, line: 182, baseType: !2769)
!2769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !151, line: 182, size: 128, elements: !2770)
!2770 = !{!2771}
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2769, file: !151, line: 182, baseType: !2744, size: 128)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !2231, file: !151, line: 3401, baseType: !2773, size: 320)
!2773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !151, line: 3327, size: 320, elements: !2774)
!2774 = !{!2775, !2776, !2783}
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2773, file: !151, line: 3329, baseType: !2267, size: 192)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !2773, file: !151, line: 3330, baseType: !2777, size: 64, offset: 192)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !151, line: 3320, size: 192, elements: !2779)
!2779 = !{!2780, !2781, !2782}
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !2778, file: !151, line: 3322, baseType: !2777, size: 64)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2778, file: !151, line: 3323, baseType: !2777, size: 64, offset: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !2778, file: !151, line: 3324, baseType: !2229, size: 64, offset: 128)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !2773, file: !151, line: 3331, baseType: !2777, size: 64, offset: 256)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !2231, file: !151, line: 3402, baseType: !2785, size: 256)
!2785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !151, line: 1540, size: 256, elements: !2786)
!2786 = !{!2787, !2788}
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2785, file: !151, line: 1541, baseType: !2267, size: 192)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !2785, file: !151, line: 1542, baseType: !2789, size: 64, offset: 192)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !151, line: 1538, baseType: !2791)
!2791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !151, line: 1538, size: 192, elements: !2792)
!2792 = !{!2793}
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2791, file: !151, line: 1538, baseType: !2794, size: 192)
!2794 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !151, line: 1537, baseType: !2795)
!2795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !151, line: 1537, size: 192, elements: !2796)
!2796 = !{!2797, !2798, !2799}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2795, file: !151, line: 1537, baseType: !7, size: 32)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2795, file: !151, line: 1537, baseType: !7, size: 32, offset: 32)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !2795, file: !151, line: 1537, baseType: !2800, size: 128, offset: 64)
!2800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2801, size: 128, elements: !398)
!2801 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !151, line: 1535, baseType: !2802)
!2802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !151, line: 1532, size: 128, elements: !2803)
!2803 = !{!2804, !2805}
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2802, file: !151, line: 1533, baseType: !2229, size: 64)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2802, file: !151, line: 1534, baseType: !2229, size: 64, offset: 64)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !2231, file: !151, line: 3403, baseType: !2807, size: 512)
!2807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !151, line: 1938, size: 512, elements: !2808)
!2808 = !{!2809, !2810, !2811, !2812, !2818, !2819, !2820}
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2807, file: !151, line: 1939, baseType: !2267, size: 192)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !2807, file: !151, line: 1940, baseType: !2345, size: 32, offset: 192)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !2807, file: !151, line: 1941, baseType: !150, size: 32, offset: 224)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !2807, file: !151, line: 1946, baseType: !2813, size: 32, offset: 256)
!2813 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !151, line: 1942, size: 32, elements: !2814)
!2814 = !{!2815, !2816, !2817}
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !2813, file: !151, line: 1943, baseType: !169, size: 32)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !2813, file: !151, line: 1944, baseType: !176, size: 32)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !2813, file: !151, line: 1945, baseType: !183, size: 32)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !2807, file: !151, line: 1950, baseType: !2113, size: 64, offset: 320)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !2807, file: !151, line: 1951, baseType: !2113, size: 64, offset: 384)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2807, file: !151, line: 1953, baseType: !2696, size: 64, offset: 448)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !2231, file: !151, line: 3404, baseType: !2822, size: 1664)
!2822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !151, line: 3337, size: 1664, elements: !2823)
!2823 = !{!2824, !2825}
!2824 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2822, file: !151, line: 3338, baseType: !2267, size: 192)
!2825 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2822, file: !151, line: 3341, baseType: !2826, size: 1472, offset: 192)
!2826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !2827, line: 410, size: 1472, elements: !2828)
!2827 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2828 = !{!2829, !2830, !2831, !2832, !2833, !2834, !2835, !2836, !2837, !2838, !2839, !2840, !2841, !2842, !2843, !2844, !2845, !2846, !2847, !2848, !2849, !2850, !2851, !2852, !2853, !2854, !2855, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2868, !2869, !2870, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2888, !2889, !2890, !2891, !2892, !2893, !2894, !2895, !2896, !2897, !2898, !2899, !2900, !2901, !2902, !2903, !2904, !2905, !2906, !2907, !2908, !2909, !2910, !2911, !2912, !2913, !2914, !2915, !2916, !2917, !2918, !2919, !2920, !2921, !2922, !2923, !2924, !2925, !2926, !2927, !2928, !2929, !2930, !2931, !2932, !2933, !2934, !2935, !2936, !2937, !2938, !2939, !2940, !2941, !2942, !2943, !2944, !2945, !2946, !2947, !2948, !2949, !2950, !2951, !2952, !2953, !2954, !2955, !2956, !2957, !2958, !2959, !2960, !2961, !2962, !2963, !2964, !2965, !2966, !2967, !2968, !2969, !2970, !2971, !2972, !2973, !2974, !2975, !2976, !2977, !2978, !2979, !2980, !2981, !2982, !2983, !2984, !2985, !2986, !2987, !2988, !2989, !2990, !2991}
!2829 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !2826, file: !2827, line: 412, baseType: !380, size: 32)
!2830 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !2826, file: !2827, line: 413, baseType: !380, size: 32, offset: 32)
!2831 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !2826, file: !2827, line: 414, baseType: !380, size: 32, offset: 64)
!2832 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !2826, file: !2827, line: 415, baseType: !380, size: 32, offset: 96)
!2833 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !2826, file: !2827, line: 416, baseType: !380, size: 32, offset: 128)
!2834 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !2826, file: !2827, line: 417, baseType: !380, size: 32, offset: 160)
!2835 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !2826, file: !2827, line: 418, baseType: !379, size: 8, offset: 192)
!2836 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !2826, file: !2827, line: 419, baseType: !379, size: 8, offset: 200)
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !2826, file: !2827, line: 420, baseType: !471, size: 8, offset: 208)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !2826, file: !2827, line: 421, baseType: !471, size: 8, offset: 216)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !2826, file: !2827, line: 422, baseType: !471, size: 8, offset: 224)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !2826, file: !2827, line: 423, baseType: !471, size: 8, offset: 232)
!2841 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !2826, file: !2827, line: 424, baseType: !471, size: 8, offset: 240)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !2826, file: !2827, line: 425, baseType: !471, size: 8, offset: 248)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !2826, file: !2827, line: 426, baseType: !471, size: 8, offset: 256)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !2826, file: !2827, line: 427, baseType: !471, size: 8, offset: 264)
!2845 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !2826, file: !2827, line: 428, baseType: !471, size: 8, offset: 272)
!2846 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !2826, file: !2827, line: 429, baseType: !471, size: 8, offset: 280)
!2847 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !2826, file: !2827, line: 430, baseType: !471, size: 8, offset: 288)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !2826, file: !2827, line: 431, baseType: !471, size: 8, offset: 296)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !2826, file: !2827, line: 432, baseType: !471, size: 8, offset: 304)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !2826, file: !2827, line: 433, baseType: !471, size: 8, offset: 312)
!2851 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !2826, file: !2827, line: 434, baseType: !471, size: 8, offset: 320)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !2826, file: !2827, line: 435, baseType: !471, size: 8, offset: 328)
!2853 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !2826, file: !2827, line: 436, baseType: !471, size: 8, offset: 336)
!2854 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !2826, file: !2827, line: 437, baseType: !471, size: 8, offset: 344)
!2855 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !2826, file: !2827, line: 438, baseType: !471, size: 8, offset: 352)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !2826, file: !2827, line: 439, baseType: !471, size: 8, offset: 360)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !2826, file: !2827, line: 440, baseType: !471, size: 8, offset: 368)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !2826, file: !2827, line: 441, baseType: !471, size: 8, offset: 376)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !2826, file: !2827, line: 442, baseType: !471, size: 8, offset: 384)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !2826, file: !2827, line: 443, baseType: !471, size: 8, offset: 392)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !2826, file: !2827, line: 444, baseType: !471, size: 8, offset: 400)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !2826, file: !2827, line: 445, baseType: !471, size: 8, offset: 408)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !2826, file: !2827, line: 446, baseType: !471, size: 8, offset: 416)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !2826, file: !2827, line: 447, baseType: !471, size: 8, offset: 424)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !2826, file: !2827, line: 448, baseType: !471, size: 8, offset: 432)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !2826, file: !2827, line: 449, baseType: !471, size: 8, offset: 440)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !2826, file: !2827, line: 450, baseType: !471, size: 8, offset: 448)
!2868 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !2826, file: !2827, line: 451, baseType: !471, size: 8, offset: 456)
!2869 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !2826, file: !2827, line: 452, baseType: !471, size: 8, offset: 464)
!2870 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !2826, file: !2827, line: 453, baseType: !471, size: 8, offset: 472)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !2826, file: !2827, line: 454, baseType: !471, size: 8, offset: 480)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !2826, file: !2827, line: 455, baseType: !471, size: 8, offset: 488)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !2826, file: !2827, line: 456, baseType: !471, size: 8, offset: 496)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !2826, file: !2827, line: 457, baseType: !471, size: 8, offset: 504)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !2826, file: !2827, line: 458, baseType: !471, size: 8, offset: 512)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !2826, file: !2827, line: 459, baseType: !471, size: 8, offset: 520)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !2826, file: !2827, line: 460, baseType: !471, size: 8, offset: 528)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !2826, file: !2827, line: 461, baseType: !471, size: 8, offset: 536)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !2826, file: !2827, line: 462, baseType: !471, size: 8, offset: 544)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !2826, file: !2827, line: 463, baseType: !471, size: 8, offset: 552)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !2826, file: !2827, line: 464, baseType: !471, size: 8, offset: 560)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !2826, file: !2827, line: 465, baseType: !471, size: 8, offset: 568)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !2826, file: !2827, line: 466, baseType: !471, size: 8, offset: 576)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !2826, file: !2827, line: 467, baseType: !471, size: 8, offset: 584)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !2826, file: !2827, line: 468, baseType: !471, size: 8, offset: 592)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !2826, file: !2827, line: 469, baseType: !471, size: 8, offset: 600)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !2826, file: !2827, line: 470, baseType: !471, size: 8, offset: 608)
!2888 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !2826, file: !2827, line: 471, baseType: !471, size: 8, offset: 616)
!2889 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !2826, file: !2827, line: 472, baseType: !471, size: 8, offset: 624)
!2890 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !2826, file: !2827, line: 473, baseType: !471, size: 8, offset: 632)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !2826, file: !2827, line: 474, baseType: !471, size: 8, offset: 640)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !2826, file: !2827, line: 475, baseType: !471, size: 8, offset: 648)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !2826, file: !2827, line: 476, baseType: !471, size: 8, offset: 656)
!2894 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !2826, file: !2827, line: 477, baseType: !471, size: 8, offset: 664)
!2895 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !2826, file: !2827, line: 478, baseType: !471, size: 8, offset: 672)
!2896 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !2826, file: !2827, line: 479, baseType: !471, size: 8, offset: 680)
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !2826, file: !2827, line: 480, baseType: !471, size: 8, offset: 688)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !2826, file: !2827, line: 481, baseType: !471, size: 8, offset: 696)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !2826, file: !2827, line: 482, baseType: !471, size: 8, offset: 704)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !2826, file: !2827, line: 483, baseType: !471, size: 8, offset: 712)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !2826, file: !2827, line: 484, baseType: !471, size: 8, offset: 720)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !2826, file: !2827, line: 485, baseType: !471, size: 8, offset: 728)
!2903 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !2826, file: !2827, line: 486, baseType: !471, size: 8, offset: 736)
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !2826, file: !2827, line: 487, baseType: !471, size: 8, offset: 744)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !2826, file: !2827, line: 488, baseType: !471, size: 8, offset: 752)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !2826, file: !2827, line: 489, baseType: !471, size: 8, offset: 760)
!2907 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !2826, file: !2827, line: 490, baseType: !471, size: 8, offset: 768)
!2908 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !2826, file: !2827, line: 491, baseType: !471, size: 8, offset: 776)
!2909 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !2826, file: !2827, line: 492, baseType: !471, size: 8, offset: 784)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !2826, file: !2827, line: 493, baseType: !471, size: 8, offset: 792)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !2826, file: !2827, line: 494, baseType: !471, size: 8, offset: 800)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !2826, file: !2827, line: 495, baseType: !471, size: 8, offset: 808)
!2913 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !2826, file: !2827, line: 496, baseType: !471, size: 8, offset: 816)
!2914 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !2826, file: !2827, line: 497, baseType: !471, size: 8, offset: 824)
!2915 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !2826, file: !2827, line: 498, baseType: !471, size: 8, offset: 832)
!2916 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !2826, file: !2827, line: 499, baseType: !471, size: 8, offset: 840)
!2917 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !2826, file: !2827, line: 500, baseType: !471, size: 8, offset: 848)
!2918 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !2826, file: !2827, line: 501, baseType: !471, size: 8, offset: 856)
!2919 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !2826, file: !2827, line: 502, baseType: !471, size: 8, offset: 864)
!2920 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !2826, file: !2827, line: 503, baseType: !471, size: 8, offset: 872)
!2921 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !2826, file: !2827, line: 504, baseType: !471, size: 8, offset: 880)
!2922 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !2826, file: !2827, line: 505, baseType: !471, size: 8, offset: 888)
!2923 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !2826, file: !2827, line: 506, baseType: !471, size: 8, offset: 896)
!2924 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !2826, file: !2827, line: 507, baseType: !471, size: 8, offset: 904)
!2925 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !2826, file: !2827, line: 508, baseType: !471, size: 8, offset: 912)
!2926 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !2826, file: !2827, line: 509, baseType: !471, size: 8, offset: 920)
!2927 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !2826, file: !2827, line: 510, baseType: !471, size: 8, offset: 928)
!2928 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !2826, file: !2827, line: 511, baseType: !471, size: 8, offset: 936)
!2929 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !2826, file: !2827, line: 512, baseType: !471, size: 8, offset: 944)
!2930 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !2826, file: !2827, line: 513, baseType: !471, size: 8, offset: 952)
!2931 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !2826, file: !2827, line: 514, baseType: !471, size: 8, offset: 960)
!2932 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !2826, file: !2827, line: 515, baseType: !471, size: 8, offset: 968)
!2933 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !2826, file: !2827, line: 516, baseType: !471, size: 8, offset: 976)
!2934 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !2826, file: !2827, line: 517, baseType: !471, size: 8, offset: 984)
!2935 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !2826, file: !2827, line: 518, baseType: !471, size: 8, offset: 992)
!2936 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !2826, file: !2827, line: 519, baseType: !471, size: 8, offset: 1000)
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !2826, file: !2827, line: 520, baseType: !471, size: 8, offset: 1008)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !2826, file: !2827, line: 521, baseType: !471, size: 8, offset: 1016)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !2826, file: !2827, line: 522, baseType: !471, size: 8, offset: 1024)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !2826, file: !2827, line: 523, baseType: !471, size: 8, offset: 1032)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !2826, file: !2827, line: 524, baseType: !471, size: 8, offset: 1040)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !2826, file: !2827, line: 525, baseType: !471, size: 8, offset: 1048)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !2826, file: !2827, line: 526, baseType: !471, size: 8, offset: 1056)
!2944 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !2826, file: !2827, line: 527, baseType: !471, size: 8, offset: 1064)
!2945 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !2826, file: !2827, line: 528, baseType: !471, size: 8, offset: 1072)
!2946 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !2826, file: !2827, line: 529, baseType: !471, size: 8, offset: 1080)
!2947 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !2826, file: !2827, line: 530, baseType: !471, size: 8, offset: 1088)
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !2826, file: !2827, line: 531, baseType: !471, size: 8, offset: 1096)
!2949 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !2826, file: !2827, line: 532, baseType: !471, size: 8, offset: 1104)
!2950 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !2826, file: !2827, line: 533, baseType: !471, size: 8, offset: 1112)
!2951 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !2826, file: !2827, line: 534, baseType: !471, size: 8, offset: 1120)
!2952 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !2826, file: !2827, line: 535, baseType: !471, size: 8, offset: 1128)
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !2826, file: !2827, line: 536, baseType: !471, size: 8, offset: 1136)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !2826, file: !2827, line: 537, baseType: !471, size: 8, offset: 1144)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !2826, file: !2827, line: 538, baseType: !471, size: 8, offset: 1152)
!2956 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !2826, file: !2827, line: 539, baseType: !471, size: 8, offset: 1160)
!2957 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !2826, file: !2827, line: 540, baseType: !471, size: 8, offset: 1168)
!2958 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !2826, file: !2827, line: 541, baseType: !471, size: 8, offset: 1176)
!2959 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !2826, file: !2827, line: 542, baseType: !471, size: 8, offset: 1184)
!2960 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !2826, file: !2827, line: 543, baseType: !471, size: 8, offset: 1192)
!2961 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !2826, file: !2827, line: 544, baseType: !471, size: 8, offset: 1200)
!2962 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !2826, file: !2827, line: 545, baseType: !471, size: 8, offset: 1208)
!2963 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !2826, file: !2827, line: 546, baseType: !471, size: 8, offset: 1216)
!2964 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !2826, file: !2827, line: 547, baseType: !471, size: 8, offset: 1224)
!2965 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !2826, file: !2827, line: 548, baseType: !471, size: 8, offset: 1232)
!2966 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !2826, file: !2827, line: 549, baseType: !471, size: 8, offset: 1240)
!2967 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !2826, file: !2827, line: 550, baseType: !471, size: 8, offset: 1248)
!2968 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !2826, file: !2827, line: 551, baseType: !471, size: 8, offset: 1256)
!2969 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !2826, file: !2827, line: 552, baseType: !471, size: 8, offset: 1264)
!2970 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !2826, file: !2827, line: 553, baseType: !471, size: 8, offset: 1272)
!2971 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !2826, file: !2827, line: 554, baseType: !471, size: 8, offset: 1280)
!2972 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !2826, file: !2827, line: 555, baseType: !471, size: 8, offset: 1288)
!2973 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !2826, file: !2827, line: 556, baseType: !471, size: 8, offset: 1296)
!2974 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !2826, file: !2827, line: 557, baseType: !471, size: 8, offset: 1304)
!2975 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !2826, file: !2827, line: 558, baseType: !471, size: 8, offset: 1312)
!2976 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !2826, file: !2827, line: 559, baseType: !471, size: 8, offset: 1320)
!2977 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !2826, file: !2827, line: 560, baseType: !471, size: 8, offset: 1328)
!2978 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !2826, file: !2827, line: 561, baseType: !471, size: 8, offset: 1336)
!2979 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !2826, file: !2827, line: 562, baseType: !471, size: 8, offset: 1344)
!2980 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !2826, file: !2827, line: 563, baseType: !471, size: 8, offset: 1352)
!2981 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !2826, file: !2827, line: 564, baseType: !471, size: 8, offset: 1360)
!2982 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !2826, file: !2827, line: 565, baseType: !471, size: 8, offset: 1368)
!2983 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !2826, file: !2827, line: 566, baseType: !471, size: 8, offset: 1376)
!2984 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !2826, file: !2827, line: 567, baseType: !471, size: 8, offset: 1384)
!2985 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !2826, file: !2827, line: 568, baseType: !471, size: 8, offset: 1392)
!2986 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !2826, file: !2827, line: 569, baseType: !471, size: 8, offset: 1400)
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !2826, file: !2827, line: 570, baseType: !471, size: 8, offset: 1408)
!2988 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !2826, file: !2827, line: 571, baseType: !471, size: 8, offset: 1416)
!2989 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !2826, file: !2827, line: 572, baseType: !471, size: 8, offset: 1424)
!2990 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !2826, file: !2827, line: 573, baseType: !471, size: 8, offset: 1432)
!2991 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !2826, file: !2827, line: 574, baseType: !471, size: 8, offset: 1440)
!2992 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !2231, file: !151, line: 3405, baseType: !2993, size: 384)
!2993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !151, line: 3352, size: 384, elements: !2994)
!2994 = !{!2995, !2996}
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !2993, file: !151, line: 3353, baseType: !2267, size: 192)
!2996 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !2993, file: !151, line: 3356, baseType: !2997, size: 192, offset: 192)
!2997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !2827, line: 578, size: 192, elements: !2998)
!2998 = !{!2999, !3000, !3001, !3002, !3003, !3004, !3005, !3006, !3007, !3008, !3009}
!2999 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !2997, file: !2827, line: 580, baseType: !380, size: 32)
!3000 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !2997, file: !2827, line: 581, baseType: !380, size: 32, offset: 32)
!3001 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !2997, file: !2827, line: 582, baseType: !380, size: 32, offset: 64)
!3002 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !2997, file: !2827, line: 583, baseType: !380, size: 32, offset: 96)
!3003 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !2997, file: !2827, line: 584, baseType: !379, size: 8, offset: 128)
!3004 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !2997, file: !2827, line: 585, baseType: !379, size: 8, offset: 136)
!3005 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !2997, file: !2827, line: 586, baseType: !379, size: 8, offset: 144)
!3006 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !2997, file: !2827, line: 587, baseType: !379, size: 8, offset: 152)
!3007 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !2997, file: !2827, line: 588, baseType: !379, size: 8, offset: 160)
!3008 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !2997, file: !2827, line: 589, baseType: !379, size: 8, offset: 168)
!3009 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !2997, file: !2827, line: 590, baseType: !379, size: 8, offset: 176)
!3010 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !2138, file: !2120, line: 178, baseType: !2087, size: 64)
!3011 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !2138, file: !2120, line: 179, baseType: !3012, size: 64)
!3012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3013, size: 64)
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !2120, line: 150, baseType: !3014)
!3014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !2120, line: 142, size: 320, elements: !3015)
!3015 = !{!3016, !3017, !3018, !3019, !3020, !3021}
!3016 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !3014, file: !2120, line: 144, baseType: !2229, size: 64)
!3017 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3014, file: !2120, line: 145, baseType: !2117, size: 64, offset: 64)
!3018 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3014, file: !2120, line: 146, baseType: !2117, size: 64, offset: 128)
!3019 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !3014, file: !2120, line: 147, baseType: !2661, size: 32, offset: 192)
!3020 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !3014, file: !2120, line: 148, baseType: !7, size: 32, offset: 224)
!3021 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !3014, file: !2120, line: 149, baseType: !379, size: 8, offset: 256)
!3022 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !2138, file: !2120, line: 180, baseType: !3023, size: 64)
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !2120, line: 162, baseType: !3025)
!3025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !2120, line: 159, size: 128, elements: !3026)
!3026 = !{!3027, !3028}
!3027 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !3025, file: !2120, line: 160, baseType: !2229, size: 64)
!3028 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3025, file: !2120, line: 161, baseType: !467, size: 64, offset: 64)
!3029 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !2138, file: !2120, line: 181, baseType: !3030, size: 64)
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3031, size: 64)
!3031 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !2120, line: 181, flags: DIFlagFwdDecl)
!3032 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !2133, file: !2120, line: 317, baseType: !3033, size: 64)
!3033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !467, size: 64, elements: !398)
!3034 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !2133, file: !2120, line: 318, baseType: !3035, size: 320)
!3035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !2120, line: 188, size: 320, elements: !3036)
!3036 = !{!3037, !3039, !3062}
!3037 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !3035, file: !2120, line: 190, baseType: !3038, size: 192)
!3038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2137, size: 192, elements: !756)
!3039 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !3035, file: !2120, line: 193, baseType: !3040, size: 64, offset: 192)
!3040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3041, size: 64)
!3041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !2120, line: 206, size: 320, elements: !3042)
!3042 = !{!3043, !3047, !3048, !3049, !3061}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !3041, file: !2120, line: 208, baseType: !3044, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3045, size: 64)
!3045 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !2086, line: 62, baseType: !3046)
!3046 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !2086, line: 61, flags: DIFlagFwdDecl)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !3041, file: !2120, line: 211, baseType: !7, size: 32, offset: 64)
!3048 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3041, file: !2120, line: 214, baseType: !467, size: 64, offset: 128)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !3041, file: !2120, line: 224, baseType: !3050, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3051, size: 64)
!3051 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !2120, line: 202, baseType: !3052)
!3052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !2120, line: 202, size: 128, elements: !3053)
!3053 = !{!3054}
!3054 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !3052, file: !2120, line: 202, baseType: !3055, size: 128)
!3055 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !2120, line: 200, baseType: !3056)
!3056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !2120, line: 200, size: 128, elements: !3057)
!3057 = !{!3058, !3059, !3060}
!3058 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !3056, file: !2120, line: 200, baseType: !7, size: 32)
!3059 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !3056, file: !2120, line: 200, baseType: !7, size: 32, offset: 32)
!3060 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !3056, file: !2120, line: 200, baseType: !2151, size: 64, offset: 64)
!3061 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !3041, file: !2120, line: 234, baseType: !3050, size: 64, offset: 256)
!3062 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3035, file: !2120, line: 197, baseType: !467, size: 64, offset: 256)
!3063 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !2133, file: !2120, line: 319, baseType: !2289, size: 256)
!3064 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !2133, file: !2120, line: 320, baseType: !2306, size: 192)
!3065 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2105, file: !135, line: 134, baseType: !384, size: 64, offset: 192)
!3066 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !2105, file: !135, line: 137, baseType: !2229, size: 64, offset: 256)
!3067 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !2105, file: !135, line: 138, baseType: !2345, size: 32, offset: 320)
!3068 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !2105, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!3069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2105, file: !135, line: 144, baseType: !380, size: 32, offset: 384)
!3070 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !2105, file: !135, line: 145, baseType: !380, size: 32, offset: 416)
!3071 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2105, file: !135, line: 146, baseType: !3072, size: 64, offset: 448)
!3072 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !467)
!3073 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !2088, file: !135, line: 220, baseType: !2091, size: 64, offset: 64)
!3074 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !2088, file: !135, line: 223, baseType: !384, size: 64, offset: 128)
!3075 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !2088, file: !135, line: 226, baseType: !3076, size: 64, offset: 192)
!3076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3077, size: 64)
!3077 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !135, line: 185, flags: DIFlagFwdDecl)
!3078 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !2088, file: !135, line: 229, baseType: !3079, size: 128, offset: 256)
!3079 = !DICompositeType(tag: DW_TAG_array_type, baseType: !3080, size: 128, elements: !2185)
!3080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3081, size: 64)
!3081 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!3082 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !2088, file: !135, line: 232, baseType: !2087, size: 64, offset: 384)
!3083 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !2088, file: !135, line: 233, baseType: !2087, size: 64, offset: 448)
!3084 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !2088, file: !135, line: 238, baseType: !3085, size: 64, offset: 512)
!3085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !3086)
!3086 = !{!3087, !3093}
!3087 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !3085, file: !135, line: 236, baseType: !3088, size: 64)
!3088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3089, size: 64)
!3089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !3090)
!3090 = !{!3091, !3092}
!3091 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !3089, file: !135, line: 275, baseType: !2113, size: 64)
!3092 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !3089, file: !135, line: 278, baseType: !2113, size: 64, offset: 64)
!3093 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !3085, file: !135, line: 237, baseType: !3094, size: 64)
!3094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3095, size: 64)
!3095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !3096)
!3096 = !{!3097, !3098, !3099, !3100, !3101}
!3097 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !3095, file: !135, line: 261, baseType: !2117, size: 64)
!3098 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !3095, file: !135, line: 262, baseType: !2117, size: 64, offset: 64)
!3099 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !3095, file: !135, line: 266, baseType: !2117, size: 64, offset: 128)
!3100 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !3095, file: !135, line: 267, baseType: !2117, size: 64, offset: 192)
!3101 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !3095, file: !135, line: 270, baseType: !380, size: 32, offset: 256)
!3102 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2088, file: !135, line: 241, baseType: !3072, size: 64, offset: 576)
!3103 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2088, file: !135, line: 244, baseType: !380, size: 32, offset: 640)
!3104 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !2088, file: !135, line: 247, baseType: !380, size: 32, offset: 672)
!3105 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !2088, file: !135, line: 250, baseType: !380, size: 32, offset: 704)
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !2088, file: !135, line: 253, baseType: !380, size: 32, offset: 736)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2088, file: !135, line: 256, baseType: !380, size: 32, offset: 768)
!3108 = !DILocalVariable(name: "set_size", scope: !2077, file: !3, line: 748, type: !7)
!3109 = !DILocalVariable(name: "e", scope: !2077, file: !3, line: 749, type: !2103)
!3110 = !DILocalVariable(name: "ix", scope: !2077, file: !3, line: 750, type: !7)
!3111 = !DILocalVariable(name: "i", scope: !3112, file: !3, line: 769, type: !7)
!3112 = distinct !DILexicalBlock(scope: !3113, file: !3, line: 768, column: 7)
!3113 = distinct !DILexicalBlock(scope: !3114, file: !3, line: 767, column: 5)
!3114 = distinct !DILexicalBlock(scope: !3115, file: !3, line: 767, column: 5)
!3115 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 764, column: 7)
!3116 = !DILocalVariable(name: "p", scope: !3112, file: !3, line: 770, type: !1358)
!3117 = !DILocalVariable(name: "r", scope: !3112, file: !3, line: 770, type: !1358)
!3118 = !DILocation(line: 0, scope: !2077)
!3119 = !DILocation(line: 747, column: 19, scope: !2077)
!3120 = !DILocation(line: 748, column: 32, scope: !2077)
!3121 = !DILocation(line: 752, column: 3, scope: !2077)
!3122 = !DILocation(line: 0, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3124, file: !3, line: 754, column: 3)
!3124 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 754, column: 3)
!3125 = !DILocation(line: 754, column: 8, scope: !3124)
!3126 = !DILocation(line: 0, scope: !3124)
!3127 = !DILocation(line: 754, column: 31, scope: !3123)
!3128 = !DILocation(line: 754, column: 29, scope: !3123)
!3129 = !DILocation(line: 754, column: 3, scope: !3124)
!3130 = !DILocation(line: 756, column: 11, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3123, file: !3, line: 755, column: 5)
!3132 = !DILocation(line: 757, column: 14, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 757, column: 11)
!3134 = !DILocation(line: 757, column: 22, scope: !3133)
!3135 = !DILocation(line: 757, column: 19, scope: !3133)
!3136 = !DILocation(line: 757, column: 11, scope: !3131)
!3137 = !DILocation(line: 760, column: 39, scope: !3131)
!3138 = !DILocation(line: 760, column: 26, scope: !3131)
!3139 = !DILocation(line: 760, column: 7, scope: !3131)
!3140 = !DILocation(line: 761, column: 7, scope: !3131)
!3141 = !DILocation(line: 754, column: 56, scope: !3123)
!3142 = !DILocation(line: 754, column: 3, scope: !3123)
!3143 = distinct !{!3143, !3129, !3144}
!3144 = !DILocation(line: 762, column: 5, scope: !3124)
!3145 = !DILocation(line: 764, column: 9, scope: !3115)
!3146 = !DILocation(line: 764, column: 7, scope: !2077)
!3147 = !DILocation(line: 765, column: 5, scope: !3115)
!3148 = !DILocation(line: 0, scope: !3112)
!3149 = !DILocation(line: 767, column: 10, scope: !3114)
!3150 = !DILocation(line: 0, scope: !3114)
!3151 = !DILocation(line: 767, column: 21, scope: !3113)
!3152 = !DILocation(line: 767, column: 19, scope: !3113)
!3153 = !DILocation(line: 767, column: 5, scope: !3114)
!3154 = !DILocation(line: 772, column: 6, scope: !3112)
!3155 = !DILocation(line: 773, column: 9, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 773, column: 6)
!3157 = !DILocation(line: 773, column: 17, scope: !3156)
!3158 = !DILocation(line: 773, column: 14, scope: !3156)
!3159 = !DILocation(line: 773, column: 6, scope: !3112)
!3160 = !DILocation(line: 776, column: 19, scope: !3112)
!3161 = !DILocation(line: 776, column: 6, scope: !3112)
!3162 = !DILocation(line: 778, column: 7, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3112, file: !3, line: 778, column: 2)
!3164 = !DILocation(line: 0, scope: !3163)
!3165 = !DILocation(line: 778, column: 16, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 778, column: 2)
!3167 = !DILocation(line: 778, column: 2, scope: !3163)
!3168 = !DILocation(line: 779, column: 14, scope: !3166)
!3169 = !DILocation(line: 779, column: 12, scope: !3166)
!3170 = !DILocation(line: 779, column: 6, scope: !3166)
!3171 = !DILocation(line: 779, column: 9, scope: !3166)
!3172 = !DILocation(line: 778, column: 29, scope: !3166)
!3173 = !DILocation(line: 778, column: 2, scope: !3166)
!3174 = distinct !{!3174, !3167, !3175}
!3175 = !DILocation(line: 779, column: 14, scope: !3163)
!3176 = !DILocation(line: 767, column: 5, scope: !3113)
!3177 = distinct !{!3177, !3153, !3178}
!3178 = !DILocation(line: 780, column: 7, scope: !3114)
!3179 = !DILocation(line: 781, column: 1, scope: !2077)
!3180 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !3181, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3185)
!3181 = !DISubroutineType(types: !3182)
!3182 = !{!2085, !3183, !7}
!3183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3184, size: 64)
!3184 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2489)
!3185 = !{!3186, !3187}
!3186 = !DILocalVariable(name: "vec_", arg: 1, scope: !3180, file: !135, line: 281, type: !3183)
!3187 = !DILocalVariable(name: "ix_", arg: 2, scope: !3180, file: !135, line: 281, type: !7)
!3188 = !DILocation(line: 0, scope: !3180)
!3189 = !DILocation(line: 281, column: 1, scope: !3180)
!3190 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !3191, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3195)
!3191 = !DISubroutineType(types: !3192)
!3192 = !{!7, !3193}
!3193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3194, size: 64)
!3194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!3195 = !{!3196}
!3196 = !DILocalVariable(name: "vec_", arg: 1, scope: !3190, file: !135, line: 150, type: !3193)
!3197 = !DILocation(line: 0, scope: !3190)
!3198 = !DILocation(line: 150, column: 1, scope: !3190)
!3199 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !3200, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3202)
!3200 = !DISubroutineType(types: !3201)
!3201 = !{!2103, !3193, !7}
!3202 = !{!3203, !3204}
!3203 = !DILocalVariable(name: "vec_", arg: 1, scope: !3199, file: !135, line: 150, type: !3193)
!3204 = !DILocalVariable(name: "ix_", arg: 2, scope: !3199, file: !135, line: 150, type: !7)
!3205 = !DILocation(line: 0, scope: !3199)
!3206 = !DILocation(line: 150, column: 1, scope: !3199)
!3207 = distinct !DISubprogram(name: "sbitmap_intersection_of_preds", scope: !3, file: !3, line: 787, type: !2078, scopeLine: 788, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3208)
!3208 = !{!3209, !3210, !3211, !3212, !3213, !3214, !3215, !3216, !3221, !3222}
!3209 = !DILocalVariable(name: "dst", arg: 1, scope: !3207, file: !3, line: 787, type: !387)
!3210 = !DILocalVariable(name: "src", arg: 2, scope: !3207, file: !3, line: 787, type: !400)
!3211 = !DILocalVariable(name: "bb", arg: 3, scope: !3207, file: !3, line: 787, type: !380)
!3212 = !DILocalVariable(name: "b", scope: !3207, file: !3, line: 789, type: !2085)
!3213 = !DILocalVariable(name: "set_size", scope: !3207, file: !3, line: 790, type: !7)
!3214 = !DILocalVariable(name: "e", scope: !3207, file: !3, line: 791, type: !2103)
!3215 = !DILocalVariable(name: "ix", scope: !3207, file: !3, line: 792, type: !7)
!3216 = !DILocalVariable(name: "i", scope: !3217, file: !3, line: 811, type: !7)
!3217 = distinct !DILexicalBlock(scope: !3218, file: !3, line: 810, column: 7)
!3218 = distinct !DILexicalBlock(scope: !3219, file: !3, line: 809, column: 5)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 809, column: 5)
!3220 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 806, column: 7)
!3221 = !DILocalVariable(name: "p", scope: !3217, file: !3, line: 812, type: !1358)
!3222 = !DILocalVariable(name: "r", scope: !3217, file: !3, line: 812, type: !1358)
!3223 = !DILocation(line: 0, scope: !3207)
!3224 = !DILocation(line: 789, column: 19, scope: !3207)
!3225 = !DILocation(line: 790, column: 32, scope: !3207)
!3226 = !DILocation(line: 794, column: 3, scope: !3207)
!3227 = !DILocation(line: 0, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3229, file: !3, line: 796, column: 3)
!3229 = distinct !DILexicalBlock(scope: !3207, file: !3, line: 796, column: 3)
!3230 = !DILocation(line: 796, column: 8, scope: !3229)
!3231 = !DILocation(line: 0, scope: !3229)
!3232 = !DILocation(line: 796, column: 31, scope: !3228)
!3233 = !DILocation(line: 796, column: 29, scope: !3228)
!3234 = !DILocation(line: 796, column: 3, scope: !3229)
!3235 = !DILocation(line: 798, column: 11, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 797, column: 5)
!3237 = !DILocation(line: 799, column: 14, scope: !3238)
!3238 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 799, column: 11)
!3239 = !DILocation(line: 799, column: 21, scope: !3238)
!3240 = !DILocation(line: 799, column: 18, scope: !3238)
!3241 = !DILocation(line: 799, column: 11, scope: !3236)
!3242 = !DILocation(line: 802, column: 38, scope: !3236)
!3243 = !DILocation(line: 802, column: 26, scope: !3236)
!3244 = !DILocation(line: 802, column: 7, scope: !3236)
!3245 = !DILocation(line: 803, column: 7, scope: !3236)
!3246 = !DILocation(line: 796, column: 56, scope: !3228)
!3247 = !DILocation(line: 796, column: 3, scope: !3228)
!3248 = distinct !{!3248, !3234, !3249}
!3249 = !DILocation(line: 804, column: 5, scope: !3229)
!3250 = !DILocation(line: 806, column: 9, scope: !3220)
!3251 = !DILocation(line: 806, column: 7, scope: !3207)
!3252 = !DILocation(line: 807, column: 5, scope: !3220)
!3253 = !DILocation(line: 0, scope: !3217)
!3254 = !DILocation(line: 809, column: 10, scope: !3219)
!3255 = !DILocation(line: 0, scope: !3219)
!3256 = !DILocation(line: 809, column: 21, scope: !3218)
!3257 = !DILocation(line: 809, column: 19, scope: !3218)
!3258 = !DILocation(line: 809, column: 5, scope: !3219)
!3259 = !DILocation(line: 814, column: 6, scope: !3217)
!3260 = !DILocation(line: 815, column: 9, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 815, column: 6)
!3262 = !DILocation(line: 815, column: 16, scope: !3261)
!3263 = !DILocation(line: 815, column: 13, scope: !3261)
!3264 = !DILocation(line: 815, column: 6, scope: !3217)
!3265 = !DILocation(line: 818, column: 18, scope: !3217)
!3266 = !DILocation(line: 818, column: 6, scope: !3217)
!3267 = !DILocation(line: 820, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 820, column: 2)
!3269 = !DILocation(line: 0, scope: !3268)
!3270 = !DILocation(line: 820, column: 16, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 820, column: 2)
!3272 = !DILocation(line: 820, column: 2, scope: !3268)
!3273 = !DILocation(line: 821, column: 14, scope: !3271)
!3274 = !DILocation(line: 821, column: 12, scope: !3271)
!3275 = !DILocation(line: 821, column: 6, scope: !3271)
!3276 = !DILocation(line: 821, column: 9, scope: !3271)
!3277 = !DILocation(line: 820, column: 29, scope: !3271)
!3278 = !DILocation(line: 820, column: 2, scope: !3271)
!3279 = distinct !{!3279, !3272, !3280}
!3280 = !DILocation(line: 821, column: 14, scope: !3268)
!3281 = !DILocation(line: 809, column: 5, scope: !3218)
!3282 = distinct !{!3282, !3258, !3283}
!3283 = !DILocation(line: 822, column: 7, scope: !3219)
!3284 = !DILocation(line: 823, column: 1, scope: !3207)
!3285 = distinct !DISubprogram(name: "sbitmap_union_of_succs", scope: !3, file: !3, line: 829, type: !2078, scopeLine: 830, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3286)
!3286 = !{!3287, !3288, !3289, !3290, !3291, !3292, !3293, !3294, !3299, !3300}
!3287 = !DILocalVariable(name: "dst", arg: 1, scope: !3285, file: !3, line: 829, type: !387)
!3288 = !DILocalVariable(name: "src", arg: 2, scope: !3285, file: !3, line: 829, type: !400)
!3289 = !DILocalVariable(name: "bb", arg: 3, scope: !3285, file: !3, line: 829, type: !380)
!3290 = !DILocalVariable(name: "b", scope: !3285, file: !3, line: 831, type: !2085)
!3291 = !DILocalVariable(name: "set_size", scope: !3285, file: !3, line: 832, type: !7)
!3292 = !DILocalVariable(name: "e", scope: !3285, file: !3, line: 833, type: !2103)
!3293 = !DILocalVariable(name: "ix", scope: !3285, file: !3, line: 834, type: !7)
!3294 = !DILocalVariable(name: "i", scope: !3295, file: !3, line: 853, type: !7)
!3295 = distinct !DILexicalBlock(scope: !3296, file: !3, line: 852, column: 7)
!3296 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 851, column: 5)
!3297 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 851, column: 5)
!3298 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 848, column: 7)
!3299 = !DILocalVariable(name: "p", scope: !3295, file: !3, line: 854, type: !1358)
!3300 = !DILocalVariable(name: "r", scope: !3295, file: !3, line: 854, type: !1358)
!3301 = !DILocation(line: 0, scope: !3285)
!3302 = !DILocation(line: 831, column: 19, scope: !3285)
!3303 = !DILocation(line: 832, column: 32, scope: !3285)
!3304 = !DILocation(line: 836, column: 3, scope: !3285)
!3305 = !DILocation(line: 0, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 838, column: 3)
!3307 = distinct !DILexicalBlock(scope: !3285, file: !3, line: 838, column: 3)
!3308 = !DILocation(line: 838, column: 8, scope: !3307)
!3309 = !DILocation(line: 0, scope: !3307)
!3310 = !DILocation(line: 838, column: 21, scope: !3306)
!3311 = !DILocation(line: 838, column: 19, scope: !3306)
!3312 = !DILocation(line: 838, column: 3, scope: !3307)
!3313 = !DILocation(line: 840, column: 11, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 839, column: 5)
!3315 = !DILocation(line: 841, column: 14, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 841, column: 11)
!3317 = !DILocation(line: 841, column: 22, scope: !3316)
!3318 = !DILocation(line: 841, column: 19, scope: !3316)
!3319 = !DILocation(line: 841, column: 11, scope: !3314)
!3320 = !DILocation(line: 844, column: 39, scope: !3314)
!3321 = !DILocation(line: 844, column: 26, scope: !3314)
!3322 = !DILocation(line: 844, column: 7, scope: !3314)
!3323 = !DILocation(line: 845, column: 7, scope: !3314)
!3324 = !DILocation(line: 838, column: 46, scope: !3306)
!3325 = !DILocation(line: 838, column: 3, scope: !3306)
!3326 = distinct !{!3326, !3312, !3327}
!3327 = !DILocation(line: 846, column: 5, scope: !3307)
!3328 = !DILocation(line: 848, column: 13, scope: !3298)
!3329 = !DILocation(line: 848, column: 10, scope: !3298)
!3330 = !DILocation(line: 848, column: 7, scope: !3285)
!3331 = !DILocation(line: 849, column: 5, scope: !3298)
!3332 = !DILocation(line: 0, scope: !3295)
!3333 = !DILocation(line: 851, column: 10, scope: !3297)
!3334 = !DILocation(line: 0, scope: !3297)
!3335 = !DILocation(line: 851, column: 21, scope: !3296)
!3336 = !DILocation(line: 851, column: 19, scope: !3296)
!3337 = !DILocation(line: 851, column: 5, scope: !3297)
!3338 = !DILocation(line: 856, column: 6, scope: !3295)
!3339 = !DILocation(line: 857, column: 9, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 857, column: 6)
!3341 = !DILocation(line: 857, column: 17, scope: !3340)
!3342 = !DILocation(line: 857, column: 14, scope: !3340)
!3343 = !DILocation(line: 857, column: 6, scope: !3295)
!3344 = !DILocation(line: 860, column: 19, scope: !3295)
!3345 = !DILocation(line: 860, column: 6, scope: !3295)
!3346 = !DILocation(line: 862, column: 7, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3295, file: !3, line: 862, column: 2)
!3348 = !DILocation(line: 0, scope: !3347)
!3349 = !DILocation(line: 862, column: 16, scope: !3350)
!3350 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 862, column: 2)
!3351 = !DILocation(line: 862, column: 2, scope: !3347)
!3352 = !DILocation(line: 863, column: 14, scope: !3350)
!3353 = !DILocation(line: 863, column: 12, scope: !3350)
!3354 = !DILocation(line: 863, column: 6, scope: !3350)
!3355 = !DILocation(line: 863, column: 9, scope: !3350)
!3356 = !DILocation(line: 862, column: 29, scope: !3350)
!3357 = !DILocation(line: 862, column: 2, scope: !3350)
!3358 = distinct !{!3358, !3351, !3359}
!3359 = !DILocation(line: 863, column: 14, scope: !3347)
!3360 = !DILocation(line: 851, column: 5, scope: !3296)
!3361 = distinct !{!3361, !3337, !3362}
!3362 = !DILocation(line: 864, column: 7, scope: !3297)
!3363 = !DILocation(line: 865, column: 1, scope: !3285)
!3364 = distinct !DISubprogram(name: "sbitmap_union_of_preds", scope: !3, file: !3, line: 871, type: !2078, scopeLine: 872, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3365)
!3365 = !{!3366, !3367, !3368, !3369, !3370, !3371, !3372, !3373, !3378, !3379}
!3366 = !DILocalVariable(name: "dst", arg: 1, scope: !3364, file: !3, line: 871, type: !387)
!3367 = !DILocalVariable(name: "src", arg: 2, scope: !3364, file: !3, line: 871, type: !400)
!3368 = !DILocalVariable(name: "bb", arg: 3, scope: !3364, file: !3, line: 871, type: !380)
!3369 = !DILocalVariable(name: "b", scope: !3364, file: !3, line: 873, type: !2085)
!3370 = !DILocalVariable(name: "set_size", scope: !3364, file: !3, line: 874, type: !7)
!3371 = !DILocalVariable(name: "e", scope: !3364, file: !3, line: 875, type: !2103)
!3372 = !DILocalVariable(name: "ix", scope: !3364, file: !3, line: 876, type: !7)
!3373 = !DILocalVariable(name: "i", scope: !3374, file: !3, line: 895, type: !7)
!3374 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 894, column: 7)
!3375 = distinct !DILexicalBlock(scope: !3376, file: !3, line: 893, column: 5)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 893, column: 5)
!3377 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 890, column: 7)
!3378 = !DILocalVariable(name: "p", scope: !3374, file: !3, line: 896, type: !1358)
!3379 = !DILocalVariable(name: "r", scope: !3374, file: !3, line: 896, type: !1358)
!3380 = !DILocation(line: 0, scope: !3364)
!3381 = !DILocation(line: 873, column: 19, scope: !3364)
!3382 = !DILocation(line: 874, column: 32, scope: !3364)
!3383 = !DILocation(line: 878, column: 3, scope: !3364)
!3384 = !DILocation(line: 0, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 880, column: 3)
!3386 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 880, column: 3)
!3387 = !DILocation(line: 880, column: 8, scope: !3386)
!3388 = !DILocation(line: 0, scope: !3386)
!3389 = !DILocation(line: 880, column: 21, scope: !3385)
!3390 = !DILocation(line: 880, column: 19, scope: !3385)
!3391 = !DILocation(line: 880, column: 3, scope: !3386)
!3392 = !DILocation(line: 882, column: 11, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 881, column: 5)
!3394 = !DILocation(line: 883, column: 14, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3393, file: !3, line: 883, column: 11)
!3396 = !DILocation(line: 883, column: 20, scope: !3395)
!3397 = !DILocation(line: 883, column: 17, scope: !3395)
!3398 = !DILocation(line: 883, column: 11, scope: !3393)
!3399 = !DILocation(line: 886, column: 38, scope: !3393)
!3400 = !DILocation(line: 886, column: 26, scope: !3393)
!3401 = !DILocation(line: 886, column: 7, scope: !3393)
!3402 = !DILocation(line: 887, column: 7, scope: !3393)
!3403 = !DILocation(line: 880, column: 46, scope: !3385)
!3404 = !DILocation(line: 880, column: 3, scope: !3385)
!3405 = distinct !{!3405, !3391, !3406}
!3406 = !DILocation(line: 888, column: 5, scope: !3386)
!3407 = !DILocation(line: 890, column: 13, scope: !3377)
!3408 = !DILocation(line: 890, column: 10, scope: !3377)
!3409 = !DILocation(line: 890, column: 7, scope: !3364)
!3410 = !DILocation(line: 891, column: 5, scope: !3377)
!3411 = !DILocation(line: 0, scope: !3374)
!3412 = !DILocation(line: 893, column: 10, scope: !3376)
!3413 = !DILocation(line: 0, scope: !3376)
!3414 = !DILocation(line: 893, column: 21, scope: !3375)
!3415 = !DILocation(line: 893, column: 19, scope: !3375)
!3416 = !DILocation(line: 893, column: 5, scope: !3376)
!3417 = !DILocation(line: 898, column: 6, scope: !3374)
!3418 = !DILocation(line: 899, column: 9, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 899, column: 6)
!3420 = !DILocation(line: 899, column: 16, scope: !3419)
!3421 = !DILocation(line: 899, column: 13, scope: !3419)
!3422 = !DILocation(line: 899, column: 6, scope: !3374)
!3423 = !DILocation(line: 902, column: 18, scope: !3374)
!3424 = !DILocation(line: 902, column: 6, scope: !3374)
!3425 = !DILocation(line: 904, column: 7, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 904, column: 2)
!3427 = !DILocation(line: 0, scope: !3426)
!3428 = !DILocation(line: 904, column: 16, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !3, line: 904, column: 2)
!3430 = !DILocation(line: 904, column: 2, scope: !3426)
!3431 = !DILocation(line: 905, column: 14, scope: !3429)
!3432 = !DILocation(line: 905, column: 12, scope: !3429)
!3433 = !DILocation(line: 905, column: 6, scope: !3429)
!3434 = !DILocation(line: 905, column: 9, scope: !3429)
!3435 = !DILocation(line: 904, column: 29, scope: !3429)
!3436 = !DILocation(line: 904, column: 2, scope: !3429)
!3437 = distinct !{!3437, !3430, !3438}
!3438 = !DILocation(line: 905, column: 14, scope: !3426)
!3439 = !DILocation(line: 893, column: 5, scope: !3375)
!3440 = distinct !{!3440, !3416, !3441}
!3441 = !DILocation(line: 906, column: 7, scope: !3376)
!3442 = !DILocation(line: 907, column: 1, scope: !3364)
!3443 = distinct !DISubprogram(name: "sbitmap_first_set_bit", scope: !3, file: !3, line: 913, type: !3444, scopeLine: 914, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3446)
!3444 = !DISubroutineType(types: !3445)
!3445 = !{!380, !1119}
!3446 = !{!3447, !3448, !3449}
!3447 = !DILocalVariable(name: "bmap", arg: 1, scope: !3443, file: !3, line: 913, type: !1119)
!3448 = !DILocalVariable(name: "n", scope: !3443, file: !3, line: 915, type: !7)
!3449 = !DILocalVariable(name: "sbi", scope: !3443, file: !3, line: 916, type: !3450)
!3450 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap_iterator", file: !388, line: 111, baseType: !3451)
!3451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !388, line: 96, size: 256, elements: !3452)
!3452 = !{!3453, !3454, !3455, !3456, !3457}
!3453 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !3451, file: !388, line: 98, baseType: !1362, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3451, file: !388, line: 101, baseType: !7, size: 32, offset: 64)
!3455 = !DIDerivedType(tag: DW_TAG_member, name: "word_num", scope: !3451, file: !388, line: 104, baseType: !7, size: 32, offset: 96)
!3456 = !DIDerivedType(tag: DW_TAG_member, name: "bit_num", scope: !3451, file: !388, line: 107, baseType: !7, size: 32, offset: 128)
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !3451, file: !388, line: 110, baseType: !397, size: 64, offset: 192)
!3458 = !DILocation(line: 0, scope: !3443)
!3459 = !DILocation(line: 915, column: 3, scope: !3443)
!3460 = !DILocation(line: 915, column: 16, scope: !3443)
!3461 = !DILocation(line: 916, column: 3, scope: !3443)
!3462 = !DILocation(line: 918, column: 3, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 918, column: 3)
!3464 = !DILocation(line: 918, column: 3, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 918, column: 3)
!3466 = !DILocation(line: 921, column: 1, scope: !3443)
!3467 = distinct !DISubprogram(name: "sbitmap_iter_init", scope: !388, file: !388, line: 117, type: !3468, scopeLine: 118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3471)
!3468 = !DISubroutineType(types: !3469)
!3469 = !{null, !3470, !1119, !7}
!3470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3450, size: 64)
!3471 = !{!3472, !3473, !3474}
!3472 = !DILocalVariable(name: "i", arg: 1, scope: !3467, file: !388, line: 117, type: !3470)
!3473 = !DILocalVariable(name: "bmp", arg: 2, scope: !3467, file: !388, line: 117, type: !1119)
!3474 = !DILocalVariable(name: "min", arg: 3, scope: !3467, file: !388, line: 117, type: !7)
!3475 = !DILocation(line: 0, scope: !3467)
!3476 = !DILocation(line: 119, column: 6, scope: !3467)
!3477 = !DILocation(line: 119, column: 15, scope: !3467)
!3478 = !DILocation(line: 120, column: 6, scope: !3467)
!3479 = !DILocation(line: 120, column: 14, scope: !3467)
!3480 = !DILocation(line: 121, column: 18, scope: !3467)
!3481 = !DILocation(line: 121, column: 6, scope: !3467)
!3482 = !DILocation(line: 121, column: 11, scope: !3467)
!3483 = !DILocation(line: 122, column: 12, scope: !3467)
!3484 = !DILocation(line: 122, column: 6, scope: !3467)
!3485 = !DILocation(line: 122, column: 10, scope: !3467)
!3486 = !DILocation(line: 124, column: 19, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3467, file: !388, line: 124, column: 7)
!3488 = !DILocation(line: 124, column: 7, scope: !3467)
!3489 = !DILocation(line: 125, column: 8, scope: !3487)
!3490 = !DILocation(line: 125, column: 13, scope: !3487)
!3491 = !DILocation(line: 125, column: 5, scope: !3487)
!3492 = !DILocation(line: 127, column: 16, scope: !3487)
!3493 = !DILocation(line: 127, column: 8, scope: !3487)
!3494 = !DILocation(line: 127, column: 13, scope: !3487)
!3495 = !DILocation(line: 129, column: 1, scope: !3467)
!3496 = distinct !DISubprogram(name: "sbitmap_iter_cond", scope: !388, file: !388, line: 136, type: !3497, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!379, !3470, !3499}
!3499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!3500 = !{!3501, !3502}
!3501 = !DILocalVariable(name: "i", arg: 1, scope: !3496, file: !388, line: 136, type: !3470)
!3502 = !DILocalVariable(name: "n", arg: 2, scope: !3496, file: !388, line: 136, type: !3499)
!3503 = !DILocation(line: 0, scope: !3496)
!3504 = !DILocation(line: 0, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !388, line: 139, column: 3)
!3506 = distinct !DILexicalBlock(scope: !3496, file: !388, line: 139, column: 3)
!3507 = !DILocation(line: 0, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3505, file: !388, line: 140, column: 5)
!3509 = !DILocation(line: 0, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3508, file: !388, line: 144, column: 11)
!3511 = !DILocation(line: 139, column: 13, scope: !3505)
!3512 = !DILocation(line: 139, column: 3, scope: !3496)
!3513 = !DILocation(line: 139, column: 18, scope: !3505)
!3514 = !DILocation(line: 139, column: 3, scope: !3506)
!3515 = !DILocation(line: 151, column: 3, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3496, file: !388, line: 151, column: 3)
!3517 = !DILocation(line: 141, column: 18, scope: !3508)
!3518 = !DILocation(line: 144, column: 29, scope: !3510)
!3519 = !DILocation(line: 144, column: 23, scope: !3510)
!3520 = !DILocation(line: 144, column: 11, scope: !3508)
!3521 = !DILocation(line: 147, column: 32, scope: !3508)
!3522 = !DILocation(line: 147, column: 18, scope: !3508)
!3523 = !DILocation(line: 139, column: 37, scope: !3505)
!3524 = !DILocation(line: 139, column: 34, scope: !3505)
!3525 = !DILocation(line: 139, column: 32, scope: !3505)
!3526 = !DILocation(line: 139, column: 3, scope: !3505)
!3527 = distinct !{!3527, !3514, !3528}
!3528 = !DILocation(line: 148, column: 5, scope: !3506)
!3529 = !DILocation(line: 151, column: 14, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3516, file: !388, line: 151, column: 3)
!3531 = !DILocation(line: 151, column: 19, scope: !3530)
!3532 = !DILocation(line: 151, column: 24, scope: !3530)
!3533 = !DILocation(line: 152, column: 15, scope: !3530)
!3534 = !DILocation(line: 151, column: 38, scope: !3530)
!3535 = !DILocation(line: 151, column: 3, scope: !3530)
!3536 = distinct !{!3536, !3515, !3537}
!3537 = !DILocation(line: 152, column: 15, scope: !3516)
!3538 = !DILocation(line: 154, column: 6, scope: !3496)
!3539 = !DILocation(line: 156, column: 3, scope: !3496)
!3540 = !DILocation(line: 157, column: 1, scope: !3496)
!3541 = distinct !DISubprogram(name: "sbitmap_last_set_bit", scope: !3, file: !3, line: 926, type: !3444, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3542)
!3542 = !{!3543, !3544, !3545, !3547, !3551, !3554}
!3543 = !DILocalVariable(name: "bmap", arg: 1, scope: !3541, file: !3, line: 926, type: !1119)
!3544 = !DILocalVariable(name: "i", scope: !3541, file: !3, line: 928, type: !380)
!3545 = !DILocalVariable(name: "ptr", scope: !3541, file: !3, line: 929, type: !3546)
!3546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1362)
!3547 = !DILocalVariable(name: "word", scope: !3548, file: !3, line: 933, type: !1363)
!3548 = distinct !DILexicalBlock(scope: !3549, file: !3, line: 932, column: 5)
!3549 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 931, column: 3)
!3550 = distinct !DILexicalBlock(scope: !3541, file: !3, line: 931, column: 3)
!3551 = !DILocalVariable(name: "index", scope: !3552, file: !3, line: 937, type: !7)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 936, column: 2)
!3553 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 935, column: 11)
!3554 = !DILocalVariable(name: "mask", scope: !3552, file: !3, line: 938, type: !397)
!3555 = !DILocation(line: 0, scope: !3541)
!3556 = !DILocation(line: 931, column: 18, scope: !3550)
!3557 = !DILocation(line: 931, column: 8, scope: !3550)
!3558 = !DILocation(line: 0, scope: !3550)
!3559 = !DILocation(line: 931, column: 30, scope: !3549)
!3560 = !DILocation(line: 931, column: 3, scope: !3550)
!3561 = !DILocation(line: 933, column: 37, scope: !3548)
!3562 = !DILocation(line: 0, scope: !3548)
!3563 = !DILocation(line: 935, column: 16, scope: !3553)
!3564 = !DILocation(line: 935, column: 11, scope: !3548)
!3565 = !DILocation(line: 937, column: 33, scope: !3552)
!3566 = !DILocation(line: 0, scope: !3552)
!3567 = !DILocation(line: 941, column: 4, scope: !3552)
!3568 = !DILocation(line: 943, column: 18, scope: !3569)
!3569 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 943, column: 12)
!3570 = distinct !DILexicalBlock(scope: !3552, file: !3, line: 942, column: 6)
!3571 = !DILocation(line: 943, column: 26, scope: !3569)
!3572 = !DILocation(line: 943, column: 12, scope: !3570)
!3573 = !DILocation(line: 946, column: 13, scope: !3570)
!3574 = distinct !{!3574, !3567, !3575}
!3575 = !DILocation(line: 948, column: 6, scope: !3552)
!3576 = !DILocation(line: 931, column: 3, scope: !3549)
!3577 = distinct !{!3577, !3560, !3578}
!3578 = !DILocation(line: 950, column: 5, scope: !3550)
!3579 = !DILocation(line: 953, column: 1, scope: !3541)
!3580 = distinct !DISubprogram(name: "dump_sbitmap", scope: !3, file: !3, line: 956, type: !3581, scopeLine: 957, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{null, !439, !1119}
!3583 = !{!3584, !3585, !3586, !3587, !3588, !3589, !3590}
!3584 = !DILocalVariable(name: "file", arg: 1, scope: !3580, file: !3, line: 956, type: !439)
!3585 = !DILocalVariable(name: "bmap", arg: 2, scope: !3580, file: !3, line: 956, type: !1119)
!3586 = !DILocalVariable(name: "i", scope: !3580, file: !3, line: 958, type: !7)
!3587 = !DILocalVariable(name: "n", scope: !3580, file: !3, line: 958, type: !7)
!3588 = !DILocalVariable(name: "j", scope: !3580, file: !3, line: 958, type: !7)
!3589 = !DILocalVariable(name: "set_size", scope: !3580, file: !3, line: 959, type: !7)
!3590 = !DILocalVariable(name: "total_bits", scope: !3580, file: !3, line: 960, type: !7)
!3591 = !DILocation(line: 0, scope: !3580)
!3592 = !DILocation(line: 959, column: 33, scope: !3580)
!3593 = !DILocation(line: 960, column: 35, scope: !3580)
!3594 = !DILocation(line: 962, column: 3, scope: !3580)
!3595 = !DILocation(line: 963, column: 8, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3580, file: !3, line: 963, column: 3)
!3597 = !DILocation(line: 0, scope: !3596)
!3598 = !DILocation(line: 963, column: 14, scope: !3596)
!3599 = !DILocation(line: 963, column: 21, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3596, file: !3, line: 963, column: 3)
!3601 = !DILocation(line: 963, column: 37, scope: !3600)
!3602 = !DILocation(line: 963, column: 32, scope: !3600)
!3603 = !DILocation(line: 963, column: 3, scope: !3596)
!3604 = !DILocation(line: 0, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3606, file: !3, line: 965, column: 7)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !3, line: 964, column: 5)
!3607 = distinct !DILexicalBlock(scope: !3600, file: !3, line: 964, column: 5)
!3608 = !DILocation(line: 964, column: 5, scope: !3607)
!3609 = !DILocation(line: 964, column: 19, scope: !3606)
!3610 = !DILocation(line: 964, column: 43, scope: !3606)
!3611 = !DILocation(line: 964, column: 38, scope: !3606)
!3612 = !DILocation(line: 966, column: 8, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 966, column: 6)
!3614 = !DILocation(line: 966, column: 18, scope: !3613)
!3615 = !DILocation(line: 966, column: 23, scope: !3613)
!3616 = !DILocation(line: 966, column: 13, scope: !3613)
!3617 = !DILocation(line: 967, column: 4, scope: !3613)
!3618 = !DILocation(line: 970, column: 5, scope: !3605)
!3619 = !DILocation(line: 970, column: 43, scope: !3605)
!3620 = !DILocation(line: 970, column: 19, scope: !3605)
!3621 = !DILocation(line: 970, column: 50, scope: !3605)
!3622 = !DILocation(line: 969, column: 2, scope: !3605)
!3623 = !DILocation(line: 964, column: 58, scope: !3606)
!3624 = !DILocation(line: 964, column: 63, scope: !3606)
!3625 = !DILocation(line: 964, column: 5, scope: !3606)
!3626 = distinct !{!3626, !3608, !3627}
!3627 = !DILocation(line: 971, column: 7, scope: !3607)
!3628 = !DILocation(line: 963, column: 52, scope: !3600)
!3629 = !DILocation(line: 963, column: 3, scope: !3600)
!3630 = distinct !{!3630, !3603, !3631}
!3631 = !DILocation(line: 971, column: 7, scope: !3596)
!3632 = !DILocation(line: 973, column: 3, scope: !3580)
!3633 = !DILocation(line: 974, column: 1, scope: !3580)
!3634 = distinct !DISubprogram(name: "dump_sbitmap_file", scope: !3, file: !3, line: 977, type: !3581, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3635)
!3635 = !{!3636, !3637, !3638, !3639}
!3636 = !DILocalVariable(name: "file", arg: 1, scope: !3634, file: !3, line: 977, type: !439)
!3637 = !DILocalVariable(name: "bmap", arg: 2, scope: !3634, file: !3, line: 977, type: !1119)
!3638 = !DILocalVariable(name: "i", scope: !3634, file: !3, line: 979, type: !7)
!3639 = !DILocalVariable(name: "pos", scope: !3634, file: !3, line: 979, type: !7)
!3640 = !DILocation(line: 0, scope: !3634)
!3641 = !DILocation(line: 981, column: 48, scope: !3634)
!3642 = !DILocation(line: 981, column: 3, scope: !3634)
!3643 = !DILocation(line: 983, column: 8, scope: !3644)
!3644 = distinct !DILexicalBlock(scope: !3634, file: !3, line: 983, column: 3)
!3645 = !DILocation(line: 0, scope: !3644)
!3646 = !DILocation(line: 983, column: 35, scope: !3647)
!3647 = distinct !DILexicalBlock(scope: !3644, file: !3, line: 983, column: 3)
!3648 = !DILocation(line: 983, column: 27, scope: !3647)
!3649 = !DILocation(line: 983, column: 3, scope: !3644)
!3650 = !DILocation(line: 984, column: 9, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 984, column: 9)
!3652 = !DILocation(line: 984, column: 9, scope: !3647)
!3653 = !DILocation(line: 986, column: 10, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3655, file: !3, line: 986, column: 6)
!3655 = distinct !DILexicalBlock(scope: !3651, file: !3, line: 985, column: 7)
!3656 = !DILocation(line: 986, column: 6, scope: !3655)
!3657 = !DILocation(line: 988, column: 6, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 987, column: 4)
!3659 = !DILocation(line: 990, column: 4, scope: !3658)
!3660 = !DILocation(line: 992, column: 2, scope: !3655)
!3661 = !DILocation(line: 993, column: 16, scope: !3655)
!3662 = !DILocation(line: 993, column: 11, scope: !3655)
!3663 = !DILocation(line: 993, column: 28, scope: !3655)
!3664 = !DILocation(line: 993, column: 23, scope: !3655)
!3665 = !DILocation(line: 993, column: 41, scope: !3655)
!3666 = !DILocation(line: 993, column: 36, scope: !3655)
!3667 = !DILocation(line: 993, column: 6, scope: !3655)
!3668 = !DILocation(line: 994, column: 7, scope: !3655)
!3669 = !DILocation(line: 983, column: 44, scope: !3647)
!3670 = !DILocation(line: 983, column: 3, scope: !3647)
!3671 = distinct !{!3671, !3649, !3672}
!3672 = !DILocation(line: 994, column: 7, scope: !3644)
!3673 = !DILocation(line: 996, column: 3, scope: !3634)
!3674 = !DILocation(line: 997, column: 1, scope: !3634)
!3675 = distinct !DISubprogram(name: "debug_sbitmap", scope: !3, file: !3, line: 1000, type: !3676, scopeLine: 1001, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3678)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{null, !1119}
!3678 = !{!3679}
!3679 = !DILocalVariable(name: "bmap", arg: 1, scope: !3675, file: !3, line: 1000, type: !1119)
!3680 = !DILocation(line: 0, scope: !3675)
!3681 = !DILocation(line: 1002, column: 22, scope: !3675)
!3682 = !DILocation(line: 1002, column: 3, scope: !3675)
!3683 = !DILocation(line: 1003, column: 1, scope: !3675)
!3684 = distinct !DISubprogram(name: "dump_sbitmap_vector", scope: !3, file: !3, line: 1006, type: !3685, scopeLine: 1008, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3687)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{null, !439, !385, !385, !400, !380}
!3687 = !{!3688, !3689, !3690, !3691, !3692, !3693}
!3688 = !DILocalVariable(name: "file", arg: 1, scope: !3684, file: !3, line: 1006, type: !439)
!3689 = !DILocalVariable(name: "title", arg: 2, scope: !3684, file: !3, line: 1006, type: !385)
!3690 = !DILocalVariable(name: "subtitle", arg: 3, scope: !3684, file: !3, line: 1006, type: !385)
!3691 = !DILocalVariable(name: "bmaps", arg: 4, scope: !3684, file: !3, line: 1007, type: !400)
!3692 = !DILocalVariable(name: "n_maps", arg: 5, scope: !3684, file: !3, line: 1007, type: !380)
!3693 = !DILocalVariable(name: "bb", scope: !3684, file: !3, line: 1009, type: !380)
!3694 = !DILocation(line: 0, scope: !3684)
!3695 = !DILocation(line: 1011, column: 3, scope: !3684)
!3696 = !DILocation(line: 1012, column: 8, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 1012, column: 3)
!3698 = !DILocation(line: 0, scope: !3697)
!3699 = !DILocation(line: 1012, column: 19, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 1012, column: 3)
!3701 = !DILocation(line: 1012, column: 3, scope: !3697)
!3702 = !DILocation(line: 1014, column: 7, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3700, file: !3, line: 1013, column: 5)
!3704 = !DILocation(line: 1015, column: 27, scope: !3703)
!3705 = !DILocation(line: 1015, column: 7, scope: !3703)
!3706 = !DILocation(line: 1012, column: 31, scope: !3700)
!3707 = !DILocation(line: 1012, column: 3, scope: !3700)
!3708 = distinct !{!3708, !3701, !3709}
!3709 = !DILocation(line: 1016, column: 5, scope: !3697)
!3710 = !DILocation(line: 1018, column: 3, scope: !3684)
!3711 = !DILocation(line: 1019, column: 1, scope: !3684)
!3712 = distinct !DISubprogram(name: "sbitmap_popcount", scope: !3, file: !3, line: 1056, type: !3713, scopeLine: 1057, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3715)
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!397, !1119, !397}
!3715 = !{!3716, !3717, !3718, !3719, !3720, !3721, !3724}
!3716 = !DILocalVariable(name: "a", arg: 1, scope: !3712, file: !3, line: 1056, type: !1119)
!3717 = !DILocalVariable(name: "maxbit", arg: 2, scope: !3712, file: !3, line: 1056, type: !397)
!3718 = !DILocalVariable(name: "count", scope: !3712, file: !3, line: 1058, type: !397)
!3719 = !DILocalVariable(name: "ix", scope: !3712, file: !3, line: 1059, type: !7)
!3720 = !DILocalVariable(name: "lastword", scope: !3712, file: !3, line: 1060, type: !7)
!3721 = !DILocalVariable(name: "bitindex", scope: !3722, file: !3, line: 1086, type: !7)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 1085, column: 5)
!3723 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1084, column: 7)
!3724 = !DILocalVariable(name: "theword", scope: !3722, file: !3, line: 1087, type: !397)
!3725 = !DILocation(line: 0, scope: !3712)
!3726 = !DILocation(line: 1062, column: 14, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1062, column: 7)
!3728 = !DILocation(line: 1062, column: 7, scope: !3712)
!3729 = !DILocation(line: 1065, column: 20, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1065, column: 7)
!3731 = !DILocation(line: 1065, column: 17, scope: !3730)
!3732 = !DILocation(line: 1065, column: 14, scope: !3730)
!3733 = !DILocation(line: 1065, column: 7, scope: !3712)
!3734 = !DILocation(line: 1066, column: 5, scope: !3730)
!3735 = !DILocation(line: 1069, column: 14, scope: !3712)
!3736 = !DILocation(line: 0, scope: !3737)
!3737 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 1072, column: 11)
!3738 = distinct !DILexicalBlock(scope: !3739, file: !3, line: 1071, column: 5)
!3739 = distinct !DILexicalBlock(scope: !3740, file: !3, line: 1070, column: 3)
!3740 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 1070, column: 3)
!3741 = !DILocation(line: 1070, column: 19, scope: !3739)
!3742 = !DILocation(line: 1070, column: 8, scope: !3740)
!3743 = !DILocation(line: 0, scope: !3740)
!3744 = !DILocation(line: 1070, column: 3, scope: !3740)
!3745 = !DILocation(line: 1072, column: 14, scope: !3737)
!3746 = !DILocation(line: 1072, column: 11, scope: !3737)
!3747 = !DILocation(line: 1072, column: 11, scope: !3738)
!3748 = !DILocation(line: 1074, column: 13, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3737, file: !3, line: 1073, column: 2)
!3750 = !DILocation(line: 1078, column: 2, scope: !3749)
!3751 = !DILocation(line: 1080, column: 11, scope: !3737)
!3752 = !DILocation(line: 1070, column: 33, scope: !3739)
!3753 = !DILocation(line: 1070, column: 3, scope: !3739)
!3754 = distinct !{!3754, !3744, !3755}
!3755 = !DILocation(line: 1081, column: 5, scope: !3740)
!3756 = !DILocation(line: 1084, column: 21, scope: !3723)
!3757 = !DILocation(line: 1084, column: 16, scope: !3723)
!3758 = !DILocation(line: 1084, column: 7, scope: !3712)
!3759 = !DILocation(line: 0, scope: !3722)
!3760 = !DILocation(line: 1089, column: 18, scope: !3722)
!3761 = !DILocation(line: 1090, column: 20, scope: !3762)
!3762 = distinct !DILexicalBlock(scope: !3722, file: !3, line: 1090, column: 11)
!3763 = !DILocation(line: 1090, column: 11, scope: !3722)
!3764 = !DILocation(line: 1087, column: 34, scope: !3722)
!3765 = !DILocation(line: 1092, column: 57, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3762, file: !3, line: 1091, column: 2)
!3767 = !DILocation(line: 1092, column: 36, scope: !3766)
!3768 = !DILocation(line: 1092, column: 12, scope: !3766)
!3769 = !DILocation(line: 1093, column: 13, scope: !3766)
!3770 = !DILocation(line: 1093, column: 10, scope: !3766)
!3771 = !DILocation(line: 1094, column: 2, scope: !3766)
!3772 = !DILocation(line: 1097, column: 1, scope: !3712)
