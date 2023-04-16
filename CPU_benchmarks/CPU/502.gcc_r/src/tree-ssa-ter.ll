; ModuleID = 'tree-ssa-ter.bc'
source_filename = "tree-ssa-ter.c"
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
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
%struct.gimple_df = type { %struct.htab*, %struct.VEC_gimple_gc*, %struct.VEC_tree_gc*, %union.tree_node*, %struct.pt_solution, %struct.pt_solution, %struct.pointer_map_t*, %union.tree_node*, %struct.htab*, %struct.bitmap_head_def*, i8, %struct.ssa_operands }
%struct.VEC_gimple_gc = type { %struct.VEC_gimple_base }
%struct.VEC_gimple_base = type { i32, i32, [1 x %union.gimple_statement_d*] }
%struct.VEC_tree_gc = type { %struct.VEC_tree_base }
%struct.VEC_tree_base = type { i32, i32, [1 x %union.tree_node*] }
%struct.pt_solution = type { i8, %struct.bitmap_head_def* }
%struct.pointer_map_t = type opaque
%struct.bitmap_head_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, %struct.bitmap_obstack* }
%struct.bitmap_element_def = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, [2 x i64] }
%struct.bitmap_obstack = type { %struct.bitmap_element_def*, %struct.bitmap_head_def*, %struct.obstack }
%struct.obstack = type { i64, %struct._obstack_chunk*, i8*, i8*, i8*, i64, i32, %struct._obstack_chunk* (i8*, i64)*, void (i8*, %struct._obstack_chunk*)*, i8*, i8 }
%struct._obstack_chunk = type { i8*, %struct._obstack_chunk*, [4 x i8] }
%struct.ssa_operands = type { %struct.ssa_operand_memory_d*, i32, i32, i8, %struct.def_optype_d*, %struct.use_optype_d* }
%struct.ssa_operand_memory_d = type { %struct.ssa_operand_memory_d*, [1 x i8] }
%struct.def_optype_d = type { %struct.def_optype_d*, %union.tree_node** }
%struct.use_optype_d = type { %struct.use_optype_d*, %struct.ssa_use_operand_d }
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
%struct.rtx_def = type opaque
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._var_map = type { %struct.partition_def*, i32*, i32*, i32, i32, i32, i32*, %struct.VEC_tree_heap* }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.temp_expr_table_d = type { %struct._var_map*, %struct.bitmap_head_def**, %struct.bitmap_head_def*, %struct.bitmap_head_def**, %struct.bitmap_head_def**, i32, %struct.bitmap_head_def*, %struct.bitmap_head_def*, i32* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [24 x i8] c"\0AReplacing Expressions\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c" replace with --> \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@optimize = external dso_local local_unnamed_addr global i32, align 4
@flag_float_store = external dso_local local_unnamed_addr global i32, align 4
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@global_trees = external dso_local local_unnamed_addr global [131 x %union.tree_node*], align 16
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.5 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1563 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1576, metadata !DIExpression()), !dbg !1578
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1577, metadata !DIExpression()), !dbg !1578
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1579
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1580
  ret i32 %call, !dbg !1581
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1582 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1586
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1587
  ret i32 %call, !dbg !1588
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1589 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1644, metadata !DIExpression()), !dbg !1645
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1646
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1646
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1646
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1646
  %cmp = icmp uge i8* %0, %1, !dbg !1646
  %conv1 = zext i1 %cmp to i64, !dbg !1646
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1646
  %tobool = icmp eq i64 %expval, 0, !dbg !1646
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1646

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1646
  br label %cond.end, !dbg !1646

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1646
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1646
  %2 = load i8, i8* %0, align 1, !dbg !1646
  %conv3 = zext i8 %2 to i32, !dbg !1646
  br label %cond.end, !dbg !1646

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1646
  ret i32 %cond, !dbg !1647
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1648 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1650, metadata !DIExpression()), !dbg !1651
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1652
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1652
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1652
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1652
  %cmp = icmp uge i8* %0, %1, !dbg !1652
  %conv1 = zext i1 %cmp to i64, !dbg !1652
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1652
  %tobool = icmp eq i64 %expval, 0, !dbg !1652
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1652

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1652
  br label %cond.end, !dbg !1652

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1652
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1652
  %2 = load i8, i8* %0, align 1, !dbg !1652
  %conv3 = zext i8 %2 to i32, !dbg !1652
  br label %cond.end, !dbg !1652

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1652
  ret i32 %cond, !dbg !1653
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1654 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1655
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1655
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1655
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1655
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1655
  %cmp = icmp uge i8* %1, %2, !dbg !1655
  %conv1 = zext i1 %cmp to i64, !dbg !1655
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1655
  %tobool = icmp eq i64 %expval, 0, !dbg !1655
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1655

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1655
  br label %cond.end, !dbg !1655

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1655
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1655
  %3 = load i8, i8* %1, align 1, !dbg !1655
  %conv3 = zext i8 %3 to i32, !dbg !1655
  br label %cond.end, !dbg !1655

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1655
  ret i32 %cond, !dbg !1656
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1657 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1661, metadata !DIExpression()), !dbg !1662
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1663
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1664
  ret i32 %call, !dbg !1665
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1666 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1670, metadata !DIExpression()), !dbg !1672
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1671, metadata !DIExpression()), !dbg !1672
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1673
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1673
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1673
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1673
  %cmp = icmp uge i8* %0, %1, !dbg !1673
  %conv1 = zext i1 %cmp to i64, !dbg !1673
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1673
  %tobool = icmp eq i64 %expval, 0, !dbg !1673
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1673

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1673
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1673
  br label %cond.end, !dbg !1673

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1673
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1673
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1673
  store i8 %conv2, i8* %0, align 1, !dbg !1673
  %conv6 = and i32 %__c, 255, !dbg !1673
  br label %cond.end, !dbg !1673

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1673
  ret i32 %cond, !dbg !1674
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1675 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1677, metadata !DIExpression()), !dbg !1679
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1678, metadata !DIExpression()), !dbg !1679
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1680
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1680
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1680
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1680
  %cmp = icmp uge i8* %0, %1, !dbg !1680
  %conv1 = zext i1 %cmp to i64, !dbg !1680
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1680
  %tobool = icmp eq i64 %expval, 0, !dbg !1680
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1680

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1680
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1680
  br label %cond.end, !dbg !1680

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1680
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1680
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1680
  store i8 %conv2, i8* %0, align 1, !dbg !1680
  %conv6 = and i32 %__c, 255, !dbg !1680
  br label %cond.end, !dbg !1680

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1680
  ret i32 %cond, !dbg !1681
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1684, metadata !DIExpression()), !dbg !1685
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1686
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1686
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1686
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1686
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1686
  %cmp = icmp uge i8* %1, %2, !dbg !1686
  %conv1 = zext i1 %cmp to i64, !dbg !1686
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1686
  %tobool = icmp eq i64 %expval, 0, !dbg !1686
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1686

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1686
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1686
  br label %cond.end, !dbg !1686

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1686
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1686
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1686
  store i8 %conv4, i8* %1, align 1, !dbg !1686
  %conv6 = and i32 %__c, 255, !dbg !1686
  br label %cond.end, !dbg !1686

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1686
  ret i32 %cond, !dbg !1687
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1688 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1694, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1695, metadata !DIExpression()), !dbg !1697
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1696, metadata !DIExpression()), !dbg !1697
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1698
  ret i64 %call, !dbg !1699
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1700 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1702, metadata !DIExpression()), !dbg !1703
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1704
  %0 = load i32, i32* %_flags, align 8, !dbg !1704
  %and = lshr i32 %0, 4, !dbg !1704
  %and.lobit = and i32 %and, 1, !dbg !1704
  ret i32 %and.lobit, !dbg !1705
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1706 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1708, metadata !DIExpression()), !dbg !1709
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1710
  %0 = load i32, i32* %_flags, align 8, !dbg !1710
  %and = lshr i32 %0, 5, !dbg !1710
  %and.lobit = and i32 %and, 1, !dbg !1710
  ret i32 %and.lobit, !dbg !1711
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1712 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1715, metadata !DIExpression()), !dbg !1716
  %__c.off = add i32 %__c, 128, !dbg !1717
  %0 = icmp ult i32 %__c.off, 384, !dbg !1717
  br i1 %0, label %cond.true, label %cond.end, !dbg !1717

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1718
  %1 = load i32*, i32** %call, align 8, !dbg !1719
  %idxprom = sext i32 %__c to i64, !dbg !1720
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1720
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1720
  br label %cond.end, !dbg !1721

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1721
  ret i32 %cond, !dbg !1722
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1723 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1725, metadata !DIExpression()), !dbg !1726
  %__c.off = add i32 %__c, 128, !dbg !1727
  %0 = icmp ult i32 %__c.off, 384, !dbg !1727
  br i1 %0, label %cond.true, label %cond.end, !dbg !1727

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1728
  %1 = load i32*, i32** %call, align 8, !dbg !1729
  %idxprom = sext i32 %__c to i64, !dbg !1730
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1730
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1730
  br label %cond.end, !dbg !1731

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1731
  ret i32 %cond, !dbg !1732
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1733 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1738, metadata !DIExpression()), !dbg !1739
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1740
  %conv = trunc i64 %call to i32, !dbg !1741
  ret i32 %conv, !dbg !1742
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1743 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1747, metadata !DIExpression()), !dbg !1748
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1749
  ret i64 %call, !dbg !1750
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1751 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1756, metadata !DIExpression()), !dbg !1757
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1758
  ret i64 %call, !dbg !1759
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1760 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1766, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1767, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1768, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1769, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1770, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 0, metadata !1771, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1772, metadata !DIExpression()), !dbg !1776
  br label %while.cond, !dbg !1777

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1778
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1772, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1771, metadata !DIExpression()), !dbg !1776
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1779
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1777

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1780
  %div = lshr i64 %add, 1, !dbg !1782
  call void @llvm.dbg.value(metadata i64 %div, metadata !1773, metadata !DIExpression()), !dbg !1776
  %mul = mul i64 %div, %__size, !dbg !1783
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1784
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1774, metadata !DIExpression()), !dbg !1776
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1785
  call void @llvm.dbg.value(metadata i32 %call, metadata !1775, metadata !DIExpression()), !dbg !1776
  %cmp1 = icmp slt i32 %call, 0, !dbg !1786
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1788

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1789
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1791

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1792
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1771, metadata !DIExpression()), !dbg !1776
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1776
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1772, metadata !DIExpression()), !dbg !1776
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1771, metadata !DIExpression()), !dbg !1776
  br label %while.cond, !dbg !1777, !llvm.loop !1793

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1776
  ret i8* %retval.0, !dbg !1795
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1796 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1802, metadata !DIExpression()), !dbg !1803
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1804
  ret double %call, !dbg !1805
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1806 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1815, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1816, metadata !DIExpression()), !dbg !1818
  call void @llvm.dbg.value(metadata i32 %base, metadata !1817, metadata !DIExpression()), !dbg !1818
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1819
  ret i64 %call, !dbg !1820
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1821 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1827, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1828, metadata !DIExpression()), !dbg !1830
  call void @llvm.dbg.value(metadata i32 %base, metadata !1829, metadata !DIExpression()), !dbg !1830
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1831
  ret i64 %call, !dbg !1832
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1833 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1844, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1845, metadata !DIExpression()), !dbg !1847
  call void @llvm.dbg.value(metadata i32 %base, metadata !1846, metadata !DIExpression()), !dbg !1847
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1848
  ret i64 %call, !dbg !1849
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1850 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1854, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1855, metadata !DIExpression()), !dbg !1857
  call void @llvm.dbg.value(metadata i32 %base, metadata !1856, metadata !DIExpression()), !dbg !1857
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1858
  ret i64 %call, !dbg !1859
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1860 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1902, metadata !DIExpression()), !dbg !1904
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1903, metadata !DIExpression()), !dbg !1904
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1905
  ret i32 %call, !dbg !1906
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1907 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1912
  ret i32 %call, !dbg !1913
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1918, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1919, metadata !DIExpression()), !dbg !1920
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1921
  ret i32 %call, !dbg !1922
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1923 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1927, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1928, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1929, metadata !DIExpression()), !dbg !1931
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1930, metadata !DIExpression()), !dbg !1931
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1932
  ret i32 %call, !dbg !1933
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1934 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1938, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1939, metadata !DIExpression()), !dbg !1941
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1940, metadata !DIExpression(DW_OP_deref)), !dbg !1941
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1942
  ret i32 %call, !dbg !1943
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1944 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1948, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1949, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1951, metadata !DIExpression()), !dbg !1952
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1951, metadata !DIExpression(DW_OP_deref)), !dbg !1952
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1953
  ret i32 %call, !dbg !1954
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1955 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1979, metadata !DIExpression()), !dbg !1981
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1980, metadata !DIExpression()), !dbg !1981
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1982
  ret i32 %call, !dbg !1983
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1984 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1989
  ret i32 %call, !dbg !1990
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1995, metadata !DIExpression()), !dbg !1997
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1996, metadata !DIExpression()), !dbg !1997
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !1998
  ret i32 %call, !dbg !1999
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2004, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2005, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2006, metadata !DIExpression()), !dbg !2008
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2007, metadata !DIExpression()), !dbg !2008
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2009
  ret i32 %call, !dbg !2010
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.bitmap_head_def* @find_replaceable_exprs(%struct._var_map* %map) local_unnamed_addr #5 !dbg !2011 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2015, metadata !DIExpression()), !dbg !2020
  %call = tail call fastcc %struct.temp_expr_table_d* @new_temp_expr_table(%struct._var_map* %map) #7, !dbg !2021
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %call, metadata !2017, metadata !DIExpression()), !dbg !2020
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2022
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !2022
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2022
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !2022
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2022
  br label %for.cond, !dbg !2022

for.cond:                                         ; preds = %for.body, %entry
  %3 = phi %struct.control_flow_graph* [ %1, %entry ], [ %.pre1, %for.body ], !dbg !2024
  %.pn = phi %struct.basic_block_def* [ %2, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2026
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2026
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2016, metadata !DIExpression()), !dbg !2020
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !2024
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2024
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %4, !dbg !2024
  br i1 %cmp, label %for.end, label %for.body, !dbg !2022

for.body:                                         ; preds = %for.cond
  tail call fastcc void @find_replaceable_in_bb(%struct.temp_expr_table_d* %call, %struct.basic_block_def* %bb.0) #7, !dbg !2027
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2024
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2029
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !2024
  br label %for.cond, !dbg !2024, !llvm.loop !2030

for.end:                                          ; preds = %for.cond
  %call4 = tail call fastcc %struct.bitmap_head_def* @free_temp_expr_table(%struct.temp_expr_table_d* %call) #7, !dbg !2032
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !2019, metadata !DIExpression()), !dbg !2020
  ret %struct.bitmap_head_def* %call4, !dbg !2033
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.temp_expr_table_d* @new_temp_expr_table(%struct._var_map* %map) unnamed_addr #5 !dbg !2034 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2038, metadata !DIExpression()), !dbg !2046
  %call = tail call i8* @xmalloc(i64 72) #6, !dbg !2047
  %0 = bitcast i8* %call to %struct.temp_expr_table_d*, !dbg !2047
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %0, metadata !2039, metadata !DIExpression()), !dbg !2046
  %map1 = bitcast i8* %call to %struct._var_map**, !dbg !2048
  store %struct._var_map* %map, %struct._var_map** %map1, align 8, !dbg !2049
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2050
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 3, !dbg !2050
  %2 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2050
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %2, i64 0, i32 2, !dbg !2050
  %3 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2050
  %tobool = icmp eq %struct.VEC_tree_gc* %3, null, !dbg !2050
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2050

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %3, i64 0, i32 0, !dbg !2050
  br label %cond.end, !dbg !2050

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2050
  %call5 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2050
  %add = add i32 %call5, 1, !dbg !2050
  %conv = zext i32 %add to i64, !dbg !2050
  %call6 = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2050
  %partition_dependencies = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2051
  %4 = bitcast i8* %partition_dependencies to i8**, !dbg !2052
  store i8* %call6, i8** %4, align 8, !dbg !2052
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2053
  %gimple_df8 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !2053
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df8, align 8, !dbg !2053
  %ssa_names9 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 2, !dbg !2053
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names9, align 8, !dbg !2053
  %tobool10 = icmp eq %struct.VEC_tree_gc* %7, null, !dbg !2053
  br i1 %tobool10, label %cond.end17, label %cond.true11, !dbg !2053

cond.true11:                                      ; preds = %cond.end
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %7, i64 0, i32 0, !dbg !2053
  br label %cond.end17, !dbg !2053

cond.end17:                                       ; preds = %cond.end, %cond.true11
  %cond18 = phi %struct.VEC_tree_base* [ %base15, %cond.true11 ], [ null, %cond.end ], !dbg !2053
  %call19 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond18) #7, !dbg !2053
  %add20 = add i32 %call19, 1, !dbg !2053
  %conv21 = zext i32 %add20 to i64, !dbg !2053
  %call22 = tail call i8* @xcalloc(i64 %conv21, i64 8) #6, !dbg !2053
  %expr_decl_uids = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2054
  %8 = bitcast i8* %expr_decl_uids to i8**, !dbg !2055
  store i8* %call22, i8** %8, align 8, !dbg !2055
  %call23 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !2056
  %add24 = add i32 %call23, 1, !dbg !2056
  %conv25 = zext i32 %add24 to i64, !dbg !2056
  %call26 = tail call i8* @xcalloc(i64 %conv25, i64 8) #6, !dbg !2056
  %kill_list = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2057
  %9 = bitcast i8* %kill_list to i8**, !dbg !2058
  store i8* %call26, i8** %9, align 8, !dbg !2058
  %call27 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2059
  %partition_in_use = getelementptr inbounds i8, i8* %call, i64 48, !dbg !2060
  %10 = bitcast i8* %partition_in_use to %struct.bitmap_head_def**, !dbg !2060
  store %struct.bitmap_head_def* %call27, %struct.bitmap_head_def** %10, align 8, !dbg !2061
  %call28 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !2062
  %virtual_partition = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2063
  %11 = bitcast i8* %virtual_partition to i32*, !dbg !2063
  store i32 %call28, i32* %11, align 8, !dbg !2064
  %call29 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2065
  %new_replaceable_dependencies = getelementptr inbounds i8, i8* %call, i64 56, !dbg !2066
  %12 = bitcast i8* %new_replaceable_dependencies to %struct.bitmap_head_def**, !dbg !2066
  store %struct.bitmap_head_def* %call29, %struct.bitmap_head_def** %12, align 8, !dbg !2067
  %replaceable_expressions = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2068
  %13 = bitcast i8* %replaceable_expressions to %struct.bitmap_head_def**, !dbg !2068
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %13, align 8, !dbg !2069
  %call30 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !2070
  %conv31 = zext i32 %call30 to i64, !dbg !2070
  %call32 = tail call i8* @xcalloc(i64 %conv31, i64 4) #6, !dbg !2070
  %num_in_part = getelementptr inbounds i8, i8* %call, i64 64, !dbg !2071
  %14 = bitcast i8* %num_in_part to i8**, !dbg !2072
  store i8* %call32, i8** %14, align 8, !dbg !2072
  call void @llvm.dbg.value(metadata i32 1, metadata !2040, metadata !DIExpression()), !dbg !2046
  %15 = bitcast i8* %num_in_part to i32**, !dbg !2073
  br label %for.cond, !dbg !2075

for.cond:                                         ; preds = %cleanup, %cond.end17
  %x.0 = phi i32 [ 1, %cond.end17 ], [ %inc68, %cleanup ], !dbg !2076
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !2040, metadata !DIExpression()), !dbg !2046
  %16 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2077
  %gimple_df34 = getelementptr inbounds %struct.function, %struct.function* %16, i64 0, i32 3, !dbg !2077
  %17 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df34, align 8, !dbg !2077
  %ssa_names35 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %17, i64 0, i32 2, !dbg !2077
  %18 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names35, align 8, !dbg !2077
  %tobool36 = icmp eq %struct.VEC_tree_gc* %18, null, !dbg !2077
  br i1 %tobool36, label %cond.end43, label %cond.true37, !dbg !2077

cond.true37:                                      ; preds = %for.cond
  %base41 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %18, i64 0, i32 0, !dbg !2077
  br label %cond.end43, !dbg !2077

cond.end43:                                       ; preds = %for.cond, %cond.true37
  %cond44 = phi %struct.VEC_tree_base* [ %base41, %cond.true37 ], [ null, %for.cond ], !dbg !2077
  %call45 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond44) #7, !dbg !2077
  %cmp = icmp ult i32 %x.0, %call45, !dbg !2078
  br i1 %cmp, label %for.body, label %for.end, !dbg !2079

for.body:                                         ; preds = %cond.end43
  %19 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2080
  %gimple_df48 = getelementptr inbounds %struct.function, %struct.function* %19, i64 0, i32 3, !dbg !2080
  %20 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df48, align 8, !dbg !2080
  %ssa_names49 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %20, i64 0, i32 2, !dbg !2080
  %21 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names49, align 8, !dbg !2080
  %tobool50 = icmp eq %struct.VEC_tree_gc* %21, null, !dbg !2080
  br i1 %tobool50, label %cond.end57, label %cond.true51, !dbg !2080

cond.true51:                                      ; preds = %for.body
  %base55 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %21, i64 0, i32 0, !dbg !2080
  br label %cond.end57, !dbg !2080

cond.end57:                                       ; preds = %for.body, %cond.true51
  %cond58 = phi %struct.VEC_tree_base* [ %base55, %cond.true51 ], [ null, %for.body ], !dbg !2080
  %call59 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond58, i32 %x.0) #7, !dbg !2080
  call void @llvm.dbg.value(metadata %union.tree_node* %call59, metadata !2045, metadata !DIExpression()), !dbg !2081
  %tobool60 = icmp eq %union.tree_node* %call59, null, !dbg !2082
  br i1 %tobool60, label %cleanup, label %if.end, !dbg !2084

if.end:                                           ; preds = %cond.end57
  %call61 = tail call fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* nonnull %call59) #7, !dbg !2085
  call void @llvm.dbg.value(metadata i32 %call61, metadata !2041, metadata !DIExpression()), !dbg !2081
  %cmp62 = icmp eq i32 %call61, -1, !dbg !2086
  br i1 %cmp62, label %cleanup, label %if.then64, !dbg !2087

if.then64:                                        ; preds = %if.end
  %22 = load i32*, i32** %15, align 8, !dbg !2088
  %idxprom = sext i32 %call61 to i64, !dbg !2089
  %arrayidx = getelementptr inbounds i32, i32* %22, i64 %idxprom, !dbg !2089
  %23 = load i32, i32* %arrayidx, align 4, !dbg !2090
  %inc = add nsw i32 %23, 1, !dbg !2090
  store i32 %inc, i32* %arrayidx, align 4, !dbg !2090
  br label %cleanup, !dbg !2089

cleanup:                                          ; preds = %if.end, %cond.end57, %if.then64
  %inc68 = add i32 %x.0, 1, !dbg !2091
  call void @llvm.dbg.value(metadata i32 %inc68, metadata !2040, metadata !DIExpression()), !dbg !2046
  br label %for.cond, !dbg !2092, !llvm.loop !2093

for.end:                                          ; preds = %cond.end43
  ret %struct.temp_expr_table_d* %0, !dbg !2095
}

; Function Attrs: nounwind uwtable
define internal fastcc void @find_replaceable_in_bb(%struct.temp_expr_table_d* %tab, %struct.basic_block_def* %bb) unnamed_addr #5 !dbg !2096 {
entry:
  %bsi = alloca %struct.gimple_stmt_iterator, align 8
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %iter2 = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2100, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2101, metadata !DIExpression()), !dbg !2140
  %0 = bitcast %struct.gimple_stmt_iterator* %bsi to i8*, !dbg !2141
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2141
  %map1 = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 0, !dbg !2142
  %1 = load %struct._var_map*, %struct._var_map** %map1, align 8, !dbg !2142
  call void @llvm.dbg.value(metadata %struct._var_map* %1, metadata !2113, metadata !DIExpression()), !dbg !2140
  %2 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2143
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %2) #8, !dbg !2143
  %3 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2144
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2144
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb) #7, !dbg !2144
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %3, i64 24, i1 false), !dbg !2144
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !2144
  %expr_decl_uids = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 3, !dbg !2145
  %4 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter2, i64 0, i32 0, !dbg !2146
  %kill_list = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 4, !dbg !2147
  %new_replaceable_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 7, !dbg !2152
  br label %for.cond, !dbg !2153

for.cond:                                         ; preds = %for.inc65, %entry
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2102, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !2154
  %tobool = icmp eq i8 %call, 0, !dbg !2155
  br i1 %tobool, label %for.body, label %for.end66, !dbg !2156

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2102, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call2 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %bsi) #7, !dbg !2157
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call2, metadata !2109, metadata !DIExpression()), !dbg !2140
  %call3 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call2) #7, !dbg !2158
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2158
  br i1 %tobool4, label %if.end, label %for.inc65, !dbg !2160

if.end:                                           ; preds = %for.body
  %call5 = call fastcc zeroext i8 @is_replaceable_p(%union.gimple_statement_d* %call2) #7, !dbg !2161
  call void @llvm.dbg.value(metadata i8 %call5, metadata !2127, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call6 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call2, i32 1) #7, !dbg !2162
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2111, metadata !DIExpression()), !dbg !2140
  br label %for.cond7, !dbg !2162

for.cond7:                                        ; preds = %for.inc39, %if.end
  %use.0 = phi %union.tree_node* [ %call6, %if.end ], [ %call40, %for.inc39 ], !dbg !2163
  call void @llvm.dbg.value(metadata %union.tree_node* %use.0, metadata !2111, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call8 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2164
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2164
  br i1 %tobool9, label %for.body11, label %for.end41, !dbg !2162

for.body11:                                       ; preds = %for.cond7
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %use.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2165
  %5 = bitcast %union.tree_node** %version to i32*, !dbg !2165
  %6 = load i32, i32* %5, align 8, !dbg !2165
  call void @llvm.dbg.value(metadata i32 %6, metadata !2128, metadata !DIExpression()), !dbg !2166
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2167
  %idxprom = zext i32 %6 to i64, !dbg !2168
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom, !dbg !2168
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2168
  %tobool12 = icmp eq %struct.bitmap_head_def* %8, null, !dbg !2168
  br i1 %tobool12, label %for.inc39, label %if.then13, !dbg !2169

if.then13:                                        ; preds = %for.body11
  call void @llvm.dbg.value(metadata i8 0, metadata !2135, metadata !DIExpression()), !dbg !2146
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %4) #8, !dbg !2170
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %8, metadata !2139, metadata !DIExpression()), !dbg !2146
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %8, i64 0, i32 0, !dbg !2171
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !2171
  %tobool17 = icmp eq %struct.bitmap_element_def* %9, null, !dbg !2171
  br i1 %tobool17, label %if.end31, label %if.then18, !dbg !2173

if.then18:                                        ; preds = %if.then13
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter2, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call19 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter2, %union.gimple_statement_d* %call2, i32 2) #7, !dbg !2174
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !2110, metadata !DIExpression()), !dbg !2140
  br label %for.cond20, !dbg !2174

for.cond20:                                       ; preds = %for.inc, %if.then18
  %def.0 = phi %union.tree_node* [ %call19, %if.then18 ], [ %call30, %for.inc ], !dbg !2176
  call void @llvm.dbg.value(metadata %union.tree_node* %def.0, metadata !2110, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter2, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call21 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter2) #7, !dbg !2177
  %tobool22 = icmp eq i8 %call21, 0, !dbg !2177
  br i1 %tobool22, label %for.body24, label %if.end31.loopexit, !dbg !2174

for.body24:                                       ; preds = %for.cond20
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %def.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2179
  %10 = bitcast i32* %var to %struct.tree_decl_minimal**, !dbg !2179
  %11 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %10, align 8, !dbg !2179
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %11, i64 0, i32 2, !dbg !2179
  %12 = load i32, i32* %uid, align 4, !dbg !2179
  %call26 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %8, i32 %12) #6, !dbg !2182
  %tobool27 = icmp eq i32 %call26, 0, !dbg !2182
  br i1 %tobool27, label %for.inc, label %if.end31.loopexit, !dbg !2183

for.inc:                                          ; preds = %for.body24
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter2, metadata !2138, metadata !DIExpression(DW_OP_deref)), !dbg !2146
  %call30 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter2) #7, !dbg !2177
  call void @llvm.dbg.value(metadata %union.tree_node* %call30, metadata !2110, metadata !DIExpression()), !dbg !2140
  br label %for.cond20, !dbg !2177, !llvm.loop !2184

if.end31.loopexit:                                ; preds = %for.cond20, %for.body24
  %same_root_var.1.ph = phi i1 [ true, %for.body24 ], [ false, %for.cond20 ]
  br label %if.end31, !dbg !2186

if.end31:                                         ; preds = %if.end31.loopexit, %if.then13
  %same_root_var.1 = phi i1 [ false, %if.then13 ], [ %same_root_var.1.ph, %if.end31.loopexit ]
  %call32 = call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %call2) #7, !dbg !2186
  %tobool33 = icmp ne i8 %call32, 0, !dbg !2186
  %or.cond = or i1 %tobool33, %same_root_var.1, !dbg !2188
  br i1 %or.cond, label %if.then36, label %if.else, !dbg !2188

if.then36:                                        ; preds = %if.end31
  call fastcc void @finished_with_expr(%struct.temp_expr_table_d* %tab, i32 %6, i8 zeroext 1) #7, !dbg !2189
  br label %if.end37, !dbg !2189

if.else:                                          ; preds = %if.end31
  call fastcc void @mark_replaceable(%struct.temp_expr_table_d* %tab, %union.tree_node* %use.0, i8 zeroext %call5) #7, !dbg !2190
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then36
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %4) #8, !dbg !2191
  br label %for.inc39, !dbg !2192

for.inc39:                                        ; preds = %for.body11, %if.end37
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call40 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2164
  call void @llvm.dbg.value(metadata %union.tree_node* %call40, metadata !2111, metadata !DIExpression()), !dbg !2140
  br label %for.cond7, !dbg !2164, !llvm.loop !2193

for.end41:                                        ; preds = %for.cond7
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call42 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %call2, i32 2) #7, !dbg !2195
  call void @llvm.dbg.value(metadata %union.tree_node* %call42, metadata !2110, metadata !DIExpression()), !dbg !2140
  br label %for.cond43, !dbg !2195

for.cond43:                                       ; preds = %for.inc55, %for.end41
  %def.1 = phi %union.tree_node* [ %call42, %for.end41 ], [ %call56, %for.inc55 ], !dbg !2196
  call void @llvm.dbg.value(metadata %union.tree_node* %def.1, metadata !2110, metadata !DIExpression()), !dbg !2140
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call44 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2197
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2197
  br i1 %tobool45, label %for.body47, label %for.end57, !dbg !2195

for.body47:                                       ; preds = %for.cond43
  %call48 = call fastcc i32 @var_to_partition(%struct._var_map* %1, %union.tree_node* %def.1) #7, !dbg !2198
  call void @llvm.dbg.value(metadata i32 %call48, metadata !2112, metadata !DIExpression()), !dbg !2140
  %cmp = icmp eq i32 %call48, -1, !dbg !2199
  br i1 %cmp, label %for.inc55, label %land.lhs.true, !dbg !2200

land.lhs.true:                                    ; preds = %for.body47
  %13 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !2201
  %idxprom50 = sext i32 %call48 to i64, !dbg !2202
  %arrayidx51 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %13, i64 %idxprom50, !dbg !2202
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx51, align 8, !dbg !2202
  %tobool52 = icmp eq %struct.bitmap_head_def* %14, null, !dbg !2202
  br i1 %tobool52, label %for.inc55, label %if.then53, !dbg !2203

if.then53:                                        ; preds = %land.lhs.true
  call fastcc void @kill_expr(%struct.temp_expr_table_d* %tab, i32 %call48) #7, !dbg !2204
  br label %for.inc55, !dbg !2204

for.inc55:                                        ; preds = %land.lhs.true, %for.body47, %if.then53
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2114, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  %call56 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2197
  call void @llvm.dbg.value(metadata %union.tree_node* %call56, metadata !2110, metadata !DIExpression()), !dbg !2140
  br label %for.cond43, !dbg !2197, !llvm.loop !2205

for.end57:                                        ; preds = %for.cond43
  %tobool58 = icmp eq i8 %call5, 0, !dbg !2207
  br i1 %tobool58, label %if.end60, label %if.then59, !dbg !2209

if.then59:                                        ; preds = %for.end57
  call fastcc void @process_replaceable(%struct.temp_expr_table_d* %tab, %union.gimple_statement_d* %call2) #7, !dbg !2210
  br label %if.end60, !dbg !2210

if.end60:                                         ; preds = %for.end57, %if.then59
  %15 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !2211
  call void @bitmap_clear(%struct.bitmap_head_def* %15) #6, !dbg !2212
  %call61 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call2) #7, !dbg !2213
  %tobool62 = icmp eq %union.tree_node* %call61, null, !dbg !2213
  br i1 %tobool62, label %for.inc65, label %if.then63, !dbg !2215

if.then63:                                        ; preds = %if.end60
  call fastcc void @kill_virtual_exprs(%struct.temp_expr_table_d* %tab) #7, !dbg !2216
  br label %for.inc65, !dbg !2216

for.inc65:                                        ; preds = %if.end60, %for.body, %if.then63
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %bsi, metadata !2102, metadata !DIExpression(DW_OP_deref)), !dbg !2140
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %bsi) #7, !dbg !2217
  br label %for.cond, !dbg !2218, !llvm.loop !2219

for.end66:                                        ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %2) #8, !dbg !2221
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2221
  ret void, !dbg !2221
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @free_temp_expr_table(%struct.temp_expr_table_d* %t) unnamed_addr #5 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %t, metadata !2226, metadata !DIExpression()), !dbg !2228
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2227, metadata !DIExpression()), !dbg !2228
  %partition_in_use = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 6, !dbg !2229
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_in_use, align 8, !dbg !2229
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %0) #6, !dbg !2229
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %partition_in_use, align 8, !dbg !2229
  %new_replaceable_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 7, !dbg !2230
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !2230
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %1) #6, !dbg !2230
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !2230
  %expr_decl_uids = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 3, !dbg !2231
  %2 = bitcast %struct.bitmap_head_def*** %expr_decl_uids to i8**, !dbg !2231
  %3 = load i8*, i8** %2, align 8, !dbg !2231
  tail call void @free(i8* %3) #6, !dbg !2232
  %kill_list = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 4, !dbg !2233
  %4 = bitcast %struct.bitmap_head_def*** %kill_list to i8**, !dbg !2233
  %5 = load i8*, i8** %4, align 8, !dbg !2233
  tail call void @free(i8* %5) #6, !dbg !2234
  %partition_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 1, !dbg !2235
  %6 = bitcast %struct.bitmap_head_def*** %partition_dependencies to i8**, !dbg !2235
  %7 = load i8*, i8** %6, align 8, !dbg !2235
  tail call void @free(i8* %7) #6, !dbg !2236
  %num_in_part = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 8, !dbg !2237
  %8 = bitcast i32** %num_in_part to i8**, !dbg !2237
  %9 = load i8*, i8** %8, align 8, !dbg !2237
  tail call void @free(i8* %9) #6, !dbg !2238
  %replaceable_expressions = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %t, i64 0, i32 2, !dbg !2239
  %10 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %replaceable_expressions, align 8, !dbg !2239
  %tobool = icmp eq %struct.bitmap_head_def* %10, null, !dbg !2241
  br i1 %tobool, label %if.end, label %if.then, !dbg !2242

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %10, metadata !2227, metadata !DIExpression()), !dbg !2228
  br label %if.end, !dbg !2243

if.end:                                           ; preds = %entry, %if.then
  %ret.0 = phi %struct.bitmap_head_def* [ %10, %if.then ], [ null, %entry ], !dbg !2228
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %ret.0, metadata !2227, metadata !DIExpression()), !dbg !2228
  %11 = bitcast %struct.temp_expr_table_d* %t to i8*, !dbg !2244
  tail call void @free(i8* %11) #6, !dbg !2245
  ret %struct.bitmap_head_def* %ret.0, !dbg !2246
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_replaceable_exprs(%struct._IO_FILE* %f, %struct.bitmap_head_def* %expr) local_unnamed_addr #5 !dbg !2247 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %expr, metadata !2252, metadata !DIExpression()), !dbg !2255
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2256
  call void @llvm.dbg.value(metadata i32 0, metadata !2254, metadata !DIExpression()), !dbg !2255
  br label %for.cond, !dbg !2257

for.cond:                                         ; preds = %for.inc, %entry
  %x.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !2259
  call void @llvm.dbg.value(metadata i32 %x.0, metadata !2254, metadata !DIExpression()), !dbg !2255
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2260
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 3, !dbg !2260
  %1 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2260
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %1, i64 0, i32 2, !dbg !2260
  %2 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2260
  %tobool = icmp eq %struct.VEC_tree_gc* %2, null, !dbg !2260
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2260

cond.true:                                        ; preds = %for.cond
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %2, i64 0, i32 0, !dbg !2260
  br label %cond.end, !dbg !2260

cond.end:                                         ; preds = %for.cond, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.cond ], !dbg !2260
  %call4 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2260
  %cmp = icmp ult i32 %x.0, %call4, !dbg !2262
  br i1 %cmp, label %for.body, label %for.end, !dbg !2263

for.body:                                         ; preds = %cond.end
  %call5 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* %expr, i32 %x.0) #6, !dbg !2264
  %tobool6 = icmp eq i32 %call5, 0, !dbg !2264
  br i1 %tobool6, label %for.inc, label %if.then, !dbg !2266

if.then:                                          ; preds = %for.body
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2267
  %gimple_df8 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 3, !dbg !2267
  %4 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df8, align 8, !dbg !2267
  %ssa_names9 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %4, i64 0, i32 2, !dbg !2267
  %5 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names9, align 8, !dbg !2267
  %tobool10 = icmp eq %struct.VEC_tree_gc* %5, null, !dbg !2267
  br i1 %tobool10, label %cond.end17, label %cond.true11, !dbg !2267

cond.true11:                                      ; preds = %if.then
  %base15 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %5, i64 0, i32 0, !dbg !2267
  br label %cond.end17, !dbg !2267

cond.end17:                                       ; preds = %if.then, %cond.true11
  %cond18 = phi %struct.VEC_tree_base* [ %base15, %cond.true11 ], [ null, %if.then ], !dbg !2267
  %call19 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond18, i32 %x.0) #7, !dbg !2267
  call void @llvm.dbg.value(metadata %union.tree_node* %call19, metadata !2253, metadata !DIExpression()), !dbg !2255
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call19, i32 2) #6, !dbg !2269
  %call20 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2270
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %call19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2271
  %6 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2271
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %6, align 8, !dbg !2271
  tail call void @print_gimple_stmt(%struct._IO_FILE* %f, %union.gimple_statement_d* %7, i32 0, i32 2) #6, !dbg !2272
  %call21 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2273
  br label %for.inc, !dbg !2274

for.inc:                                          ; preds = %for.body, %cond.end17
  %inc = add i32 %x.0, 1, !dbg !2275
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2254, metadata !DIExpression()), !dbg !2255
  br label %for.cond, !dbg !2276, !llvm.loop !2277

for.end:                                          ; preds = %cond.end
  %call22 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2279
  ret void, !dbg !2280
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !2281 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2287, metadata !DIExpression()), !dbg !2288
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !2289
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2289

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !2289
  %0 = load i32, i32* %num, align 8, !dbg !2289
  br label %cond.end, !dbg !2289

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2289
  ret i32 %cond, !dbg !2289
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2290 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2295, metadata !DIExpression()), !dbg !2296
  br label %land.end, !dbg !2297

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2297
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2297
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2297
  ret %union.tree_node* %0, !dbg !2297
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_var_partitions(%struct._var_map* %map) unnamed_addr #0 !dbg !2298 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2302, metadata !DIExpression()), !dbg !2303
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !2304
  %0 = load i32, i32* %num_partitions, align 8, !dbg !2304
  ret i32 %0, !dbg !2305
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %var) unnamed_addr #0 !dbg !2306 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2310, metadata !DIExpression()), !dbg !2313
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2311, metadata !DIExpression()), !dbg !2313
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2314
  %bf.load = load i64, i64* %0, align 8, !dbg !2314
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2314
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2314
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2314

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2314
  br label %cond.end, !dbg !2314

cond.end:                                         ; preds = %entry, %cond.true
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !2315
  %1 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2315
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2315
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !2315
  %3 = load i32, i32* %2, align 8, !dbg !2315
  %idxprom = zext i32 %3 to i64, !dbg !2315
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %1, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !2315
  %4 = load i32, i32* %class_element, align 8, !dbg !2315
  call void @llvm.dbg.value(metadata i32 %4, metadata !2312, metadata !DIExpression()), !dbg !2313
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !2316
  %5 = load i32*, i32** %partition_to_view, align 8, !dbg !2316
  %tobool = icmp eq i32* %5, null, !dbg !2318
  br i1 %tobool, label %if.end, label %if.then, !dbg !2319

if.then:                                          ; preds = %cond.end
  %idxprom2 = sext i32 %4 to i64, !dbg !2320
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2, !dbg !2320
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !2320
  call void @llvm.dbg.value(metadata i32 %6, metadata !2312, metadata !DIExpression()), !dbg !2313
  br label %if.end, !dbg !2321

if.end:                                           ; preds = %cond.end, %if.then
  %part.0 = phi i32 [ %6, %if.then ], [ %4, %cond.end ], !dbg !2313
  call void @llvm.dbg.value(metadata i32 %part.0, metadata !2312, metadata !DIExpression()), !dbg !2313
  ret i32 %part.0, !dbg !2322
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2323 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2327, metadata !DIExpression()), !dbg !2330
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !2328, metadata !DIExpression()), !dbg !2331
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !2332
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !2329, metadata !DIExpression()), !dbg !2330
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !2333
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !2334
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2335
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !2336
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !2337
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !2338
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !2339
  ret void, !dbg !2340
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2341 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2345, metadata !DIExpression()), !dbg !2346
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2347
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2347
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !2348
  %conv1 = zext i1 %cmp to i8, !dbg !2349
  ret i8 %conv1, !dbg !2350
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2351 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2355, metadata !DIExpression()), !dbg !2356
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2357
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2357
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2358
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2358
  ret %union.gimple_statement_d* %1, !dbg !2359
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2360 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2365, metadata !DIExpression()), !dbg !2366
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2367
  %cmp = icmp eq i32 %call, 2, !dbg !2368
  %conv1 = zext i1 %cmp to i8, !dbg !2367
  ret i8 %conv1, !dbg !2369
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_replaceable_p(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2370 {
entry:
  %use_p = alloca %struct.ssa_use_operand_d*, align 8
  %use_stmt = alloca %union.gimple_statement_d*, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2374, metadata !DIExpression()), !dbg !2382
  %0 = bitcast %struct.ssa_use_operand_d** %use_p to i8*, !dbg !2383
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2383
  %1 = bitcast %union.gimple_statement_d** %use_stmt to i8*, !dbg !2384
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2384
  %call = tail call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %stmt) #7, !dbg !2385
  %tobool = icmp eq i8 %call, 0, !dbg !2385
  br i1 %tobool, label %cleanup, label %if.end, !dbg !2387

if.end:                                           ; preds = %entry
  %call1 = tail call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %stmt) #6, !dbg !2388
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2388
  br i1 %tobool2, label %if.end4, label %cleanup, !dbg !2390

if.end4:                                          ; preds = %if.end
  %call5 = tail call fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %stmt, i32 2) #7, !dbg !2391
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2376, metadata !DIExpression()), !dbg !2382
  %tobool6 = icmp eq %union.tree_node* %call5, null, !dbg !2392
  br i1 %tobool6, label %cleanup, label %if.end8, !dbg !2394

if.end8:                                          ; preds = %if.end4
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use_p, metadata !2375, metadata !DIExpression(DW_OP_deref)), !dbg !2382
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %use_stmt, metadata !2377, metadata !DIExpression(DW_OP_deref)), !dbg !2382
  %call9 = call fastcc zeroext i8 @single_imm_use(%union.tree_node* nonnull %call5, %struct.ssa_use_operand_d** nonnull %use_p, %union.gimple_statement_d** nonnull %use_stmt) #7, !dbg !2395
  %tobool10 = icmp eq i8 %call9, 0, !dbg !2395
  br i1 %tobool10, label %cleanup, label %if.end12, !dbg !2397

if.end12:                                         ; preds = %if.end8
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2398
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !2377, metadata !DIExpression()), !dbg !2382
  %call13 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %2) #7, !dbg !2400
  %call14 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !2401
  %cmp = icmp eq %struct.basic_block_def* %call13, %call14, !dbg !2402
  br i1 %cmp, label %if.end16, label %cleanup, !dbg !2403

if.end16:                                         ; preds = %if.end12
  %call17 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %stmt) #7, !dbg !2404
  call void @llvm.dbg.value(metadata i32 %call17, metadata !2378, metadata !DIExpression()), !dbg !2382
  %call18 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %stmt) #7, !dbg !2405
  call void @llvm.dbg.value(metadata %union.tree_node* %call18, metadata !2380, metadata !DIExpression()), !dbg !2382
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2406
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !2377, metadata !DIExpression()), !dbg !2382
  %call19 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %3) #7, !dbg !2408
  %cmp20 = icmp eq i32 %call19, 16, !dbg !2409
  br i1 %cmp20, label %if.end24, label %if.else, !dbg !2410

if.else:                                          ; preds = %if.end16
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2411
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %4, metadata !2377, metadata !DIExpression()), !dbg !2382
  %call22 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %4) #7, !dbg !2413
  call void @llvm.dbg.value(metadata i32 %call22, metadata !2379, metadata !DIExpression()), !dbg !2382
  %5 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2414
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %5, metadata !2377, metadata !DIExpression()), !dbg !2382
  %call23 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %5) #7, !dbg !2415
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2381, metadata !DIExpression()), !dbg !2382
  br label %if.end24

if.end24:                                         ; preds = %if.end16, %if.else
  %locus2.0 = phi i32 [ %call22, %if.else ], [ 0, %if.end16 ], !dbg !2416
  %block2.0 = phi %union.tree_node* [ %call23, %if.else ], [ null, %if.end16 ], !dbg !2416
  call void @llvm.dbg.value(metadata %union.tree_node* %block2.0, metadata !2381, metadata !DIExpression()), !dbg !2382
  call void @llvm.dbg.value(metadata i32 %locus2.0, metadata !2379, metadata !DIExpression()), !dbg !2382
  %6 = load i32, i32* @optimize, align 4, !dbg !2417
  %tobool25 = icmp eq i32 %6, 0, !dbg !2417
  br i1 %tobool25, label %land.lhs.true, label %if.end33, !dbg !2419

land.lhs.true:                                    ; preds = %if.end24
  %tobool26 = icmp ne i32 %call17, 0, !dbg !2420
  %cmp28 = icmp ne i32 %call17, %locus2.0, !dbg !2421
  %or.cond = and i1 %tobool26, %cmp28, !dbg !2422
  br i1 %or.cond, label %cleanup, label %lor.lhs.false, !dbg !2422

lor.lhs.false:                                    ; preds = %land.lhs.true
  %tobool29 = icmp ne %union.tree_node* %call18, null, !dbg !2423
  %cmp31 = icmp ne %union.tree_node* %call18, %block2.0, !dbg !2424
  %or.cond1 = and i1 %tobool29, %cmp31, !dbg !2425
  br i1 %or.cond1, label %cleanup, label %if.end33, !dbg !2425

if.end33:                                         ; preds = %if.end24, %lor.lhs.false
  %7 = load %union.gimple_statement_d*, %union.gimple_statement_d** %use_stmt, align 8, !dbg !2426
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %7, metadata !2377, metadata !DIExpression()), !dbg !2382
  %call34 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %7) #7, !dbg !2428
  %cmp35 = icmp eq i32 %call34, 16, !dbg !2429
  br i1 %cmp35, label %cleanup, label %if.end37, !dbg !2430

if.end37:                                         ; preds = %if.end33
  %call38 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !2431
  %tobool39 = icmp eq %union.tree_node* %call38, null, !dbg !2431
  br i1 %tobool39, label %if.end41, label %cleanup, !dbg !2433

if.end41:                                         ; preds = %if.end37
  %call42 = call fastcc zeroext i8 @gimple_references_memory_p(%union.gimple_statement_d* %stmt) #7, !dbg !2434
  %tobool43 = icmp eq i8 %call42, 0, !dbg !2434
  %8 = load i32, i32* @optimize, align 4, !dbg !2436
  %tobool45 = icmp ne i32 %8, 0, !dbg !2436
  %or.cond2 = or i1 %tobool43, %tobool45, !dbg !2437
  br i1 %or.cond2, label %if.end47, label %cleanup, !dbg !2437

if.end47:                                         ; preds = %if.end41
  %9 = load i32, i32* @flag_float_store, align 4, !dbg !2438
  %tobool48 = icmp eq i32 %9, 0, !dbg !2438
  br i1 %tobool48, label %if.end78, label %land.lhs.true49, !dbg !2440

land.lhs.true49:                                  ; preds = %if.end47
  %call50 = call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !2441
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call50, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2441
  %bf.load = load i64, i64* %10, align 8, !dbg !2441
  %bf.cast3 = and i64 %bf.load, 65535, !dbg !2441
  %cmp51 = icmp eq i64 %bf.cast3, 9, !dbg !2441
  br i1 %cmp51, label %cleanup, label %lor.lhs.false53, !dbg !2441

lor.lhs.false53:                                  ; preds = %land.lhs.true49
  %call54 = call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !2441
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call54, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2441
  %bf.load56 = load i64, i64* %11, align 8, !dbg !2441
  %bf.cast584 = and i64 %bf.load56, 65535, !dbg !2441
  %cmp59 = icmp eq i64 %bf.cast584, 13, !dbg !2441
  br i1 %cmp59, label %land.lhs.true69, label %lor.lhs.false61, !dbg !2441

lor.lhs.false61:                                  ; preds = %lor.lhs.false53
  %call62 = call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !2441
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %call62, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2441
  %bf.load64 = load i64, i64* %12, align 8, !dbg !2441
  %bf.cast665 = and i64 %bf.load64, 65535, !dbg !2441
  %cmp67 = icmp eq i64 %bf.cast665, 14, !dbg !2441
  br i1 %cmp67, label %land.lhs.true69, label %if.end78, !dbg !2441

land.lhs.true69:                                  ; preds = %lor.lhs.false61, %lor.lhs.false53
  %call70 = call fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) #7, !dbg !2441
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call70, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2441
  %13 = bitcast %union.tree_node** %type to i64**, !dbg !2441
  %14 = load i64*, i64** %13, align 8, !dbg !2441
  %bf.load72 = load i64, i64* %14, align 8, !dbg !2441
  %bf.cast746 = and i64 %bf.load72, 65535, !dbg !2441
  %cmp75 = icmp eq i64 %bf.cast746, 9, !dbg !2441
  br i1 %cmp75, label %cleanup, label %if.end78, !dbg !2442

if.end78:                                         ; preds = %if.end47, %land.lhs.true69, %lor.lhs.false61
  %call79 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !2443
  %cmp80 = icmp eq i32 %call79, 32, !dbg !2445
  br i1 %cmp80, label %land.lhs.true82, label %if.end88, !dbg !2446

land.lhs.true82:                                  ; preds = %if.end78
  %call83 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !2447
  %hard_register = getelementptr inbounds %union.tree_node, %union.tree_node* %call83, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2447
  %15 = bitcast i24* %hard_register to i32*, !dbg !2447
  %bf.load84 = load i32, i32* %15, align 8, !dbg !2447
  %bf.clear85 = and i32 %bf.load84, 2, !dbg !2447
  %tobool86 = icmp eq i32 %bf.clear85, 0, !dbg !2447
  br i1 %tobool86, label %if.end88, label %cleanup, !dbg !2448

if.end88:                                         ; preds = %land.lhs.true82, %if.end78
  %call89 = call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %stmt) #7, !dbg !2449
  %tobool90 = icmp eq i8 %call89, 0, !dbg !2449
  br i1 %tobool90, label %if.end92, label %cleanup, !dbg !2451

if.end92:                                         ; preds = %if.end88
  %call93 = call fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2452
  %tobool94 = icmp eq i8 %call93, 0, !dbg !2452
  %. = zext i1 %tobool94 to i8, !dbg !2382
  br label %cleanup, !dbg !2382

cleanup:                                          ; preds = %land.lhs.true82, %if.end88, %if.end37, %if.end12, %if.end8, %if.end4, %if.end, %entry, %if.end92, %land.lhs.true49, %land.lhs.true69, %if.end41, %if.end33, %land.lhs.true, %lor.lhs.false
  %retval.0 = phi i8 [ 0, %entry ], [ 0, %if.end ], [ 0, %if.end4 ], [ 0, %if.end8 ], [ 0, %if.end12 ], [ 0, %lor.lhs.false ], [ 0, %land.lhs.true ], [ 0, %if.end33 ], [ 0, %if.end37 ], [ 0, %if.end41 ], [ 0, %land.lhs.true69 ], [ 0, %land.lhs.true49 ], [ 0, %land.lhs.true82 ], [ 0, %if.end88 ], [ %., %if.end92 ], !dbg !2382
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !2454
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2454
  ret i8 %retval.0, !dbg !2454
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2455 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2461, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2462, metadata !DIExpression()), !dbg !2464
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2463, metadata !DIExpression()), !dbg !2464
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) #7, !dbg !2465
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2466
  store i32 1, i32* %iter_type, align 4, !dbg !2467
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !2468
  ret %union.tree_node* %call, !dbg !2469
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2470 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2476, metadata !DIExpression()), !dbg !2477
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2478
  %0 = load i8, i8* %done, align 8, !dbg !2478
  ret i8 %0, !dbg !2479
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2480 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2484, metadata !DIExpression()), !dbg !2486
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2487
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2487
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2489
  br i1 %tobool, label %if.end, label %if.then, !dbg !2490

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2491
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !2491
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2485, metadata !DIExpression()), !dbg !2486
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !2493
  %2 = load i64*, i64** %1, align 8, !dbg !2493
  %3 = load i64, i64* %2, align 8, !dbg !2494
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2495
  store i64 %3, i64* %4, align 8, !dbg !2495
  br label %cleanup, !dbg !2496

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2497
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !2497
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !2499
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !2500

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !2501
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !2501
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !2501
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2485, metadata !DIExpression()), !dbg !2486
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !2503
  %8 = load i64*, i64** %7, align 8, !dbg !2503
  %9 = load i64, i64* %8, align 8, !dbg !2504
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !2505
  store i64 %9, i64* %10, align 8, !dbg !2505
  br label %cleanup, !dbg !2506

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2507
  store i8 1, i8* %done, align 8, !dbg !2508
  br label %cleanup, !dbg !2509

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !2486
  ret %union.tree_node* %retval.0, !dbg !2510
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_volatile_ops(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2511 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2513, metadata !DIExpression()), !dbg !2514
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2515
  %tobool = icmp eq i8 %call, 0, !dbg !2515
  br i1 %tobool, label %return, label %if.then, !dbg !2517

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2518
  %bf.load = load i32, i32* %0, align 8, !dbg !2518
  %bf.lshr = lshr i32 %bf.load, 14, !dbg !2518
  %1 = trunc i32 %bf.lshr to i8, !dbg !2519
  %conv = and i8 %1, 1, !dbg !2519
  br label %return, !dbg !2520

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi i8 [ %conv, %if.then ], [ 0, %entry ], !dbg !2521
  ret i8 %retval.0, !dbg !2522
}

; Function Attrs: nounwind uwtable
define internal fastcc void @finished_with_expr(%struct.temp_expr_table_d* %tab, i32 %version, i8 zeroext %free_expr) unnamed_addr #5 !dbg !2523 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2527, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i32 %version, metadata !2528, metadata !DIExpression()), !dbg !2539
  call void @llvm.dbg.value(metadata i8 %free_expr, metadata !2529, metadata !DIExpression()), !dbg !2539
  %0 = bitcast i32* %i to i8*, !dbg !2540
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2540
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2541
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2541
  %partition_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 1, !dbg !2542
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !2542
  %idxprom = sext i32 %version to i64, !dbg !2544
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !2544
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2544
  %tobool = icmp eq %struct.bitmap_head_def* %3, null, !dbg !2544
  br i1 %tobool, label %if.end, label %if.then, !dbg !2545

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata i32* %i, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* nonnull %3, i32 0, i32* nonnull %i) #7, !dbg !2546
  br label %for.cond, !dbg !2546

for.cond:                                         ; preds = %for.body, %if.then
  call void @llvm.dbg.value(metadata i32* %i, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  %call = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2549
  %tobool4 = icmp eq i8 %call, 0, !dbg !2546
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2546

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !2551
  call void @llvm.dbg.value(metadata i32 %4, metadata !2530, metadata !DIExpression()), !dbg !2539
  call fastcc void @remove_from_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %4, i32 %version) #7, !dbg !2552
  call void @llvm.dbg.value(metadata i32* %i, metadata !2530, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2531, metadata !DIExpression(DW_OP_deref)), !dbg !2539
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !2549
  br label %for.cond, !dbg !2549, !llvm.loop !2553

for.end:                                          ; preds = %for.cond
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !2555
  %arrayidx7 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %idxprom, !dbg !2555
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx7, align 8, !dbg !2555
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %6) #6, !dbg !2555
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !2555
  %arrayidx10 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom, !dbg !2555
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx10, align 8, !dbg !2555
  br label %if.end, !dbg !2556

if.end:                                           ; preds = %entry, %for.end
  %tobool11 = icmp eq i8 %free_expr, 0, !dbg !2557
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !2559

if.then12:                                        ; preds = %if.end
  %expr_decl_uids = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 3, !dbg !2560
  %8 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2560
  %arrayidx14 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %8, i64 %idxprom, !dbg !2560
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx14, align 8, !dbg !2560
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %9) #6, !dbg !2560
  %10 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2560
  %arrayidx17 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %10, i64 %idxprom, !dbg !2560
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx17, align 8, !dbg !2560
  br label %if.end18, !dbg !2560

if.end18:                                         ; preds = %if.end, %if.then12
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2561
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2561
  ret void, !dbg !2561
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_replaceable(%struct.temp_expr_table_d* %tab, %union.tree_node* %var, i8 zeroext %more_replacing) unnamed_addr #5 !dbg !2562 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2566, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2567, metadata !DIExpression()), !dbg !2570
  call void @llvm.dbg.value(metadata i8 %more_replacing, metadata !2568, metadata !DIExpression()), !dbg !2570
  %version1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2571
  %0 = bitcast %union.tree_node** %version1 to i32*, !dbg !2571
  %1 = load i32, i32* %0, align 8, !dbg !2571
  call void @llvm.dbg.value(metadata i32 %1, metadata !2569, metadata !DIExpression()), !dbg !2570
  %tobool = icmp eq i8 %more_replacing, 0, !dbg !2572
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2574

land.lhs.true:                                    ; preds = %entry
  %partition_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 1, !dbg !2575
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !2575
  %idxprom = sext i32 %1 to i64, !dbg !2576
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !2576
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2576
  %tobool2 = icmp eq %struct.bitmap_head_def* %3, null, !dbg !2576
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2577

if.then:                                          ; preds = %land.lhs.true
  %new_replaceable_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 7, !dbg !2578
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !2578
  %call = tail call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %4, %struct.bitmap_head_def* nonnull %3) #6, !dbg !2579
  br label %if.end, !dbg !2579

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %conv7 = zext i1 %tobool to i8, !dbg !2580
  tail call fastcc void @finished_with_expr(%struct.temp_expr_table_d* %tab, i32 %1, i8 zeroext %conv7) #7, !dbg !2581
  %replaceable_expressions = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 2, !dbg !2582
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %replaceable_expressions, align 8, !dbg !2582
  %tobool8 = icmp eq %struct.bitmap_head_def* %5, null, !dbg !2584
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !2585

if.then9:                                         ; preds = %if.end
  %call10 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2586
  store %struct.bitmap_head_def* %call10, %struct.bitmap_head_def** %replaceable_expressions, align 8, !dbg !2587
  br label %if.end12, !dbg !2588

if.end12:                                         ; preds = %if.end, %if.then9
  %6 = phi %struct.bitmap_head_def* [ %5, %if.end ], [ %call10, %if.then9 ], !dbg !2589
  %call14 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %1) #6, !dbg !2590
  ret void, !dbg !2591
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @kill_expr(%struct.temp_expr_table_d* %tab, i32 %partition) unnamed_addr #0 !dbg !2592 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2596, metadata !DIExpression()), !dbg !2599
  call void @llvm.dbg.value(metadata i32 %partition, metadata !2597, metadata !DIExpression()), !dbg !2599
  %kill_list = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 4, !dbg !2599
  %idxprom = sext i32 %partition to i64, !dbg !2599
  br label %while.cond, !dbg !2600

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !2601
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !2602
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2602
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !2600
  br i1 %tobool, label %while.end, label %while.body, !dbg !2600

while.body:                                       ; preds = %while.cond
  %call = tail call i32 @bitmap_first_set_bit(%struct.bitmap_head_def* nonnull %1) #6, !dbg !2603
  call void @llvm.dbg.value(metadata i32 %call, metadata !2598, metadata !DIExpression()), !dbg !2599
  tail call fastcc void @finished_with_expr(%struct.temp_expr_table_d* %tab, i32 %call, i8 zeroext 1) #7, !dbg !2605
  br label %while.cond, !dbg !2600, !llvm.loop !2606

while.end:                                        ; preds = %while.cond
  ret void, !dbg !2608
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_replaceable(%struct.temp_expr_table_d* %tab, %union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !2609 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2613, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2614, metadata !DIExpression()), !dbg !2626
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2627
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2627
  %call = tail call fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %stmt, i32 2) #7, !dbg !2628
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2616, metadata !DIExpression()), !dbg !2626
  %version1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2629
  %1 = bitcast %union.tree_node** %version1 to i32*, !dbg !2629
  %2 = load i32, i32* %1, align 8, !dbg !2629
  call void @llvm.dbg.value(metadata i32 %2, metadata !2618, metadata !DIExpression()), !dbg !2626
  %var3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2630
  %3 = bitcast i32* %var3 to %struct.tree_decl_minimal**, !dbg !2630
  %4 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %3, align 8, !dbg !2630
  %call4 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2631
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call4, metadata !2620, metadata !DIExpression()), !dbg !2626
  %uid = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %4, i64 0, i32 2, !dbg !2632
  %5 = load i32, i32* %uid, align 4, !dbg !2632
  %call5 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call4, i32 %5) #6, !dbg !2633
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2626
  %call6 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 1) #7, !dbg !2634
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !2615, metadata !DIExpression()), !dbg !2626
  %expr_decl_uids = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 3, !dbg !2635
  br label %for.cond, !dbg !2634

for.cond:                                         ; preds = %for.inc, %entry
  %var.0 = phi %union.tree_node* [ %call6, %entry ], [ %call23, %for.inc ], !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2615, metadata !DIExpression()), !dbg !2626
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2626
  %call7 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2637
  %tobool = icmp eq i8 %call7, 0, !dbg !2637
  br i1 %tobool, label %for.body, label %for.end, !dbg !2634

for.body:                                         ; preds = %for.cond
  %version9 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2638
  %6 = bitcast %union.tree_node** %version9 to i32*, !dbg !2638
  %7 = load i32, i32* %6, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata i32 %7, metadata !2622, metadata !DIExpression()), !dbg !2635
  %8 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2639
  %idxprom = sext i32 %7 to i64, !dbg !2640
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %8, i64 %idxprom, !dbg !2640
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !2640
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %9, metadata !2621, metadata !DIExpression()), !dbg !2626
  call fastcc void @add_dependence(%struct.temp_expr_table_d* %tab, i32 %2, %union.tree_node* %var.0) #7, !dbg !2641
  %tobool10 = icmp eq %struct.bitmap_head_def* %9, null, !dbg !2642
  br i1 %tobool10, label %if.else, label %if.then, !dbg !2644

if.then:                                          ; preds = %for.body
  %call11 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %call4, %struct.bitmap_head_def* nonnull %9) #6, !dbg !2645
  %10 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2647
  %arrayidx14 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %10, i64 %idxprom, !dbg !2647
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx14, align 8, !dbg !2647
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %11) #6, !dbg !2647
  %12 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2647
  %arrayidx17 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %12, i64 %idxprom, !dbg !2647
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx17, align 8, !dbg !2647
  br label %for.inc, !dbg !2648

if.else:                                          ; preds = %for.body
  %var19 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2649
  %13 = bitcast i32* %var19 to %struct.tree_decl_minimal**, !dbg !2649
  %14 = load %struct.tree_decl_minimal*, %struct.tree_decl_minimal** %13, align 8, !dbg !2649
  %uid21 = getelementptr inbounds %struct.tree_decl_minimal, %struct.tree_decl_minimal* %14, i64 0, i32 2, !dbg !2649
  %15 = load i32, i32* %uid21, align 4, !dbg !2649
  %call22 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call4, i32 %15) #6, !dbg !2650
  br label %for.inc

for.inc:                                          ; preds = %if.then, %if.else
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2619, metadata !DIExpression(DW_OP_deref)), !dbg !2626
  %call23 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2637
  call void @llvm.dbg.value(metadata %union.tree_node* %call23, metadata !2615, metadata !DIExpression()), !dbg !2626
  br label %for.cond, !dbg !2637, !llvm.loop !2651

for.end:                                          ; preds = %for.cond
  %16 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %expr_decl_uids, align 8, !dbg !2653
  %idxprom25 = sext i32 %2 to i64, !dbg !2654
  %arrayidx26 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %16, i64 %idxprom25, !dbg !2654
  store %struct.bitmap_head_def* %call4, %struct.bitmap_head_def** %arrayidx26, align 8, !dbg !2655
  %call27 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !2656
  %tobool28 = icmp eq %union.tree_node* %call27, null, !dbg !2656
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !2658

if.then29:                                        ; preds = %for.end
  %virtual_partition = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 5, !dbg !2659
  %17 = load i32, i32* %virtual_partition, align 8, !dbg !2659
  call fastcc void @make_dependent_on_partition(%struct.temp_expr_table_d* %tab, i32 %2, i32 %17) #7, !dbg !2661
  %18 = load i32, i32* %virtual_partition, align 8, !dbg !2662
  call fastcc void @add_to_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %18, i32 %2) #7, !dbg !2663
  br label %if.end31, !dbg !2664

if.end31:                                         ; preds = %for.end, %if.then29
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2665
  ret void, !dbg !2665
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2666 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2670, metadata !DIExpression()), !dbg !2671
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2672
  %tobool = icmp eq i8 %call, 0, !dbg !2672
  br i1 %tobool, label %return, label %if.end, !dbg !2674

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2675
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2675
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2675
  br label %return, !dbg !2676

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2671
  ret %union.tree_node* %retval.0, !dbg !2677
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @kill_virtual_exprs(%struct.temp_expr_table_d* %tab) unnamed_addr #0 !dbg !2678 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !2682, metadata !DIExpression()), !dbg !2683
  %virtual_partition = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 5, !dbg !2684
  %0 = load i32, i32* %virtual_partition, align 8, !dbg !2684
  tail call fastcc void @kill_expr(%struct.temp_expr_table_d* %tab, i32 %0) #7, !dbg !2685
  ret void, !dbg !2686
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !2687 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !2692, metadata !DIExpression()), !dbg !2693
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2694
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2694
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !2695
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !2695
  %2 = load i64, i64* %1, align 8, !dbg !2695
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !2696
  store i64 %2, i64* %3, align 8, !dbg !2696
  ret void, !dbg !2697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2698 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2705, metadata !DIExpression()), !dbg !2706
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !2707
  %0 = load i32, i32* %flags, align 8, !dbg !2707
  %and = and i32 %0, 512, !dbg !2708
  %tobool = icmp eq i32 %and, 0, !dbg !2708
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !2709

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !2710
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !2710
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !2711
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2712

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !2713
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !2713
  br label %cond.end, !dbg !2712

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !2712
  ret %struct.gimple_seq_d* %cond, !dbg !2714
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !2715 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !2722, metadata !DIExpression()), !dbg !2723
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !2724
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2724

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !2725
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !2725
  br label %cond.end, !dbg !2724

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !2724
  ret %struct.gimple_seq_node_d* %cond, !dbg !2726
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2727 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2731, metadata !DIExpression()), !dbg !2732
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !2733
  %bf.load = load i32, i32* %0, align 8, !dbg !2733
  %bf.clear = and i32 %bf.load, 255, !dbg !2733
  ret i32 %bf.clear, !dbg !2734
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2735 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2737, metadata !DIExpression()), !dbg !2738
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2739
  %cmp = icmp eq i32 %call, 6, !dbg !2740
  %conv1 = zext i1 %cmp to i8, !dbg !2739
  ret i8 %conv1, !dbg !2741
}

declare dso_local zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @single_ssa_tree_operand(%union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2742 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2746, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata i32 2, metadata !2747, metadata !DIExpression()), !dbg !2750
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2751
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2751
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2750
  %call = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 2) #7, !dbg !2752
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2748, metadata !DIExpression()), !dbg !2750
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2750
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2753
  %tobool = icmp eq i8 %call1, 0, !dbg !2753
  br i1 %tobool, label %if.end, label %cleanup, !dbg !2755

if.end:                                           ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2750
  %call2 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2756
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2749, metadata !DIExpression(DW_OP_deref)), !dbg !2750
  %call3 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2757
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2757
  %call. = select i1 %tobool4, %union.tree_node* null, %union.tree_node* %call, !dbg !2750
  br label %cleanup, !dbg !2750

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ null, %entry ], [ %call., %if.end ], !dbg !2750
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2759
  ret %union.tree_node* %retval.0, !dbg !2759
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_imm_use(%union.tree_node* %var, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) unnamed_addr #0 !dbg !2760 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2769, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d** %use_p, metadata !2770, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %stmt, metadata !2771, metadata !DIExpression()), !dbg !2779
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2780
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !2772, metadata !DIExpression()), !dbg !2779
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !2781
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !2781
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2781
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !2782
  br i1 %cmp, label %return_false, label %if.end, !dbg !2783

return_false:                                     ; preds = %if.then4, %if.end12, %entry
  call void @llvm.dbg.label(metadata !2776), !dbg !2784
  store %struct.ssa_use_operand_d* null, %struct.ssa_use_operand_d** %use_p, align 8, !dbg !2785
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %stmt, align 8, !dbg !2786
  br label %cleanup, !dbg !2787

if.end:                                           ; preds = %entry
  %next2 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 1, !dbg !2788
  %3 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %next2, align 8, !dbg !2788
  %cmp3 = icmp eq %struct.ssa_use_operand_d* %3, %0, !dbg !2790
  br i1 %cmp3, label %if.then4, label %if.end12, !dbg !2791

if.then4:                                         ; preds = %if.end
  %stmt6 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %2, i64 0, i32 2, i32 0, !dbg !2792
  %4 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt6, align 8, !dbg !2792
  %call = tail call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %4) #7, !dbg !2795
  %tobool = icmp eq i8 %call, 0, !dbg !2795
  br i1 %tobool, label %if.then7, label %return_false, !dbg !2796

if.then7:                                         ; preds = %if.then4
  %5 = bitcast i40* %next to i64*, !dbg !2797
  %6 = load i64, i64* %5, align 8, !dbg !2797
  %7 = bitcast %struct.ssa_use_operand_d** %use_p to i64*, !dbg !2799
  store i64 %6, i64* %7, align 8, !dbg !2799
  %8 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !2800
  %stmt11 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %8, i64 0, i32 2, i32 0, !dbg !2801
  %9 = bitcast %union.gimple_statement_d** %stmt11 to i64*, !dbg !2801
  %10 = load i64, i64* %9, align 8, !dbg !2801
  %11 = bitcast %union.gimple_statement_d** %stmt to i64*, !dbg !2802
  store i64 %10, i64* %11, align 8, !dbg !2802
  br label %cleanup, !dbg !2803

if.end12:                                         ; preds = %if.end
  %12 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !2804
  %tobool13 = icmp eq i32 %12, 0, !dbg !2804
  br i1 %tobool13, label %return_false, label %if.end15, !dbg !2806

if.end15:                                         ; preds = %if.end12
  %call16 = tail call zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d* nonnull %0, %struct.ssa_use_operand_d** %use_p, %union.gimple_statement_d** %stmt) #6, !dbg !2807
  br label %cleanup, !dbg !2808

cleanup:                                          ; preds = %if.end15, %if.then7, %return_false
  %retval.0 = phi i8 [ 0, %return_false ], [ 1, %if.then7 ], [ %call16, %if.end15 ], !dbg !2779
  ret i8 %retval.0, !dbg !2809
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2810 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2814, metadata !DIExpression()), !dbg !2815
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !2816
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !2816
  ret %struct.basic_block_def* %0, !dbg !2817
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2818 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2822, metadata !DIExpression()), !dbg !2823
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2824
  %0 = load i32, i32* %location, align 8, !dbg !2824
  ret i32 %0, !dbg !2825
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2826 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2828, metadata !DIExpression()), !dbg !2829
  %block = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 5, !dbg !2830
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !2830
  ret %union.tree_node* %0, !dbg !2831
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_references_memory_p(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2832 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2834, metadata !DIExpression()), !dbg !2835
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %stmt) #7, !dbg !2836
  %tobool = icmp eq i8 %call, 0, !dbg !2836
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !2837

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !2838
  %tobool2 = icmp ne %union.tree_node* %call1, null, !dbg !2837
  %phitmp = zext i1 %tobool2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2839
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_expr_type(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2840 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2842, metadata !DIExpression()), !dbg !2847
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2848
  call void @llvm.dbg.value(metadata i32 %call, metadata !2843, metadata !DIExpression()), !dbg !2847
  switch i32 %call, label %if.else14 [
    i32 8, label %if.then3
    i32 6, label %if.else
    i32 1, label %if.then13
  ], !dbg !2849

if.then3:                                         ; preds = %entry
  %call4 = tail call fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %stmt) #7, !dbg !2850
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2844, metadata !DIExpression()), !dbg !2852
  br label %cleanup, !dbg !2853

if.else:                                          ; preds = %entry
  %call5 = tail call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %stmt) #7, !dbg !2854
  %cond = icmp eq i32 %call5, 66, !dbg !2855
  br i1 %cond, label %sw.bb, label %sw.default, !dbg !2855

sw.bb:                                            ; preds = %if.else
  %call6 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %stmt) #7, !dbg !2856
  %type7 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2856
  %0 = load %union.tree_node*, %union.tree_node** %type7, align 8, !dbg !2856
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2844, metadata !DIExpression()), !dbg !2852
  br label %cleanup, !dbg !2858

sw.default:                                       ; preds = %if.else
  %call8 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !2859
  %type10 = getelementptr inbounds %union.tree_node, %union.tree_node* %call8, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2859
  %1 = load %union.tree_node*, %union.tree_node** %type10, align 8, !dbg !2859
  call void @llvm.dbg.value(metadata %union.tree_node* %1, metadata !2844, metadata !DIExpression()), !dbg !2852
  br label %cleanup, !dbg !2860

if.then13:                                        ; preds = %entry
  %2 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 47), align 8, !dbg !2861
  br label %cleanup, !dbg !2863

if.else14:                                        ; preds = %entry
  %3 = load %union.tree_node*, %union.tree_node** getelementptr inbounds ([131 x %union.tree_node*], [131 x %union.tree_node*]* @global_trees, i64 0, i64 38), align 16, !dbg !2864
  br label %cleanup, !dbg !2865

cleanup:                                          ; preds = %if.then3, %sw.default, %sw.bb, %if.else14, %if.then13
  %retval.0 = phi %union.tree_node* [ %2, %if.then13 ], [ %3, %if.else14 ], [ %call4, %if.then3 ], [ %1, %sw.default ], [ %0, %sw.bb ], !dbg !2866
  ret %union.tree_node* %retval.0, !dbg !2867
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2868 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2872, metadata !DIExpression()), !dbg !2874
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !2875
  call void @llvm.dbg.value(metadata i32 %call, metadata !2873, metadata !DIExpression()), !dbg !2874
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !2876
  %cmp = icmp eq i32 %call1, 3, !dbg !2878
  br i1 %cmp, label %if.then, label %if.end, !dbg !2879

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !2880
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2880
  %bf.load = load i64, i64* %0, align 8, !dbg !2880
  %1 = trunc i64 %bf.load to i32, !dbg !2880
  %bf.cast = and i32 %1, 65535, !dbg !2880
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2873, metadata !DIExpression()), !dbg !2874
  br label %if.end, !dbg !2881

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !2874
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !2873, metadata !DIExpression()), !dbg !2874
  ret i32 %code.0, !dbg !2882
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2883 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2885, metadata !DIExpression()), !dbg !2886
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !2887
  ret %union.tree_node* %call, !dbg !2888
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2889 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2891, metadata !DIExpression()), !dbg !2892
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2893
  %cmp = icmp eq i32 %call, 8, !dbg !2894
  %conv1 = zext i1 %cmp to i8, !dbg !2893
  ret i8 %conv1, !dbg !2895
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local zeroext i8 @single_imm_use_1(%struct.ssa_use_operand_d*, %struct.ssa_use_operand_d**, %union.gimple_statement_d**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2896 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2898, metadata !DIExpression()), !dbg !2899
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2900
  %cmp = icmp ugt i32 %call, 5, !dbg !2901
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2902

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2903
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2904
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2905
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2906 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2908, metadata !DIExpression()), !dbg !2909
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2910
  %tobool = icmp eq i8 %call, 0, !dbg !2910
  br i1 %tobool, label %return, label %if.end, !dbg !2912

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2913
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2913
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2913
  br label %return, !dbg !2914

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2909
  ret %union.tree_node* %retval.0, !dbg !2915
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_return_type(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2916 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2918, metadata !DIExpression()), !dbg !2921
  %call = tail call fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) #7, !dbg !2922
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2919, metadata !DIExpression()), !dbg !2921
  %type1 = getelementptr inbounds %union.tree_node, %union.tree_node* %call, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2923
  %0 = bitcast %union.tree_node** %type1 to %struct.tree_common**, !dbg !2923
  %1 = load %struct.tree_common*, %struct.tree_common** %0, align 8, !dbg !2923
  %type3 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %1, i64 0, i32 2, !dbg !2924
  %2 = bitcast %union.tree_node** %type3 to %struct.tree_common**, !dbg !2924
  %3 = load %struct.tree_common*, %struct.tree_common** %2, align 8, !dbg !2924
  %type5 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %3, i64 0, i32 2, !dbg !2925
  %4 = load %union.tree_node*, %union.tree_node** %type5, align 8, !dbg !2925
  ret %union.tree_node* %4, !dbg !2926
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_fn(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2927 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2929, metadata !DIExpression()), !dbg !2930
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !2931
  ret %union.tree_node* %call, !dbg !2932
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !2933 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2937, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.value(metadata i32 1, metadata !2938, metadata !DIExpression()), !dbg !2939
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !2940
  %tobool = icmp eq i8 %call, 0, !dbg !2940
  br i1 %tobool, label %return, label %if.then, !dbg !2942

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !2943
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 1, !dbg !2943
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2943
  br label %return, !dbg !2945

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !2946
  ret %union.tree_node* %retval.0, !dbg !2947
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2948 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2950, metadata !DIExpression()), !dbg !2951
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2952
  %cmp = icmp eq i32 %call, 0, !dbg !2953
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !2954

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !2955
  %cmp2 = icmp ult i32 %call1, 10, !dbg !2956
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !2957
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2958 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2962, metadata !DIExpression()), !dbg !2964
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !2965
  %idxprom = zext i32 %call to i64, !dbg !2966
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !2966
  %0 = load i64, i64* %arrayidx, align 8, !dbg !2966
  call void @llvm.dbg.value(metadata i64 %0, metadata !2963, metadata !DIExpression()), !dbg !2964
  %cmp = icmp eq i64 %0, 0, !dbg !2967
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !2967

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2967
  br label %cond.end, !dbg !2967

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !2968
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !2969
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !2970
  ret %union.tree_node** %2, !dbg !2971
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2972 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2976, metadata !DIExpression()), !dbg !2977
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2978
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !2979
  ret i32 %call1, !dbg !2980
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !2981 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !2985, metadata !DIExpression()), !dbg !2986
  %idxprom = zext i32 %code to i64, !dbg !2987
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !2987
  %0 = load i32, i32* %arrayidx, align 4, !dbg !2987
  ret i32 %0, !dbg !2988
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2989 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2991, metadata !DIExpression()), !dbg !2993
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !2994
  call void @llvm.dbg.value(metadata i32 %call, metadata !2992, metadata !DIExpression()), !dbg !2993
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !2995

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !2997
  %bf.load = load i32, i32* %0, align 8, !dbg !2997
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !2997
  br label %cleanup, !dbg !2998

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2999
  br label %cleanup, !dbg !3001

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !2993
  ret i32 %retval.0, !dbg !3002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3003 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3007, metadata !DIExpression()), !dbg !3008
  %idxprom = sext i32 %code to i64, !dbg !3009
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3009
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3009
  %conv = zext i8 %0 to i32, !dbg !3010
  ret i32 %conv, !dbg !3011
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3012 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3016, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3017, metadata !DIExpression()), !dbg !3019
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3018, metadata !DIExpression()), !dbg !3019
  %0 = and i32 %flags, 10, !dbg !3020
  %1 = icmp eq i32 %0, 8, !dbg !3020
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3020

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3020
  %3 = icmp eq i32 %2, 4, !dbg !3020
  br i1 %3, label %cond.true, label %cond.end, !dbg !3020

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3020
  br label %cond.end, !dbg !3020

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3021
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3022

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3023
  br label %cond.end12, !dbg !3022

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3022
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3024
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3025
  %and14 = and i32 %flags, 8, !dbg !3026
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3026
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3028

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3029
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3030

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3031
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3032
  br i1 %cmp, label %if.end, label %if.then, !dbg !3033

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3034
  %6 = load i64*, i64** %5, align 8, !dbg !3034
  %7 = load i64, i64* %6, align 8, !dbg !3035
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3036
  store i64 %7, i64* %8, align 8, !dbg !3036
  br label %if.end, !dbg !3037

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3038
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3038
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3039

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3040
  br label %cond.end28, !dbg !3039

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3039
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3041
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3042
  %and30 = and i32 %flags, 4, !dbg !3043
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3043
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3045

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3046
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3047

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3048
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3049
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3050

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3051
  %11 = load i64*, i64** %10, align 8, !dbg !3051
  %12 = load i64, i64* %11, align 8, !dbg !3052
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3053
  store i64 %12, i64* %13, align 8, !dbg !3053
  br label %if.end42, !dbg !3054

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3055
  store i8 0, i8* %done, align 8, !dbg !3056
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3057
  store i32 0, i32* %phi_i, align 8, !dbg !3058
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3059
  store i32 0, i32* %num_phi, align 4, !dbg !3060
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3061
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3062
  ret void, !dbg !3063
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3064 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3068, metadata !DIExpression()), !dbg !3069
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3070
  %tobool = icmp eq i8 %call, 0, !dbg !3070
  br i1 %tobool, label %return, label %if.end, !dbg !3072

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3073
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3073
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3073
  br label %return, !dbg !3074

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3069
  ret %struct.def_optype_d* %retval.0, !dbg !3075
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3076 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3080, metadata !DIExpression()), !dbg !3081
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3082
  %tobool = icmp eq i8 %call, 0, !dbg !3082
  br i1 %tobool, label %return, label %if.end, !dbg !3084

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3085
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3085
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3085
  br label %return, !dbg !3086

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3081
  ret %struct.use_optype_d* %retval.0, !dbg !3087
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3088 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3092, metadata !DIExpression()), !dbg !3093
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3094
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3094
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3095
  ret %union.tree_node* %1, !dbg !3096
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3097 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3102, metadata !DIExpression()), !dbg !3103
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3104
  ret %union.tree_node* %0, !dbg !3105
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3115, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !3116, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32 0, metadata !3117, metadata !DIExpression()), !dbg !3119
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3118, metadata !DIExpression()), !dbg !3119
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !3120
  %1 = load i64, i64* %0, align 8, !dbg !3120
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3121
  store i64 %1, i64* %2, align 8, !dbg !3121
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !3122
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !3123
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3124
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !3127
  br label %while.body, !dbg !3127

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !3128
  br i1 %tobool, label %if.then, label %if.end, !dbg !3129

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !3130
  br label %while.end, !dbg !3132

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !3133

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !3127, !llvm.loop !3134

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !3136

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !3136
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !3138
  %7 = load i32, i32* %indx9, align 8, !dbg !3138
  %cmp11 = icmp eq i32 %7, 0, !dbg !3139
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !3140

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !3141
  %8 = load i32, i32* %indx14, align 8, !dbg !3141
  %mul = shl i32 %8, 7, !dbg !3142
  call void @llvm.dbg.value(metadata i32 %mul, metadata !3117, metadata !DIExpression()), !dbg !3119
  br label %if.end15, !dbg !3143

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !3117, metadata !DIExpression()), !dbg !3119
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3144
  store i32 0, i32* %word_no, align 8, !dbg !3145
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !3146
  %9 = load i64, i64* %arrayidx, align 8, !dbg !3146
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3147
  store i64 %9, i64* %bits21, align 8, !dbg !3148
  %tobool23 = icmp eq i64 %9, 0, !dbg !3149
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !3149
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !3150
  call void @llvm.dbg.value(metadata i32 %add, metadata !3117, metadata !DIExpression()), !dbg !3119
  store i32 %add, i32* %bit_no, align 4, !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3153 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3157, metadata !DIExpression()), !dbg !3162
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3158, metadata !DIExpression()), !dbg !3162
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3163
  %0 = load i64, i64* %bits, align 8, !dbg !3163
  %tobool = icmp eq i64 %0, 0, !dbg !3164
  br i1 %tobool, label %if.end, label %next_bit, !dbg !3165

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !3166
  br label %next_bit, !dbg !3169

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !3159), !dbg !3170
  br label %while.cond, !dbg !3169

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !3171
  %and = and i64 %2, 1, !dbg !3172
  %tobool2 = icmp eq i64 %and, 0, !dbg !3173
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !3169

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !3174
  store i64 %shr, i64* %bits, align 8, !dbg !3174
  %3 = load i32, i32* %bit_no, align 4, !dbg !3176
  %add = add i32 %3, 1, !dbg !3176
  store i32 %add, i32* %bit_no, align 4, !dbg !3176
  %.pre = load i64, i64* %bits, align 8, !dbg !3171
  br label %while.cond, !dbg !3169, !llvm.loop !3177

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !3179
  %sub = add i32 %4, 63, !dbg !3180
  %div = and i32 %sub, -64, !dbg !3181
  store i32 %div, i32* %bit_no, align 4, !dbg !3182
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !3183
  %5 = load i32, i32* %word_no, align 8, !dbg !3184
  %inc = add i32 %5, 1, !dbg !3184
  store i32 %inc, i32* %word_no, align 8, !dbg !3184
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !3185
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !3185
  br label %while.body6, !dbg !3186

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !3187

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !3188
  %cmp = icmp eq i32 %8, 2, !dbg !3189
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !3185
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !3187

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !3166
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !3166
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3166
  store i64 %10, i64* %bits, align 8, !dbg !3190
  %tobool14 = icmp eq i64 %10, 0, !dbg !3191
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !3193

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !3194
  %add17 = add i32 %11, 64, !dbg !3194
  store i32 %add17, i32* %bit_no, align 4, !dbg !3194
  %12 = load i32, i32* %word_no, align 8, !dbg !3195
  %inc19 = add i32 %12, 1, !dbg !3195
  store i32 %inc19, i32* %word_no, align 8, !dbg !3195
  br label %while.cond7, !dbg !3187, !llvm.loop !3196

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !3185
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !3198
  %14 = load i64, i64* %13, align 8, !dbg !3198
  store i64 %14, i64* %6, align 8, !dbg !3199
  %tobool24 = icmp eq i64 %14, 0, !dbg !3200
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !3202

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !3202
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !3203
  %16 = load i32, i32* %indx, align 8, !dbg !3203
  %mul28 = shl i32 %16, 7, !dbg !3204
  store i32 %mul28, i32* %bit_no, align 4, !dbg !3205
  store i32 0, i32* %word_no, align 8, !dbg !3206
  br label %while.body6, !dbg !3186, !llvm.loop !3207

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !3209

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !3209

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !3162
  ret i8 %retval.0, !dbg !3209
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @remove_from_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %p, i32 %version) unnamed_addr #0 !dbg !3210 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !3214, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %p, metadata !3215, metadata !DIExpression()), !dbg !3217
  call void @llvm.dbg.value(metadata i32 %version, metadata !3216, metadata !DIExpression()), !dbg !3217
  %kill_list = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 4, !dbg !3218
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3218
  %idxprom = sext i32 %p to i64, !dbg !3219
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !3219
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3219
  %call = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %1, i32 %version) #6, !dbg !3220
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3221
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !3221
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !3221
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %3, i64 0, i32 0, !dbg !3221
  %4 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3221
  %tobool = icmp eq %struct.bitmap_element_def* %4, null, !dbg !3221
  br i1 %tobool, label %if.then, label %if.end, !dbg !3223

if.then:                                          ; preds = %entry
  %partition_in_use = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 6, !dbg !3224
  %5 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_in_use, align 8, !dbg !3224
  %call4 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* %5, i32 %p) #6, !dbg !3226
  %6 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3227
  %arrayidx7 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, i64 %idxprom, !dbg !3227
  %7 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx7, align 8, !dbg !3227
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %7) #6, !dbg !3227
  %8 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3227
  %arrayidx10 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %8, i64 %idxprom, !dbg !3227
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx10, align 8, !dbg !3227
  br label %if.end, !dbg !3228

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3229
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !3230 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3234, metadata !DIExpression()), !dbg !3236
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !3235, metadata !DIExpression()), !dbg !3236
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !3237
  %0 = load i64, i64* %bits, align 8, !dbg !3238
  %shr = lshr i64 %0, 1, !dbg !3238
  store i64 %shr, i64* %bits, align 8, !dbg !3238
  %1 = load i32, i32* %bit_no, align 4, !dbg !3239
  %add = add i32 %1, 1, !dbg !3239
  store i32 %add, i32* %bit_no, align 4, !dbg !3239
  ret void, !dbg !3240
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local i32 @bitmap_first_set_bit(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @add_dependence(%struct.temp_expr_table_d* %tab, i32 %version, %union.tree_node* %var) unnamed_addr #5 !dbg !3241 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !3245, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata i32 %version, metadata !3246, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3247, metadata !DIExpression()), !dbg !3251
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3252
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3252
  %1 = bitcast i32* %x to i8*, !dbg !3253
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3253
  %version1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3254
  %2 = bitcast %union.tree_node** %version1 to i32*, !dbg !3254
  %3 = load i32, i32* %2, align 8, !dbg !3254
  call void @llvm.dbg.value(metadata i32 %3, metadata !3248, metadata !DIExpression()), !dbg !3251
  %call = tail call fastcc zeroext i8 @version_to_be_replaced_p(%struct.temp_expr_table_d* %tab, i32 %3) #7, !dbg !3255
  %tobool = icmp eq i8 %call, 0, !dbg !3255
  br i1 %tobool, label %if.else, label %if.then, !dbg !3257

if.then:                                          ; preds = %entry
  %new_replaceable_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 7, !dbg !3258
  %4 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !3258
  %first = getelementptr inbounds %struct.bitmap_head_def, %struct.bitmap_head_def* %4, i64 0, i32 0, !dbg !3258
  %5 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %first, align 8, !dbg !3258
  %tobool2 = icmp eq %struct.bitmap_element_def* %5, null, !dbg !3258
  br i1 %tobool2, label %if.end27, label %if.then3, !dbg !3261

if.then3:                                         ; preds = %if.then
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3249, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call void @llvm.dbg.value(metadata i32* %x, metadata !3250, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %4, i32 0, i32* nonnull %x) #7, !dbg !3262
  br label %for.cond, !dbg !3262

for.cond:                                         ; preds = %for.body, %if.then3
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3249, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call void @llvm.dbg.value(metadata i32* %x, metadata !3250, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  %call5 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !3265
  %tobool6 = icmp eq i8 %call5, 0, !dbg !3262
  br i1 %tobool6, label %for.end, label %for.body, !dbg !3262

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %x, align 4, !dbg !3267
  call void @llvm.dbg.value(metadata i32 %6, metadata !3250, metadata !DIExpression()), !dbg !3251
  call fastcc void @add_to_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %6, i32 %version) #7, !dbg !3268
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3249, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call void @llvm.dbg.value(metadata i32* %x, metadata !3250, metadata !DIExpression(DW_OP_deref)), !dbg !3251
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !3265
  br label %for.cond, !dbg !3265, !llvm.loop !3269

for.end:                                          ; preds = %for.cond
  %partition_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 1, !dbg !3271
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3271
  %idxprom = sext i32 %version to i64, !dbg !3273
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom, !dbg !3273
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3273
  %tobool7 = icmp eq %struct.bitmap_head_def* %8, null, !dbg !3273
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3274

if.then8:                                         ; preds = %for.end
  %call9 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3275
  %9 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3276
  %arrayidx12 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %9, i64 %idxprom, !dbg !3277
  store %struct.bitmap_head_def* %call9, %struct.bitmap_head_def** %arrayidx12, align 8, !dbg !3278
  %.pre = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3279
  %arrayidx15.phi.trans.insert = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre, i64 %idxprom, !dbg !3280
  %.pre1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx15.phi.trans.insert, align 8, !dbg !3281
  br label %if.end, !dbg !3277

if.end:                                           ; preds = %for.end, %if.then8
  %10 = phi %struct.bitmap_head_def* [ %8, %for.end ], [ %.pre1, %if.then8 ], !dbg !3281
  %11 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !3282
  %call17 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %10, %struct.bitmap_head_def* %11) #6, !dbg !3283
  %partition_in_use = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 6, !dbg !3284
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_in_use, align 8, !dbg !3284
  %13 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !3285
  %call19 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %12, %struct.bitmap_head_def* %13) #6, !dbg !3286
  %14 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %new_replaceable_dependencies, align 8, !dbg !3287
  call void @bitmap_clear(%struct.bitmap_head_def* %14) #6, !dbg !3288
  br label %if.end27, !dbg !3289

if.else:                                          ; preds = %entry
  %map = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 0, !dbg !3290
  %15 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3290
  %call22 = tail call fastcc i32 @var_to_partition(%struct._var_map* %15, %union.tree_node* %var) #7, !dbg !3292
  call void @llvm.dbg.value(metadata i32 %call22, metadata !3248, metadata !DIExpression()), !dbg !3251
  %num_in_part = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 8, !dbg !3293
  %16 = load i32*, i32** %num_in_part, align 8, !dbg !3293
  %idxprom23 = sext i32 %call22 to i64, !dbg !3295
  %arrayidx24 = getelementptr inbounds i32, i32* %16, i64 %idxprom23, !dbg !3295
  %17 = load i32, i32* %arrayidx24, align 4, !dbg !3295
  %cmp = icmp sgt i32 %17, 1, !dbg !3296
  br i1 %cmp, label %if.then25, label %if.end27, !dbg !3297

if.then25:                                        ; preds = %if.else
  tail call fastcc void @add_to_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %call22, i32 %version) #7, !dbg !3298
  tail call fastcc void @make_dependent_on_partition(%struct.temp_expr_table_d* %tab, i32 %version, i32 %call22) #7, !dbg !3300
  br label %if.end27, !dbg !3301

if.end27:                                         ; preds = %if.then, %if.else, %if.then25, %if.end
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !3302
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !3302
  ret void, !dbg !3302
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @make_dependent_on_partition(%struct.temp_expr_table_d* %tab, i32 %version, i32 %p) unnamed_addr #0 !dbg !3303 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !3305, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %version, metadata !3306, metadata !DIExpression()), !dbg !3308
  call void @llvm.dbg.value(metadata i32 %p, metadata !3307, metadata !DIExpression()), !dbg !3308
  %partition_dependencies = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 1, !dbg !3309
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3309
  %idxprom = sext i32 %version to i64, !dbg !3311
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !3311
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3311
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !3311
  br i1 %tobool, label %if.then, label %if.end, !dbg !3312

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3313
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3314
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !3315
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !3316
  %.pre = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %partition_dependencies, align 8, !dbg !3317
  %arrayidx6.phi.trans.insert = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre, i64 %idxprom, !dbg !3308
  %.pre1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx6.phi.trans.insert, align 8, !dbg !3318
  br label %if.end, !dbg !3315

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.bitmap_head_def* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3318
  %call7 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %3, i32 %p) #6, !dbg !3319
  ret void, !dbg !3320
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @add_to_partition_kill_list(%struct.temp_expr_table_d* %tab, i32 %p, i32 %ver) unnamed_addr #0 !dbg !3321 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !3323, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %p, metadata !3324, metadata !DIExpression()), !dbg !3326
  call void @llvm.dbg.value(metadata i32 %ver, metadata !3325, metadata !DIExpression()), !dbg !3326
  %kill_list = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 4, !dbg !3327
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3327
  %idxprom = sext i32 %p to i64, !dbg !3329
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %0, i64 %idxprom, !dbg !3329
  %1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3329
  %tobool = icmp eq %struct.bitmap_head_def* %1, null, !dbg !3329
  br i1 %tobool, label %if.then, label %if.end, !dbg !3330

if.then:                                          ; preds = %entry
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3331
  %2 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3333
  %arrayidx3 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %2, i64 %idxprom, !dbg !3334
  store %struct.bitmap_head_def* %call, %struct.bitmap_head_def** %arrayidx3, align 8, !dbg !3335
  %partition_in_use = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 6, !dbg !3336
  %3 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %partition_in_use, align 8, !dbg !3336
  %call4 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %3, i32 %p) #6, !dbg !3337
  %.pre = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %kill_list, align 8, !dbg !3338
  %arrayidx7.phi.trans.insert = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %.pre, i64 %idxprom, !dbg !3326
  %.pre1 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx7.phi.trans.insert, align 8, !dbg !3339
  br label %if.end, !dbg !3340

if.end:                                           ; preds = %entry, %if.then
  %4 = phi %struct.bitmap_head_def* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3339
  %call8 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %4, i32 %ver) #6, !dbg !3341
  ret void, !dbg !3342
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @version_to_be_replaced_p(%struct.temp_expr_table_d* %tab, i32 %version) unnamed_addr #0 !dbg !3343 {
entry:
  call void @llvm.dbg.value(metadata %struct.temp_expr_table_d* %tab, metadata !3347, metadata !DIExpression()), !dbg !3349
  call void @llvm.dbg.value(metadata i32 %version, metadata !3348, metadata !DIExpression()), !dbg !3349
  %replaceable_expressions = getelementptr inbounds %struct.temp_expr_table_d, %struct.temp_expr_table_d* %tab, i64 0, i32 2, !dbg !3350
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %replaceable_expressions, align 8, !dbg !3350
  %tobool = icmp eq %struct.bitmap_head_def* %0, null, !dbg !3352
  br i1 %tobool, label %return, label %if.end, !dbg !3353

if.end:                                           ; preds = %entry
  %call = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %0, i32 %version) #6, !dbg !3354
  %conv = trunc i32 %call to i8, !dbg !3354
  br label %return, !dbg !3355

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi i8 [ %conv, %if.end ], [ 0, %entry ], !dbg !3349
  ret i8 %retval.0, !dbg !3356
}

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

attributes #0 = { inlinehint nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone }
attributes #4 = { argmemonly nounwind }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind }
attributes #7 = { nobuiltin }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!1559, !1560, !1561}
!llvm.ident = !{!1562}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !325, nameTableKind: None)
!1 = !DIFile(filename: "tree-ssa-ter.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !199, !205, !210, !215, !233, !240, !247, !254, !293, !319}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !4, line: 39, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198}
!7 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!17 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!18 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!19 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!20 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!21 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!22 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!23 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!24 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!25 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!26 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!27 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!28 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!29 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!30 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!31 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!32 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!33 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!34 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!35 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!36 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!37 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!38 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!39 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!40 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!41 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!42 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!43 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!44 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!45 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!46 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!47 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!48 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!49 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!50 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!51 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!52 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!53 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!54 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!55 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!56 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!57 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!58 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!59 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!60 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!61 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!62 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!63 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!64 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!65 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!66 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!67 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!68 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!69 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!70 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!71 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!72 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!73 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!74 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!75 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!76 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!77 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!78 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!79 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!80 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!81 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!82 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!83 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!84 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!85 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!86 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!87 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!88 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!89 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!90 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!91 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!92 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!93 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!94 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!95 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!96 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!97 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!98 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!99 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!100 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!101 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!102 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!103 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!104 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!105 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!106 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!107 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!108 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!109 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!110 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!111 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!112 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!113 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!114 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!115 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!116 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!117 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!118 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!119 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!120 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!121 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!122 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!123 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!124 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!125 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!126 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!127 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!128 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!129 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!130 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!131 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!132 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!133 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!134 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!135 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!136 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!137 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!138 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!139 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!140 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!141 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!142 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!143 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!144 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!145 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!146 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!147 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!148 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!149 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!150 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!151 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!152 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!153 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!154 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!155 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!156 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!157 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!158 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!159 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!160 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!161 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!162 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!163 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!164 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!165 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!166 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!171 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!172 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!173 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!174 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!175 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!176 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!177 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!178 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!179 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!180 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!181 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!182 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!183 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!184 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!185 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!186 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!187 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!188 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!189 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!190 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!191 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!192 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!193 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!194 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!195 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!196 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!197 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!198 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!199 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !200, line: 363, baseType: !5, size: 32, elements: !201)
!200 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!201 = !{!202, !203, !204}
!202 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!203 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!204 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!205 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !200, line: 355, baseType: !5, size: 32, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!208 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!209 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!210 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !211, line: 474, baseType: !5, size: 32, elements: !212)
!211 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!212 = !{!213, !214}
!213 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!214 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!215 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !4, line: 280, baseType: !5, size: 32, elements: !216)
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232}
!217 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!218 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!219 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!220 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!221 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!222 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!223 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!224 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!225 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!226 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!227 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!228 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!229 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!230 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!231 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!232 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!233 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !4, line: 1817, baseType: !5, size: 32, elements: !234)
!234 = !{!235, !236, !237, !238, !239}
!235 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!236 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!237 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!238 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!239 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!240 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !4, line: 1805, baseType: !5, size: 32, elements: !241)
!241 = !{!242, !243, !244, !245, !246}
!242 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!243 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!244 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!245 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!246 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!247 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !248, line: 119, baseType: !5, size: 32, elements: !249)
!248 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!249 = !{!250, !251, !252, !253}
!250 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!251 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!252 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!253 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!254 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !255, line: 51, baseType: !5, size: 32, elements: !256)
!255 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292}
!257 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!258 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!259 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!260 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!261 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!262 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!263 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!264 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!265 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!266 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!267 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!268 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!269 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!270 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!271 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!272 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!273 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!274 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!275 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!276 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!277 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!278 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!279 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!280 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!281 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!282 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!283 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!284 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!285 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!286 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!287 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!288 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!289 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!290 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!291 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!292 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !255, line: 727, baseType: !5, size: 32, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318}
!295 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!296 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!297 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!298 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!299 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!300 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!301 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!302 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!303 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!304 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!305 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!306 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!307 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!308 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!309 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!310 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!311 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!312 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!313 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!314 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!315 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!316 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!317 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!318 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!319 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !255, line: 80, baseType: !5, size: 32, elements: !320)
!320 = !{!321, !322, !323, !324}
!321 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!322 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!323 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!324 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!325 = !{!326, !327, !328, !329, !332, !333, !335, !1546, !362, !3, !381, !1554, !675, !1557, !708, !330, !319, !1033}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!328 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "temp_expr_table_d", file: !1, line: 158, size: 576, elements: !337)
!337 = !{!338, !1545, !1547, !1548, !1549, !1550, !1551, !1552, !1553}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !336, file: !1, line: 160, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_map", file: !340, line: 77, baseType: !341)
!340 = !DIFile(filename: "./tree-ssa-live.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_var_map", file: !340, line: 54, size: 448, elements: !343)
!343 = !{!344, !361, !363, !364, !365, !366, !367, !368}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "var_partition", scope: !342, file: !340, line: 57, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition", file: !346, line: 65, baseType: !347)
!346 = !DIFile(filename: "./include/partition.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_def", file: !346, line: 59, size: 256, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !348, file: !346, line: 62, baseType: !328, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !348, file: !346, line: 64, baseType: !352, size: 192, offset: 64)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !359)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_elem", file: !346, line: 46, size: 192, elements: !354)
!354 = !{!355, !356, !358}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "class_element", scope: !353, file: !346, line: 50, baseType: !328, size: 32)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !346, line: 53, baseType: !357, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "class_count", scope: !353, file: !346, line: 56, baseType: !5, size: 32, offset: 128)
!359 = !{!360}
!360 = !DISubrange(count: 1)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_view", scope: !342, file: !340, line: 60, baseType: !362, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "view_to_partition", scope: !342, file: !340, line: 61, baseType: !362, size: 64, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "num_partitions", scope: !342, file: !340, line: 64, baseType: !5, size: 32, offset: 192)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !342, file: !340, line: 67, baseType: !5, size: 32, offset: 224)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "num_basevars", scope: !342, file: !340, line: 70, baseType: !328, size: 32, offset: 256)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_base_index", scope: !342, file: !340, line: 73, baseType: !362, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "basevars", scope: !342, file: !340, line: 76, baseType: !369, size: 64, offset: 384)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !4, line: 184, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !4, line: 184, size: 128, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !371, file: !4, line: 184, baseType: !374, size: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !375)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !376)
!376 = !{!377, !378, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !375, file: !4, line: 182, baseType: !5, size: 32)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !375, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !375, file: !4, line: 182, baseType: !380, size: 64, offset: 64)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !381, size: 64, elements: !359)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !382, line: 56, baseType: !383)
!382 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !385)
!385 = !{!386, !419, !425, !438, !445, !452, !457, !464, !470, !483, !495, !533, !541, !569, !586, !587, !592, !601, !607, !612, !616, !620, !1194, !1243, !1249, !1255, !1262, !1275, !1289, !1306, !1318, !1340, !1355, !1527}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !384, file: !4, line: 3372, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !388)
!388 = !{!389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !387, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !387, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !387, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !387, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !387, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !387, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !387, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !387, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !387, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !387, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !387, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !387, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !387, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !387, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !387, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !387, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !387, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !387, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !387, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !387, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !387, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !387, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !387, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !387, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !387, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !387, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !387, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !387, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !387, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !387, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !384, file: !4, line: 3373, baseType: !420, size: 192)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !421)
!421 = !{!422, !423, !424}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !420, file: !4, line: 403, baseType: !387, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !420, file: !4, line: 404, baseType: !381, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !420, file: !4, line: 405, baseType: !381, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !384, file: !4, line: 3374, baseType: !426, size: 320)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !427)
!427 = !{!428, !429}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !426, file: !4, line: 1385, baseType: !420, size: 192)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !426, file: !4, line: 1386, baseType: !430, size: 128, offset: 192)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !431, line: 58, baseType: !432)
!431 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !431, line: 54, size: 128, elements: !433)
!433 = !{!434, !436}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !432, file: !431, line: 56, baseType: !435, size: 64)
!435 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !432, file: !431, line: 57, baseType: !437, size: 64, offset: 64)
!437 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !384, file: !4, line: 3375, baseType: !439, size: 256)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !440)
!440 = !{!441, !442}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !439, file: !4, line: 1398, baseType: !420, size: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !439, file: !4, line: 1399, baseType: !443, size: 64, offset: 192)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !384, file: !4, line: 3376, baseType: !446, size: 256)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !447)
!447 = !{!448, !449}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !446, file: !4, line: 1409, baseType: !420, size: 192)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !446, file: !4, line: 1410, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !384, file: !4, line: 3377, baseType: !453, size: 256)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !454)
!454 = !{!455, !456}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !453, file: !4, line: 1438, baseType: !420, size: 192)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !453, file: !4, line: 1439, baseType: !381, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !384, file: !4, line: 3378, baseType: !458, size: 256)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !459)
!459 = !{!460, !461, !462}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !458, file: !4, line: 1419, baseType: !420, size: 192)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !458, file: !4, line: 1420, baseType: !328, size: 32, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !458, file: !4, line: 1421, baseType: !463, size: 8, offset: 224)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 8, elements: !359)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !384, file: !4, line: 3379, baseType: !465, size: 320)
!465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !466)
!466 = !{!467, !468, !469}
!467 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !465, file: !4, line: 1429, baseType: !420, size: 192)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !465, file: !4, line: 1430, baseType: !381, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !465, file: !4, line: 1431, baseType: !381, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !384, file: !4, line: 3380, baseType: !471, size: 320)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !472)
!472 = !{!473, !474}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !471, file: !4, line: 1461, baseType: !420, size: 192)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !471, file: !4, line: 1462, baseType: !475, size: 128, offset: 192)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !476, line: 31, size: 128, elements: !477)
!476 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!477 = !{!478, !481, !482}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !475, file: !476, line: 32, baseType: !479, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !327)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !475, file: !476, line: 33, baseType: !5, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !475, file: !476, line: 34, baseType: !5, size: 32, offset: 96)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !384, file: !4, line: 3381, baseType: !484, size: 384)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !485)
!485 = !{!486, !487, !492, !493, !494}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !484, file: !4, line: 2508, baseType: !420, size: 192)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !484, file: !4, line: 2509, baseType: !488, size: 32, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !489, line: 58, baseType: !490)
!489 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !491, line: 44, baseType: !5)
!491 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!492 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !484, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !484, file: !4, line: 2511, baseType: !381, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !484, file: !4, line: 2512, baseType: !381, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !384, file: !4, line: 3382, baseType: !496, size: 896)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !497)
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !496, file: !4, line: 2653, baseType: !484, size: 384)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !496, file: !4, line: 2654, baseType: !381, size: 64, offset: 384)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !496, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !496, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !496, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !496, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !496, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !496, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !496, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !496, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !496, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !496, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !496, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !496, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !496, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !496, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !496, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !496, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !496, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !496, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !496, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !496, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !496, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !496, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !496, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !496, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !496, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !496, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !496, file: !4, line: 2705, baseType: !381, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !496, file: !4, line: 2706, baseType: !381, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !496, file: !4, line: 2707, baseType: !381, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !496, file: !4, line: 2708, baseType: !381, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !496, file: !4, line: 2711, baseType: !531, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !384, file: !4, line: 3383, baseType: !534, size: 960)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !535)
!535 = !{!536, !537}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !534, file: !4, line: 2757, baseType: !496, size: 896)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !534, file: !4, line: 2758, baseType: !538, size: 64, offset: 896)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !382, line: 50, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !382, line: 49, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !384, file: !4, line: 3384, baseType: !542, size: 1472)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !543)
!543 = !{!544, !565, !566, !567, !568}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !542, file: !4, line: 3115, baseType: !545, size: 1216)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !546)
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !545, file: !4, line: 2985, baseType: !534, size: 960)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !545, file: !4, line: 2986, baseType: !381, size: 64, offset: 960)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !545, file: !4, line: 2987, baseType: !381, size: 64, offset: 1024)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !545, file: !4, line: 2988, baseType: !381, size: 64, offset: 1088)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !545, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !545, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !545, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !545, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !545, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !545, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !545, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !545, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !545, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !545, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !545, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !545, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !545, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !545, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !542, file: !4, line: 3117, baseType: !381, size: 64, offset: 1216)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !542, file: !4, line: 3119, baseType: !381, size: 64, offset: 1280)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !542, file: !4, line: 3121, baseType: !381, size: 64, offset: 1344)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !542, file: !4, line: 3123, baseType: !381, size: 64, offset: 1408)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !384, file: !4, line: 3385, baseType: !570, size: 1088)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !571)
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !570, file: !4, line: 2875, baseType: !534, size: 960)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !570, file: !4, line: 2876, baseType: !538, size: 64, offset: 960)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !570, file: !4, line: 2877, baseType: !575, size: 64, offset: 1024)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !577, line: 172, size: 128, elements: !578)
!577 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!578 = !{!579, !580, !581, !582, !583, !584, !585}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !576, file: !577, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !576, file: !577, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !576, file: !577, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !576, file: !577, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !576, file: !577, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !576, file: !577, line: 195, baseType: !5, size: 32, offset: 32)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !576, file: !577, line: 199, baseType: !381, size: 64, offset: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !384, file: !4, line: 3386, baseType: !545, size: 1216)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !384, file: !4, line: 3387, baseType: !588, size: 1280)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !589)
!589 = !{!590, !591}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !588, file: !4, line: 3094, baseType: !545, size: 1216)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !588, file: !4, line: 3095, baseType: !575, size: 64, offset: 1216)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !384, file: !4, line: 3388, baseType: !593, size: 1216)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !594)
!594 = !{!595, !596, !597, !598, !599, !600}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !593, file: !4, line: 2825, baseType: !496, size: 896)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !593, file: !4, line: 2827, baseType: !381, size: 64, offset: 896)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !593, file: !4, line: 2828, baseType: !381, size: 64, offset: 960)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !593, file: !4, line: 2829, baseType: !381, size: 64, offset: 1024)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !593, file: !4, line: 2830, baseType: !381, size: 64, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !593, file: !4, line: 2831, baseType: !381, size: 64, offset: 1152)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !384, file: !4, line: 3389, baseType: !602, size: 1024)
!602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !603)
!603 = !{!604, !605, !606}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !602, file: !4, line: 2851, baseType: !534, size: 960)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !602, file: !4, line: 2852, baseType: !328, size: 32, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !602, file: !4, line: 2853, baseType: !328, size: 32, offset: 992)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !384, file: !4, line: 3390, baseType: !608, size: 1024)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !4, line: 2858, baseType: !534, size: 960)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !608, file: !4, line: 2859, baseType: !575, size: 64, offset: 960)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !384, file: !4, line: 3391, baseType: !613, size: 960)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !614)
!614 = !{!615}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !613, file: !4, line: 2863, baseType: !534, size: 960)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !384, file: !4, line: 3392, baseType: !617, size: 1472)
!617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !618)
!618 = !{!619}
!619 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !617, file: !4, line: 3305, baseType: !542, size: 1472)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !384, file: !4, line: 3393, baseType: !621, size: 1792)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !622)
!622 = !{!623, !624, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !621, file: !4, line: 3249, baseType: !542, size: 1472)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !621, file: !4, line: 3251, baseType: !625, size: 64, offset: 1472)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !627, line: 463, size: 1152, elements: !628)
!627 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!628 = !{!629, !632, !947, !948, !1114, !1117, !1118, !1119, !1120, !1121, !1122, !1146, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !626, file: !627, line: 464, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !627, line: 464, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !626, file: !627, line: 467, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !200, line: 374, size: 640, elements: !635)
!635 = !{!636, !922, !923, !936, !937, !938, !939, !940, !941, !943, !945, !946}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !634, file: !200, line: 377, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !382, line: 111, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !200, line: 217, size: 832, elements: !640)
!640 = !{!641, !885, !886, !887, !890, !896, !897, !898, !916, !917, !918, !919, !920, !921}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !639, file: !200, line: 219, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !200, line: 151, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !200, line: 151, size: 128, elements: !645)
!645 = !{!646}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !644, file: !200, line: 151, baseType: !647, size: 128)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !200, line: 150, baseType: !648)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !200, line: 150, size: 128, elements: !649)
!649 = !{!650, !651, !652}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !648, file: !200, line: 150, baseType: !5, size: 32)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !648, file: !200, line: 150, baseType: !5, size: 32, offset: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !648, file: !200, line: 150, baseType: !653, size: 64, offset: 64)
!653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !654, size: 64, elements: !359)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !382, line: 108, baseType: !655)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !200, line: 122, size: 512, elements: !657)
!657 = !{!658, !659, !660, !877, !878, !879, !880, !881, !882, !883}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !656, file: !200, line: 124, baseType: !638, size: 64)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !656, file: !200, line: 125, baseType: !638, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !656, file: !200, line: 131, baseType: !661, size: 64, offset: 128)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !200, line: 128, size: 64, elements: !662)
!662 = !{!663, !876}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !661, file: !200, line: 129, baseType: !664, size: 64)
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !382, line: 66, baseType: !665)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !255, line: 143, size: 192, elements: !667)
!667 = !{!668, !874, !875}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !666, file: !255, line: 145, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !382, line: 69, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !255, line: 136, size: 192, elements: !672)
!672 = !{!673, !872, !873}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !671, file: !255, line: 137, baseType: !674, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !382, line: 58, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !255, line: 737, size: 768, elements: !677)
!677 = !{!678, !695, !727, !733, !738, !743, !750, !756, !762, !767, !781, !786, !792, !797, !807, !812, !830, !837, !844, !850, !855, !861, !867}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !676, file: !255, line: 738, baseType: !679, size: 256)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !255, line: 271, size: 256, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !679, file: !255, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !679, file: !255, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !679, file: !255, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !679, file: !255, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !679, file: !255, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !679, file: !255, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !679, file: !255, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !679, file: !255, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !679, file: !255, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !679, file: !255, line: 312, baseType: !5, size: 32, offset: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !679, file: !255, line: 316, baseType: !488, size: 32, offset: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !679, file: !255, line: 319, baseType: !5, size: 32, offset: 96)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !679, file: !255, line: 323, baseType: !638, size: 64, offset: 128)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !679, file: !255, line: 327, baseType: !381, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !676, file: !255, line: 739, baseType: !696, size: 448)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !255, line: 350, size: 448, elements: !697)
!697 = !{!698, !726}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !696, file: !255, line: 353, baseType: !699, size: 384)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !255, line: 333, size: 384, elements: !700)
!700 = !{!701, !702, !709}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !699, file: !255, line: 336, baseType: !679, size: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !699, file: !255, line: 343, baseType: !703, size: 64, offset: 256)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !248, line: 37, size: 128, elements: !705)
!705 = !{!706, !707}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !704, file: !248, line: 39, baseType: !703, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !704, file: !248, line: 40, baseType: !708, size: 64, offset: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !699, file: !255, line: 344, baseType: !710, size: 64, offset: 320)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !248, line: 45, size: 320, elements: !712)
!712 = !{!713, !714}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !711, file: !248, line: 47, baseType: !710, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !711, file: !248, line: 48, baseType: !715, size: 256, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !716)
!716 = !{!717, !719, !720, !725}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !715, file: !4, line: 1884, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !715, file: !4, line: 1885, baseType: !718, size: 64, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !715, file: !4, line: 1891, baseType: !721, size: 64, offset: 128)
!721 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !715, file: !4, line: 1891, size: 64, elements: !722)
!722 = !{!723, !724}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !721, file: !4, line: 1891, baseType: !674, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !721, file: !4, line: 1891, baseType: !381, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !715, file: !4, line: 1892, baseType: !708, size: 64, offset: 192)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !696, file: !255, line: 359, baseType: !380, size: 64, offset: 384)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !676, file: !255, line: 740, baseType: !728, size: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !255, line: 365, size: 512, elements: !729)
!729 = !{!730, !731, !732}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !728, file: !255, line: 368, baseType: !699, size: 384)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !728, file: !255, line: 373, baseType: !381, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !728, file: !255, line: 374, baseType: !381, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !676, file: !255, line: 741, baseType: !734, size: 576)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !255, line: 380, size: 576, elements: !735)
!735 = !{!736, !737}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !734, file: !255, line: 383, baseType: !728, size: 512)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !734, file: !255, line: 389, baseType: !380, size: 64, offset: 512)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !676, file: !255, line: 742, baseType: !739, size: 320)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !255, line: 395, size: 320, elements: !740)
!740 = !{!741, !742}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !739, file: !255, line: 397, baseType: !679, size: 256)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !739, file: !255, line: 400, baseType: !664, size: 64, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !676, file: !255, line: 743, baseType: !744, size: 448)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !255, line: 406, size: 448, elements: !745)
!745 = !{!746, !747, !748, !749}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !744, file: !255, line: 408, baseType: !679, size: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !744, file: !255, line: 412, baseType: !381, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !744, file: !255, line: 420, baseType: !381, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !744, file: !255, line: 423, baseType: !664, size: 64, offset: 384)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !676, file: !255, line: 744, baseType: !751, size: 384)
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !255, line: 429, size: 384, elements: !752)
!752 = !{!753, !754, !755}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !751, file: !255, line: 431, baseType: !679, size: 256)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !751, file: !255, line: 434, baseType: !381, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !751, file: !255, line: 437, baseType: !664, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !676, file: !255, line: 745, baseType: !757, size: 384)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !255, line: 443, size: 384, elements: !758)
!758 = !{!759, !760, !761}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !757, file: !255, line: 445, baseType: !679, size: 256)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !757, file: !255, line: 449, baseType: !381, size: 64, offset: 256)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !757, file: !255, line: 453, baseType: !664, size: 64, offset: 320)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !676, file: !255, line: 746, baseType: !763, size: 320)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !255, line: 459, size: 320, elements: !764)
!764 = !{!765, !766}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !763, file: !255, line: 461, baseType: !679, size: 256)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !763, file: !255, line: 464, baseType: !381, size: 64, offset: 256)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !676, file: !255, line: 747, baseType: !768, size: 768)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !255, line: 469, size: 768, elements: !769)
!769 = !{!770, !771, !772, !773, !774}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !768, file: !255, line: 471, baseType: !679, size: 256)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !768, file: !255, line: 474, baseType: !5, size: 32, offset: 256)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !768, file: !255, line: 475, baseType: !5, size: 32, offset: 288)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !768, file: !255, line: 478, baseType: !381, size: 64, offset: 320)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !768, file: !255, line: 481, baseType: !775, size: 384, offset: 384)
!775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !776, size: 384, elements: !359)
!776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !4, line: 1917, size: 384, elements: !777)
!777 = !{!778, !779, !780}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !776, file: !4, line: 1920, baseType: !715, size: 256)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !776, file: !4, line: 1921, baseType: !381, size: 64, offset: 256)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !776, file: !4, line: 1922, baseType: !488, size: 32, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !676, file: !255, line: 748, baseType: !782, size: 320)
!782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !255, line: 487, size: 320, elements: !783)
!783 = !{!784, !785}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !782, file: !255, line: 490, baseType: !679, size: 256)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !782, file: !255, line: 494, baseType: !328, size: 32, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !676, file: !255, line: 749, baseType: !787, size: 384)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !255, line: 500, size: 384, elements: !788)
!788 = !{!789, !790, !791}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !787, file: !255, line: 502, baseType: !679, size: 256)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !787, file: !255, line: 506, baseType: !664, size: 64, offset: 256)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !787, file: !255, line: 510, baseType: !664, size: 64, offset: 320)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !676, file: !255, line: 750, baseType: !793, size: 320)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !255, line: 529, size: 320, elements: !794)
!794 = !{!795, !796}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !793, file: !255, line: 531, baseType: !679, size: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !793, file: !255, line: 540, baseType: !664, size: 64, offset: 256)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !676, file: !255, line: 751, baseType: !798, size: 704)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !255, line: 546, size: 704, elements: !799)
!799 = !{!800, !801, !802, !803, !804, !805, !806}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !798, file: !255, line: 549, baseType: !728, size: 512)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !798, file: !255, line: 553, baseType: !333, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !798, file: !255, line: 557, baseType: !327, size: 8, offset: 576)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !798, file: !255, line: 558, baseType: !327, size: 8, offset: 584)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !798, file: !255, line: 559, baseType: !327, size: 8, offset: 592)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !798, file: !255, line: 560, baseType: !327, size: 8, offset: 600)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !798, file: !255, line: 566, baseType: !380, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !676, file: !255, line: 752, baseType: !808, size: 384)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !255, line: 571, size: 384, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !808, file: !255, line: 573, baseType: !739, size: 320)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !808, file: !255, line: 577, baseType: !381, size: 64, offset: 320)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !676, file: !255, line: 753, baseType: !813, size: 576)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !255, line: 600, size: 576, elements: !814)
!814 = !{!815, !816, !817, !820, !829}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !813, file: !255, line: 602, baseType: !739, size: 320)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !813, file: !255, line: 605, baseType: !381, size: 64, offset: 320)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !813, file: !255, line: 609, baseType: !818, size: 64, offset: 384)
!818 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !819, line: 46, baseType: !435)
!819 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!820 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !813, file: !255, line: 612, baseType: !821, size: 64, offset: 448)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !255, line: 581, size: 320, elements: !823)
!823 = !{!824, !825, !826, !827, !828}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !822, file: !255, line: 583, baseType: !3, size: 32)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !822, file: !255, line: 586, baseType: !381, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !822, file: !255, line: 589, baseType: !381, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !822, file: !255, line: 592, baseType: !381, size: 64, offset: 192)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !822, file: !255, line: 595, baseType: !381, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !813, file: !255, line: 616, baseType: !664, size: 64, offset: 512)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !676, file: !255, line: 754, baseType: !831, size: 512)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !255, line: 622, size: 512, elements: !832)
!832 = !{!833, !834, !835, !836}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !831, file: !255, line: 624, baseType: !739, size: 320)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !831, file: !255, line: 628, baseType: !381, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !831, file: !255, line: 632, baseType: !381, size: 64, offset: 384)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !831, file: !255, line: 636, baseType: !381, size: 64, offset: 448)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !676, file: !255, line: 755, baseType: !838, size: 704)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !255, line: 642, size: 704, elements: !839)
!839 = !{!840, !841, !842, !843}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !838, file: !255, line: 644, baseType: !831, size: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !838, file: !255, line: 648, baseType: !381, size: 64, offset: 512)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !838, file: !255, line: 652, baseType: !381, size: 64, offset: 576)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !838, file: !255, line: 653, baseType: !381, size: 64, offset: 640)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !676, file: !255, line: 756, baseType: !845, size: 448)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !255, line: 663, size: 448, elements: !846)
!846 = !{!847, !848, !849}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !845, file: !255, line: 665, baseType: !739, size: 320)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !845, file: !255, line: 668, baseType: !381, size: 64, offset: 320)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !845, file: !255, line: 673, baseType: !381, size: 64, offset: 384)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !676, file: !255, line: 757, baseType: !851, size: 384)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !255, line: 694, size: 384, elements: !852)
!852 = !{!853, !854}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !851, file: !255, line: 696, baseType: !739, size: 320)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !851, file: !255, line: 699, baseType: !381, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !676, file: !255, line: 758, baseType: !856, size: 384)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !255, line: 681, size: 384, elements: !857)
!857 = !{!858, !859, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !856, file: !255, line: 683, baseType: !679, size: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !856, file: !255, line: 686, baseType: !381, size: 64, offset: 256)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !856, file: !255, line: 689, baseType: !381, size: 64, offset: 320)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !676, file: !255, line: 759, baseType: !862, size: 384)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !255, line: 707, size: 384, elements: !863)
!863 = !{!864, !865, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !862, file: !255, line: 709, baseType: !679, size: 256)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !862, file: !255, line: 712, baseType: !381, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !862, file: !255, line: 712, baseType: !381, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !676, file: !255, line: 760, baseType: !868, size: 320)
!868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !255, line: 718, size: 320, elements: !869)
!869 = !{!870, !871}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !868, file: !255, line: 720, baseType: !679, size: 256)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !868, file: !255, line: 723, baseType: !381, size: 64, offset: 256)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !671, file: !255, line: 138, baseType: !670, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !671, file: !255, line: 139, baseType: !670, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !666, file: !255, line: 146, baseType: !669, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !666, file: !255, line: 152, baseType: !664, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !661, file: !200, line: 130, baseType: !538, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !656, file: !200, line: 134, baseType: !332, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !656, file: !200, line: 137, baseType: !381, size: 64, offset: 256)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !656, file: !200, line: 138, baseType: !488, size: 32, offset: 320)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !656, file: !200, line: 142, baseType: !5, size: 32, offset: 352)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !656, file: !200, line: 144, baseType: !328, size: 32, offset: 384)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !656, file: !200, line: 145, baseType: !328, size: 32, offset: 416)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !656, file: !200, line: 146, baseType: !884, size: 64, offset: 448)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !200, line: 119, baseType: !437)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !639, file: !200, line: 220, baseType: !642, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !639, file: !200, line: 223, baseType: !332, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !639, file: !200, line: 226, baseType: !888, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !200, line: 185, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !639, file: !200, line: 229, baseType: !891, size: 128, offset: 256)
!891 = !DICompositeType(tag: DW_TAG_array_type, baseType: !892, size: 128, elements: !894)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !200, line: 229, flags: DIFlagFwdDecl)
!894 = !{!895}
!895 = !DISubrange(count: 2)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !639, file: !200, line: 232, baseType: !638, size: 64, offset: 384)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !639, file: !200, line: 233, baseType: !638, size: 64, offset: 448)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !639, file: !200, line: 238, baseType: !899, size: 64, offset: 512)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !200, line: 235, size: 64, elements: !900)
!900 = !{!901, !907}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !899, file: !200, line: 236, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !200, line: 273, size: 128, elements: !904)
!904 = !{!905, !906}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !903, file: !200, line: 275, baseType: !664, size: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !903, file: !200, line: 278, baseType: !664, size: 64, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !899, file: !200, line: 237, baseType: !908, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !909, size: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !200, line: 259, size: 320, elements: !910)
!910 = !{!911, !912, !913, !914, !915}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !909, file: !200, line: 261, baseType: !538, size: 64)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !909, file: !200, line: 262, baseType: !538, size: 64, offset: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !909, file: !200, line: 266, baseType: !538, size: 64, offset: 128)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !909, file: !200, line: 267, baseType: !538, size: 64, offset: 192)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !909, file: !200, line: 270, baseType: !328, size: 32, offset: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !639, file: !200, line: 241, baseType: !884, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !639, file: !200, line: 244, baseType: !328, size: 32, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !639, file: !200, line: 247, baseType: !328, size: 32, offset: 672)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !639, file: !200, line: 250, baseType: !328, size: 32, offset: 704)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !639, file: !200, line: 253, baseType: !328, size: 32, offset: 736)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !200, line: 256, baseType: !328, size: 32, offset: 768)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !634, file: !200, line: 378, baseType: !637, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !634, file: !200, line: 381, baseType: !924, size: 64, offset: 128)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !200, line: 282, baseType: !926)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !200, line: 282, size: 128, elements: !927)
!927 = !{!928}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !926, file: !200, line: 282, baseType: !929, size: 128)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !200, line: 281, baseType: !930)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !200, line: 281, size: 128, elements: !931)
!931 = !{!932, !933, !934}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !930, file: !200, line: 281, baseType: !5, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !930, file: !200, line: 281, baseType: !5, size: 32, offset: 32)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !930, file: !200, line: 281, baseType: !935, size: 64, offset: 64)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !637, size: 64, elements: !359)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !634, file: !200, line: 384, baseType: !328, size: 32, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !634, file: !200, line: 387, baseType: !328, size: 32, offset: 224)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !634, file: !200, line: 390, baseType: !328, size: 32, offset: 256)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !634, file: !200, line: 394, baseType: !924, size: 64, offset: 320)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !634, file: !200, line: 396, baseType: !199, size: 32, offset: 384)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !634, file: !200, line: 399, baseType: !942, size: 64, offset: 416)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !894)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !634, file: !200, line: 402, baseType: !944, size: 64, offset: 480)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !894)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !634, file: !200, line: 406, baseType: !328, size: 32, offset: 544)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !634, file: !200, line: 409, baseType: !328, size: 32, offset: 576)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !626, file: !627, line: 470, baseType: !665, size: 64, offset: 128)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !626, file: !627, line: 473, baseType: !949, size: 64, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !577, line: 39, size: 1152, elements: !951)
!951 = !{!952, !1002, !1015, !1021, !1022, !1091, !1092, !1096, !1097, !1098, !1099, !1100}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !950, file: !577, line: 41, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !954, line: 144, baseType: !955)
!954 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !954, line: 100, size: 896, elements: !957)
!957 = !{!958, !966, !971, !976, !978, !979, !980, !981, !982, !983, !988, !990, !991, !996, !1001}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !956, file: !954, line: 102, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !954, line: 52, baseType: !960)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DISubroutineType(types: !962)
!962 = !{!963, !964}
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !954, line: 47, baseType: !5)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !956, file: !954, line: 105, baseType: !967, size: 64, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !954, line: 59, baseType: !968)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = !DISubroutineType(types: !970)
!970 = !{!328, !964, !964}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !956, file: !954, line: 108, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !954, line: 63, baseType: !973)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DISubroutineType(types: !975)
!975 = !{null, !332}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !956, file: !954, line: 111, baseType: !977, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !956, file: !954, line: 114, baseType: !818, size: 64, offset: 256)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !956, file: !954, line: 117, baseType: !818, size: 64, offset: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !956, file: !954, line: 120, baseType: !818, size: 64, offset: 384)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !956, file: !954, line: 124, baseType: !5, size: 32, offset: 448)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !956, file: !954, line: 128, baseType: !5, size: 32, offset: 480)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !956, file: !954, line: 131, baseType: !984, size: 64, offset: 512)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !954, line: 75, baseType: !985)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!332, !818, !818}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !956, file: !954, line: 132, baseType: !989, size: 64, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !954, line: 78, baseType: !973)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !956, file: !954, line: 135, baseType: !332, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !956, file: !954, line: 136, baseType: !992, size: 64, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !954, line: 82, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DISubroutineType(types: !995)
!995 = !{!332, !332, !818, !818}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !956, file: !954, line: 137, baseType: !997, size: 64, offset: 768)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !954, line: 83, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DISubroutineType(types: !1000)
!1000 = !{null, !332, !332}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !956, file: !954, line: 141, baseType: !5, size: 32, offset: 832)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !950, file: !577, line: 48, baseType: !1003, size: 64, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !255, line: 35, baseType: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !255, line: 35, size: 128, elements: !1006)
!1006 = !{!1007}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1005, file: !255, line: 35, baseType: !1008, size: 128)
!1008 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !255, line: 33, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !255, line: 33, size: 128, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1009, file: !255, line: 33, baseType: !5, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1009, file: !255, line: 33, baseType: !5, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1009, file: !255, line: 33, baseType: !1014, size: 64, offset: 64)
!1014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !674, size: 64, elements: !359)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !950, file: !577, line: 51, baseType: !1016, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1018)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1019)
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1018, file: !4, line: 183, baseType: !374, size: 128)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !950, file: !577, line: 54, baseType: !381, size: 64, offset: 192)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !950, file: !577, line: 57, baseType: !1023, size: 128, offset: 256)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1024, line: 31, size: 128, elements: !1025)
!1024 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1025 = !{!1026, !1027, !1028, !1029, !1030, !1031, !1032}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1023, file: !1024, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1023, file: !1024, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1023, file: !1024, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1023, file: !1024, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1023, file: !1024, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1023, file: !1024, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1023, file: !1024, line: 56, baseType: !1033, size: 64, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !382, line: 47, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1036, line: 75, size: 256, elements: !1037)
!1036 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1037 = !{!1038, !1050, !1051, !1052}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1035, file: !1036, line: 76, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1036, line: 68, baseType: !1041)
!1041 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1036, line: 63, size: 320, elements: !1042)
!1042 = !{!1043, !1045, !1046, !1047}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1041, file: !1036, line: 64, baseType: !1044, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1041, file: !1036, line: 65, baseType: !1044, size: 64, offset: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1041, file: !1036, line: 66, baseType: !5, size: 32, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1041, file: !1036, line: 67, baseType: !1048, size: 128, offset: 192)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1049, size: 128, elements: !894)
!1049 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1036, line: 29, baseType: !435)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1035, file: !1036, line: 77, baseType: !1039, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1035, file: !1036, line: 78, baseType: !5, size: 32, offset: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1035, file: !1036, line: 79, baseType: !1053, size: 64, offset: 192)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1036, line: 49, baseType: !1055)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1036, line: 45, size: 832, elements: !1056)
!1056 = !{!1057, !1058, !1059}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1055, file: !1036, line: 46, baseType: !1044, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1055, file: !1036, line: 47, baseType: !1034, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1055, file: !1036, line: 48, baseType: !1060, size: 704, offset: 128)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1061, line: 164, size: 704, elements: !1062)
!1061 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1062 = !{!1063, !1064, !1074, !1075, !1076, !1077, !1078, !1079, !1083, !1087, !1088, !1089, !1090}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1060, file: !1061, line: 166, baseType: !437, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1060, file: !1061, line: 167, baseType: !1065, size: 64, offset: 64)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1061, line: 157, size: 192, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1066, file: !1061, line: 159, baseType: !330, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1066, file: !1061, line: 160, baseType: !1065, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1066, file: !1061, line: 161, baseType: !1071, size: 32, offset: 128)
!1071 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 32, elements: !1072)
!1072 = !{!1073}
!1073 = !DISubrange(count: 4)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1060, file: !1061, line: 168, baseType: !330, size: 64, offset: 128)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1060, file: !1061, line: 169, baseType: !330, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1060, file: !1061, line: 170, baseType: !330, size: 64, offset: 256)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1060, file: !1061, line: 171, baseType: !437, size: 64, offset: 320)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1060, file: !1061, line: 172, baseType: !328, size: 32, offset: 384)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1060, file: !1061, line: 176, baseType: !1080, size: 64, offset: 448)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DISubroutineType(types: !1082)
!1082 = !{!1065, !332, !437}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1060, file: !1061, line: 177, baseType: !1084, size: 64, offset: 512)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DISubroutineType(types: !1086)
!1086 = !{null, !332, !1065}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1060, file: !1061, line: 178, baseType: !332, size: 64, offset: 576)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1060, file: !1061, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1060, file: !1061, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1060, file: !1061, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !950, file: !577, line: 60, baseType: !1023, size: 128, offset: 384)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !950, file: !577, line: 64, baseType: !1093, size: 64, offset: 512)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1095, line: 33, flags: DIFlagFwdDecl)
!1095 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !950, file: !577, line: 67, baseType: !381, size: 64, offset: 576)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !950, file: !577, line: 73, baseType: !953, size: 64, offset: 640)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !950, file: !577, line: 77, baseType: !1033, size: 64, offset: 704)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !950, file: !577, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !950, file: !577, line: 82, baseType: !1101, size: 320, offset: 832)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !248, line: 62, size: 320, elements: !1102)
!1102 = !{!1103, !1109, !1110, !1111, !1112, !1113}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1101, file: !248, line: 63, baseType: !1104, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !248, line: 56, size: 128, elements: !1106)
!1106 = !{!1107, !1108}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1105, file: !248, line: 57, baseType: !1104, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1105, file: !248, line: 58, baseType: !463, size: 8, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1101, file: !248, line: 64, baseType: !5, size: 32, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1101, file: !248, line: 66, baseType: !5, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1101, file: !248, line: 68, baseType: !327, size: 8, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1101, file: !248, line: 70, baseType: !703, size: 64, offset: 192)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1101, file: !248, line: 71, baseType: !710, size: 64, offset: 256)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !626, file: !627, line: 476, baseType: !1115, size: 64, offset: 256)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !627, line: 476, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !626, file: !627, line: 479, baseType: !953, size: 64, offset: 320)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !626, file: !627, line: 484, baseType: !381, size: 64, offset: 384)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !626, file: !627, line: 488, baseType: !381, size: 64, offset: 448)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !626, file: !627, line: 493, baseType: !381, size: 64, offset: 512)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !626, file: !627, line: 496, baseType: !381, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !626, file: !627, line: 501, baseType: !1123, size: 64, offset: 640)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !211, line: 2355, size: 576, elements: !1125)
!1125 = !{!1126, !1129, !1130, !1131, !1132, !1134, !1135, !1140, !1141, !1142, !1143, !1144, !1145}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1124, file: !211, line: 2356, baseType: !1127, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !211, line: 2356, flags: DIFlagFwdDecl)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1124, file: !211, line: 2357, baseType: !333, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1124, file: !211, line: 2358, baseType: !328, size: 32, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1124, file: !211, line: 2359, baseType: !328, size: 32, offset: 160)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1124, file: !211, line: 2360, baseType: !1133, size: 128, offset: 192)
!1133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 128, elements: !1072)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1124, file: !211, line: 2364, baseType: !328, size: 32, offset: 320)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1124, file: !211, line: 2367, baseType: !1136, size: 128, offset: 384)
!1136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !211, line: 2349, size: 128, elements: !1137)
!1137 = !{!1138, !1139}
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1136, file: !211, line: 2351, baseType: !538, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1136, file: !211, line: 2352, baseType: !437, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1124, file: !211, line: 2371, baseType: !210, size: 32, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1124, file: !211, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1124, file: !211, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1124, file: !211, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1124, file: !211, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1124, file: !211, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !626, file: !627, line: 504, baseType: !1147, size: 64, offset: 704)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !627, line: 504, flags: DIFlagFwdDecl)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !626, file: !627, line: 507, baseType: !953, size: 64, offset: 768)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !626, file: !627, line: 510, baseType: !328, size: 32, offset: 832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !626, file: !627, line: 513, baseType: !328, size: 32, offset: 864)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !626, file: !627, line: 516, baseType: !488, size: 32, offset: 896)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !626, file: !627, line: 519, baseType: !488, size: 32, offset: 928)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !626, file: !627, line: 522, baseType: !5, size: 32, offset: 960)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !626, file: !627, line: 523, baseType: !5, size: 32, offset: 992)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !626, file: !627, line: 528, baseType: !333, size: 64, offset: 1024)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !626, file: !627, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !626, file: !627, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !626, file: !627, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !626, file: !627, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !626, file: !627, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !626, file: !627, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !626, file: !627, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !626, file: !627, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !626, file: !627, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !626, file: !627, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !626, file: !627, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !626, file: !627, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !626, file: !627, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !626, file: !627, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !626, file: !627, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !626, file: !627, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !621, file: !4, line: 3254, baseType: !381, size: 64, offset: 1536)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !621, file: !4, line: 3257, baseType: !381, size: 64, offset: 1600)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !621, file: !4, line: 3258, baseType: !381, size: 64, offset: 1664)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !621, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !621, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !621, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !621, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !621, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !621, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !621, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !621, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !621, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !621, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !621, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !621, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !621, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !621, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !621, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !621, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !621, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !621, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !384, file: !4, line: 3394, baseType: !1195, size: 1344)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !1196)
!1196 = !{!1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1222, !1223, !1224, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1195, file: !4, line: 2280, baseType: !420, size: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1195, file: !4, line: 2281, baseType: !381, size: 64, offset: 192)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1195, file: !4, line: 2282, baseType: !381, size: 64, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1195, file: !4, line: 2283, baseType: !381, size: 64, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1195, file: !4, line: 2284, baseType: !381, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1195, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1195, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1195, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1195, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1195, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1195, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1195, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1195, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1195, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1195, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1195, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1195, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1195, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1195, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1195, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1195, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1195, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1195, file: !4, line: 2306, baseType: !1220, size: 32, offset: 544)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1221, line: 31, baseType: !328)
!1221 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1195, file: !4, line: 2307, baseType: !381, size: 64, offset: 576)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1195, file: !4, line: 2308, baseType: !381, size: 64, offset: 640)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1195, file: !4, line: 2314, baseType: !1225, size: 64, offset: 704)
!1225 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !1226)
!1226 = !{!1227, !1228, !1229}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1225, file: !4, line: 2310, baseType: !328, size: 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1225, file: !4, line: 2311, baseType: !333, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1225, file: !4, line: 2312, baseType: !1230, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1195, file: !4, line: 2315, baseType: !381, size: 64, offset: 768)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1195, file: !4, line: 2316, baseType: !381, size: 64, offset: 832)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1195, file: !4, line: 2317, baseType: !381, size: 64, offset: 896)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1195, file: !4, line: 2318, baseType: !381, size: 64, offset: 960)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1195, file: !4, line: 2319, baseType: !381, size: 64, offset: 1024)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1195, file: !4, line: 2320, baseType: !381, size: 64, offset: 1088)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1195, file: !4, line: 2321, baseType: !381, size: 64, offset: 1152)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1195, file: !4, line: 2322, baseType: !381, size: 64, offset: 1216)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1195, file: !4, line: 2324, baseType: !1241, size: 64, offset: 1280)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !384, file: !4, line: 3395, baseType: !1244, size: 320)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1245)
!1245 = !{!1246, !1247, !1248}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1244, file: !4, line: 1470, baseType: !420, size: 192)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1244, file: !4, line: 1471, baseType: !381, size: 64, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1244, file: !4, line: 1472, baseType: !381, size: 64, offset: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !384, file: !4, line: 3396, baseType: !1250, size: 320)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1250, file: !4, line: 1483, baseType: !420, size: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1250, file: !4, line: 1484, baseType: !328, size: 32, offset: 192)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1250, file: !4, line: 1485, baseType: !380, size: 64, offset: 256)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !384, file: !4, line: 3397, baseType: !1256, size: 384)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1257)
!1257 = !{!1258, !1259, !1260, !1261}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1256, file: !4, line: 1830, baseType: !420, size: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1256, file: !4, line: 1831, baseType: !488, size: 32, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1256, file: !4, line: 1832, baseType: !381, size: 64, offset: 256)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1256, file: !4, line: 1835, baseType: !380, size: 64, offset: 320)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !384, file: !4, line: 3398, baseType: !1263, size: 704)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1274}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1263, file: !4, line: 1899, baseType: !420, size: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1263, file: !4, line: 1902, baseType: !381, size: 64, offset: 192)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1263, file: !4, line: 1905, baseType: !674, size: 64, offset: 256)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1263, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1263, file: !4, line: 1911, baseType: !1270, size: 64, offset: 384)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !577, line: 117, size: 128, elements: !1272)
!1272 = !{!1273}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1271, file: !577, line: 120, baseType: !1023, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1263, file: !4, line: 1914, baseType: !715, size: 256, offset: 448)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !384, file: !4, line: 3399, baseType: !1276, size: 704)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1277)
!1277 = !{!1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1276, file: !4, line: 2009, baseType: !420, size: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1276, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1276, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1276, file: !4, line: 2014, baseType: !488, size: 32, offset: 224)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1276, file: !4, line: 2016, baseType: !381, size: 64, offset: 256)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1276, file: !4, line: 2017, baseType: !1016, size: 64, offset: 320)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1276, file: !4, line: 2019, baseType: !381, size: 64, offset: 384)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1276, file: !4, line: 2020, baseType: !381, size: 64, offset: 448)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1276, file: !4, line: 2021, baseType: !381, size: 64, offset: 512)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1276, file: !4, line: 2022, baseType: !381, size: 64, offset: 576)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1276, file: !4, line: 2023, baseType: !381, size: 64, offset: 640)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !384, file: !4, line: 3400, baseType: !1290, size: 832)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1291)
!1291 = !{!1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1290, file: !4, line: 2431, baseType: !420, size: 192)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1290, file: !4, line: 2433, baseType: !381, size: 64, offset: 192)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1290, file: !4, line: 2434, baseType: !381, size: 64, offset: 256)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1290, file: !4, line: 2435, baseType: !381, size: 64, offset: 320)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1290, file: !4, line: 2436, baseType: !381, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1290, file: !4, line: 2437, baseType: !1016, size: 64, offset: 448)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1290, file: !4, line: 2438, baseType: !381, size: 64, offset: 512)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1290, file: !4, line: 2440, baseType: !381, size: 64, offset: 576)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1290, file: !4, line: 2441, baseType: !381, size: 64, offset: 640)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1290, file: !4, line: 2443, baseType: !1302, size: 128, offset: 704)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1303)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1304)
!1304 = !{!1305}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1303, file: !4, line: 182, baseType: !374, size: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !384, file: !4, line: 3401, baseType: !1307, size: 320)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1308)
!1308 = !{!1309, !1310, !1317}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1307, file: !4, line: 3329, baseType: !420, size: 192)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1307, file: !4, line: 3330, baseType: !1311, size: 64, offset: 192)
!1311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1313)
!1313 = !{!1314, !1315, !1316}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1312, file: !4, line: 3322, baseType: !1311, size: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1312, file: !4, line: 3323, baseType: !1311, size: 64, offset: 64)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1312, file: !4, line: 3324, baseType: !381, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1307, file: !4, line: 3331, baseType: !1311, size: 64, offset: 256)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !384, file: !4, line: 3402, baseType: !1319, size: 256)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1320)
!1320 = !{!1321, !1322}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1319, file: !4, line: 1541, baseType: !420, size: 192)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1319, file: !4, line: 1542, baseType: !1323, size: 64, offset: 192)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1325, file: !4, line: 1538, baseType: !1328, size: 192)
!1328 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1329)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1330)
!1330 = !{!1331, !1332, !1333}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1329, file: !4, line: 1537, baseType: !5, size: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1329, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1329, file: !4, line: 1537, baseType: !1334, size: 128, offset: 64)
!1334 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1335, size: 128, elements: !359)
!1335 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1336)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1337)
!1337 = !{!1338, !1339}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1336, file: !4, line: 1533, baseType: !381, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1336, file: !4, line: 1534, baseType: !381, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !384, file: !4, line: 3403, baseType: !1341, size: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1342)
!1342 = !{!1343, !1344, !1345, !1346, !1352, !1353, !1354}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1341, file: !4, line: 1939, baseType: !420, size: 192)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1341, file: !4, line: 1940, baseType: !488, size: 32, offset: 192)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1341, file: !4, line: 1941, baseType: !215, size: 32, offset: 224)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1341, file: !4, line: 1946, baseType: !1347, size: 32, offset: 256)
!1347 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1348)
!1348 = !{!1349, !1350, !1351}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1347, file: !4, line: 1943, baseType: !233, size: 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1347, file: !4, line: 1944, baseType: !240, size: 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1347, file: !4, line: 1945, baseType: !3, size: 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1341, file: !4, line: 1950, baseType: !664, size: 64, offset: 320)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1341, file: !4, line: 1951, baseType: !664, size: 64, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1341, file: !4, line: 1953, baseType: !380, size: 64, offset: 448)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !384, file: !4, line: 3404, baseType: !1356, size: 1664)
!1356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1357)
!1357 = !{!1358, !1359}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1356, file: !4, line: 3338, baseType: !420, size: 192)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1356, file: !4, line: 3341, baseType: !1360, size: 1472, offset: 192)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1361, line: 410, size: 1472, elements: !1362)
!1361 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1362 = !{!1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526}
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1360, file: !1361, line: 412, baseType: !328, size: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1360, file: !1361, line: 413, baseType: !328, size: 32, offset: 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1360, file: !1361, line: 414, baseType: !328, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1360, file: !1361, line: 415, baseType: !328, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1360, file: !1361, line: 416, baseType: !328, size: 32, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1360, file: !1361, line: 417, baseType: !328, size: 32, offset: 160)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1360, file: !1361, line: 418, baseType: !327, size: 8, offset: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1360, file: !1361, line: 419, baseType: !327, size: 8, offset: 200)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1360, file: !1361, line: 420, baseType: !1372, size: 8, offset: 208)
!1372 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1360, file: !1361, line: 421, baseType: !1372, size: 8, offset: 216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1360, file: !1361, line: 422, baseType: !1372, size: 8, offset: 224)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1360, file: !1361, line: 423, baseType: !1372, size: 8, offset: 232)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1360, file: !1361, line: 424, baseType: !1372, size: 8, offset: 240)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1360, file: !1361, line: 425, baseType: !1372, size: 8, offset: 248)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1360, file: !1361, line: 426, baseType: !1372, size: 8, offset: 256)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1360, file: !1361, line: 427, baseType: !1372, size: 8, offset: 264)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1360, file: !1361, line: 428, baseType: !1372, size: 8, offset: 272)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1360, file: !1361, line: 429, baseType: !1372, size: 8, offset: 280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1360, file: !1361, line: 430, baseType: !1372, size: 8, offset: 288)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1360, file: !1361, line: 431, baseType: !1372, size: 8, offset: 296)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1360, file: !1361, line: 432, baseType: !1372, size: 8, offset: 304)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1360, file: !1361, line: 433, baseType: !1372, size: 8, offset: 312)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1360, file: !1361, line: 434, baseType: !1372, size: 8, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1360, file: !1361, line: 435, baseType: !1372, size: 8, offset: 328)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1360, file: !1361, line: 436, baseType: !1372, size: 8, offset: 336)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1360, file: !1361, line: 437, baseType: !1372, size: 8, offset: 344)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1360, file: !1361, line: 438, baseType: !1372, size: 8, offset: 352)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1360, file: !1361, line: 439, baseType: !1372, size: 8, offset: 360)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1360, file: !1361, line: 440, baseType: !1372, size: 8, offset: 368)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1360, file: !1361, line: 441, baseType: !1372, size: 8, offset: 376)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1360, file: !1361, line: 442, baseType: !1372, size: 8, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1360, file: !1361, line: 443, baseType: !1372, size: 8, offset: 392)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1360, file: !1361, line: 444, baseType: !1372, size: 8, offset: 400)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1360, file: !1361, line: 445, baseType: !1372, size: 8, offset: 408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1360, file: !1361, line: 446, baseType: !1372, size: 8, offset: 416)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1360, file: !1361, line: 447, baseType: !1372, size: 8, offset: 424)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1360, file: !1361, line: 448, baseType: !1372, size: 8, offset: 432)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1360, file: !1361, line: 449, baseType: !1372, size: 8, offset: 440)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1360, file: !1361, line: 450, baseType: !1372, size: 8, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1360, file: !1361, line: 451, baseType: !1372, size: 8, offset: 456)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1360, file: !1361, line: 452, baseType: !1372, size: 8, offset: 464)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1360, file: !1361, line: 453, baseType: !1372, size: 8, offset: 472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1360, file: !1361, line: 454, baseType: !1372, size: 8, offset: 480)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1360, file: !1361, line: 455, baseType: !1372, size: 8, offset: 488)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1360, file: !1361, line: 456, baseType: !1372, size: 8, offset: 496)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1360, file: !1361, line: 457, baseType: !1372, size: 8, offset: 504)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1360, file: !1361, line: 458, baseType: !1372, size: 8, offset: 512)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1360, file: !1361, line: 459, baseType: !1372, size: 8, offset: 520)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1360, file: !1361, line: 460, baseType: !1372, size: 8, offset: 528)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1360, file: !1361, line: 461, baseType: !1372, size: 8, offset: 536)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1360, file: !1361, line: 462, baseType: !1372, size: 8, offset: 544)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1360, file: !1361, line: 463, baseType: !1372, size: 8, offset: 552)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1360, file: !1361, line: 464, baseType: !1372, size: 8, offset: 560)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1360, file: !1361, line: 465, baseType: !1372, size: 8, offset: 568)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1360, file: !1361, line: 466, baseType: !1372, size: 8, offset: 576)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1360, file: !1361, line: 467, baseType: !1372, size: 8, offset: 584)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1360, file: !1361, line: 468, baseType: !1372, size: 8, offset: 592)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1360, file: !1361, line: 469, baseType: !1372, size: 8, offset: 600)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1360, file: !1361, line: 470, baseType: !1372, size: 8, offset: 608)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1360, file: !1361, line: 471, baseType: !1372, size: 8, offset: 616)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1360, file: !1361, line: 472, baseType: !1372, size: 8, offset: 624)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1360, file: !1361, line: 473, baseType: !1372, size: 8, offset: 632)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1360, file: !1361, line: 474, baseType: !1372, size: 8, offset: 640)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1360, file: !1361, line: 475, baseType: !1372, size: 8, offset: 648)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1360, file: !1361, line: 476, baseType: !1372, size: 8, offset: 656)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1360, file: !1361, line: 477, baseType: !1372, size: 8, offset: 664)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1360, file: !1361, line: 478, baseType: !1372, size: 8, offset: 672)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1360, file: !1361, line: 479, baseType: !1372, size: 8, offset: 680)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1360, file: !1361, line: 480, baseType: !1372, size: 8, offset: 688)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1360, file: !1361, line: 481, baseType: !1372, size: 8, offset: 696)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1360, file: !1361, line: 482, baseType: !1372, size: 8, offset: 704)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1360, file: !1361, line: 483, baseType: !1372, size: 8, offset: 712)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1360, file: !1361, line: 484, baseType: !1372, size: 8, offset: 720)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1360, file: !1361, line: 485, baseType: !1372, size: 8, offset: 728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1360, file: !1361, line: 486, baseType: !1372, size: 8, offset: 736)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1360, file: !1361, line: 487, baseType: !1372, size: 8, offset: 744)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1360, file: !1361, line: 488, baseType: !1372, size: 8, offset: 752)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1360, file: !1361, line: 489, baseType: !1372, size: 8, offset: 760)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1360, file: !1361, line: 490, baseType: !1372, size: 8, offset: 768)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1360, file: !1361, line: 491, baseType: !1372, size: 8, offset: 776)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1360, file: !1361, line: 492, baseType: !1372, size: 8, offset: 784)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1360, file: !1361, line: 493, baseType: !1372, size: 8, offset: 792)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1360, file: !1361, line: 494, baseType: !1372, size: 8, offset: 800)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1360, file: !1361, line: 495, baseType: !1372, size: 8, offset: 808)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1360, file: !1361, line: 496, baseType: !1372, size: 8, offset: 816)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1360, file: !1361, line: 497, baseType: !1372, size: 8, offset: 824)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1360, file: !1361, line: 498, baseType: !1372, size: 8, offset: 832)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1360, file: !1361, line: 499, baseType: !1372, size: 8, offset: 840)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1360, file: !1361, line: 500, baseType: !1372, size: 8, offset: 848)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1360, file: !1361, line: 501, baseType: !1372, size: 8, offset: 856)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1360, file: !1361, line: 502, baseType: !1372, size: 8, offset: 864)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1360, file: !1361, line: 503, baseType: !1372, size: 8, offset: 872)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1360, file: !1361, line: 504, baseType: !1372, size: 8, offset: 880)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1360, file: !1361, line: 505, baseType: !1372, size: 8, offset: 888)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1360, file: !1361, line: 506, baseType: !1372, size: 8, offset: 896)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1360, file: !1361, line: 507, baseType: !1372, size: 8, offset: 904)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1360, file: !1361, line: 508, baseType: !1372, size: 8, offset: 912)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1360, file: !1361, line: 509, baseType: !1372, size: 8, offset: 920)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1360, file: !1361, line: 510, baseType: !1372, size: 8, offset: 928)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1360, file: !1361, line: 511, baseType: !1372, size: 8, offset: 936)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1360, file: !1361, line: 512, baseType: !1372, size: 8, offset: 944)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1360, file: !1361, line: 513, baseType: !1372, size: 8, offset: 952)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1360, file: !1361, line: 514, baseType: !1372, size: 8, offset: 960)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1360, file: !1361, line: 515, baseType: !1372, size: 8, offset: 968)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1360, file: !1361, line: 516, baseType: !1372, size: 8, offset: 976)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1360, file: !1361, line: 517, baseType: !1372, size: 8, offset: 984)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1360, file: !1361, line: 518, baseType: !1372, size: 8, offset: 992)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1360, file: !1361, line: 519, baseType: !1372, size: 8, offset: 1000)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1360, file: !1361, line: 520, baseType: !1372, size: 8, offset: 1008)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1360, file: !1361, line: 521, baseType: !1372, size: 8, offset: 1016)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1360, file: !1361, line: 522, baseType: !1372, size: 8, offset: 1024)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1360, file: !1361, line: 523, baseType: !1372, size: 8, offset: 1032)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1360, file: !1361, line: 524, baseType: !1372, size: 8, offset: 1040)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1360, file: !1361, line: 525, baseType: !1372, size: 8, offset: 1048)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1360, file: !1361, line: 526, baseType: !1372, size: 8, offset: 1056)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1360, file: !1361, line: 527, baseType: !1372, size: 8, offset: 1064)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1360, file: !1361, line: 528, baseType: !1372, size: 8, offset: 1072)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1360, file: !1361, line: 529, baseType: !1372, size: 8, offset: 1080)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1360, file: !1361, line: 530, baseType: !1372, size: 8, offset: 1088)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1360, file: !1361, line: 531, baseType: !1372, size: 8, offset: 1096)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1360, file: !1361, line: 532, baseType: !1372, size: 8, offset: 1104)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1360, file: !1361, line: 533, baseType: !1372, size: 8, offset: 1112)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1360, file: !1361, line: 534, baseType: !1372, size: 8, offset: 1120)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1360, file: !1361, line: 535, baseType: !1372, size: 8, offset: 1128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1360, file: !1361, line: 536, baseType: !1372, size: 8, offset: 1136)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1360, file: !1361, line: 537, baseType: !1372, size: 8, offset: 1144)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1360, file: !1361, line: 538, baseType: !1372, size: 8, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1360, file: !1361, line: 539, baseType: !1372, size: 8, offset: 1160)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1360, file: !1361, line: 540, baseType: !1372, size: 8, offset: 1168)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1360, file: !1361, line: 541, baseType: !1372, size: 8, offset: 1176)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1360, file: !1361, line: 542, baseType: !1372, size: 8, offset: 1184)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1360, file: !1361, line: 543, baseType: !1372, size: 8, offset: 1192)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1360, file: !1361, line: 544, baseType: !1372, size: 8, offset: 1200)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1360, file: !1361, line: 545, baseType: !1372, size: 8, offset: 1208)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1360, file: !1361, line: 546, baseType: !1372, size: 8, offset: 1216)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1360, file: !1361, line: 547, baseType: !1372, size: 8, offset: 1224)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1360, file: !1361, line: 548, baseType: !1372, size: 8, offset: 1232)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1360, file: !1361, line: 549, baseType: !1372, size: 8, offset: 1240)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1360, file: !1361, line: 550, baseType: !1372, size: 8, offset: 1248)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1360, file: !1361, line: 551, baseType: !1372, size: 8, offset: 1256)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1360, file: !1361, line: 552, baseType: !1372, size: 8, offset: 1264)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1360, file: !1361, line: 553, baseType: !1372, size: 8, offset: 1272)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1360, file: !1361, line: 554, baseType: !1372, size: 8, offset: 1280)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1360, file: !1361, line: 555, baseType: !1372, size: 8, offset: 1288)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1360, file: !1361, line: 556, baseType: !1372, size: 8, offset: 1296)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1360, file: !1361, line: 557, baseType: !1372, size: 8, offset: 1304)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1360, file: !1361, line: 558, baseType: !1372, size: 8, offset: 1312)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1360, file: !1361, line: 559, baseType: !1372, size: 8, offset: 1320)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1360, file: !1361, line: 560, baseType: !1372, size: 8, offset: 1328)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1360, file: !1361, line: 561, baseType: !1372, size: 8, offset: 1336)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1360, file: !1361, line: 562, baseType: !1372, size: 8, offset: 1344)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1360, file: !1361, line: 563, baseType: !1372, size: 8, offset: 1352)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1360, file: !1361, line: 564, baseType: !1372, size: 8, offset: 1360)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1360, file: !1361, line: 565, baseType: !1372, size: 8, offset: 1368)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1360, file: !1361, line: 566, baseType: !1372, size: 8, offset: 1376)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1360, file: !1361, line: 567, baseType: !1372, size: 8, offset: 1384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1360, file: !1361, line: 568, baseType: !1372, size: 8, offset: 1392)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1360, file: !1361, line: 569, baseType: !1372, size: 8, offset: 1400)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1360, file: !1361, line: 570, baseType: !1372, size: 8, offset: 1408)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1360, file: !1361, line: 571, baseType: !1372, size: 8, offset: 1416)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1360, file: !1361, line: 572, baseType: !1372, size: 8, offset: 1424)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1360, file: !1361, line: 573, baseType: !1372, size: 8, offset: 1432)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1360, file: !1361, line: 574, baseType: !1372, size: 8, offset: 1440)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !384, file: !4, line: 3405, baseType: !1528, size: 384)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1528, file: !4, line: 3353, baseType: !420, size: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1528, file: !4, line: 3356, baseType: !1532, size: 192, offset: 192)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1361, line: 578, size: 192, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1532, file: !1361, line: 580, baseType: !328, size: 32)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1532, file: !1361, line: 581, baseType: !328, size: 32, offset: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1532, file: !1361, line: 582, baseType: !328, size: 32, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1532, file: !1361, line: 583, baseType: !328, size: 32, offset: 96)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1532, file: !1361, line: 584, baseType: !327, size: 8, offset: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1532, file: !1361, line: 585, baseType: !327, size: 8, offset: 136)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1532, file: !1361, line: 586, baseType: !327, size: 8, offset: 144)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1532, file: !1361, line: 587, baseType: !327, size: 8, offset: 152)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1532, file: !1361, line: 588, baseType: !327, size: 8, offset: 160)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1532, file: !1361, line: 589, baseType: !327, size: 8, offset: 168)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1532, file: !1361, line: 590, baseType: !327, size: 8, offset: 176)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "partition_dependencies", scope: !336, file: !1, line: 161, baseType: !1546, size: 64, offset: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "replaceable_expressions", scope: !336, file: !1, line: 162, baseType: !1033, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "expr_decl_uids", scope: !336, file: !1, line: 163, baseType: !1546, size: 64, offset: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "kill_list", scope: !336, file: !1, line: 164, baseType: !1546, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_partition", scope: !336, file: !1, line: 165, baseType: !328, size: 32, offset: 320)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "partition_in_use", scope: !336, file: !1, line: 166, baseType: !1033, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "new_replaceable_dependencies", scope: !336, file: !1, line: 167, baseType: !1033, size: 64, offset: 448)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "num_in_part", scope: !336, file: !1, line: 168, baseType: !362, size: 64, offset: 512)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !248, line: 30, baseType: !1555)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !4, line: 1893, baseType: !715)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !676)
!1559 = !{i32 2, !"Dwarf Version", i32 4}
!1560 = !{i32 2, !"Debug Info Version", i32 3}
!1561 = !{i32 1, !"wchar_size", i32 4}
!1562 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1563 = distinct !DISubprogram(name: "vprintf", scope: !1564, file: !1564, line: 39, type: !1565, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1575)
!1564 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!328, !1567, !1568}
!1567 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !333)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1570)
!1570 = !{!1571, !1572, !1573, !1574}
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1569, file: !1, baseType: !5, size: 32)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1569, file: !1, baseType: !5, size: 32, offset: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1569, file: !1, baseType: !332, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1569, file: !1, baseType: !332, size: 64, offset: 128)
!1575 = !{!1576, !1577}
!1576 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1563, file: !1564, line: 39, type: !1567)
!1577 = !DILocalVariable(name: "__arg", arg: 2, scope: !1563, file: !1564, line: 39, type: !1568)
!1578 = !DILocation(line: 0, scope: !1563)
!1579 = !DILocation(line: 41, column: 20, scope: !1563)
!1580 = !DILocation(line: 41, column: 10, scope: !1563)
!1581 = !DILocation(line: 41, column: 3, scope: !1563)
!1582 = distinct !DISubprogram(name: "getchar", scope: !1564, file: !1564, line: 47, type: !1583, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1585)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!328}
!1585 = !{}
!1586 = !DILocation(line: 49, column: 16, scope: !1582)
!1587 = !DILocation(line: 49, column: 10, scope: !1582)
!1588 = !DILocation(line: 49, column: 3, scope: !1582)
!1589 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1564, file: !1564, line: 56, type: !1590, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1643)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!328, !1592}
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1594, line: 7, baseType: !1595)
!1594 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1596, line: 49, size: 1728, elements: !1597)
!1596 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1613, !1615, !1616, !1617, !1620, !1622, !1623, !1624, !1627, !1629, !1632, !1635, !1636, !1637, !1638, !1639}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1595, file: !1596, line: 51, baseType: !328, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1595, file: !1596, line: 54, baseType: !330, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1595, file: !1596, line: 55, baseType: !330, size: 64, offset: 128)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1595, file: !1596, line: 56, baseType: !330, size: 64, offset: 192)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1595, file: !1596, line: 57, baseType: !330, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1595, file: !1596, line: 58, baseType: !330, size: 64, offset: 320)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1595, file: !1596, line: 59, baseType: !330, size: 64, offset: 384)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1595, file: !1596, line: 60, baseType: !330, size: 64, offset: 448)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1595, file: !1596, line: 61, baseType: !330, size: 64, offset: 512)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1595, file: !1596, line: 64, baseType: !330, size: 64, offset: 576)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1595, file: !1596, line: 65, baseType: !330, size: 64, offset: 640)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1595, file: !1596, line: 66, baseType: !330, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1595, file: !1596, line: 68, baseType: !1611, size: 64, offset: 768)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1596, line: 36, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1595, file: !1596, line: 70, baseType: !1614, size: 64, offset: 832)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1595, file: !1596, line: 72, baseType: !328, size: 32, offset: 896)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1595, file: !1596, line: 73, baseType: !328, size: 32, offset: 928)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1595, file: !1596, line: 74, baseType: !1618, size: 64, offset: 960)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1619, line: 152, baseType: !437)
!1619 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1595, file: !1596, line: 77, baseType: !1621, size: 16, offset: 1024)
!1621 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1595, file: !1596, line: 78, baseType: !1372, size: 8, offset: 1040)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1595, file: !1596, line: 79, baseType: !463, size: 8, offset: 1048)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1595, file: !1596, line: 81, baseType: !1625, size: 64, offset: 1088)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1596, line: 43, baseType: null)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1595, file: !1596, line: 89, baseType: !1628, size: 64, offset: 1152)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1619, line: 153, baseType: !437)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1595, file: !1596, line: 91, baseType: !1630, size: 64, offset: 1216)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1596, line: 37, flags: DIFlagFwdDecl)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1595, file: !1596, line: 92, baseType: !1633, size: 64, offset: 1280)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1596, line: 38, flags: DIFlagFwdDecl)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1595, file: !1596, line: 93, baseType: !1614, size: 64, offset: 1344)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1595, file: !1596, line: 94, baseType: !332, size: 64, offset: 1408)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1595, file: !1596, line: 95, baseType: !818, size: 64, offset: 1472)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1595, file: !1596, line: 96, baseType: !328, size: 32, offset: 1536)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1595, file: !1596, line: 98, baseType: !1640, size: 160, offset: 1568)
!1640 = !DICompositeType(tag: DW_TAG_array_type, baseType: !331, size: 160, elements: !1641)
!1641 = !{!1642}
!1642 = !DISubrange(count: 20)
!1643 = !{!1644}
!1644 = !DILocalVariable(name: "__fp", arg: 1, scope: !1589, file: !1564, line: 56, type: !1592)
!1645 = !DILocation(line: 0, scope: !1589)
!1646 = !DILocation(line: 58, column: 10, scope: !1589)
!1647 = !DILocation(line: 58, column: 3, scope: !1589)
!1648 = distinct !DISubprogram(name: "getc_unlocked", scope: !1564, file: !1564, line: 66, type: !1590, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1649)
!1649 = !{!1650}
!1650 = !DILocalVariable(name: "__fp", arg: 1, scope: !1648, file: !1564, line: 66, type: !1592)
!1651 = !DILocation(line: 0, scope: !1648)
!1652 = !DILocation(line: 68, column: 10, scope: !1648)
!1653 = !DILocation(line: 68, column: 3, scope: !1648)
!1654 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1564, file: !1564, line: 73, type: !1583, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1585)
!1655 = !DILocation(line: 75, column: 10, scope: !1654)
!1656 = !DILocation(line: 75, column: 3, scope: !1654)
!1657 = distinct !DISubprogram(name: "putchar", scope: !1564, file: !1564, line: 82, type: !1658, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1660)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!328, !328}
!1660 = !{!1661}
!1661 = !DILocalVariable(name: "__c", arg: 1, scope: !1657, file: !1564, line: 82, type: !328)
!1662 = !DILocation(line: 0, scope: !1657)
!1663 = !DILocation(line: 84, column: 21, scope: !1657)
!1664 = !DILocation(line: 84, column: 10, scope: !1657)
!1665 = !DILocation(line: 84, column: 3, scope: !1657)
!1666 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1564, file: !1564, line: 91, type: !1667, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1669)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!328, !328, !1592}
!1669 = !{!1670, !1671}
!1670 = !DILocalVariable(name: "__c", arg: 1, scope: !1666, file: !1564, line: 91, type: !328)
!1671 = !DILocalVariable(name: "__stream", arg: 2, scope: !1666, file: !1564, line: 91, type: !1592)
!1672 = !DILocation(line: 0, scope: !1666)
!1673 = !DILocation(line: 93, column: 10, scope: !1666)
!1674 = !DILocation(line: 93, column: 3, scope: !1666)
!1675 = distinct !DISubprogram(name: "putc_unlocked", scope: !1564, file: !1564, line: 101, type: !1667, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1676)
!1676 = !{!1677, !1678}
!1677 = !DILocalVariable(name: "__c", arg: 1, scope: !1675, file: !1564, line: 101, type: !328)
!1678 = !DILocalVariable(name: "__stream", arg: 2, scope: !1675, file: !1564, line: 101, type: !1592)
!1679 = !DILocation(line: 0, scope: !1675)
!1680 = !DILocation(line: 103, column: 10, scope: !1675)
!1681 = !DILocation(line: 103, column: 3, scope: !1675)
!1682 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1564, file: !1564, line: 108, type: !1658, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1683)
!1683 = !{!1684}
!1684 = !DILocalVariable(name: "__c", arg: 1, scope: !1682, file: !1564, line: 108, type: !328)
!1685 = !DILocation(line: 0, scope: !1682)
!1686 = !DILocation(line: 110, column: 10, scope: !1682)
!1687 = !DILocation(line: 110, column: 3, scope: !1682)
!1688 = distinct !DISubprogram(name: "getline", scope: !1564, file: !1564, line: 118, type: !1689, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1693)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1691, !329, !1692, !1592}
!1691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1619, line: 193, baseType: !437)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!1693 = !{!1694, !1695, !1696}
!1694 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1688, file: !1564, line: 118, type: !329)
!1695 = !DILocalVariable(name: "__n", arg: 2, scope: !1688, file: !1564, line: 118, type: !1692)
!1696 = !DILocalVariable(name: "__stream", arg: 3, scope: !1688, file: !1564, line: 118, type: !1592)
!1697 = !DILocation(line: 0, scope: !1688)
!1698 = !DILocation(line: 120, column: 10, scope: !1688)
!1699 = !DILocation(line: 120, column: 3, scope: !1688)
!1700 = distinct !DISubprogram(name: "feof_unlocked", scope: !1564, file: !1564, line: 128, type: !1590, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1701)
!1701 = !{!1702}
!1702 = !DILocalVariable(name: "__stream", arg: 1, scope: !1700, file: !1564, line: 128, type: !1592)
!1703 = !DILocation(line: 0, scope: !1700)
!1704 = !DILocation(line: 130, column: 10, scope: !1700)
!1705 = !DILocation(line: 130, column: 3, scope: !1700)
!1706 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1564, file: !1564, line: 135, type: !1590, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1707)
!1707 = !{!1708}
!1708 = !DILocalVariable(name: "__stream", arg: 1, scope: !1706, file: !1564, line: 135, type: !1592)
!1709 = !DILocation(line: 0, scope: !1706)
!1710 = !DILocation(line: 137, column: 10, scope: !1706)
!1711 = !DILocation(line: 137, column: 3, scope: !1706)
!1712 = distinct !DISubprogram(name: "tolower", scope: !1713, file: !1713, line: 207, type: !1658, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1714)
!1713 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "__c", arg: 1, scope: !1712, file: !1713, line: 207, type: !328)
!1716 = !DILocation(line: 0, scope: !1712)
!1717 = !DILocation(line: 209, column: 22, scope: !1712)
!1718 = !DILocation(line: 209, column: 39, scope: !1712)
!1719 = !DILocation(line: 209, column: 38, scope: !1712)
!1720 = !DILocation(line: 209, column: 37, scope: !1712)
!1721 = !DILocation(line: 209, column: 10, scope: !1712)
!1722 = !DILocation(line: 209, column: 3, scope: !1712)
!1723 = distinct !DISubprogram(name: "toupper", scope: !1713, file: !1713, line: 213, type: !1658, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1724)
!1724 = !{!1725}
!1725 = !DILocalVariable(name: "__c", arg: 1, scope: !1723, file: !1713, line: 213, type: !328)
!1726 = !DILocation(line: 0, scope: !1723)
!1727 = !DILocation(line: 215, column: 22, scope: !1723)
!1728 = !DILocation(line: 215, column: 39, scope: !1723)
!1729 = !DILocation(line: 215, column: 38, scope: !1723)
!1730 = !DILocation(line: 215, column: 37, scope: !1723)
!1731 = !DILocation(line: 215, column: 10, scope: !1723)
!1732 = !DILocation(line: 215, column: 3, scope: !1723)
!1733 = distinct !DISubprogram(name: "atoi", scope: !1734, file: !1734, line: 361, type: !1735, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1737)
!1734 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!328, !333}
!1737 = !{!1738}
!1738 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1733, file: !1734, line: 361, type: !333)
!1739 = !DILocation(line: 0, scope: !1733)
!1740 = !DILocation(line: 363, column: 16, scope: !1733)
!1741 = !DILocation(line: 363, column: 10, scope: !1733)
!1742 = !DILocation(line: 363, column: 3, scope: !1733)
!1743 = distinct !DISubprogram(name: "atol", scope: !1734, file: !1734, line: 366, type: !1744, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1746)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!437, !333}
!1746 = !{!1747}
!1747 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1743, file: !1734, line: 366, type: !333)
!1748 = !DILocation(line: 0, scope: !1743)
!1749 = !DILocation(line: 368, column: 10, scope: !1743)
!1750 = !DILocation(line: 368, column: 3, scope: !1743)
!1751 = distinct !DISubprogram(name: "atoll", scope: !1734, file: !1734, line: 373, type: !1752, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1755)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!1754, !333}
!1754 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1755 = !{!1756}
!1756 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1751, file: !1734, line: 373, type: !333)
!1757 = !DILocation(line: 0, scope: !1751)
!1758 = !DILocation(line: 375, column: 10, scope: !1751)
!1759 = !DILocation(line: 375, column: 3, scope: !1751)
!1760 = distinct !DISubprogram(name: "bsearch", scope: !1761, file: !1761, line: 20, type: !1762, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1765)
!1761 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!332, !964, !964, !818, !818, !1764}
!1764 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1734, line: 808, baseType: !968)
!1765 = !{!1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775}
!1766 = !DILocalVariable(name: "__key", arg: 1, scope: !1760, file: !1761, line: 20, type: !964)
!1767 = !DILocalVariable(name: "__base", arg: 2, scope: !1760, file: !1761, line: 20, type: !964)
!1768 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1760, file: !1761, line: 20, type: !818)
!1769 = !DILocalVariable(name: "__size", arg: 4, scope: !1760, file: !1761, line: 20, type: !818)
!1770 = !DILocalVariable(name: "__compar", arg: 5, scope: !1760, file: !1761, line: 21, type: !1764)
!1771 = !DILocalVariable(name: "__l", scope: !1760, file: !1761, line: 23, type: !818)
!1772 = !DILocalVariable(name: "__u", scope: !1760, file: !1761, line: 23, type: !818)
!1773 = !DILocalVariable(name: "__idx", scope: !1760, file: !1761, line: 23, type: !818)
!1774 = !DILocalVariable(name: "__p", scope: !1760, file: !1761, line: 24, type: !964)
!1775 = !DILocalVariable(name: "__comparison", scope: !1760, file: !1761, line: 25, type: !328)
!1776 = !DILocation(line: 0, scope: !1760)
!1777 = !DILocation(line: 29, column: 3, scope: !1760)
!1778 = !DILocation(line: 27, column: 7, scope: !1760)
!1779 = !DILocation(line: 29, column: 14, scope: !1760)
!1780 = !DILocation(line: 31, column: 20, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1760, file: !1761, line: 30, column: 5)
!1782 = !DILocation(line: 31, column: 27, scope: !1781)
!1783 = !DILocation(line: 32, column: 56, scope: !1781)
!1784 = !DILocation(line: 32, column: 47, scope: !1781)
!1785 = !DILocation(line: 33, column: 22, scope: !1781)
!1786 = !DILocation(line: 34, column: 24, scope: !1787)
!1787 = distinct !DILexicalBlock(scope: !1781, file: !1761, line: 34, column: 11)
!1788 = !DILocation(line: 34, column: 11, scope: !1781)
!1789 = !DILocation(line: 36, column: 29, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1787, file: !1761, line: 36, column: 16)
!1791 = !DILocation(line: 36, column: 16, scope: !1787)
!1792 = !DILocation(line: 37, column: 14, scope: !1790)
!1793 = distinct !{!1793, !1777, !1794}
!1794 = !DILocation(line: 40, column: 5, scope: !1760)
!1795 = !DILocation(line: 43, column: 1, scope: !1760)
!1796 = distinct !DISubprogram(name: "atof", scope: !1797, file: !1797, line: 25, type: !1798, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1801)
!1797 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!1800, !333}
!1800 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1801 = !{!1802}
!1802 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1796, file: !1797, line: 25, type: !333)
!1803 = !DILocation(line: 0, scope: !1796)
!1804 = !DILocation(line: 27, column: 10, scope: !1796)
!1805 = !DILocation(line: 27, column: 3, scope: !1796)
!1806 = distinct !DISubprogram(name: "strtoimax", scope: !1807, file: !1807, line: 324, type: !1808, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1814)
!1807 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1808 = !DISubroutineType(types: !1809)
!1809 = !{!1810, !1567, !1813, !328}
!1810 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1811, line: 101, baseType: !1812)
!1811 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1619, line: 72, baseType: !437)
!1813 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !329)
!1814 = !{!1815, !1816, !1817}
!1815 = !DILocalVariable(name: "nptr", arg: 1, scope: !1806, file: !1807, line: 324, type: !1567)
!1816 = !DILocalVariable(name: "endptr", arg: 2, scope: !1806, file: !1807, line: 324, type: !1813)
!1817 = !DILocalVariable(name: "base", arg: 3, scope: !1806, file: !1807, line: 324, type: !328)
!1818 = !DILocation(line: 0, scope: !1806)
!1819 = !DILocation(line: 327, column: 10, scope: !1806)
!1820 = !DILocation(line: 327, column: 3, scope: !1806)
!1821 = distinct !DISubprogram(name: "strtoumax", scope: !1807, file: !1807, line: 336, type: !1822, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1826)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!1824, !1567, !1813, !328}
!1824 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1811, line: 102, baseType: !1825)
!1825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1619, line: 73, baseType: !435)
!1826 = !{!1827, !1828, !1829}
!1827 = !DILocalVariable(name: "nptr", arg: 1, scope: !1821, file: !1807, line: 336, type: !1567)
!1828 = !DILocalVariable(name: "endptr", arg: 2, scope: !1821, file: !1807, line: 336, type: !1813)
!1829 = !DILocalVariable(name: "base", arg: 3, scope: !1821, file: !1807, line: 336, type: !328)
!1830 = !DILocation(line: 0, scope: !1821)
!1831 = !DILocation(line: 339, column: 10, scope: !1821)
!1832 = !DILocation(line: 339, column: 3, scope: !1821)
!1833 = distinct !DISubprogram(name: "wcstoimax", scope: !1807, file: !1807, line: 348, type: !1834, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1843)
!1834 = !DISubroutineType(types: !1835)
!1835 = !{!1810, !1836, !1840, !328}
!1836 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1837)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1838, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1839)
!1839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1807, line: 34, baseType: !328)
!1840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1841)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1843 = !{!1844, !1845, !1846}
!1844 = !DILocalVariable(name: "nptr", arg: 1, scope: !1833, file: !1807, line: 348, type: !1836)
!1845 = !DILocalVariable(name: "endptr", arg: 2, scope: !1833, file: !1807, line: 348, type: !1840)
!1846 = !DILocalVariable(name: "base", arg: 3, scope: !1833, file: !1807, line: 348, type: !328)
!1847 = !DILocation(line: 0, scope: !1833)
!1848 = !DILocation(line: 351, column: 10, scope: !1833)
!1849 = !DILocation(line: 351, column: 3, scope: !1833)
!1850 = distinct !DISubprogram(name: "wcstoumax", scope: !1807, file: !1807, line: 362, type: !1851, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1853)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!1824, !1836, !1840, !328}
!1853 = !{!1854, !1855, !1856}
!1854 = !DILocalVariable(name: "nptr", arg: 1, scope: !1850, file: !1807, line: 362, type: !1836)
!1855 = !DILocalVariable(name: "endptr", arg: 2, scope: !1850, file: !1807, line: 362, type: !1840)
!1856 = !DILocalVariable(name: "base", arg: 3, scope: !1850, file: !1807, line: 362, type: !328)
!1857 = !DILocation(line: 0, scope: !1850)
!1858 = !DILocation(line: 365, column: 10, scope: !1850)
!1859 = !DILocation(line: 365, column: 3, scope: !1850)
!1860 = distinct !DISubprogram(name: "stat", scope: !1861, file: !1861, line: 453, type: !1862, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1901)
!1861 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1862 = !DISubroutineType(types: !1863)
!1863 = !{!328, !333, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1866, line: 46, size: 1152, elements: !1867)
!1866 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1867 = !{!1868, !1870, !1872, !1874, !1876, !1878, !1880, !1881, !1882, !1883, !1885, !1887, !1895, !1896, !1897}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1865, file: !1866, line: 48, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1619, line: 145, baseType: !435)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1865, file: !1866, line: 53, baseType: !1871, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1619, line: 148, baseType: !435)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1865, file: !1866, line: 61, baseType: !1873, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1619, line: 151, baseType: !435)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1865, file: !1866, line: 62, baseType: !1875, size: 32, offset: 192)
!1875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1619, line: 150, baseType: !5)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1865, file: !1866, line: 64, baseType: !1877, size: 32, offset: 224)
!1877 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1619, line: 146, baseType: !5)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1865, file: !1866, line: 65, baseType: !1879, size: 32, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1619, line: 147, baseType: !5)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1865, file: !1866, line: 67, baseType: !328, size: 32, offset: 288)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1865, file: !1866, line: 69, baseType: !1869, size: 64, offset: 320)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1865, file: !1866, line: 74, baseType: !1618, size: 64, offset: 384)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1865, file: !1866, line: 78, baseType: !1884, size: 64, offset: 448)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1619, line: 174, baseType: !437)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1865, file: !1866, line: 80, baseType: !1886, size: 64, offset: 512)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1619, line: 179, baseType: !437)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1865, file: !1866, line: 91, baseType: !1888, size: 128, offset: 576)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1889, line: 10, size: 128, elements: !1890)
!1889 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1890 = !{!1891, !1893}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1888, file: !1889, line: 12, baseType: !1892, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1619, line: 160, baseType: !437)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1888, file: !1889, line: 16, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1619, line: 196, baseType: !437)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1865, file: !1866, line: 92, baseType: !1888, size: 128, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1865, file: !1866, line: 93, baseType: !1888, size: 128, offset: 832)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1865, file: !1866, line: 106, baseType: !1898, size: 192, offset: 960)
!1898 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1894, size: 192, elements: !1899)
!1899 = !{!1900}
!1900 = !DISubrange(count: 3)
!1901 = !{!1902, !1903}
!1902 = !DILocalVariable(name: "__path", arg: 1, scope: !1860, file: !1861, line: 453, type: !333)
!1903 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1860, file: !1861, line: 453, type: !1864)
!1904 = !DILocation(line: 0, scope: !1860)
!1905 = !DILocation(line: 455, column: 10, scope: !1860)
!1906 = !DILocation(line: 455, column: 3, scope: !1860)
!1907 = distinct !DISubprogram(name: "lstat", scope: !1861, file: !1861, line: 460, type: !1862, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1908)
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "__path", arg: 1, scope: !1907, file: !1861, line: 460, type: !333)
!1910 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1907, file: !1861, line: 460, type: !1864)
!1911 = !DILocation(line: 0, scope: !1907)
!1912 = !DILocation(line: 462, column: 10, scope: !1907)
!1913 = !DILocation(line: 462, column: 3, scope: !1907)
!1914 = distinct !DISubprogram(name: "fstat", scope: !1861, file: !1861, line: 467, type: !1915, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1917)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!328, !328, !1864}
!1917 = !{!1918, !1919}
!1918 = !DILocalVariable(name: "__fd", arg: 1, scope: !1914, file: !1861, line: 467, type: !328)
!1919 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1914, file: !1861, line: 467, type: !1864)
!1920 = !DILocation(line: 0, scope: !1914)
!1921 = !DILocation(line: 469, column: 10, scope: !1914)
!1922 = !DILocation(line: 469, column: 3, scope: !1914)
!1923 = distinct !DISubprogram(name: "fstatat", scope: !1861, file: !1861, line: 474, type: !1924, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1926)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!328, !328, !333, !1864, !328}
!1926 = !{!1927, !1928, !1929, !1930}
!1927 = !DILocalVariable(name: "__fd", arg: 1, scope: !1923, file: !1861, line: 474, type: !328)
!1928 = !DILocalVariable(name: "__filename", arg: 2, scope: !1923, file: !1861, line: 474, type: !333)
!1929 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1923, file: !1861, line: 474, type: !1864)
!1930 = !DILocalVariable(name: "__flag", arg: 4, scope: !1923, file: !1861, line: 474, type: !328)
!1931 = !DILocation(line: 0, scope: !1923)
!1932 = !DILocation(line: 477, column: 10, scope: !1923)
!1933 = !DILocation(line: 477, column: 3, scope: !1923)
!1934 = distinct !DISubprogram(name: "mknod", scope: !1861, file: !1861, line: 483, type: !1935, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1937)
!1935 = !DISubroutineType(types: !1936)
!1936 = !{!328, !333, !1875, !1869}
!1937 = !{!1938, !1939, !1940}
!1938 = !DILocalVariable(name: "__path", arg: 1, scope: !1934, file: !1861, line: 483, type: !333)
!1939 = !DILocalVariable(name: "__mode", arg: 2, scope: !1934, file: !1861, line: 483, type: !1875)
!1940 = !DILocalVariable(name: "__dev", arg: 3, scope: !1934, file: !1861, line: 483, type: !1869)
!1941 = !DILocation(line: 0, scope: !1934)
!1942 = !DILocation(line: 485, column: 10, scope: !1934)
!1943 = !DILocation(line: 485, column: 3, scope: !1934)
!1944 = distinct !DISubprogram(name: "mknodat", scope: !1861, file: !1861, line: 491, type: !1945, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!328, !328, !333, !1875, !1869}
!1947 = !{!1948, !1949, !1950, !1951}
!1948 = !DILocalVariable(name: "__fd", arg: 1, scope: !1944, file: !1861, line: 491, type: !328)
!1949 = !DILocalVariable(name: "__path", arg: 2, scope: !1944, file: !1861, line: 491, type: !333)
!1950 = !DILocalVariable(name: "__mode", arg: 3, scope: !1944, file: !1861, line: 491, type: !1875)
!1951 = !DILocalVariable(name: "__dev", arg: 4, scope: !1944, file: !1861, line: 491, type: !1869)
!1952 = !DILocation(line: 0, scope: !1944)
!1953 = !DILocation(line: 494, column: 10, scope: !1944)
!1954 = !DILocation(line: 494, column: 3, scope: !1944)
!1955 = distinct !DISubprogram(name: "stat64", scope: !1861, file: !1861, line: 502, type: !1956, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1978)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!328, !333, !1958}
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1866, line: 119, size: 1152, elements: !1960)
!1960 = !{!1961, !1962, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1974, !1975, !1976, !1977}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1959, file: !1866, line: 121, baseType: !1869, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1959, file: !1866, line: 123, baseType: !1963, size: 64, offset: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1619, line: 149, baseType: !435)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1959, file: !1866, line: 124, baseType: !1873, size: 64, offset: 128)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1959, file: !1866, line: 125, baseType: !1875, size: 32, offset: 192)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1959, file: !1866, line: 132, baseType: !1877, size: 32, offset: 224)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1959, file: !1866, line: 133, baseType: !1879, size: 32, offset: 256)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1959, file: !1866, line: 135, baseType: !328, size: 32, offset: 288)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1959, file: !1866, line: 136, baseType: !1869, size: 64, offset: 320)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1959, file: !1866, line: 137, baseType: !1618, size: 64, offset: 384)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1959, file: !1866, line: 143, baseType: !1884, size: 64, offset: 448)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1959, file: !1866, line: 144, baseType: !1973, size: 64, offset: 512)
!1973 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1619, line: 180, baseType: !437)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1959, file: !1866, line: 152, baseType: !1888, size: 128, offset: 576)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1959, file: !1866, line: 153, baseType: !1888, size: 128, offset: 704)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1959, file: !1866, line: 154, baseType: !1888, size: 128, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1959, file: !1866, line: 164, baseType: !1898, size: 192, offset: 960)
!1978 = !{!1979, !1980}
!1979 = !DILocalVariable(name: "__path", arg: 1, scope: !1955, file: !1861, line: 502, type: !333)
!1980 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1955, file: !1861, line: 502, type: !1958)
!1981 = !DILocation(line: 0, scope: !1955)
!1982 = !DILocation(line: 504, column: 10, scope: !1955)
!1983 = !DILocation(line: 504, column: 3, scope: !1955)
!1984 = distinct !DISubprogram(name: "lstat64", scope: !1861, file: !1861, line: 509, type: !1956, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1985)
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "__path", arg: 1, scope: !1984, file: !1861, line: 509, type: !333)
!1987 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1984, file: !1861, line: 509, type: !1958)
!1988 = !DILocation(line: 0, scope: !1984)
!1989 = !DILocation(line: 511, column: 10, scope: !1984)
!1990 = !DILocation(line: 511, column: 3, scope: !1984)
!1991 = distinct !DISubprogram(name: "fstat64", scope: !1861, file: !1861, line: 516, type: !1992, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1994)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!328, !328, !1958}
!1994 = !{!1995, !1996}
!1995 = !DILocalVariable(name: "__fd", arg: 1, scope: !1991, file: !1861, line: 516, type: !328)
!1996 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1991, file: !1861, line: 516, type: !1958)
!1997 = !DILocation(line: 0, scope: !1991)
!1998 = !DILocation(line: 518, column: 10, scope: !1991)
!1999 = !DILocation(line: 518, column: 3, scope: !1991)
!2000 = distinct !DISubprogram(name: "fstatat64", scope: !1861, file: !1861, line: 523, type: !2001, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!328, !328, !333, !1958, !328}
!2003 = !{!2004, !2005, !2006, !2007}
!2004 = !DILocalVariable(name: "__fd", arg: 1, scope: !2000, file: !1861, line: 523, type: !328)
!2005 = !DILocalVariable(name: "__filename", arg: 2, scope: !2000, file: !1861, line: 523, type: !333)
!2006 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2000, file: !1861, line: 523, type: !1958)
!2007 = !DILocalVariable(name: "__flag", arg: 4, scope: !2000, file: !1861, line: 523, type: !328)
!2008 = !DILocation(line: 0, scope: !2000)
!2009 = !DILocation(line: 526, column: 10, scope: !2000)
!2010 = !DILocation(line: 526, column: 3, scope: !2000)
!2011 = distinct !DISubprogram(name: "find_replaceable_exprs", scope: !1, file: !1, line: 660, type: !2012, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2014)
!2012 = !DISubroutineType(types: !2013)
!2013 = !{!1033, !339}
!2014 = !{!2015, !2016, !2017, !2019}
!2015 = !DILocalVariable(name: "map", arg: 1, scope: !2011, file: !1, line: 660, type: !339)
!2016 = !DILocalVariable(name: "bb", scope: !2011, file: !1, line: 662, type: !637)
!2017 = !DILocalVariable(name: "table", scope: !2011, file: !1, line: 663, type: !2018)
!2018 = !DIDerivedType(tag: DW_TAG_typedef, name: "temp_expr_table_p", file: !1, line: 169, baseType: !335)
!2019 = !DILocalVariable(name: "ret", scope: !2011, file: !1, line: 664, type: !1033)
!2020 = !DILocation(line: 0, scope: !2011)
!2021 = !DILocation(line: 666, column: 11, scope: !2011)
!2022 = !DILocation(line: 667, column: 3, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2011, file: !1, line: 667, column: 3)
!2024 = !DILocation(line: 667, column: 3, scope: !2025)
!2025 = distinct !DILexicalBlock(scope: !2023, file: !1, line: 667, column: 3)
!2026 = !DILocation(line: 0, scope: !2023)
!2027 = !DILocation(line: 669, column: 7, scope: !2028)
!2028 = distinct !DILexicalBlock(scope: !2025, file: !1, line: 668, column: 5)
!2029 = !DILocation(line: 0, scope: !2025)
!2030 = distinct !{!2030, !2022, !2031}
!2031 = !DILocation(line: 673, column: 5, scope: !2023)
!2032 = !DILocation(line: 675, column: 9, scope: !2011)
!2033 = !DILocation(line: 676, column: 3, scope: !2011)
!2034 = distinct !DISubprogram(name: "new_temp_expr_table", scope: !1, file: !1, line: 182, type: !2035, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2037)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!2018, !339}
!2037 = !{!2038, !2039, !2040, !2041, !2045}
!2038 = !DILocalVariable(name: "map", arg: 1, scope: !2034, file: !1, line: 182, type: !339)
!2039 = !DILocalVariable(name: "t", scope: !2034, file: !1, line: 184, type: !2018)
!2040 = !DILocalVariable(name: "x", scope: !2034, file: !1, line: 185, type: !5)
!2041 = !DILocalVariable(name: "p", scope: !2042, file: !1, line: 203, type: !328)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !1, line: 202, column: 5)
!2043 = distinct !DILexicalBlock(scope: !2044, file: !1, line: 201, column: 3)
!2044 = distinct !DILexicalBlock(scope: !2034, file: !1, line: 201, column: 3)
!2045 = !DILocalVariable(name: "name", scope: !2042, file: !1, line: 204, type: !381)
!2046 = !DILocation(line: 0, scope: !2034)
!2047 = !DILocation(line: 187, column: 7, scope: !2034)
!2048 = !DILocation(line: 188, column: 6, scope: !2034)
!2049 = !DILocation(line: 188, column: 10, scope: !2034)
!2050 = !DILocation(line: 190, column: 31, scope: !2034)
!2051 = !DILocation(line: 190, column: 6, scope: !2034)
!2052 = !DILocation(line: 190, column: 29, scope: !2034)
!2053 = !DILocation(line: 191, column: 23, scope: !2034)
!2054 = !DILocation(line: 191, column: 6, scope: !2034)
!2055 = !DILocation(line: 191, column: 21, scope: !2034)
!2056 = !DILocation(line: 192, column: 18, scope: !2034)
!2057 = !DILocation(line: 192, column: 6, scope: !2034)
!2058 = !DILocation(line: 192, column: 16, scope: !2034)
!2059 = !DILocation(line: 194, column: 25, scope: !2034)
!2060 = !DILocation(line: 194, column: 6, scope: !2034)
!2061 = !DILocation(line: 194, column: 23, scope: !2034)
!2062 = !DILocation(line: 196, column: 26, scope: !2034)
!2063 = !DILocation(line: 196, column: 6, scope: !2034)
!2064 = !DILocation(line: 196, column: 24, scope: !2034)
!2065 = !DILocation(line: 197, column: 37, scope: !2034)
!2066 = !DILocation(line: 197, column: 6, scope: !2034)
!2067 = !DILocation(line: 197, column: 35, scope: !2034)
!2068 = !DILocation(line: 199, column: 6, scope: !2034)
!2069 = !DILocation(line: 199, column: 30, scope: !2034)
!2070 = !DILocation(line: 200, column: 20, scope: !2034)
!2071 = !DILocation(line: 200, column: 6, scope: !2034)
!2072 = !DILocation(line: 200, column: 18, scope: !2034)
!2073 = !DILocation(line: 0, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2042, file: !1, line: 208, column: 11)
!2075 = !DILocation(line: 201, column: 8, scope: !2044)
!2076 = !DILocation(line: 0, scope: !2044)
!2077 = !DILocation(line: 201, column: 19, scope: !2043)
!2078 = !DILocation(line: 201, column: 17, scope: !2043)
!2079 = !DILocation(line: 201, column: 3, scope: !2044)
!2080 = !DILocation(line: 204, column: 19, scope: !2042)
!2081 = !DILocation(line: 0, scope: !2042)
!2082 = !DILocation(line: 205, column: 12, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2042, file: !1, line: 205, column: 11)
!2084 = !DILocation(line: 205, column: 11, scope: !2042)
!2085 = !DILocation(line: 207, column: 11, scope: !2042)
!2086 = !DILocation(line: 208, column: 13, scope: !2074)
!2087 = !DILocation(line: 208, column: 11, scope: !2042)
!2088 = !DILocation(line: 209, column: 12, scope: !2074)
!2089 = !DILocation(line: 209, column: 9, scope: !2074)
!2090 = !DILocation(line: 209, column: 26, scope: !2074)
!2091 = !DILocation(line: 201, column: 35, scope: !2043)
!2092 = !DILocation(line: 201, column: 3, scope: !2043)
!2093 = distinct !{!2093, !2079, !2094}
!2094 = !DILocation(line: 210, column: 5, scope: !2044)
!2095 = !DILocation(line: 212, column: 3, scope: !2034)
!2096 = distinct !DISubprogram(name: "find_replaceable_in_bb", scope: !1, file: !1, line: 574, type: !2097, scopeLine: 575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2099)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !2018, !637}
!2099 = !{!2100, !2101, !2102, !2109, !2110, !2111, !2112, !2113, !2114, !2127, !2128, !2135, !2138, !2139}
!2100 = !DILocalVariable(name: "tab", arg: 1, scope: !2096, file: !1, line: 574, type: !2018)
!2101 = !DILocalVariable(name: "bb", arg: 2, scope: !2096, file: !1, line: 574, type: !637)
!2102 = !DILocalVariable(name: "bsi", scope: !2096, file: !1, line: 576, type: !2103)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !255, line: 265, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 254, size: 192, elements: !2105)
!2105 = !{!2106, !2107, !2108}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2104, file: !255, line: 257, baseType: !669, size: 64)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2104, file: !255, line: 263, baseType: !664, size: 64, offset: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2104, file: !255, line: 264, baseType: !637, size: 64, offset: 128)
!2109 = !DILocalVariable(name: "stmt", scope: !2096, file: !1, line: 577, type: !674)
!2110 = !DILocalVariable(name: "def", scope: !2096, file: !1, line: 578, type: !381)
!2111 = !DILocalVariable(name: "use", scope: !2096, file: !1, line: 578, type: !381)
!2112 = !DILocalVariable(name: "partition", scope: !2096, file: !1, line: 579, type: !328)
!2113 = !DILocalVariable(name: "map", scope: !2096, file: !1, line: 580, type: !339)
!2114 = !DILocalVariable(name: "iter", scope: !2096, file: !1, line: 581, type: !2115)
!2115 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !248, line: 140, baseType: !2116)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !248, line: 131, size: 320, elements: !2117)
!2117 = !{!2118, !2119, !2120, !2122, !2124, !2125, !2126}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2116, file: !248, line: 133, baseType: !327, size: 8)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2116, file: !248, line: 134, baseType: !247, size: 32, offset: 32)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2116, file: !248, line: 135, baseType: !2121, size: 64, offset: 64)
!2121 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !248, line: 42, baseType: !703)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2116, file: !248, line: 136, baseType: !2123, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !248, line: 50, baseType: !710)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2116, file: !248, line: 137, baseType: !328, size: 32, offset: 192)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2116, file: !248, line: 138, baseType: !328, size: 32, offset: 224)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2116, file: !248, line: 139, baseType: !674, size: 64, offset: 256)
!2127 = !DILocalVariable(name: "stmt_replaceable", scope: !2096, file: !1, line: 582, type: !327)
!2128 = !DILocalVariable(name: "ver", scope: !2129, file: !1, line: 596, type: !5)
!2129 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 595, column: 2)
!2130 = distinct !DILexicalBlock(scope: !2131, file: !1, line: 594, column: 7)
!2131 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 594, column: 7)
!2132 = distinct !DILexicalBlock(scope: !2133, file: !1, line: 585, column: 5)
!2133 = distinct !DILexicalBlock(scope: !2134, file: !1, line: 584, column: 3)
!2134 = distinct !DILexicalBlock(scope: !2096, file: !1, line: 584, column: 3)
!2135 = !DILocalVariable(name: "same_root_var", scope: !2136, file: !1, line: 601, type: !327)
!2136 = distinct !DILexicalBlock(scope: !2137, file: !1, line: 600, column: 6)
!2137 = distinct !DILexicalBlock(scope: !2129, file: !1, line: 599, column: 8)
!2138 = !DILocalVariable(name: "iter2", scope: !2136, file: !1, line: 602, type: !2115)
!2139 = !DILocalVariable(name: "vars", scope: !2136, file: !1, line: 603, type: !1033)
!2140 = !DILocation(line: 0, scope: !2096)
!2141 = !DILocation(line: 576, column: 3, scope: !2096)
!2142 = !DILocation(line: 580, column: 22, scope: !2096)
!2143 = !DILocation(line: 581, column: 3, scope: !2096)
!2144 = !DILocation(line: 584, column: 14, scope: !2134)
!2145 = !DILocation(line: 0, scope: !2137)
!2146 = !DILocation(line: 0, scope: !2136)
!2147 = !DILocation(line: 0, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 632, column: 8)
!2149 = distinct !DILexicalBlock(scope: !2150, file: !1, line: 630, column: 2)
!2150 = distinct !DILexicalBlock(scope: !2151, file: !1, line: 629, column: 7)
!2151 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 629, column: 7)
!2152 = !DILocation(line: 0, scope: !2132)
!2153 = !DILocation(line: 584, column: 8, scope: !2134)
!2154 = !DILocation(line: 584, column: 34, scope: !2133)
!2155 = !DILocation(line: 584, column: 33, scope: !2133)
!2156 = !DILocation(line: 584, column: 3, scope: !2134)
!2157 = !DILocation(line: 586, column: 14, scope: !2132)
!2158 = !DILocation(line: 588, column: 11, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 588, column: 11)
!2160 = !DILocation(line: 588, column: 11, scope: !2132)
!2161 = !DILocation(line: 591, column: 26, scope: !2132)
!2162 = !DILocation(line: 594, column: 7, scope: !2131)
!2163 = !DILocation(line: 0, scope: !2131)
!2164 = !DILocation(line: 594, column: 7, scope: !2130)
!2165 = !DILocation(line: 596, column: 19, scope: !2129)
!2166 = !DILocation(line: 0, scope: !2129)
!2167 = !DILocation(line: 599, column: 13, scope: !2137)
!2168 = !DILocation(line: 599, column: 8, scope: !2137)
!2169 = !DILocation(line: 599, column: 8, scope: !2129)
!2170 = !DILocation(line: 602, column: 8, scope: !2136)
!2171 = !DILocation(line: 608, column: 13, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 608, column: 12)
!2173 = !DILocation(line: 608, column: 12, scope: !2136)
!2174 = !DILocation(line: 609, column: 3, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2172, file: !1, line: 609, column: 3)
!2176 = !DILocation(line: 0, scope: !2175)
!2177 = !DILocation(line: 609, column: 3, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2175, file: !1, line: 609, column: 3)
!2179 = !DILocation(line: 611, column: 31, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2181, file: !1, line: 611, column: 11)
!2181 = distinct !DILexicalBlock(scope: !2178, file: !1, line: 610, column: 5)
!2182 = !DILocation(line: 611, column: 11, scope: !2180)
!2183 = !DILocation(line: 611, column: 11, scope: !2181)
!2184 = distinct !{!2184, !2174, !2185}
!2185 = !DILocation(line: 616, column: 5, scope: !2175)
!2186 = !DILocation(line: 621, column: 12, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2136, file: !1, line: 621, column: 12)
!2188 = !DILocation(line: 621, column: 43, scope: !2187)
!2189 = !DILocation(line: 622, column: 3, scope: !2187)
!2190 = !DILocation(line: 624, column: 3, scope: !2187)
!2191 = !DILocation(line: 625, column: 6, scope: !2137)
!2192 = !DILocation(line: 625, column: 6, scope: !2136)
!2193 = distinct !{!2193, !2162, !2194}
!2194 = !DILocation(line: 626, column: 2, scope: !2131)
!2195 = !DILocation(line: 629, column: 7, scope: !2151)
!2196 = !DILocation(line: 0, scope: !2151)
!2197 = !DILocation(line: 629, column: 7, scope: !2150)
!2198 = !DILocation(line: 631, column: 16, scope: !2149)
!2199 = !DILocation(line: 632, column: 18, scope: !2148)
!2200 = !DILocation(line: 632, column: 34, scope: !2148)
!2201 = !DILocation(line: 632, column: 42, scope: !2148)
!2202 = !DILocation(line: 632, column: 37, scope: !2148)
!2203 = !DILocation(line: 632, column: 8, scope: !2149)
!2204 = !DILocation(line: 633, column: 6, scope: !2148)
!2205 = distinct !{!2205, !2195, !2206}
!2206 = !DILocation(line: 634, column: 2, scope: !2151)
!2207 = !DILocation(line: 637, column: 11, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 637, column: 11)
!2209 = !DILocation(line: 637, column: 11, scope: !2132)
!2210 = !DILocation(line: 638, column: 2, scope: !2208)
!2211 = !DILocation(line: 641, column: 26, scope: !2132)
!2212 = !DILocation(line: 641, column: 7, scope: !2132)
!2213 = !DILocation(line: 645, column: 11, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2132, file: !1, line: 645, column: 11)
!2215 = !DILocation(line: 645, column: 11, scope: !2132)
!2216 = !DILocation(line: 646, column: 9, scope: !2214)
!2217 = !DILocation(line: 584, column: 51, scope: !2133)
!2218 = !DILocation(line: 584, column: 3, scope: !2133)
!2219 = distinct !{!2219, !2156, !2220}
!2220 = !DILocation(line: 647, column: 5, scope: !2134)
!2221 = !DILocation(line: 648, column: 1, scope: !2096)
!2222 = distinct !DISubprogram(name: "free_temp_expr_table", scope: !1, file: !1, line: 220, type: !2223, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!1033, !2018}
!2225 = !{!2226, !2227}
!2226 = !DILocalVariable(name: "t", arg: 1, scope: !2222, file: !1, line: 220, type: !2018)
!2227 = !DILocalVariable(name: "ret", scope: !2222, file: !1, line: 222, type: !1033)
!2228 = !DILocation(line: 0, scope: !2222)
!2229 = !DILocation(line: 235, column: 3, scope: !2222)
!2230 = !DILocation(line: 236, column: 3, scope: !2222)
!2231 = !DILocation(line: 238, column: 12, scope: !2222)
!2232 = !DILocation(line: 238, column: 3, scope: !2222)
!2233 = !DILocation(line: 239, column: 12, scope: !2222)
!2234 = !DILocation(line: 239, column: 3, scope: !2222)
!2235 = !DILocation(line: 240, column: 12, scope: !2222)
!2236 = !DILocation(line: 240, column: 3, scope: !2222)
!2237 = !DILocation(line: 241, column: 12, scope: !2222)
!2238 = !DILocation(line: 241, column: 3, scope: !2222)
!2239 = !DILocation(line: 243, column: 10, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2222, file: !1, line: 243, column: 7)
!2241 = !DILocation(line: 243, column: 7, scope: !2240)
!2242 = !DILocation(line: 243, column: 7, scope: !2222)
!2243 = !DILocation(line: 244, column: 5, scope: !2240)
!2244 = !DILocation(line: 246, column: 9, scope: !2222)
!2245 = !DILocation(line: 246, column: 3, scope: !2222)
!2246 = !DILocation(line: 247, column: 3, scope: !2222)
!2247 = distinct !DISubprogram(name: "dump_replaceable_exprs", scope: !1, file: !1, line: 682, type: !2248, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2250)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{null, !1592, !1033}
!2250 = !{!2251, !2252, !2253, !2254}
!2251 = !DILocalVariable(name: "f", arg: 1, scope: !2247, file: !1, line: 682, type: !1592)
!2252 = !DILocalVariable(name: "expr", arg: 2, scope: !2247, file: !1, line: 682, type: !1033)
!2253 = !DILocalVariable(name: "var", scope: !2247, file: !1, line: 684, type: !381)
!2254 = !DILocalVariable(name: "x", scope: !2247, file: !1, line: 685, type: !5)
!2255 = !DILocation(line: 0, scope: !2247)
!2256 = !DILocation(line: 687, column: 3, scope: !2247)
!2257 = !DILocation(line: 688, column: 8, scope: !2258)
!2258 = distinct !DILexicalBlock(scope: !2247, file: !1, line: 688, column: 3)
!2259 = !DILocation(line: 0, scope: !2258)
!2260 = !DILocation(line: 688, column: 19, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2258, file: !1, line: 688, column: 3)
!2262 = !DILocation(line: 688, column: 17, scope: !2261)
!2263 = !DILocation(line: 688, column: 3, scope: !2258)
!2264 = !DILocation(line: 689, column: 9, scope: !2265)
!2265 = distinct !DILexicalBlock(scope: !2261, file: !1, line: 689, column: 9)
!2266 = !DILocation(line: 689, column: 9, scope: !2261)
!2267 = !DILocation(line: 691, column: 8, scope: !2268)
!2268 = distinct !DILexicalBlock(scope: !2265, file: !1, line: 690, column: 7)
!2269 = !DILocation(line: 692, column: 2, scope: !2268)
!2270 = !DILocation(line: 693, column: 2, scope: !2268)
!2271 = !DILocation(line: 694, column: 24, scope: !2268)
!2272 = !DILocation(line: 694, column: 2, scope: !2268)
!2273 = !DILocation(line: 695, column: 2, scope: !2268)
!2274 = !DILocation(line: 696, column: 7, scope: !2268)
!2275 = !DILocation(line: 688, column: 35, scope: !2261)
!2276 = !DILocation(line: 688, column: 3, scope: !2261)
!2277 = distinct !{!2277, !2263, !2278}
!2278 = !DILocation(line: 696, column: 7, scope: !2258)
!2279 = !DILocation(line: 697, column: 3, scope: !2247)
!2280 = !DILocation(line: 698, column: 1, scope: !2247)
!2281 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !4, file: !4, line: 182, type: !2282, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2286)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!5, !2284}
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!2286 = !{!2287}
!2287 = !DILocalVariable(name: "vec_", arg: 1, scope: !2281, file: !4, line: 182, type: !2284)
!2288 = !DILocation(line: 0, scope: !2281)
!2289 = !DILocation(line: 182, column: 1, scope: !2281)
!2290 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !4, file: !4, line: 182, type: !2291, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!381, !2284, !5}
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "vec_", arg: 1, scope: !2290, file: !4, line: 182, type: !2284)
!2295 = !DILocalVariable(name: "ix_", arg: 2, scope: !2290, file: !4, line: 182, type: !5)
!2296 = !DILocation(line: 0, scope: !2290)
!2297 = !DILocation(line: 182, column: 1, scope: !2290)
!2298 = distinct !DISubprogram(name: "num_var_partitions", scope: !340, file: !340, line: 101, type: !2299, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2301)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!5, !339}
!2301 = !{!2302}
!2302 = !DILocalVariable(name: "map", arg: 1, scope: !2298, file: !340, line: 101, type: !339)
!2303 = !DILocation(line: 0, scope: !2298)
!2304 = !DILocation(line: 103, column: 15, scope: !2298)
!2305 = !DILocation(line: 103, column: 3, scope: !2298)
!2306 = distinct !DISubprogram(name: "var_to_partition", scope: !340, file: !340, line: 143, type: !2307, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!328, !339, !381}
!2309 = !{!2310, !2311, !2312}
!2310 = !DILocalVariable(name: "map", arg: 1, scope: !2306, file: !340, line: 143, type: !339)
!2311 = !DILocalVariable(name: "var", arg: 2, scope: !2306, file: !340, line: 143, type: !381)
!2312 = !DILocalVariable(name: "part", scope: !2306, file: !340, line: 145, type: !328)
!2313 = !DILocation(line: 0, scope: !2306)
!2314 = !DILocation(line: 147, column: 3, scope: !2306)
!2315 = !DILocation(line: 148, column: 10, scope: !2306)
!2316 = !DILocation(line: 149, column: 12, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2306, file: !340, line: 149, column: 7)
!2318 = !DILocation(line: 149, column: 7, scope: !2317)
!2319 = !DILocation(line: 149, column: 7, scope: !2306)
!2320 = !DILocation(line: 150, column: 12, scope: !2317)
!2321 = !DILocation(line: 150, column: 5, scope: !2317)
!2322 = !DILocation(line: 151, column: 3, scope: !2306)
!2323 = distinct !DISubprogram(name: "gsi_start_bb", scope: !255, file: !255, line: 4418, type: !2324, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2326)
!2324 = !DISubroutineType(types: !2325)
!2325 = !{!2103, !637}
!2326 = !{!2327, !2328, !2329}
!2327 = !DILocalVariable(name: "bb", arg: 1, scope: !2323, file: !255, line: 4418, type: !637)
!2328 = !DILocalVariable(name: "i", scope: !2323, file: !255, line: 4420, type: !2103)
!2329 = !DILocalVariable(name: "seq", scope: !2323, file: !255, line: 4421, type: !664)
!2330 = !DILocation(line: 0, scope: !2323)
!2331 = !DILocation(line: 4420, column: 24, scope: !2323)
!2332 = !DILocation(line: 4423, column: 9, scope: !2323)
!2333 = !DILocation(line: 4424, column: 11, scope: !2323)
!2334 = !DILocation(line: 4424, column: 5, scope: !2323)
!2335 = !DILocation(line: 4424, column: 9, scope: !2323)
!2336 = !DILocation(line: 4425, column: 5, scope: !2323)
!2337 = !DILocation(line: 4425, column: 9, scope: !2323)
!2338 = !DILocation(line: 4426, column: 5, scope: !2323)
!2339 = !DILocation(line: 4426, column: 8, scope: !2323)
!2340 = !DILocation(line: 4429, column: 1, scope: !2323)
!2341 = distinct !DISubprogram(name: "gsi_end_p", scope: !255, file: !255, line: 4467, type: !2342, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2344)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{!327, !2103}
!2344 = !{!2345}
!2345 = !DILocalVariable(name: "i", arg: 1, scope: !2341, file: !255, line: 4467, type: !2103)
!2346 = !DILocation(line: 4467, column: 33, scope: !2341)
!2347 = !DILocation(line: 4469, column: 12, scope: !2341)
!2348 = !DILocation(line: 4469, column: 16, scope: !2341)
!2349 = !DILocation(line: 4469, column: 10, scope: !2341)
!2350 = !DILocation(line: 4469, column: 3, scope: !2341)
!2351 = distinct !DISubprogram(name: "gsi_stmt", scope: !255, file: !255, line: 4501, type: !2352, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2354)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!674, !2103}
!2354 = !{!2355}
!2355 = !DILocalVariable(name: "i", arg: 1, scope: !2351, file: !255, line: 4501, type: !2103)
!2356 = !DILocation(line: 4501, column: 32, scope: !2351)
!2357 = !DILocation(line: 4503, column: 12, scope: !2351)
!2358 = !DILocation(line: 4503, column: 17, scope: !2351)
!2359 = !DILocation(line: 4503, column: 3, scope: !2351)
!2360 = distinct !DISubprogram(name: "is_gimple_debug", scope: !255, file: !255, line: 3249, type: !2361, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2364)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!327, !2363}
!2363 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !382, line: 60, baseType: !1557)
!2364 = !{!2365}
!2365 = !DILocalVariable(name: "gs", arg: 1, scope: !2360, file: !255, line: 3249, type: !2363)
!2366 = !DILocation(line: 0, scope: !2360)
!2367 = !DILocation(line: 3251, column: 10, scope: !2360)
!2368 = !DILocation(line: 3251, column: 27, scope: !2360)
!2369 = !DILocation(line: 3251, column: 3, scope: !2360)
!2370 = distinct !DISubprogram(name: "is_replaceable_p", scope: !1, file: !1, line: 363, type: !2371, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2373)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{!327, !674}
!2373 = !{!2374, !2375, !2376, !2377, !2378, !2379, !2380, !2381}
!2374 = !DILocalVariable(name: "stmt", arg: 1, scope: !2370, file: !1, line: 363, type: !674)
!2375 = !DILocalVariable(name: "use_p", scope: !2370, file: !1, line: 365, type: !1554)
!2376 = !DILocalVariable(name: "def", scope: !2370, file: !1, line: 366, type: !381)
!2377 = !DILocalVariable(name: "use_stmt", scope: !2370, file: !1, line: 367, type: !674)
!2378 = !DILocalVariable(name: "locus1", scope: !2370, file: !1, line: 368, type: !488)
!2379 = !DILocalVariable(name: "locus2", scope: !2370, file: !1, line: 368, type: !488)
!2380 = !DILocalVariable(name: "block1", scope: !2370, file: !1, line: 369, type: !381)
!2381 = !DILocalVariable(name: "block2", scope: !2370, file: !1, line: 369, type: !381)
!2382 = !DILocation(line: 0, scope: !2370)
!2383 = !DILocation(line: 365, column: 3, scope: !2370)
!2384 = !DILocation(line: 367, column: 3, scope: !2370)
!2385 = !DILocation(line: 372, column: 8, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 372, column: 7)
!2387 = !DILocation(line: 372, column: 7, scope: !2370)
!2388 = !DILocation(line: 376, column: 7, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 376, column: 7)
!2390 = !DILocation(line: 376, column: 7, scope: !2370)
!2391 = !DILocation(line: 380, column: 9, scope: !2370)
!2392 = !DILocation(line: 381, column: 8, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 381, column: 7)
!2394 = !DILocation(line: 381, column: 7, scope: !2370)
!2395 = !DILocation(line: 385, column: 8, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 385, column: 7)
!2397 = !DILocation(line: 385, column: 7, scope: !2370)
!2398 = !DILocation(line: 389, column: 18, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 389, column: 7)
!2400 = !DILocation(line: 389, column: 7, scope: !2399)
!2401 = !DILocation(line: 389, column: 31, scope: !2399)
!2402 = !DILocation(line: 389, column: 28, scope: !2399)
!2403 = !DILocation(line: 389, column: 7, scope: !2370)
!2404 = !DILocation(line: 392, column: 12, scope: !2370)
!2405 = !DILocation(line: 393, column: 12, scope: !2370)
!2406 = !DILocation(line: 395, column: 20, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 395, column: 7)
!2408 = !DILocation(line: 395, column: 7, scope: !2407)
!2409 = !DILocation(line: 395, column: 30, scope: !2407)
!2410 = !DILocation(line: 395, column: 7, scope: !2370)
!2411 = !DILocation(line: 402, column: 33, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 401, column: 5)
!2413 = !DILocation(line: 402, column: 16, scope: !2412)
!2414 = !DILocation(line: 403, column: 30, scope: !2412)
!2415 = !DILocation(line: 403, column: 16, scope: !2412)
!2416 = !DILocation(line: 0, scope: !2407)
!2417 = !DILocation(line: 406, column: 8, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 406, column: 7)
!2419 = !DILocation(line: 407, column: 7, scope: !2418)
!2420 = !DILocation(line: 407, column: 12, scope: !2418)
!2421 = !DILocation(line: 407, column: 29, scope: !2418)
!2422 = !DILocation(line: 407, column: 19, scope: !2418)
!2423 = !DILocation(line: 407, column: 44, scope: !2418)
!2424 = !DILocation(line: 407, column: 61, scope: !2418)
!2425 = !DILocation(line: 407, column: 51, scope: !2418)
!2426 = !DILocation(line: 411, column: 20, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 411, column: 7)
!2428 = !DILocation(line: 411, column: 7, scope: !2427)
!2429 = !DILocation(line: 411, column: 30, scope: !2427)
!2430 = !DILocation(line: 411, column: 7, scope: !2370)
!2431 = !DILocation(line: 415, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 415, column: 7)
!2433 = !DILocation(line: 415, column: 7, scope: !2370)
!2434 = !DILocation(line: 419, column: 7, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 419, column: 7)
!2436 = !DILocation(line: 419, column: 45, scope: !2435)
!2437 = !DILocation(line: 419, column: 41, scope: !2435)
!2438 = !DILocation(line: 423, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 423, column: 7)
!2440 = !DILocation(line: 424, column: 7, scope: !2439)
!2441 = !DILocation(line: 424, column: 10, scope: !2439)
!2442 = !DILocation(line: 423, column: 7, scope: !2370)
!2443 = !DILocation(line: 429, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 429, column: 7)
!2445 = !DILocation(line: 429, column: 37, scope: !2444)
!2446 = !DILocation(line: 430, column: 7, scope: !2444)
!2447 = !DILocation(line: 430, column: 10, scope: !2444)
!2448 = !DILocation(line: 429, column: 7, scope: !2370)
!2449 = !DILocation(line: 434, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 434, column: 7)
!2451 = !DILocation(line: 434, column: 7, scope: !2370)
!2452 = !DILocation(line: 438, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2370, file: !1, line: 438, column: 7)
!2454 = !DILocation(line: 442, column: 1, scope: !2370)
!2455 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2456, file: !2456, line: 792, type: !2457, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2460)
!2456 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!381, !2459, !674, !328}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2460 = !{!2461, !2462, !2463}
!2461 = !DILocalVariable(name: "ptr", arg: 1, scope: !2455, file: !2456, line: 792, type: !2459)
!2462 = !DILocalVariable(name: "stmt", arg: 2, scope: !2455, file: !2456, line: 792, type: !674)
!2463 = !DILocalVariable(name: "flags", arg: 3, scope: !2455, file: !2456, line: 792, type: !328)
!2464 = !DILocation(line: 0, scope: !2455)
!2465 = !DILocation(line: 794, column: 3, scope: !2455)
!2466 = !DILocation(line: 795, column: 8, scope: !2455)
!2467 = !DILocation(line: 795, column: 18, scope: !2455)
!2468 = !DILocation(line: 796, column: 10, scope: !2455)
!2469 = !DILocation(line: 796, column: 3, scope: !2455)
!2470 = distinct !DISubprogram(name: "op_iter_done", scope: !2456, file: !2456, line: 652, type: !2471, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2475)
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!327, !2473}
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2115)
!2475 = !{!2476}
!2476 = !DILocalVariable(name: "ptr", arg: 1, scope: !2470, file: !2456, line: 652, type: !2473)
!2477 = !DILocation(line: 0, scope: !2470)
!2478 = !DILocation(line: 654, column: 15, scope: !2470)
!2479 = !DILocation(line: 654, column: 3, scope: !2470)
!2480 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2456, file: !2456, line: 699, type: !2481, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!381, !2459}
!2483 = !{!2484, !2485}
!2484 = !DILocalVariable(name: "ptr", arg: 1, scope: !2480, file: !2456, line: 699, type: !2459)
!2485 = !DILocalVariable(name: "val", scope: !2480, file: !2456, line: 701, type: !381)
!2486 = !DILocation(line: 0, scope: !2480)
!2487 = !DILocation(line: 705, column: 12, scope: !2488)
!2488 = distinct !DILexicalBlock(scope: !2480, file: !2456, line: 705, column: 7)
!2489 = !DILocation(line: 705, column: 7, scope: !2488)
!2490 = !DILocation(line: 705, column: 7, scope: !2480)
!2491 = !DILocation(line: 707, column: 13, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2488, file: !2456, line: 706, column: 5)
!2493 = !DILocation(line: 708, column: 24, scope: !2492)
!2494 = !DILocation(line: 708, column: 30, scope: !2492)
!2495 = !DILocation(line: 708, column: 17, scope: !2492)
!2496 = !DILocation(line: 709, column: 7, scope: !2492)
!2497 = !DILocation(line: 711, column: 12, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2480, file: !2456, line: 711, column: 7)
!2499 = !DILocation(line: 711, column: 7, scope: !2498)
!2500 = !DILocation(line: 711, column: 7, scope: !2480)
!2501 = !DILocation(line: 713, column: 13, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2498, file: !2456, line: 712, column: 5)
!2503 = !DILocation(line: 714, column: 24, scope: !2502)
!2504 = !DILocation(line: 714, column: 30, scope: !2502)
!2505 = !DILocation(line: 714, column: 17, scope: !2502)
!2506 = !DILocation(line: 715, column: 7, scope: !2502)
!2507 = !DILocation(line: 718, column: 8, scope: !2480)
!2508 = !DILocation(line: 718, column: 13, scope: !2480)
!2509 = !DILocation(line: 719, column: 3, scope: !2480)
!2510 = !DILocation(line: 721, column: 1, scope: !2480)
!2511 = distinct !DISubprogram(name: "gimple_has_volatile_ops", scope: !255, file: !255, line: 1477, type: !2361, scopeLine: 1478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2512)
!2512 = !{!2513}
!2513 = !DILocalVariable(name: "stmt", arg: 1, scope: !2511, file: !255, line: 1477, type: !2363)
!2514 = !DILocation(line: 0, scope: !2511)
!2515 = !DILocation(line: 1479, column: 7, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2511, file: !255, line: 1479, column: 7)
!2517 = !DILocation(line: 1479, column: 7, scope: !2511)
!2518 = !DILocation(line: 1480, column: 25, scope: !2516)
!2519 = !DILocation(line: 1480, column: 12, scope: !2516)
!2520 = !DILocation(line: 1480, column: 5, scope: !2516)
!2521 = !DILocation(line: 0, scope: !2516)
!2522 = !DILocation(line: 1483, column: 1, scope: !2511)
!2523 = distinct !DISubprogram(name: "finished_with_expr", scope: !1, file: !1, line: 450, type: !2524, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2526)
!2524 = !DISubroutineType(types: !2525)
!2525 = !{null, !2018, !328, !327}
!2526 = !{!2527, !2528, !2529, !2530, !2531}
!2527 = !DILocalVariable(name: "tab", arg: 1, scope: !2523, file: !1, line: 450, type: !2018)
!2528 = !DILocalVariable(name: "version", arg: 2, scope: !2523, file: !1, line: 450, type: !328)
!2529 = !DILocalVariable(name: "free_expr", arg: 3, scope: !2523, file: !1, line: 450, type: !327)
!2530 = !DILocalVariable(name: "i", scope: !2523, file: !1, line: 452, type: !5)
!2531 = !DILocalVariable(name: "bi", scope: !2523, file: !1, line: 453, type: !2532)
!2532 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !1036, line: 218, baseType: !2533)
!2533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1036, line: 203, size: 256, elements: !2534)
!2534 = !{!2535, !2536, !2537, !2538}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2533, file: !1036, line: 206, baseType: !1039, size: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2533, file: !1036, line: 209, baseType: !1039, size: 64, offset: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2533, file: !1036, line: 212, baseType: !5, size: 32, offset: 128)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2533, file: !1036, line: 217, baseType: !1049, size: 64, offset: 192)
!2539 = !DILocation(line: 0, scope: !2523)
!2540 = !DILocation(line: 452, column: 3, scope: !2523)
!2541 = !DILocation(line: 453, column: 3, scope: !2523)
!2542 = !DILocation(line: 457, column: 12, scope: !2543)
!2543 = distinct !DILexicalBlock(scope: !2523, file: !1, line: 457, column: 7)
!2544 = !DILocation(line: 457, column: 7, scope: !2543)
!2545 = !DILocation(line: 457, column: 7, scope: !2523)
!2546 = !DILocation(line: 459, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !1, line: 459, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2543, file: !1, line: 458, column: 5)
!2549 = !DILocation(line: 459, column: 7, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2547, file: !1, line: 459, column: 7)
!2551 = !DILocation(line: 460, column: 40, scope: !2550)
!2552 = !DILocation(line: 460, column: 2, scope: !2550)
!2553 = distinct !{!2553, !2546, !2554}
!2554 = !DILocation(line: 460, column: 50, scope: !2547)
!2555 = !DILocation(line: 461, column: 7, scope: !2548)
!2556 = !DILocation(line: 462, column: 5, scope: !2548)
!2557 = !DILocation(line: 463, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2523, file: !1, line: 463, column: 7)
!2559 = !DILocation(line: 463, column: 7, scope: !2523)
!2560 = !DILocation(line: 464, column: 5, scope: !2558)
!2561 = !DILocation(line: 465, column: 1, scope: !2523)
!2562 = distinct !DISubprogram(name: "mark_replaceable", scope: !1, file: !1, line: 552, type: !2563, scopeLine: 553, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2565)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{null, !2018, !381, !327}
!2565 = !{!2566, !2567, !2568, !2569}
!2566 = !DILocalVariable(name: "tab", arg: 1, scope: !2562, file: !1, line: 552, type: !2018)
!2567 = !DILocalVariable(name: "var", arg: 2, scope: !2562, file: !1, line: 552, type: !381)
!2568 = !DILocalVariable(name: "more_replacing", arg: 3, scope: !2562, file: !1, line: 552, type: !327)
!2569 = !DILocalVariable(name: "version", scope: !2562, file: !1, line: 554, type: !328)
!2570 = !DILocation(line: 0, scope: !2562)
!2571 = !DILocation(line: 554, column: 17, scope: !2562)
!2572 = !DILocation(line: 557, column: 7, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 557, column: 7)
!2574 = !DILocation(line: 557, column: 22, scope: !2573)
!2575 = !DILocation(line: 557, column: 30, scope: !2573)
!2576 = !DILocation(line: 557, column: 25, scope: !2573)
!2577 = !DILocation(line: 557, column: 7, scope: !2562)
!2578 = !DILocation(line: 558, column: 27, scope: !2573)
!2579 = !DILocation(line: 558, column: 5, scope: !2573)
!2580 = !DILocation(line: 561, column: 37, scope: !2562)
!2581 = !DILocation(line: 561, column: 3, scope: !2562)
!2582 = !DILocation(line: 564, column: 13, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2562, file: !1, line: 564, column: 7)
!2584 = !DILocation(line: 564, column: 8, scope: !2583)
!2585 = !DILocation(line: 564, column: 7, scope: !2562)
!2586 = !DILocation(line: 565, column: 36, scope: !2583)
!2587 = !DILocation(line: 565, column: 34, scope: !2583)
!2588 = !DILocation(line: 565, column: 5, scope: !2583)
!2589 = !DILocation(line: 566, column: 24, scope: !2562)
!2590 = !DILocation(line: 566, column: 3, scope: !2562)
!2591 = !DILocation(line: 567, column: 1, scope: !2562)
!2592 = distinct !DISubprogram(name: "kill_expr", scope: !1, file: !1, line: 519, type: !2593, scopeLine: 520, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2595)
!2593 = !DISubroutineType(types: !2594)
!2594 = !{null, !2018, !328}
!2595 = !{!2596, !2597, !2598}
!2596 = !DILocalVariable(name: "tab", arg: 1, scope: !2592, file: !1, line: 519, type: !2018)
!2597 = !DILocalVariable(name: "partition", arg: 2, scope: !2592, file: !1, line: 519, type: !328)
!2598 = !DILocalVariable(name: "version", scope: !2592, file: !1, line: 521, type: !5)
!2599 = !DILocation(line: 0, scope: !2592)
!2600 = !DILocation(line: 525, column: 3, scope: !2592)
!2601 = !DILocation(line: 525, column: 15, scope: !2592)
!2602 = !DILocation(line: 525, column: 10, scope: !2592)
!2603 = !DILocation(line: 527, column: 17, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2592, file: !1, line: 526, column: 5)
!2605 = !DILocation(line: 528, column: 7, scope: !2604)
!2606 = distinct !{!2606, !2600, !2607}
!2607 = !DILocation(line: 529, column: 5, scope: !2592)
!2608 = !DILocation(line: 534, column: 1, scope: !2592)
!2609 = distinct !DISubprogram(name: "process_replaceable", scope: !1, file: !1, line: 471, type: !2610, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !2018, !674}
!2612 = !{!2613, !2614, !2615, !2616, !2617, !2618, !2619, !2620, !2621, !2622}
!2613 = !DILocalVariable(name: "tab", arg: 1, scope: !2609, file: !1, line: 471, type: !2018)
!2614 = !DILocalVariable(name: "stmt", arg: 2, scope: !2609, file: !1, line: 471, type: !674)
!2615 = !DILocalVariable(name: "var", scope: !2609, file: !1, line: 473, type: !381)
!2616 = !DILocalVariable(name: "def", scope: !2609, file: !1, line: 473, type: !381)
!2617 = !DILocalVariable(name: "basevar", scope: !2609, file: !1, line: 473, type: !381)
!2618 = !DILocalVariable(name: "version", scope: !2609, file: !1, line: 474, type: !328)
!2619 = !DILocalVariable(name: "iter", scope: !2609, file: !1, line: 475, type: !2115)
!2620 = !DILocalVariable(name: "def_vars", scope: !2609, file: !1, line: 476, type: !1033)
!2621 = !DILocalVariable(name: "use_vars", scope: !2609, file: !1, line: 476, type: !1033)
!2622 = !DILocalVariable(name: "var_version", scope: !2623, file: !1, line: 492, type: !328)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !1, line: 491, column: 5)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 490, column: 3)
!2625 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 490, column: 3)
!2626 = !DILocation(line: 0, scope: !2609)
!2627 = !DILocation(line: 475, column: 3, scope: !2609)
!2628 = !DILocation(line: 482, column: 9, scope: !2609)
!2629 = !DILocation(line: 483, column: 13, scope: !2609)
!2630 = !DILocation(line: 484, column: 13, scope: !2609)
!2631 = !DILocation(line: 485, column: 14, scope: !2609)
!2632 = !DILocation(line: 487, column: 29, scope: !2609)
!2633 = !DILocation(line: 487, column: 3, scope: !2609)
!2634 = !DILocation(line: 490, column: 3, scope: !2625)
!2635 = !DILocation(line: 0, scope: !2623)
!2636 = !DILocation(line: 0, scope: !2625)
!2637 = !DILocation(line: 490, column: 3, scope: !2624)
!2638 = !DILocation(line: 492, column: 25, scope: !2623)
!2639 = !DILocation(line: 494, column: 23, scope: !2623)
!2640 = !DILocation(line: 494, column: 18, scope: !2623)
!2641 = !DILocation(line: 495, column: 7, scope: !2623)
!2642 = !DILocation(line: 496, column: 11, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2623, file: !1, line: 496, column: 11)
!2644 = !DILocation(line: 496, column: 11, scope: !2623)
!2645 = !DILocation(line: 498, column: 4, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2643, file: !1, line: 497, column: 9)
!2647 = !DILocation(line: 499, column: 4, scope: !2646)
!2648 = !DILocation(line: 500, column: 2, scope: !2646)
!2649 = !DILocation(line: 502, column: 28, scope: !2643)
!2650 = !DILocation(line: 502, column: 2, scope: !2643)
!2651 = distinct !{!2651, !2634, !2652}
!2652 = !DILocation(line: 503, column: 5, scope: !2625)
!2653 = !DILocation(line: 504, column: 8, scope: !2609)
!2654 = !DILocation(line: 504, column: 3, scope: !2609)
!2655 = !DILocation(line: 504, column: 32, scope: !2609)
!2656 = !DILocation(line: 507, column: 7, scope: !2657)
!2657 = distinct !DILexicalBlock(scope: !2609, file: !1, line: 507, column: 7)
!2658 = !DILocation(line: 507, column: 7, scope: !2609)
!2659 = !DILocation(line: 509, column: 50, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2657, file: !1, line: 508, column: 5)
!2661 = !DILocation(line: 509, column: 7, scope: !2660)
!2662 = !DILocation(line: 510, column: 40, scope: !2660)
!2663 = !DILocation(line: 510, column: 7, scope: !2660)
!2664 = !DILocation(line: 511, column: 5, scope: !2660)
!2665 = !DILocation(line: 512, column: 1, scope: !2609)
!2666 = distinct !DISubprogram(name: "gimple_vdef", scope: !255, file: !255, line: 1375, type: !2667, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2669)
!2667 = !DISubroutineType(types: !2668)
!2668 = !{!381, !2363}
!2669 = !{!2670}
!2670 = !DILocalVariable(name: "g", arg: 1, scope: !2666, file: !255, line: 1375, type: !2363)
!2671 = !DILocation(line: 0, scope: !2666)
!2672 = !DILocation(line: 1377, column: 8, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2666, file: !255, line: 1377, column: 7)
!2674 = !DILocation(line: 1377, column: 7, scope: !2666)
!2675 = !DILocation(line: 1379, column: 23, scope: !2666)
!2676 = !DILocation(line: 1379, column: 3, scope: !2666)
!2677 = !DILocation(line: 1380, column: 1, scope: !2666)
!2678 = distinct !DISubprogram(name: "kill_virtual_exprs", scope: !1, file: !1, line: 541, type: !2679, scopeLine: 542, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2681)
!2679 = !DISubroutineType(types: !2680)
!2680 = !{null, !2018}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "tab", arg: 1, scope: !2678, file: !1, line: 541, type: !2018)
!2683 = !DILocation(line: 0, scope: !2678)
!2684 = !DILocation(line: 543, column: 19, scope: !2678)
!2685 = !DILocation(line: 543, column: 3, scope: !2678)
!2686 = !DILocation(line: 544, column: 1, scope: !2678)
!2687 = distinct !DISubprogram(name: "gsi_next", scope: !255, file: !255, line: 4485, type: !2688, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2691)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{null, !2690}
!2690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2691 = !{!2692}
!2692 = !DILocalVariable(name: "i", arg: 1, scope: !2687, file: !255, line: 4485, type: !2690)
!2693 = !DILocation(line: 0, scope: !2687)
!2694 = !DILocation(line: 4487, column: 15, scope: !2687)
!2695 = !DILocation(line: 4487, column: 20, scope: !2687)
!2696 = !DILocation(line: 4487, column: 10, scope: !2687)
!2697 = !DILocation(line: 4488, column: 1, scope: !2687)
!2698 = distinct !DISubprogram(name: "bb_seq", scope: !255, file: !255, line: 237, type: !2699, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2704)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!664, !2701}
!2701 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !382, line: 112, baseType: !2702)
!2702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2703, size: 64)
!2703 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!2704 = !{!2705}
!2705 = !DILocalVariable(name: "bb", arg: 1, scope: !2698, file: !255, line: 237, type: !2701)
!2706 = !DILocation(line: 0, scope: !2698)
!2707 = !DILocation(line: 239, column: 17, scope: !2698)
!2708 = !DILocation(line: 239, column: 23, scope: !2698)
!2709 = !DILocation(line: 239, column: 33, scope: !2698)
!2710 = !DILocation(line: 239, column: 43, scope: !2698)
!2711 = !DILocation(line: 239, column: 36, scope: !2698)
!2712 = !DILocation(line: 239, column: 10, scope: !2698)
!2713 = !DILocation(line: 239, column: 68, scope: !2698)
!2714 = !DILocation(line: 239, column: 3, scope: !2698)
!2715 = distinct !DISubprogram(name: "gimple_seq_first", scope: !255, file: !255, line: 159, type: !2716, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2721)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{!669, !2718}
!2718 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !382, line: 67, baseType: !2719)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!2721 = !{!2722}
!2722 = !DILocalVariable(name: "s", arg: 1, scope: !2715, file: !255, line: 159, type: !2718)
!2723 = !DILocation(line: 0, scope: !2715)
!2724 = !DILocation(line: 161, column: 10, scope: !2715)
!2725 = !DILocation(line: 161, column: 17, scope: !2715)
!2726 = !DILocation(line: 161, column: 3, scope: !2715)
!2727 = distinct !DISubprogram(name: "gimple_code", scope: !255, file: !255, line: 1052, type: !2728, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2730)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!254, !2363}
!2730 = !{!2731}
!2731 = !DILocalVariable(name: "g", arg: 1, scope: !2727, file: !255, line: 1052, type: !2363)
!2732 = !DILocation(line: 0, scope: !2727)
!2733 = !DILocation(line: 1054, column: 20, scope: !2727)
!2734 = !DILocation(line: 1054, column: 3, scope: !2727)
!2735 = distinct !DISubprogram(name: "is_gimple_assign", scope: !255, file: !255, line: 1677, type: !2361, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2736)
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "gs", arg: 1, scope: !2735, file: !255, line: 1677, type: !2363)
!2738 = !DILocation(line: 0, scope: !2735)
!2739 = !DILocation(line: 1679, column: 10, scope: !2735)
!2740 = !DILocation(line: 1679, column: 27, scope: !2735)
!2741 = !DILocation(line: 1679, column: 3, scope: !2735)
!2742 = distinct !DISubprogram(name: "single_ssa_tree_operand", scope: !2456, file: !2456, line: 803, type: !2743, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2745)
!2743 = !DISubroutineType(types: !2744)
!2744 = !{!381, !674, !328}
!2745 = !{!2746, !2747, !2748, !2749}
!2746 = !DILocalVariable(name: "stmt", arg: 1, scope: !2742, file: !2456, line: 803, type: !674)
!2747 = !DILocalVariable(name: "flags", arg: 2, scope: !2742, file: !2456, line: 803, type: !328)
!2748 = !DILocalVariable(name: "var", scope: !2742, file: !2456, line: 805, type: !381)
!2749 = !DILocalVariable(name: "iter", scope: !2742, file: !2456, line: 806, type: !2115)
!2750 = !DILocation(line: 0, scope: !2742)
!2751 = !DILocation(line: 806, column: 3, scope: !2742)
!2752 = !DILocation(line: 808, column: 9, scope: !2742)
!2753 = !DILocation(line: 809, column: 7, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2742, file: !2456, line: 809, column: 7)
!2755 = !DILocation(line: 809, column: 7, scope: !2742)
!2756 = !DILocation(line: 811, column: 3, scope: !2742)
!2757 = !DILocation(line: 812, column: 7, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2742, file: !2456, line: 812, column: 7)
!2759 = !DILocation(line: 815, column: 1, scope: !2742)
!2760 = distinct !DISubprogram(name: "single_imm_use", scope: !2456, file: !2456, line: 373, type: !2761, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2768)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!327, !2763, !2766, !2767}
!2763 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !382, line: 59, baseType: !2764)
!2764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2765, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!2766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!2767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!2768 = !{!2769, !2770, !2771, !2772, !2776}
!2769 = !DILocalVariable(name: "var", arg: 1, scope: !2760, file: !2456, line: 373, type: !2763)
!2770 = !DILocalVariable(name: "use_p", arg: 2, scope: !2760, file: !2456, line: 373, type: !2766)
!2771 = !DILocalVariable(name: "stmt", arg: 3, scope: !2760, file: !2456, line: 373, type: !2767)
!2772 = !DILocalVariable(name: "ptr", scope: !2760, file: !2456, line: 375, type: !2773)
!2773 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2774)
!2774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2775, size: 64)
!2775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1556)
!2776 = !DILabel(scope: !2777, name: "return_false", file: !2456, line: 380)
!2777 = distinct !DILexicalBlock(scope: !2778, file: !2456, line: 379, column: 5)
!2778 = distinct !DILexicalBlock(scope: !2760, file: !2456, line: 378, column: 7)
!2779 = !DILocation(line: 0, scope: !2760)
!2780 = !DILocation(line: 375, column: 42, scope: !2760)
!2781 = !DILocation(line: 378, column: 19, scope: !2778)
!2782 = !DILocation(line: 378, column: 11, scope: !2778)
!2783 = !DILocation(line: 378, column: 7, scope: !2760)
!2784 = !DILocation(line: 380, column: 5, scope: !2777)
!2785 = !DILocation(line: 381, column: 14, scope: !2777)
!2786 = !DILocation(line: 382, column: 13, scope: !2777)
!2787 = !DILocation(line: 383, column: 7, scope: !2777)
!2788 = !DILocation(line: 387, column: 25, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2760, file: !2456, line: 387, column: 7)
!2790 = !DILocation(line: 387, column: 11, scope: !2789)
!2791 = !DILocation(line: 387, column: 7, scope: !2760)
!2792 = !DILocation(line: 389, column: 29, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2794, file: !2456, line: 389, column: 11)
!2794 = distinct !DILexicalBlock(scope: !2789, file: !2456, line: 388, column: 5)
!2795 = !DILocation(line: 389, column: 12, scope: !2793)
!2796 = !DILocation(line: 389, column: 11, scope: !2794)
!2797 = !DILocation(line: 391, column: 18, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !2456, line: 390, column: 2)
!2799 = !DILocation(line: 391, column: 11, scope: !2798)
!2800 = !DILocation(line: 392, column: 17, scope: !2798)
!2801 = !DILocation(line: 392, column: 27, scope: !2798)
!2802 = !DILocation(line: 392, column: 10, scope: !2798)
!2803 = !DILocation(line: 393, column: 4, scope: !2798)
!2804 = !DILocation(line: 400, column: 8, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2760, file: !2456, line: 400, column: 7)
!2806 = !DILocation(line: 400, column: 7, scope: !2760)
!2807 = !DILocation(line: 403, column: 10, scope: !2760)
!2808 = !DILocation(line: 403, column: 3, scope: !2760)
!2809 = !DILocation(line: 404, column: 1, scope: !2760)
!2810 = distinct !DISubprogram(name: "gimple_bb", scope: !255, file: !255, line: 1112, type: !2811, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{!638, !2363}
!2813 = !{!2814}
!2814 = !DILocalVariable(name: "g", arg: 1, scope: !2810, file: !255, line: 1112, type: !2363)
!2815 = !DILocation(line: 0, scope: !2810)
!2816 = !DILocation(line: 1114, column: 20, scope: !2810)
!2817 = !DILocation(line: 1114, column: 3, scope: !2810)
!2818 = distinct !DISubprogram(name: "gimple_location", scope: !255, file: !255, line: 1139, type: !2819, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2821)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!488, !2363}
!2821 = !{!2822}
!2822 = !DILocalVariable(name: "g", arg: 1, scope: !2818, file: !255, line: 1139, type: !2363)
!2823 = !DILocation(line: 0, scope: !2818)
!2824 = !DILocation(line: 1141, column: 20, scope: !2818)
!2825 = !DILocation(line: 1141, column: 3, scope: !2818)
!2826 = distinct !DISubprogram(name: "gimple_block", scope: !255, file: !255, line: 1121, type: !2667, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2827)
!2827 = !{!2828}
!2828 = !DILocalVariable(name: "g", arg: 1, scope: !2826, file: !255, line: 1121, type: !2363)
!2829 = !DILocation(line: 0, scope: !2826)
!2830 = !DILocation(line: 1123, column: 20, scope: !2826)
!2831 = !DILocation(line: 1123, column: 3, scope: !2826)
!2832 = distinct !DISubprogram(name: "gimple_references_memory_p", scope: !255, file: !255, line: 1499, type: !2371, scopeLine: 1500, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2833)
!2833 = !{!2834}
!2834 = !DILocalVariable(name: "stmt", arg: 1, scope: !2832, file: !255, line: 1499, type: !674)
!2835 = !DILocation(line: 0, scope: !2832)
!2836 = !DILocation(line: 1501, column: 10, scope: !2832)
!2837 = !DILocation(line: 1501, column: 36, scope: !2832)
!2838 = !DILocation(line: 1501, column: 39, scope: !2832)
!2839 = !DILocation(line: 1501, column: 3, scope: !2832)
!2840 = distinct !DISubprogram(name: "gimple_expr_type", scope: !255, file: !255, line: 4366, type: !2667, scopeLine: 4367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2841)
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "stmt", arg: 1, scope: !2840, file: !255, line: 4366, type: !2363)
!2843 = !DILocalVariable(name: "code", scope: !2840, file: !255, line: 4368, type: !254)
!2844 = !DILocalVariable(name: "type", scope: !2845, file: !255, line: 4372, type: !381)
!2845 = distinct !DILexicalBlock(scope: !2846, file: !255, line: 4371, column: 5)
!2846 = distinct !DILexicalBlock(scope: !2840, file: !255, line: 4370, column: 7)
!2847 = !DILocation(line: 0, scope: !2840)
!2848 = !DILocation(line: 4368, column: 27, scope: !2840)
!2849 = !DILocation(line: 4370, column: 29, scope: !2846)
!2850 = !DILocation(line: 4378, column: 9, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2845, file: !255, line: 4377, column: 11)
!2852 = !DILocation(line: 0, scope: !2845)
!2853 = !DILocation(line: 4378, column: 2, scope: !2851)
!2854 = !DILocation(line: 4380, column: 10, scope: !2851)
!2855 = !DILocation(line: 4380, column: 2, scope: !2851)
!2856 = !DILocation(line: 4383, column: 13, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2851, file: !255, line: 4381, column: 4)
!2858 = !DILocation(line: 4384, column: 6, scope: !2857)
!2859 = !DILocation(line: 4388, column: 13, scope: !2857)
!2860 = !DILocation(line: 4389, column: 6, scope: !2857)
!2861 = !DILocation(line: 4394, column: 12, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2846, file: !255, line: 4393, column: 12)
!2863 = !DILocation(line: 4394, column: 5, scope: !2862)
!2864 = !DILocation(line: 4396, column: 12, scope: !2862)
!2865 = !DILocation(line: 4396, column: 5, scope: !2862)
!2866 = !DILocation(line: 0, scope: !2846)
!2867 = !DILocation(line: 4397, column: 1, scope: !2840)
!2868 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !255, file: !255, line: 1815, type: !2869, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2871)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!3, !2363}
!2871 = !{!2872, !2873}
!2872 = !DILocalVariable(name: "gs", arg: 1, scope: !2868, file: !255, line: 1815, type: !2363)
!2873 = !DILocalVariable(name: "code", scope: !2868, file: !255, line: 1817, type: !3)
!2874 = !DILocation(line: 0, scope: !2868)
!2875 = !DILocation(line: 1820, column: 10, scope: !2868)
!2876 = !DILocation(line: 1821, column: 7, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2868, file: !255, line: 1821, column: 7)
!2878 = !DILocation(line: 1821, column: 35, scope: !2877)
!2879 = !DILocation(line: 1821, column: 7, scope: !2868)
!2880 = !DILocation(line: 1822, column: 12, scope: !2877)
!2881 = !DILocation(line: 1822, column: 5, scope: !2877)
!2882 = !DILocation(line: 1824, column: 3, scope: !2868)
!2883 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !255, file: !255, line: 1727, type: !2667, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2884)
!2884 = !{!2885}
!2885 = !DILocalVariable(name: "gs", arg: 1, scope: !2883, file: !255, line: 1727, type: !2363)
!2886 = !DILocation(line: 0, scope: !2883)
!2887 = !DILocation(line: 1730, column: 10, scope: !2883)
!2888 = !DILocation(line: 1730, column: 3, scope: !2883)
!2889 = distinct !DISubprogram(name: "is_gimple_call", scope: !255, file: !255, line: 1870, type: !2361, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2890)
!2890 = !{!2891}
!2891 = !DILocalVariable(name: "gs", arg: 1, scope: !2889, file: !255, line: 1870, type: !2363)
!2892 = !DILocation(line: 0, scope: !2889)
!2893 = !DILocation(line: 1872, column: 10, scope: !2889)
!2894 = !DILocation(line: 1872, column: 27, scope: !2889)
!2895 = !DILocation(line: 1872, column: 3, scope: !2889)
!2896 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !255, file: !255, line: 1283, type: !2361, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2897)
!2897 = !{!2898}
!2898 = !DILocalVariable(name: "g", arg: 1, scope: !2896, file: !255, line: 1283, type: !2363)
!2899 = !DILocation(line: 0, scope: !2896)
!2900 = !DILocation(line: 1285, column: 10, scope: !2896)
!2901 = !DILocation(line: 1285, column: 26, scope: !2896)
!2902 = !DILocation(line: 1285, column: 43, scope: !2896)
!2903 = !DILocation(line: 1285, column: 46, scope: !2896)
!2904 = !DILocation(line: 1285, column: 62, scope: !2896)
!2905 = !DILocation(line: 1285, column: 3, scope: !2896)
!2906 = distinct !DISubprogram(name: "gimple_vuse", scope: !255, file: !255, line: 1365, type: !2667, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2907)
!2907 = !{!2908}
!2908 = !DILocalVariable(name: "g", arg: 1, scope: !2906, file: !255, line: 1365, type: !2363)
!2909 = !DILocation(line: 0, scope: !2906)
!2910 = !DILocation(line: 1367, column: 8, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2906, file: !255, line: 1367, column: 7)
!2912 = !DILocation(line: 1367, column: 7, scope: !2906)
!2913 = !DILocation(line: 1369, column: 23, scope: !2906)
!2914 = !DILocation(line: 1369, column: 3, scope: !2906)
!2915 = !DILocation(line: 1370, column: 1, scope: !2906)
!2916 = distinct !DISubprogram(name: "gimple_call_return_type", scope: !255, file: !255, line: 1966, type: !2667, scopeLine: 1967, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2917)
!2917 = !{!2918, !2919, !2920}
!2918 = !DILocalVariable(name: "gs", arg: 1, scope: !2916, file: !255, line: 1966, type: !2363)
!2919 = !DILocalVariable(name: "fn", scope: !2916, file: !255, line: 1968, type: !381)
!2920 = !DILocalVariable(name: "type", scope: !2916, file: !255, line: 1969, type: !381)
!2921 = !DILocation(line: 0, scope: !2916)
!2922 = !DILocation(line: 1968, column: 13, scope: !2916)
!2923 = !DILocation(line: 1969, column: 15, scope: !2916)
!2924 = !DILocation(line: 1972, column: 10, scope: !2916)
!2925 = !DILocation(line: 1976, column: 10, scope: !2916)
!2926 = !DILocation(line: 1976, column: 3, scope: !2916)
!2927 = distinct !DISubprogram(name: "gimple_call_fn", scope: !255, file: !255, line: 1911, type: !2667, scopeLine: 1912, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2928)
!2928 = !{!2929}
!2929 = !DILocalVariable(name: "gs", arg: 1, scope: !2927, file: !255, line: 1911, type: !2363)
!2930 = !DILocation(line: 0, scope: !2927)
!2931 = !DILocation(line: 1914, column: 10, scope: !2927)
!2932 = !DILocation(line: 1914, column: 3, scope: !2927)
!2933 = distinct !DISubprogram(name: "gimple_op", scope: !255, file: !255, line: 1631, type: !2934, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2936)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!381, !2363, !5}
!2936 = !{!2937, !2938}
!2937 = !DILocalVariable(name: "gs", arg: 1, scope: !2933, file: !255, line: 1631, type: !2363)
!2938 = !DILocalVariable(name: "i", arg: 2, scope: !2933, file: !255, line: 1631, type: !5)
!2939 = !DILocation(line: 0, scope: !2933)
!2940 = !DILocation(line: 1633, column: 7, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2933, file: !255, line: 1633, column: 7)
!2942 = !DILocation(line: 1633, column: 7, scope: !2933)
!2943 = !DILocation(line: 1638, column: 14, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2941, file: !255, line: 1634, column: 5)
!2945 = !DILocation(line: 1638, column: 7, scope: !2944)
!2946 = !DILocation(line: 0, scope: !2941)
!2947 = !DILocation(line: 1642, column: 1, scope: !2933)
!2948 = distinct !DISubprogram(name: "gimple_has_ops", scope: !255, file: !255, line: 1274, type: !2361, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2949)
!2949 = !{!2950}
!2950 = !DILocalVariable(name: "g", arg: 1, scope: !2948, file: !255, line: 1274, type: !2363)
!2951 = !DILocation(line: 0, scope: !2948)
!2952 = !DILocation(line: 1276, column: 10, scope: !2948)
!2953 = !DILocation(line: 1276, column: 26, scope: !2948)
!2954 = !DILocation(line: 1276, column: 41, scope: !2948)
!2955 = !DILocation(line: 1276, column: 44, scope: !2948)
!2956 = !DILocation(line: 1276, column: 60, scope: !2948)
!2957 = !DILocation(line: 1276, column: 3, scope: !2948)
!2958 = distinct !DISubprogram(name: "gimple_ops", scope: !255, file: !255, line: 1614, type: !2959, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2961)
!2959 = !DISubroutineType(types: !2960)
!2960 = !{!708, !674}
!2961 = !{!2962, !2963}
!2962 = !DILocalVariable(name: "gs", arg: 1, scope: !2958, file: !255, line: 1614, type: !674)
!2963 = !DILocalVariable(name: "off", scope: !2958, file: !255, line: 1616, type: !818)
!2964 = !DILocation(line: 0, scope: !2958)
!2965 = !DILocation(line: 1621, column: 28, scope: !2958)
!2966 = !DILocation(line: 1621, column: 9, scope: !2958)
!2967 = !DILocation(line: 1622, column: 3, scope: !2958)
!2968 = !DILocation(line: 1624, column: 20, scope: !2958)
!2969 = !DILocation(line: 1624, column: 32, scope: !2958)
!2970 = !DILocation(line: 1624, column: 10, scope: !2958)
!2971 = !DILocation(line: 1624, column: 3, scope: !2958)
!2972 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !255, file: !255, line: 1073, type: !2973, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2975)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!293, !674}
!2975 = !{!2976}
!2976 = !DILocalVariable(name: "gs", arg: 1, scope: !2972, file: !255, line: 1073, type: !674)
!2977 = !DILocation(line: 0, scope: !2972)
!2978 = !DILocation(line: 1075, column: 24, scope: !2972)
!2979 = !DILocation(line: 1075, column: 10, scope: !2972)
!2980 = !DILocation(line: 1075, column: 3, scope: !2972)
!2981 = distinct !DISubprogram(name: "gss_for_code", scope: !255, file: !255, line: 1061, type: !2982, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!293, !254}
!2984 = !{!2985}
!2985 = !DILocalVariable(name: "code", arg: 1, scope: !2981, file: !255, line: 1061, type: !254)
!2986 = !DILocation(line: 0, scope: !2981)
!2987 = !DILocation(line: 1066, column: 10, scope: !2981)
!2988 = !DILocation(line: 1066, column: 3, scope: !2981)
!2989 = distinct !DISubprogram(name: "gimple_expr_code", scope: !255, file: !255, line: 1438, type: !2869, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2990)
!2990 = !{!2991, !2992}
!2991 = !DILocalVariable(name: "stmt", arg: 1, scope: !2989, file: !255, line: 1438, type: !2363)
!2992 = !DILocalVariable(name: "code", scope: !2989, file: !255, line: 1440, type: !254)
!2993 = !DILocation(line: 0, scope: !2989)
!2994 = !DILocation(line: 1440, column: 27, scope: !2989)
!2995 = !DILocation(line: 1441, column: 29, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2989, file: !255, line: 1441, column: 7)
!2997 = !DILocation(line: 1442, column: 42, scope: !2996)
!2998 = !DILocation(line: 1442, column: 5, scope: !2996)
!2999 = !DILocation(line: 1446, column: 5, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2996, file: !255, line: 1443, column: 12)
!3001 = !DILocation(line: 1448, column: 5, scope: !2989)
!3002 = !DILocation(line: 1450, column: 1, scope: !2989)
!3003 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !255, file: !255, line: 1686, type: !3004, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3006)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!319, !3}
!3006 = !{!3007}
!3007 = !DILocalVariable(name: "code", arg: 1, scope: !3003, file: !255, line: 1686, type: !3)
!3008 = !DILocation(line: 0, scope: !3003)
!3009 = !DILocation(line: 1688, column: 34, scope: !3003)
!3010 = !DILocation(line: 1688, column: 10, scope: !3003)
!3011 = !DILocation(line: 1688, column: 3, scope: !3003)
!3012 = distinct !DISubprogram(name: "op_iter_init", scope: !2456, file: !2456, line: 742, type: !3013, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3015)
!3013 = !DISubroutineType(types: !3014)
!3014 = !{null, !2459, !674, !328}
!3015 = !{!3016, !3017, !3018}
!3016 = !DILocalVariable(name: "ptr", arg: 1, scope: !3012, file: !2456, line: 742, type: !2459)
!3017 = !DILocalVariable(name: "stmt", arg: 2, scope: !3012, file: !2456, line: 742, type: !674)
!3018 = !DILocalVariable(name: "flags", arg: 3, scope: !3012, file: !2456, line: 742, type: !328)
!3019 = !DILocation(line: 0, scope: !3012)
!3020 = !DILocation(line: 746, column: 3, scope: !3012)
!3021 = !DILocation(line: 748, column: 22, scope: !3012)
!3022 = !DILocation(line: 748, column: 15, scope: !3012)
!3023 = !DILocation(line: 748, column: 52, scope: !3012)
!3024 = !DILocation(line: 748, column: 8, scope: !3012)
!3025 = !DILocation(line: 748, column: 13, scope: !3012)
!3026 = !DILocation(line: 749, column: 15, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !3012, file: !2456, line: 749, column: 7)
!3028 = !DILocation(line: 750, column: 7, scope: !3027)
!3029 = !DILocation(line: 750, column: 10, scope: !3027)
!3030 = !DILocation(line: 751, column: 7, scope: !3027)
!3031 = !DILocation(line: 751, column: 10, scope: !3027)
!3032 = !DILocation(line: 751, column: 29, scope: !3027)
!3033 = !DILocation(line: 749, column: 7, scope: !3012)
!3034 = !DILocation(line: 752, column: 22, scope: !3027)
!3035 = !DILocation(line: 752, column: 28, scope: !3027)
!3036 = !DILocation(line: 752, column: 15, scope: !3027)
!3037 = !DILocation(line: 752, column: 5, scope: !3027)
!3038 = !DILocation(line: 753, column: 22, scope: !3012)
!3039 = !DILocation(line: 753, column: 15, scope: !3012)
!3040 = !DILocation(line: 753, column: 52, scope: !3012)
!3041 = !DILocation(line: 753, column: 8, scope: !3012)
!3042 = !DILocation(line: 753, column: 13, scope: !3012)
!3043 = !DILocation(line: 754, column: 15, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3012, file: !2456, line: 754, column: 7)
!3045 = !DILocation(line: 755, column: 7, scope: !3044)
!3046 = !DILocation(line: 755, column: 10, scope: !3044)
!3047 = !DILocation(line: 756, column: 7, scope: !3044)
!3048 = !DILocation(line: 756, column: 10, scope: !3044)
!3049 = !DILocation(line: 756, column: 29, scope: !3044)
!3050 = !DILocation(line: 754, column: 7, scope: !3012)
!3051 = !DILocation(line: 757, column: 22, scope: !3044)
!3052 = !DILocation(line: 757, column: 28, scope: !3044)
!3053 = !DILocation(line: 757, column: 15, scope: !3044)
!3054 = !DILocation(line: 757, column: 5, scope: !3044)
!3055 = !DILocation(line: 758, column: 8, scope: !3012)
!3056 = !DILocation(line: 758, column: 13, scope: !3012)
!3057 = !DILocation(line: 760, column: 8, scope: !3012)
!3058 = !DILocation(line: 760, column: 14, scope: !3012)
!3059 = !DILocation(line: 761, column: 8, scope: !3012)
!3060 = !DILocation(line: 761, column: 16, scope: !3012)
!3061 = !DILocation(line: 762, column: 8, scope: !3012)
!3062 = !DILocation(line: 762, column: 17, scope: !3012)
!3063 = !DILocation(line: 763, column: 1, scope: !3012)
!3064 = distinct !DISubprogram(name: "gimple_def_ops", scope: !255, file: !255, line: 1292, type: !3065, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3067)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{!703, !2363}
!3067 = !{!3068}
!3068 = !DILocalVariable(name: "g", arg: 1, scope: !3064, file: !255, line: 1292, type: !2363)
!3069 = !DILocation(line: 0, scope: !3064)
!3070 = !DILocation(line: 1294, column: 8, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3064, file: !255, line: 1294, column: 7)
!3072 = !DILocation(line: 1294, column: 7, scope: !3064)
!3073 = !DILocation(line: 1296, column: 26, scope: !3064)
!3074 = !DILocation(line: 1296, column: 3, scope: !3064)
!3075 = !DILocation(line: 1297, column: 1, scope: !3064)
!3076 = distinct !DISubprogram(name: "gimple_use_ops", scope: !255, file: !255, line: 1313, type: !3077, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3079)
!3077 = !DISubroutineType(types: !3078)
!3078 = !{!710, !2363}
!3079 = !{!3080}
!3080 = !DILocalVariable(name: "g", arg: 1, scope: !3076, file: !255, line: 1313, type: !2363)
!3081 = !DILocation(line: 0, scope: !3076)
!3082 = !DILocation(line: 1315, column: 8, scope: !3083)
!3083 = distinct !DILexicalBlock(scope: !3076, file: !255, line: 1315, column: 7)
!3084 = !DILocation(line: 1315, column: 7, scope: !3076)
!3085 = !DILocation(line: 1317, column: 26, scope: !3076)
!3086 = !DILocation(line: 1317, column: 3, scope: !3076)
!3087 = !DILocation(line: 1318, column: 1, scope: !3076)
!3088 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2456, file: !2456, line: 427, type: !3089, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3091)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{!381, !1554}
!3091 = !{!3092}
!3092 = !DILocalVariable(name: "use", arg: 1, scope: !3088, file: !2456, line: 427, type: !1554)
!3093 = !DILocation(line: 0, scope: !3088)
!3094 = !DILocation(line: 429, column: 17, scope: !3088)
!3095 = !DILocation(line: 429, column: 10, scope: !3088)
!3096 = !DILocation(line: 429, column: 3, scope: !3088)
!3097 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2456, file: !2456, line: 434, type: !3098, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3101)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{!381, !3100}
!3100 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !248, line: 27, baseType: !708)
!3101 = !{!3102}
!3102 = !DILocalVariable(name: "def", arg: 1, scope: !3097, file: !2456, line: 434, type: !3100)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 436, column: 10, scope: !3097)
!3105 = !DILocation(line: 436, column: 3, scope: !3097)
!3106 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !1036, file: !1036, line: 224, type: !3107, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3114)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{null, !3109, !3110, !5, !3113}
!3109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2532, size: 64)
!3110 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !382, line: 48, baseType: !3111)
!3111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3112, size: 64)
!3112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!3113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!3114 = !{!3115, !3116, !3117, !3118}
!3115 = !DILocalVariable(name: "bi", arg: 1, scope: !3106, file: !1036, line: 224, type: !3109)
!3116 = !DILocalVariable(name: "map", arg: 2, scope: !3106, file: !1036, line: 224, type: !3110)
!3117 = !DILocalVariable(name: "start_bit", arg: 3, scope: !3106, file: !1036, line: 225, type: !5)
!3118 = !DILocalVariable(name: "bit_no", arg: 4, scope: !3106, file: !1036, line: 225, type: !3113)
!3119 = !DILocation(line: 0, scope: !3106)
!3120 = !DILocation(line: 227, column: 19, scope: !3106)
!3121 = !DILocation(line: 227, column: 12, scope: !3106)
!3122 = !DILocation(line: 228, column: 7, scope: !3106)
!3123 = !DILocation(line: 228, column: 12, scope: !3106)
!3124 = !DILocation(line: 0, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3126, file: !1036, line: 233, column: 11)
!3126 = distinct !DILexicalBlock(scope: !3106, file: !1036, line: 232, column: 5)
!3127 = !DILocation(line: 231, column: 3, scope: !3106)
!3128 = !DILocation(line: 233, column: 12, scope: !3125)
!3129 = !DILocation(line: 233, column: 11, scope: !3126)
!3130 = !DILocation(line: 235, column: 13, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3125, file: !1036, line: 234, column: 2)
!3132 = !DILocation(line: 236, column: 4, scope: !3131)
!3133 = !DILocation(line: 239, column: 11, scope: !3126)
!3134 = distinct !{!3134, !3127, !3135}
!3135 = !DILocation(line: 242, column: 5, scope: !3106)
!3136 = !DILocation(line: 245, column: 11, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3106, file: !1036, line: 245, column: 7)
!3138 = !DILocation(line: 245, column: 17, scope: !3137)
!3139 = !DILocation(line: 245, column: 22, scope: !3137)
!3140 = !DILocation(line: 245, column: 7, scope: !3106)
!3141 = !DILocation(line: 246, column: 27, scope: !3137)
!3142 = !DILocation(line: 246, column: 32, scope: !3137)
!3143 = !DILocation(line: 246, column: 5, scope: !3137)
!3144 = !DILocation(line: 249, column: 7, scope: !3106)
!3145 = !DILocation(line: 249, column: 15, scope: !3106)
!3146 = !DILocation(line: 250, column: 14, scope: !3106)
!3147 = !DILocation(line: 251, column: 7, scope: !3106)
!3148 = !DILocation(line: 251, column: 12, scope: !3106)
!3149 = !DILocation(line: 257, column: 16, scope: !3106)
!3150 = !DILocation(line: 257, column: 13, scope: !3106)
!3151 = !DILocation(line: 259, column: 11, scope: !3106)
!3152 = !DILocation(line: 260, column: 1, scope: !3106)
!3153 = distinct !DISubprogram(name: "bmp_iter_set", scope: !1036, file: !1036, line: 393, type: !3154, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!327, !3109, !3113}
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "bi", arg: 1, scope: !3153, file: !1036, line: 393, type: !3109)
!3158 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3153, file: !1036, line: 393, type: !3113)
!3159 = !DILabel(scope: !3160, name: "next_bit", file: !1036, line: 398)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !1036, line: 397, column: 5)
!3161 = distinct !DILexicalBlock(scope: !3153, file: !1036, line: 396, column: 7)
!3162 = !DILocation(line: 0, scope: !3153)
!3163 = !DILocation(line: 396, column: 11, scope: !3161)
!3164 = !DILocation(line: 396, column: 7, scope: !3161)
!3165 = !DILocation(line: 396, column: 7, scope: !3153)
!3166 = !DILocation(line: 419, column: 15, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !1036, line: 418, column: 2)
!3168 = distinct !DILexicalBlock(scope: !3153, file: !1036, line: 415, column: 5)
!3169 = !DILocation(line: 399, column: 7, scope: !3160)
!3170 = !DILocation(line: 398, column: 5, scope: !3160)
!3171 = !DILocation(line: 399, column: 20, scope: !3160)
!3172 = !DILocation(line: 399, column: 25, scope: !3160)
!3173 = !DILocation(line: 399, column: 14, scope: !3160)
!3174 = !DILocation(line: 401, column: 13, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3160, file: !1036, line: 400, column: 2)
!3176 = !DILocation(line: 402, column: 12, scope: !3175)
!3177 = distinct !{!3177, !3169, !3178}
!3178 = !DILocation(line: 403, column: 2, scope: !3160)
!3179 = !DILocation(line: 410, column: 15, scope: !3153)
!3180 = !DILocation(line: 410, column: 42, scope: !3153)
!3181 = !DILocation(line: 411, column: 26, scope: !3153)
!3182 = !DILocation(line: 410, column: 11, scope: !3153)
!3183 = !DILocation(line: 412, column: 7, scope: !3153)
!3184 = !DILocation(line: 412, column: 14, scope: !3153)
!3185 = !DILocation(line: 0, scope: !3168)
!3186 = !DILocation(line: 414, column: 3, scope: !3153)
!3187 = !DILocation(line: 417, column: 7, scope: !3168)
!3188 = !DILocation(line: 417, column: 18, scope: !3168)
!3189 = !DILocation(line: 417, column: 26, scope: !3168)
!3190 = !DILocation(line: 419, column: 13, scope: !3167)
!3191 = !DILocation(line: 420, column: 8, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3167, file: !1036, line: 420, column: 8)
!3193 = !DILocation(line: 420, column: 8, scope: !3167)
!3194 = !DILocation(line: 422, column: 12, scope: !3167)
!3195 = !DILocation(line: 423, column: 15, scope: !3167)
!3196 = distinct !{!3196, !3187, !3197}
!3197 = !DILocation(line: 424, column: 2, scope: !3168)
!3198 = !DILocation(line: 427, column: 28, scope: !3168)
!3199 = !DILocation(line: 427, column: 16, scope: !3168)
!3200 = !DILocation(line: 428, column: 12, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3168, file: !1036, line: 428, column: 11)
!3202 = !DILocation(line: 428, column: 11, scope: !3168)
!3203 = !DILocation(line: 430, column: 27, scope: !3168)
!3204 = !DILocation(line: 430, column: 32, scope: !3168)
!3205 = !DILocation(line: 430, column: 15, scope: !3168)
!3206 = !DILocation(line: 431, column: 19, scope: !3168)
!3207 = distinct !{!3207, !3186, !3208}
!3208 = !DILocation(line: 432, column: 5, scope: !3153)
!3209 = !DILocation(line: 433, column: 1, scope: !3153)
!3210 = distinct !DISubprogram(name: "remove_from_partition_kill_list", scope: !1, file: !1, line: 293, type: !3211, scopeLine: 294, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3213)
!3211 = !DISubroutineType(types: !3212)
!3212 = !{null, !2018, !328, !328}
!3213 = !{!3214, !3215, !3216}
!3214 = !DILocalVariable(name: "tab", arg: 1, scope: !3210, file: !1, line: 293, type: !2018)
!3215 = !DILocalVariable(name: "p", arg: 2, scope: !3210, file: !1, line: 293, type: !328)
!3216 = !DILocalVariable(name: "version", arg: 3, scope: !3210, file: !1, line: 293, type: !328)
!3217 = !DILocation(line: 0, scope: !3210)
!3218 = !DILocation(line: 298, column: 26, scope: !3210)
!3219 = !DILocation(line: 298, column: 21, scope: !3210)
!3220 = !DILocation(line: 298, column: 3, scope: !3210)
!3221 = !DILocation(line: 299, column: 7, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3210, file: !1, line: 299, column: 7)
!3223 = !DILocation(line: 299, column: 7, scope: !3210)
!3224 = !DILocation(line: 301, column: 30, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3222, file: !1, line: 300, column: 5)
!3226 = !DILocation(line: 301, column: 7, scope: !3225)
!3227 = !DILocation(line: 302, column: 7, scope: !3225)
!3228 = !DILocation(line: 303, column: 5, scope: !3225)
!3229 = !DILocation(line: 304, column: 1, scope: !3210)
!3230 = distinct !DISubprogram(name: "bmp_iter_next", scope: !1036, file: !1036, line: 382, type: !3231, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3233)
!3231 = !DISubroutineType(types: !3232)
!3232 = !{null, !3109, !3113}
!3233 = !{!3234, !3235}
!3234 = !DILocalVariable(name: "bi", arg: 1, scope: !3230, file: !1036, line: 382, type: !3109)
!3235 = !DILocalVariable(name: "bit_no", arg: 2, scope: !3230, file: !1036, line: 382, type: !3113)
!3236 = !DILocation(line: 0, scope: !3230)
!3237 = !DILocation(line: 384, column: 7, scope: !3230)
!3238 = !DILocation(line: 384, column: 12, scope: !3230)
!3239 = !DILocation(line: 385, column: 11, scope: !3230)
!3240 = !DILocation(line: 386, column: 1, scope: !3230)
!3241 = distinct !DISubprogram(name: "add_dependence", scope: !1, file: !1, line: 313, type: !3242, scopeLine: 314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3244)
!3242 = !DISubroutineType(types: !3243)
!3243 = !{null, !2018, !328, !381}
!3244 = !{!3245, !3246, !3247, !3248, !3249, !3250}
!3245 = !DILocalVariable(name: "tab", arg: 1, scope: !3241, file: !1, line: 313, type: !2018)
!3246 = !DILocalVariable(name: "version", arg: 2, scope: !3241, file: !1, line: 313, type: !328)
!3247 = !DILocalVariable(name: "var", arg: 3, scope: !3241, file: !1, line: 313, type: !381)
!3248 = !DILocalVariable(name: "i", scope: !3241, file: !1, line: 315, type: !328)
!3249 = !DILocalVariable(name: "bi", scope: !3241, file: !1, line: 316, type: !2532)
!3250 = !DILocalVariable(name: "x", scope: !3241, file: !1, line: 317, type: !5)
!3251 = !DILocation(line: 0, scope: !3241)
!3252 = !DILocation(line: 316, column: 3, scope: !3241)
!3253 = !DILocation(line: 317, column: 3, scope: !3241)
!3254 = !DILocation(line: 319, column: 7, scope: !3241)
!3255 = !DILocation(line: 320, column: 7, scope: !3256)
!3256 = distinct !DILexicalBlock(scope: !3241, file: !1, line: 320, column: 7)
!3257 = !DILocation(line: 320, column: 7, scope: !3241)
!3258 = !DILocation(line: 322, column: 12, scope: !3259)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !1, line: 322, column: 11)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 321, column: 5)
!3261 = !DILocation(line: 322, column: 11, scope: !3260)
!3262 = !DILocation(line: 326, column: 4, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3264, file: !1, line: 326, column: 4)
!3264 = distinct !DILexicalBlock(scope: !3259, file: !1, line: 323, column: 9)
!3265 = !DILocation(line: 326, column: 4, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !1, line: 326, column: 4)
!3267 = !DILocation(line: 327, column: 39, scope: !3266)
!3268 = !DILocation(line: 327, column: 6, scope: !3266)
!3269 = distinct !{!3269, !3262, !3270}
!3270 = !DILocation(line: 327, column: 49, scope: !3263)
!3271 = !DILocation(line: 331, column: 14, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3264, file: !1, line: 331, column: 8)
!3273 = !DILocation(line: 331, column: 9, scope: !3272)
!3274 = !DILocation(line: 331, column: 8, scope: !3264)
!3275 = !DILocation(line: 332, column: 45, scope: !3272)
!3276 = !DILocation(line: 332, column: 11, scope: !3272)
!3277 = !DILocation(line: 332, column: 6, scope: !3272)
!3278 = !DILocation(line: 332, column: 43, scope: !3272)
!3279 = !DILocation(line: 333, column: 26, scope: !3264)
!3280 = !DILocation(line: 0, scope: !3264)
!3281 = !DILocation(line: 333, column: 21, scope: !3264)
!3282 = !DILocation(line: 334, column: 12, scope: !3264)
!3283 = !DILocation(line: 333, column: 4, scope: !3264)
!3284 = !DILocation(line: 335, column: 26, scope: !3264)
!3285 = !DILocation(line: 336, column: 12, scope: !3264)
!3286 = !DILocation(line: 335, column: 4, scope: !3264)
!3287 = !DILocation(line: 338, column: 23, scope: !3264)
!3288 = !DILocation(line: 338, column: 4, scope: !3264)
!3289 = !DILocation(line: 339, column: 2, scope: !3264)
!3290 = !DILocation(line: 343, column: 34, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3256, file: !1, line: 342, column: 5)
!3292 = !DILocation(line: 343, column: 11, scope: !3291)
!3293 = !DILocation(line: 351, column: 16, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3291, file: !1, line: 351, column: 11)
!3295 = !DILocation(line: 351, column: 11, scope: !3294)
!3296 = !DILocation(line: 351, column: 31, scope: !3294)
!3297 = !DILocation(line: 351, column: 11, scope: !3291)
!3298 = !DILocation(line: 353, column: 4, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3294, file: !1, line: 352, column: 9)
!3300 = !DILocation(line: 354, column: 4, scope: !3299)
!3301 = !DILocation(line: 355, column: 2, scope: !3299)
!3302 = !DILocation(line: 357, column: 1, scope: !3241)
!3303 = distinct !DISubprogram(name: "make_dependent_on_partition", scope: !1, file: !1, line: 266, type: !3211, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3304)
!3304 = !{!3305, !3306, !3307}
!3305 = !DILocalVariable(name: "tab", arg: 1, scope: !3303, file: !1, line: 266, type: !2018)
!3306 = !DILocalVariable(name: "version", arg: 2, scope: !3303, file: !1, line: 266, type: !328)
!3307 = !DILocalVariable(name: "p", arg: 3, scope: !3303, file: !1, line: 266, type: !328)
!3308 = !DILocation(line: 0, scope: !3303)
!3309 = !DILocation(line: 268, column: 13, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3303, file: !1, line: 268, column: 7)
!3311 = !DILocation(line: 268, column: 8, scope: !3310)
!3312 = !DILocation(line: 268, column: 7, scope: !3303)
!3313 = !DILocation(line: 269, column: 44, scope: !3310)
!3314 = !DILocation(line: 269, column: 10, scope: !3310)
!3315 = !DILocation(line: 269, column: 5, scope: !3310)
!3316 = !DILocation(line: 269, column: 42, scope: !3310)
!3317 = !DILocation(line: 271, column: 24, scope: !3303)
!3318 = !DILocation(line: 271, column: 19, scope: !3303)
!3319 = !DILocation(line: 271, column: 3, scope: !3303)
!3320 = !DILocation(line: 272, column: 1, scope: !3303)
!3321 = distinct !DISubprogram(name: "add_to_partition_kill_list", scope: !1, file: !1, line: 278, type: !3211, scopeLine: 279, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3322)
!3322 = !{!3323, !3324, !3325}
!3323 = !DILocalVariable(name: "tab", arg: 1, scope: !3321, file: !1, line: 278, type: !2018)
!3324 = !DILocalVariable(name: "p", arg: 2, scope: !3321, file: !1, line: 278, type: !328)
!3325 = !DILocalVariable(name: "ver", arg: 3, scope: !3321, file: !1, line: 278, type: !328)
!3326 = !DILocation(line: 0, scope: !3321)
!3327 = !DILocation(line: 280, column: 13, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3321, file: !1, line: 280, column: 7)
!3329 = !DILocation(line: 280, column: 8, scope: !3328)
!3330 = !DILocation(line: 280, column: 7, scope: !3321)
!3331 = !DILocation(line: 282, column: 27, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3328, file: !1, line: 281, column: 5)
!3333 = !DILocation(line: 282, column: 12, scope: !3332)
!3334 = !DILocation(line: 282, column: 7, scope: !3332)
!3335 = !DILocation(line: 282, column: 25, scope: !3332)
!3336 = !DILocation(line: 283, column: 28, scope: !3332)
!3337 = !DILocation(line: 283, column: 7, scope: !3332)
!3338 = !DILocation(line: 285, column: 24, scope: !3321)
!3339 = !DILocation(line: 285, column: 19, scope: !3321)
!3340 = !DILocation(line: 284, column: 5, scope: !3332)
!3341 = !DILocation(line: 285, column: 3, scope: !3321)
!3342 = !DILocation(line: 286, column: 1, scope: !3321)
!3343 = distinct !DISubprogram(name: "version_to_be_replaced_p", scope: !1, file: !1, line: 254, type: !3344, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3346)
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!327, !2018, !328}
!3346 = !{!3347, !3348}
!3347 = !DILocalVariable(name: "tab", arg: 1, scope: !3343, file: !1, line: 254, type: !2018)
!3348 = !DILocalVariable(name: "version", arg: 2, scope: !3343, file: !1, line: 254, type: !328)
!3349 = !DILocation(line: 0, scope: !3343)
!3350 = !DILocation(line: 256, column: 13, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3343, file: !1, line: 256, column: 7)
!3352 = !DILocation(line: 256, column: 8, scope: !3351)
!3353 = !DILocation(line: 256, column: 7, scope: !3343)
!3354 = !DILocation(line: 258, column: 10, scope: !3343)
!3355 = !DILocation(line: 258, column: 3, scope: !3343)
!3356 = !DILocation(line: 259, column: 1, scope: !3343)
