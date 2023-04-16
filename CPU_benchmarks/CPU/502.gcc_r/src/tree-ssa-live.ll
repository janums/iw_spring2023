; ModuleID = 'tree-ssa-live.bc'
source_filename = "tree-ssa-live.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
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
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.gcc_debug_hooks = type { void (i8*)*, void (i8*)*, void ()*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (i32)*, void (i32, i32)*, void (i32, i32)*, i8 (%union.tree_node*)*, void (i32, i8*, i32, i8)*, void (i32, i8*)*, void (i32, i8*)*, void (i32, i8*)*, void (%union.tree_node*)*, void (i32)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%union.tree_node*, %union.tree_node*, %union.tree_node*, i8)*, void (%union.tree_node*)*, void (%union.tree_node*)*, void (%struct.rtx_def*)*, void (i32)*, void (%struct.rtx_def*)*, void ()*, void (%union.tree_node*)*, void (%union.tree_node*, i32)*, void (%struct.rtx_def*, %struct.rtx_def*)*, void (i32)*, void (%union.tree_node*, %union.tree_node*)*, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct._var_map = type { %struct.partition_def*, i32*, i32*, i32, i32, i32, i32*, %struct.VEC_tree_heap* }
%struct.partition_def = type { i32, [1 x %struct.partition_elem] }
%struct.partition_elem = type { i32, %struct.partition_elem*, i32 }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.bitmap_iterator = type { %struct.bitmap_element_def*, %struct.bitmap_element_def*, i32, i64 }
%struct.var_ann_d = type { i8, i32, %union.tree_node* }
%struct.expanded_location = type { i8*, i32, i32, i8 }
%struct.referenced_var_iterator = type { %struct.htab_iterator }
%struct.htab_iterator = type { %struct.htab*, i8**, i8** }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.pointer_set_t = type opaque
%struct.tree_block = type { %struct.tree_common, i32, i32, %union.tree_node*, %struct.VEC_tree_gc*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node* }
%struct.tree_live_info_d = type { %struct._var_map*, %struct.bitmap_head_def*, %struct.bitmap_head_def**, i32, i32*, i32*, %struct.bitmap_head_def** }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str = private unnamed_addr constant [16 x i8] c"tree-ssa-live.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@current_function_decl = external dso_local local_unnamed_addr global %union.tree_node*, align 8
@optimize = external dso_local local_unnamed_addr global i32, align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Scope blocks after cleanups:\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"\0APartition map \0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Partition %d (\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c" - \00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"%d \00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"\0ALive on entry to BB%d : \00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"\0ALive on exit from BB%d : \00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@bitmap_zero_bits = external dso_local global %struct.bitmap_element_def, align 8
@.str.12 = private unnamed_addr constant [26 x i8] c"\0A%*s{ Scope block #%i%s%s\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [10 x i8] c" (unused)\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c" (abstract)\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c" %s:%i\00", align 1
@.str.17 = private unnamed_addr constant [20 x i8] c" Originating from :\00", align 1
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.18 = private unnamed_addr constant [4 x i8] c"#%i\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" \0A\00", align 1
@.str.20 = private unnamed_addr constant [4 x i8] c"%*s\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c" (nonlocalized)\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"\0A%*s}\0A\00", align 1
@debug_hooks = external dso_local local_unnamed_addr global %struct.gcc_debug_hooks*, align 8
@.str.24 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.25 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@.str.26 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@debug_info_level = external dso_local local_unnamed_addr global i32, align 4
@.str.27 = private unnamed_addr constant [11 x i8] c"artificial\00", align 1
@.str.28 = private unnamed_addr constant [18 x i8] c"./tree-ssa-live.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1570 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1583, metadata !DIExpression()), !dbg !1585
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1584, metadata !DIExpression()), !dbg !1585
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1586
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1587
  ret i32 %call, !dbg !1588
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1589 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1593
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1594
  ret i32 %call, !dbg !1595
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1596 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1651, metadata !DIExpression()), !dbg !1652
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1653
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1653
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1653
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1653
  %cmp = icmp uge i8* %0, %1, !dbg !1653
  %conv1 = zext i1 %cmp to i64, !dbg !1653
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1653
  %tobool = icmp eq i64 %expval, 0, !dbg !1653
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1653

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1653
  br label %cond.end, !dbg !1653

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1653
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1653
  %2 = load i8, i8* %0, align 1, !dbg !1653
  %conv3 = zext i8 %2 to i32, !dbg !1653
  br label %cond.end, !dbg !1653

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1653
  ret i32 %cond, !dbg !1654
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1655 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1657, metadata !DIExpression()), !dbg !1658
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1659
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1659
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1659
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1659
  %cmp = icmp uge i8* %0, %1, !dbg !1659
  %conv1 = zext i1 %cmp to i64, !dbg !1659
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1659
  %tobool = icmp eq i64 %expval, 0, !dbg !1659
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1659

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1659
  br label %cond.end, !dbg !1659

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1659
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1659
  %2 = load i8, i8* %0, align 1, !dbg !1659
  %conv3 = zext i8 %2 to i32, !dbg !1659
  br label %cond.end, !dbg !1659

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1659
  ret i32 %cond, !dbg !1660
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1661 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1662
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1662
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1662
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1662
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1662
  %cmp = icmp uge i8* %1, %2, !dbg !1662
  %conv1 = zext i1 %cmp to i64, !dbg !1662
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1662
  %tobool = icmp eq i64 %expval, 0, !dbg !1662
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1662

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1662
  br label %cond.end, !dbg !1662

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1662
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1662
  %3 = load i8, i8* %1, align 1, !dbg !1662
  %conv3 = zext i8 %3 to i32, !dbg !1662
  br label %cond.end, !dbg !1662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1662
  ret i32 %cond, !dbg !1663
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1664 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1668, metadata !DIExpression()), !dbg !1669
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1670
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1671
  ret i32 %call, !dbg !1672
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1673 {
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

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1682 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1684, metadata !DIExpression()), !dbg !1686
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1685, metadata !DIExpression()), !dbg !1686
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1687
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1687
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1687
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1687
  %cmp = icmp uge i8* %0, %1, !dbg !1687
  %conv1 = zext i1 %cmp to i64, !dbg !1687
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1687
  %tobool = icmp eq i64 %expval, 0, !dbg !1687
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1687

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1687
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1687
  br label %cond.end, !dbg !1687

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1687
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1687
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1687
  store i8 %conv2, i8* %0, align 1, !dbg !1687
  %conv6 = and i32 %__c, 255, !dbg !1687
  br label %cond.end, !dbg !1687

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1687
  ret i32 %cond, !dbg !1688
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1689 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1691, metadata !DIExpression()), !dbg !1692
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1693
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !1693
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1693
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !1693
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !1693
  %cmp = icmp uge i8* %1, %2, !dbg !1693
  %conv1 = zext i1 %cmp to i64, !dbg !1693
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1693
  %tobool = icmp eq i64 %expval, 0, !dbg !1693
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1693

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1693
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !1693
  br label %cond.end, !dbg !1693

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !1693
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1693
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1693
  store i8 %conv4, i8* %1, align 1, !dbg !1693
  %conv6 = and i32 %__c, 255, !dbg !1693
  br label %cond.end, !dbg !1693

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1693
  ret i32 %cond, !dbg !1694
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1695 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !1701, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata i64* %__n, metadata !1702, metadata !DIExpression()), !dbg !1704
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1703, metadata !DIExpression()), !dbg !1704
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !1705
  ret i64 %call, !dbg !1706
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1707 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1709, metadata !DIExpression()), !dbg !1710
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1711
  %0 = load i32, i32* %_flags, align 8, !dbg !1711
  %and = lshr i32 %0, 4, !dbg !1711
  %and.lobit = and i32 %and, 1, !dbg !1711
  ret i32 %and.lobit, !dbg !1712
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1713 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1715, metadata !DIExpression()), !dbg !1716
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !1717
  %0 = load i32, i32* %_flags, align 8, !dbg !1717
  %and = lshr i32 %0, 5, !dbg !1717
  %and.lobit = and i32 %and, 1, !dbg !1717
  ret i32 %and.lobit, !dbg !1718
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !1719 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1722, metadata !DIExpression()), !dbg !1723
  %__c.off = add i32 %__c, 128, !dbg !1724
  %0 = icmp ult i32 %__c.off, 384, !dbg !1724
  br i1 %0, label %cond.true, label %cond.end, !dbg !1724

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !1725
  %1 = load i32*, i32** %call, align 8, !dbg !1726
  %idxprom = sext i32 %__c to i64, !dbg !1727
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1727
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1727
  br label %cond.end, !dbg !1728

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1728
  ret i32 %cond, !dbg !1729
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !1730 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1732, metadata !DIExpression()), !dbg !1733
  %__c.off = add i32 %__c, 128, !dbg !1734
  %0 = icmp ult i32 %__c.off, 384, !dbg !1734
  br i1 %0, label %cond.true, label %cond.end, !dbg !1734

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !1735
  %1 = load i32*, i32** %call, align 8, !dbg !1736
  %idxprom = sext i32 %__c to i64, !dbg !1737
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !1737
  %2 = load i32, i32* %arrayidx, align 4, !dbg !1737
  br label %cond.end, !dbg !1738

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !1738
  ret i32 %cond, !dbg !1739
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !1740 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1745, metadata !DIExpression()), !dbg !1746
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1747
  %conv = trunc i64 %call to i32, !dbg !1748
  ret i32 %conv, !dbg !1749
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !1750 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1754, metadata !DIExpression()), !dbg !1755
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !1756
  ret i64 %call, !dbg !1757
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !1758 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1763, metadata !DIExpression()), !dbg !1764
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !1765
  ret i64 %call, !dbg !1766
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !1767 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !1773, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i8* %__base, metadata !1774, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1775, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__size, metadata !1776, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !1777, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 0, metadata !1778, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !1779, metadata !DIExpression()), !dbg !1783
  br label %while.cond, !dbg !1784

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !1785
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !1778, metadata !DIExpression()), !dbg !1783
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !1786
  br i1 %cmp, label %while.body, label %cleanup, !dbg !1784

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !1787
  %div = lshr i64 %add, 1, !dbg !1789
  call void @llvm.dbg.value(metadata i64 %div, metadata !1780, metadata !DIExpression()), !dbg !1783
  %mul = mul i64 %div, %__size, !dbg !1790
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !1791
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !1781, metadata !DIExpression()), !dbg !1783
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !1792
  call void @llvm.dbg.value(metadata i32 %call, metadata !1782, metadata !DIExpression()), !dbg !1783
  %cmp1 = icmp slt i32 %call, 0, !dbg !1793
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !1795

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !1796
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !1798

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !1799
  call void @llvm.dbg.value(metadata i64 %add4, metadata !1778, metadata !DIExpression()), !dbg !1783
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !1783
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !1779, metadata !DIExpression()), !dbg !1783
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !1778, metadata !DIExpression()), !dbg !1783
  br label %while.cond, !dbg !1784, !llvm.loop !1800

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !1783
  ret i8* %retval.0, !dbg !1802
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !1803 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !1809, metadata !DIExpression()), !dbg !1810
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !1811
  ret double %call, !dbg !1812
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1813 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1822, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1823, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.value(metadata i32 %base, metadata !1824, metadata !DIExpression()), !dbg !1825
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1826
  ret i64 %call, !dbg !1827
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1828 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !1834, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !1835, metadata !DIExpression()), !dbg !1837
  call void @llvm.dbg.value(metadata i32 %base, metadata !1836, metadata !DIExpression()), !dbg !1837
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !1838
  ret i64 %call, !dbg !1839
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1840 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1851, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1852, metadata !DIExpression()), !dbg !1854
  call void @llvm.dbg.value(metadata i32 %base, metadata !1853, metadata !DIExpression()), !dbg !1854
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1855
  ret i64 %call, !dbg !1856
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !1857 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !1861, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !1862, metadata !DIExpression()), !dbg !1864
  call void @llvm.dbg.value(metadata i32 %base, metadata !1863, metadata !DIExpression()), !dbg !1864
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !1865
  ret i64 %call, !dbg !1866
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1867 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1909, metadata !DIExpression()), !dbg !1911
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1910, metadata !DIExpression()), !dbg !1911
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1912
  ret i32 %call, !dbg !1913
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1914 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1916, metadata !DIExpression()), !dbg !1918
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1917, metadata !DIExpression()), !dbg !1918
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !1919
  ret i32 %call, !dbg !1920
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !1921 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1925, metadata !DIExpression()), !dbg !1927
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1926, metadata !DIExpression()), !dbg !1927
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !1928
  ret i32 %call, !dbg !1929
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !1930 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1934, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !1935, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !1936, metadata !DIExpression()), !dbg !1938
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !1937, metadata !DIExpression()), !dbg !1938
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !1939
  ret i32 %call, !dbg !1940
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1941 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1945, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1946, metadata !DIExpression()), !dbg !1948
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1947, metadata !DIExpression()), !dbg !1948
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1947, metadata !DIExpression(DW_OP_deref)), !dbg !1948
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1949
  ret i32 %call, !dbg !1950
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !1951 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !1955, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1956, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !1957, metadata !DIExpression()), !dbg !1959
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !1958, metadata !DIExpression()), !dbg !1959
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !1958, metadata !DIExpression(DW_OP_deref)), !dbg !1959
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !1960
  ret i32 %call, !dbg !1961
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1962 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1986, metadata !DIExpression()), !dbg !1988
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1987, metadata !DIExpression()), !dbg !1988
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1989
  ret i32 %call, !dbg !1990
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1991 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !1993, metadata !DIExpression()), !dbg !1995
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !1994, metadata !DIExpression()), !dbg !1995
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !1996
  ret i32 %call, !dbg !1997
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !1998 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2002, metadata !DIExpression()), !dbg !2004
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2003, metadata !DIExpression()), !dbg !2004
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2005
  ret i32 %call, !dbg !2006
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2007 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2011, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2012, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2013, metadata !DIExpression()), !dbg !2015
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2014, metadata !DIExpression()), !dbg !2015
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2016
  ret i32 %call, !dbg !2017
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct._var_map* @init_var_map(i32 %size) local_unnamed_addr #5 !dbg !2018 {
entry:
  call void @llvm.dbg.value(metadata i32 %size, metadata !2022, metadata !DIExpression()), !dbg !2024
  %call = tail call i8* @xmalloc(i64 56) #6, !dbg !2025
  %0 = bitcast i8* %call to %struct._var_map*, !dbg !2026
  call void @llvm.dbg.value(metadata %struct._var_map* %0, metadata !2023, metadata !DIExpression()), !dbg !2024
  %call1 = tail call %struct.partition_def* @partition_new(i32 %size) #6, !dbg !2027
  %var_partition = bitcast i8* %call to %struct.partition_def**, !dbg !2028
  store %struct.partition_def* %call1, %struct.partition_def** %var_partition, align 8, !dbg !2029
  %partition_to_view = getelementptr inbounds i8, i8* %call, i64 8, !dbg !2030
  %1 = bitcast i8* %partition_to_view to i32**, !dbg !2030
  store i32* null, i32** %1, align 8, !dbg !2031
  %view_to_partition = getelementptr inbounds i8, i8* %call, i64 16, !dbg !2032
  %2 = bitcast i8* %view_to_partition to i32**, !dbg !2032
  store i32* null, i32** %2, align 8, !dbg !2033
  %num_partitions = getelementptr inbounds i8, i8* %call, i64 24, !dbg !2034
  %3 = bitcast i8* %num_partitions to i32*, !dbg !2034
  store i32 %size, i32* %3, align 8, !dbg !2035
  %partition_size = getelementptr inbounds i8, i8* %call, i64 28, !dbg !2036
  %4 = bitcast i8* %partition_size to i32*, !dbg !2036
  store i32 %size, i32* %4, align 4, !dbg !2037
  %num_basevars = getelementptr inbounds i8, i8* %call, i64 32, !dbg !2038
  %5 = bitcast i8* %num_basevars to i32*, !dbg !2038
  store i32 0, i32* %5, align 8, !dbg !2039
  %partition_to_base_index = getelementptr inbounds i8, i8* %call, i64 40, !dbg !2040
  %6 = bitcast i8* %partition_to_base_index to i32**, !dbg !2040
  store i32* null, i32** %6, align 8, !dbg !2041
  %basevars = getelementptr inbounds i8, i8* %call, i64 48, !dbg !2042
  %7 = bitcast i8* %basevars to %struct.VEC_tree_heap**, !dbg !2042
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %7, align 8, !dbg !2043
  ret %struct._var_map* %0, !dbg !2044
}

declare dso_local i8* @xmalloc(i64) local_unnamed_addr #2

declare dso_local %struct.partition_def* @partition_new(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @delete_var_map(%struct._var_map* %map) local_unnamed_addr #5 !dbg !2045 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2049, metadata !DIExpression()), !dbg !2050
  tail call fastcc void @var_map_base_fini(%struct._var_map* %map) #7, !dbg !2051
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !2052
  %0 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2052
  tail call void @partition_delete(%struct.partition_def* %0) #6, !dbg !2053
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !2054
  %1 = load i32*, i32** %partition_to_view, align 8, !dbg !2054
  %tobool = icmp eq i32* %1, null, !dbg !2056
  br i1 %tobool, label %if.end, label %if.then, !dbg !2057

if.then:                                          ; preds = %entry
  %2 = bitcast i32* %1 to i8*, !dbg !2057
  tail call void @free(i8* nonnull %2) #6, !dbg !2058
  br label %if.end, !dbg !2058

if.end:                                           ; preds = %entry, %if.then
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !2059
  %3 = load i32*, i32** %view_to_partition, align 8, !dbg !2059
  %tobool2 = icmp eq i32* %3, null, !dbg !2061
  br i1 %tobool2, label %if.end5, label %if.then3, !dbg !2062

if.then3:                                         ; preds = %if.end
  %4 = bitcast i32* %3 to i8*, !dbg !2062
  tail call void @free(i8* nonnull %4) #6, !dbg !2063
  br label %if.end5, !dbg !2063

if.end5:                                          ; preds = %if.end, %if.then3
  %5 = bitcast %struct._var_map* %map to i8*, !dbg !2064
  tail call void @free(i8* %5) #6, !dbg !2065
  ret void, !dbg !2066
}

; Function Attrs: nounwind uwtable
define internal fastcc void @var_map_base_fini(%struct._var_map* %map) unnamed_addr #5 !dbg !2067 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2069, metadata !DIExpression()), !dbg !2070
  %partition_to_base_index = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 6, !dbg !2071
  %0 = load i32*, i32** %partition_to_base_index, align 8, !dbg !2071
  %cmp = icmp eq i32* %0, null, !dbg !2073
  br i1 %cmp, label %if.end, label %if.then, !dbg !2074

if.then:                                          ; preds = %entry
  %basevars = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 7, !dbg !2075
  tail call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %basevars) #7, !dbg !2075
  %1 = bitcast i32** %partition_to_base_index to i8**, !dbg !2077
  %2 = load i8*, i8** %1, align 8, !dbg !2077
  tail call void @free(i8* %2) #6, !dbg !2078
  store i32* null, i32** %partition_to_base_index, align 8, !dbg !2079
  %num_basevars = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 5, !dbg !2080
  store i32 0, i32* %num_basevars, align 8, !dbg !2081
  br label %if.end, !dbg !2082

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !2083
}

declare dso_local void @partition_delete(%struct.partition_def*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local i32 @var_union(%struct._var_map* %map, %union.tree_node* %var1, %union.tree_node* %var2) local_unnamed_addr #5 !dbg !2084 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2088, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata %union.tree_node* %var1, metadata !2089, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.value(metadata %union.tree_node* %var2, metadata !2090, metadata !DIExpression()), !dbg !2094
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2095
  %bf.load = load i64, i64* %0, align 8, !dbg !2095
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2095
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2095
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !2095

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 175, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2095
  br label %cond.end, !dbg !2095

cond.end:                                         ; preds = %entry, %cond.true
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %var2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2096
  %bf.load2 = load i64, i64* %1, align 8, !dbg !2096
  %bf.cast42 = and i64 %bf.load2, 65535, !dbg !2096
  %cmp5 = icmp eq i64 %bf.cast42, 141, !dbg !2096
  br i1 %cmp5, label %cond.end8, label %cond.true6, !dbg !2096

cond.true6:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 176, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2096
  br label %cond.end8, !dbg !2096

cond.end8:                                        ; preds = %cond.end, %cond.true6
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !2097
  %2 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2097
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2097
  %3 = bitcast %union.tree_node** %version to i32*, !dbg !2097
  %4 = load i32, i32* %3, align 8, !dbg !2097
  %idxprom = zext i32 %4 to i64, !dbg !2097
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !2097
  %5 = load i32, i32* %class_element, align 8, !dbg !2097
  call void @llvm.dbg.value(metadata i32 %5, metadata !2091, metadata !DIExpression()), !dbg !2094
  %version13 = getelementptr inbounds %union.tree_node, %union.tree_node* %var2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2098
  %6 = bitcast %union.tree_node** %version13 to i32*, !dbg !2098
  %7 = load i32, i32* %6, align 8, !dbg !2098
  %idxprom14 = zext i32 %7 to i64, !dbg !2098
  %class_element16 = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom14, i32 0, !dbg !2098
  %8 = load i32, i32* %class_element16, align 8, !dbg !2098
  call void @llvm.dbg.value(metadata i32 %8, metadata !2092, metadata !DIExpression()), !dbg !2094
  %cmp17 = icmp eq i32 %5, -1, !dbg !2099
  br i1 %cmp17, label %cond.true18, label %cond.end20, !dbg !2099

cond.true18:                                      ; preds = %cond.end8
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2099
  br label %cond.end20, !dbg !2099

cond.end20:                                       ; preds = %cond.end8, %cond.true18
  %cmp22 = icmp eq i32 %8, -1, !dbg !2100
  br i1 %cmp22, label %cond.true23, label %cond.end25, !dbg !2100

cond.true23:                                      ; preds = %cond.end20
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2100
  br label %cond.end25, !dbg !2100

cond.end25:                                       ; preds = %cond.end20, %cond.true23
  %cmp27 = icmp eq i32 %5, %8, !dbg !2101
  br i1 %cmp27, label %if.end, label %if.else, !dbg !2103

if.else:                                          ; preds = %cond.end25
  %9 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2104
  %call = tail call i32 @partition_union(%struct.partition_def* %9, i32 %5, i32 %8) #6, !dbg !2105
  call void @llvm.dbg.value(metadata i32 %call, metadata !2093, metadata !DIExpression()), !dbg !2094
  br label %if.end

if.end:                                           ; preds = %cond.end25, %if.else
  %p3.0 = phi i32 [ %call, %if.else ], [ %5, %cond.end25 ], !dbg !2106
  call void @llvm.dbg.value(metadata i32 %p3.0, metadata !2093, metadata !DIExpression()), !dbg !2094
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !2107
  %10 = load i32*, i32** %partition_to_view, align 8, !dbg !2107
  %tobool = icmp eq i32* %10, null, !dbg !2109
  br i1 %tobool, label %if.end33, label %if.then29, !dbg !2110

if.then29:                                        ; preds = %if.end
  %idxprom31 = sext i32 %p3.0 to i64, !dbg !2111
  %arrayidx32 = getelementptr inbounds i32, i32* %10, i64 %idxprom31, !dbg !2111
  %11 = load i32, i32* %arrayidx32, align 4, !dbg !2111
  call void @llvm.dbg.value(metadata i32 %11, metadata !2093, metadata !DIExpression()), !dbg !2094
  br label %if.end33, !dbg !2112

if.end33:                                         ; preds = %if.end, %if.then29
  %p3.1 = phi i32 [ %11, %if.then29 ], [ %p3.0, %if.end ], !dbg !2094
  call void @llvm.dbg.value(metadata i32 %p3.1, metadata !2093, metadata !DIExpression()), !dbg !2094
  ret i32 %p3.1, !dbg !2113
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

declare dso_local i32 @partition_union(%struct.partition_def*, i32, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @partition_view_normal(%struct._var_map* %map, i8 zeroext %want_bases) local_unnamed_addr #5 !dbg !2114 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2118, metadata !DIExpression()), !dbg !2121
  call void @llvm.dbg.value(metadata i8 %want_bases, metadata !2119, metadata !DIExpression()), !dbg !2121
  %call = tail call fastcc %struct.bitmap_head_def* @partition_view_init(%struct._var_map* %map) #7, !dbg !2122
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2120, metadata !DIExpression()), !dbg !2121
  tail call fastcc void @partition_view_fini(%struct._var_map* %map, %struct.bitmap_head_def* %call) #7, !dbg !2123
  %tobool = icmp eq i8 %want_bases, 0, !dbg !2124
  br i1 %tobool, label %if.else, label %if.then, !dbg !2126

if.then:                                          ; preds = %entry
  tail call fastcc void @var_map_base_init(%struct._var_map* %map) #7, !dbg !2127
  br label %if.end, !dbg !2127

if.else:                                          ; preds = %entry
  tail call fastcc void @var_map_base_fini(%struct._var_map* %map) #7, !dbg !2128
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2129
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @partition_view_init(%struct._var_map* %map) unnamed_addr #5 !dbg !2130 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2134, metadata !DIExpression()), !dbg !2138
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2139
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2135, metadata !DIExpression()), !dbg !2138
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !2140
  %0 = load i32*, i32** %partition_to_view, align 8, !dbg !2140
  %tobool = icmp eq i32* %0, null, !dbg !2142
  br i1 %tobool, label %if.end, label %if.then, !dbg !2143

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %0 to i8*, !dbg !2143
  tail call void @free(i8* nonnull %1) #6, !dbg !2144
  store i32* null, i32** %partition_to_view, align 8, !dbg !2146
  br label %if.end, !dbg !2147

if.end:                                           ; preds = %entry, %if.then
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !2148
  %2 = load i32*, i32** %view_to_partition, align 8, !dbg !2148
  %tobool3 = icmp eq i32* %2, null, !dbg !2150
  br i1 %tobool3, label %if.end7, label %if.then4, !dbg !2151

if.then4:                                         ; preds = %if.end
  %3 = bitcast i32* %2 to i8*, !dbg !2151
  tail call void @free(i8* nonnull %3) #6, !dbg !2152
  store i32* null, i32** %view_to_partition, align 8, !dbg !2154
  br label %if.end7, !dbg !2155

if.end7:                                          ; preds = %if.end, %if.then4
  call void @llvm.dbg.value(metadata i32 0, metadata !2137, metadata !DIExpression()), !dbg !2138
  %partition_size = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 4, !dbg !2156
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !2159
  br label %for.cond, !dbg !2161

for.cond:                                         ; preds = %for.inc, %if.end7
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end7 ], !dbg !2162
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2137, metadata !DIExpression()), !dbg !2138
  %4 = load i32, i32* %partition_size, align 4, !dbg !2163
  %5 = zext i32 %4 to i64, !dbg !2164
  %cmp = icmp ult i64 %indvars.iv, %5, !dbg !2164
  br i1 %cmp, label %for.body, label %for.end, !dbg !2165

for.body:                                         ; preds = %for.cond
  %6 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2166
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %6, i64 0, i32 1, i64 %indvars.iv, i32 0, !dbg !2166
  %7 = load i32, i32* %class_element, align 8, !dbg !2166
  call void @llvm.dbg.value(metadata i32 %7, metadata !2136, metadata !DIExpression()), !dbg !2138
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2167
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 3, !dbg !2167
  %9 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2167
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %9, i64 0, i32 2, !dbg !2167
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !2167
  %tobool8 = icmp eq %struct.VEC_tree_gc* %10, null, !dbg !2167
  br i1 %tobool8, label %cond.end, label %cond.true, !dbg !2167

cond.true:                                        ; preds = %for.body
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !2167
  br label %cond.end, !dbg !2167

cond.end:                                         ; preds = %for.body, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %for.body ], !dbg !2167
  %call12 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %7) #7, !dbg !2167
  %cmp13 = icmp eq %union.tree_node* %call12, null, !dbg !2169
  br i1 %cmp13, label %for.inc, label %land.lhs.true, !dbg !2170

land.lhs.true:                                    ; preds = %cond.end
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2171
  %gimple_df15 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 3, !dbg !2171
  %12 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df15, align 8, !dbg !2171
  %ssa_names16 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %12, i64 0, i32 2, !dbg !2171
  %13 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names16, align 8, !dbg !2171
  %tobool17 = icmp eq %struct.VEC_tree_gc* %13, null, !dbg !2171
  br i1 %tobool17, label %cond.end24, label %cond.true18, !dbg !2171

cond.true18:                                      ; preds = %land.lhs.true
  %base22 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %13, i64 0, i32 0, !dbg !2171
  br label %cond.end24, !dbg !2171

cond.end24:                                       ; preds = %land.lhs.true, %cond.true18
  %cond25 = phi %struct.VEC_tree_base* [ %base22, %cond.true18 ], [ null, %land.lhs.true ], !dbg !2171
  %call26 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond25, i32 %7) #7, !dbg !2171
  %call27 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call26) #6, !dbg !2172
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2172
  br i1 %tobool28, label %for.inc, label %land.lhs.true29, !dbg !2173

land.lhs.true29:                                  ; preds = %cond.end24
  %14 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2174
  %gimple_df31 = getelementptr inbounds %struct.function, %struct.function* %14, i64 0, i32 3, !dbg !2174
  %15 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df31, align 8, !dbg !2174
  %ssa_names32 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %15, i64 0, i32 2, !dbg !2174
  %16 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names32, align 8, !dbg !2174
  %tobool33 = icmp eq %struct.VEC_tree_gc* %16, null, !dbg !2174
  br i1 %tobool33, label %cond.end40, label %cond.true34, !dbg !2174

cond.true34:                                      ; preds = %land.lhs.true29
  %base38 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %16, i64 0, i32 0, !dbg !2174
  br label %cond.end40, !dbg !2174

cond.end40:                                       ; preds = %land.lhs.true29, %cond.true34
  %cond41 = phi %struct.VEC_tree_base* [ %base38, %cond.true34 ], [ null, %land.lhs.true29 ], !dbg !2174
  %call42 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond41, i32 %7) #7, !dbg !2174
  %call43 = tail call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call42) #7, !dbg !2175
  %tobool44 = icmp eq i8 %call43, 0, !dbg !2175
  br i1 %tobool44, label %if.then60, label %lor.lhs.false, !dbg !2176

lor.lhs.false:                                    ; preds = %cond.end40
  %17 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2177
  %gimple_df46 = getelementptr inbounds %struct.function, %struct.function* %17, i64 0, i32 3, !dbg !2177
  %18 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df46, align 8, !dbg !2177
  %ssa_names47 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %18, i64 0, i32 2, !dbg !2177
  %19 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names47, align 8, !dbg !2177
  %tobool48 = icmp eq %struct.VEC_tree_gc* %19, null, !dbg !2177
  br i1 %tobool48, label %cond.end55, label %cond.true49, !dbg !2177

cond.true49:                                      ; preds = %lor.lhs.false
  %base53 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %19, i64 0, i32 0, !dbg !2177
  br label %cond.end55, !dbg !2177

cond.end55:                                       ; preds = %lor.lhs.false, %cond.true49
  %cond56 = phi %struct.VEC_tree_base* [ %base53, %cond.true49 ], [ null, %lor.lhs.false ], !dbg !2177
  %call57 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond56, i32 %7) #7, !dbg !2177
  %20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2177
  %bf.load = load i64, i64* %20, align 8, !dbg !2177
  %bf.cast1 = and i64 %bf.load, 4294967296, !dbg !2177
  %tobool59 = icmp eq i64 %bf.cast1, 0, !dbg !2177
  br i1 %tobool59, label %if.then60, label %for.inc, !dbg !2178

if.then60:                                        ; preds = %cond.end55, %cond.end40
  %call61 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %7) #6, !dbg !2179
  br label %for.inc, !dbg !2179

for.inc:                                          ; preds = %cond.end55, %cond.end24, %cond.end, %if.then60
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2180
  br label %for.cond, !dbg !2181, !llvm.loop !2182

for.end:                                          ; preds = %for.cond
  %.lcssa = phi i32 [ %4, %for.cond ], !dbg !2163
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !2184
  store i32 %.lcssa, i32* %num_partitions, align 8, !dbg !2185
  ret %struct.bitmap_head_def* %call, !dbg !2186
}

; Function Attrs: nounwind uwtable
define internal fastcc void @partition_view_fini(%struct._var_map* %map, %struct.bitmap_head_def* %selected) unnamed_addr #5 !dbg !2187 {
entry:
  %bi = alloca %struct.bitmap_iterator, align 8
  %x = alloca i32, align 4
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2191, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %selected, metadata !2192, metadata !DIExpression()), !dbg !2205
  %0 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2206
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2206
  %1 = bitcast i32* %x to i8*, !dbg !2207
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2207
  %tobool = icmp eq %struct.bitmap_head_def* %selected, null, !dbg !2208
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2208

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 269, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2208
  br label %cond.end, !dbg !2208

cond.end:                                         ; preds = %entry, %cond.true
  %call = tail call i64 @bitmap_count_bits(%struct.bitmap_head_def* %selected) #6, !dbg !2209
  %conv = trunc i64 %call to i32, !dbg !2209
  call void @llvm.dbg.value(metadata i32 %conv, metadata !2201, metadata !DIExpression()), !dbg !2205
  %partition_size = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 4, !dbg !2210
  %2 = load i32, i32* %partition_size, align 4, !dbg !2210
  call void @llvm.dbg.value(metadata i32 %2, metadata !2204, metadata !DIExpression()), !dbg !2205
  %cmp = icmp ugt i32 %2, %conv, !dbg !2211
  br i1 %cmp, label %if.then, label %if.end, !dbg !2213

if.then:                                          ; preds = %cond.end
  %conv2 = zext i32 %2 to i64, !dbg !2214
  %mul = shl nuw nsw i64 %conv2, 2, !dbg !2216
  %call3 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2217
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !2218
  %3 = bitcast i32** %partition_to_view to i8**, !dbg !2219
  store i8* %call3, i8** %3, align 8, !dbg !2219
  %call7 = tail call i8* @memset(i8* %call3, i32 255, i64 %mul) #6, !dbg !2220
  %conv8 = shl i64 %call, 2, !dbg !2221
  %mul9 = and i64 %conv8, 17179869180, !dbg !2221
  %call10 = tail call i8* @xmalloc(i64 %mul9) #6, !dbg !2222
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !2223
  %4 = bitcast i32** %view_to_partition to i8**, !dbg !2224
  store i8* %call10, i8** %4, align 8, !dbg !2224
  call void @llvm.dbg.value(metadata i32 0, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2193, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @llvm.dbg.value(metadata i32* %x, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %selected, i32 0, i32* nonnull %x) #7, !dbg !2225
  br label %for.cond, !dbg !2225

for.cond:                                         ; preds = %for.body, %if.then
  %i.0 = phi i32 [ 0, %if.then ], [ %inc, %for.body ], !dbg !2227
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2193, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @llvm.dbg.value(metadata i32* %x, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  %call11 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !2228
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2225
  br i1 %tobool12, label %for.end, label %for.body, !dbg !2225

for.body:                                         ; preds = %for.cond
  %5 = load i32*, i32** %partition_to_view, align 8, !dbg !2230
  %6 = load i32, i32* %x, align 4, !dbg !2232
  call void @llvm.dbg.value(metadata i32 %6, metadata !2203, metadata !DIExpression()), !dbg !2205
  %idxprom = zext i32 %6 to i64, !dbg !2233
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !2233
  store i32 %i.0, i32* %arrayidx, align 4, !dbg !2234
  %7 = load i32, i32* %x, align 4, !dbg !2235
  call void @llvm.dbg.value(metadata i32 %7, metadata !2203, metadata !DIExpression()), !dbg !2205
  %8 = load i32*, i32** %view_to_partition, align 8, !dbg !2236
  %idxprom15 = zext i32 %i.0 to i64, !dbg !2237
  %arrayidx16 = getelementptr inbounds i32, i32* %8, i64 %idxprom15, !dbg !2237
  store i32 %7, i32* %arrayidx16, align 4, !dbg !2238
  %inc = add i32 %i.0, 1, !dbg !2239
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2193, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call void @llvm.dbg.value(metadata i32* %x, metadata !2203, metadata !DIExpression(DW_OP_deref)), !dbg !2205
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !2228
  br label %for.cond, !dbg !2228, !llvm.loop !2240

for.end:                                          ; preds = %for.cond
  %i.0.lcssa = phi i32 [ %i.0, %for.cond ], !dbg !2227
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2202, metadata !DIExpression()), !dbg !2205
  call void @llvm.dbg.value(metadata i32 %i.0.lcssa, metadata !2202, metadata !DIExpression()), !dbg !2205
  %cmp17 = icmp eq i32 %i.0.lcssa, %conv, !dbg !2242
  br i1 %cmp17, label %cond.end21, label %cond.true19, !dbg !2242

cond.true19:                                      ; preds = %for.end
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 289, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2242
  br label %cond.end21, !dbg !2242

cond.end21:                                       ; preds = %for.end, %cond.true19
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !2243
  store i32 %i.0.lcssa, i32* %num_partitions, align 8, !dbg !2244
  br label %if.end, !dbg !2245

if.end:                                           ; preds = %cond.end21, %cond.end
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %selected) #6, !dbg !2246
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2192, metadata !DIExpression()), !dbg !2205
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #8, !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #8, !dbg !2247
  ret void, !dbg !2247
}

; Function Attrs: nounwind uwtable
define internal fastcc void @var_map_base_init(%struct._var_map* %map) unnamed_addr #5 !dbg !2248 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2250, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 0, metadata !2253, metadata !DIExpression()), !dbg !2257
  %call = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !2258
  call void @llvm.dbg.value(metadata i32 %call, metadata !2252, metadata !DIExpression()), !dbg !2257
  %partition_to_base_index = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 6, !dbg !2259
  %0 = load i32*, i32** %partition_to_base_index, align 8, !dbg !2259
  %cmp = icmp eq i32* %0, null, !dbg !2261
  br i1 %cmp, label %if.else, label %if.then, !dbg !2262

if.then:                                          ; preds = %entry
  %1 = bitcast i32* %0 to i8*, !dbg !2262
  tail call void @free(i8* nonnull %1) #6, !dbg !2263
  %basevars = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 7, !dbg !2265
  %2 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %basevars, align 8, !dbg !2265
  %tobool = icmp eq %struct.VEC_tree_heap* %2, null, !dbg !2265
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2265

cond.true:                                        ; preds = %if.then
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %2, i64 0, i32 0, !dbg !2265
  br label %cond.end, !dbg !2265

cond.end:                                         ; preds = %if.then, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.then ], !dbg !2265
  tail call fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %cond, i32 0) #7, !dbg !2265
  br label %if.end, !dbg !2266

if.else:                                          ; preds = %entry
  %div = sdiv i32 %call, 10, !dbg !2267
  %3 = icmp sgt i32 %div, 40, !dbg !2267
  %cond8 = select i1 %3, i32 %div, i32 40, !dbg !2267
  %call9 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %cond8) #7, !dbg !2267
  %basevars10 = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 7, !dbg !2268
  store %struct.VEC_tree_heap* %call9, %struct.VEC_tree_heap** %basevars10, align 8, !dbg !2269
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end
  %.pre-phi = bitcast i32** %partition_to_base_index to i8**, !dbg !2270
  %conv = sext i32 %call to i64, !dbg !2271
  %mul = shl nsw i64 %conv, 2, !dbg !2272
  %call11 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !2273
  store i8* %call11, i8** %.pre-phi, align 8, !dbg !2270
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()), !dbg !2257
  %basevars30 = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 7, !dbg !2274
  %4 = sext i32 %call to i64, !dbg !2280
  br label %for.cond, !dbg !2280

for.cond:                                         ; preds = %if.end32, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %if.end32 ], [ 0, %if.end ], !dbg !2281
  %num.0 = phi i32 [ %num.1, %if.end32 ], [ 0, %if.end ], !dbg !2281
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2251, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %num.0, metadata !2253, metadata !DIExpression()), !dbg !2257
  %cmp13 = icmp slt i64 %indvars.iv, %4, !dbg !2282
  br i1 %cmp13, label %for.body, label %for.end, !dbg !2283

for.body:                                         ; preds = %for.cond
  %5 = trunc i64 %indvars.iv to i32, !dbg !2284
  %call15 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %5) #7, !dbg !2284
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2254, metadata !DIExpression()), !dbg !2257
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2285
  %bf.load = load i64, i64* %6, align 8, !dbg !2285
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2287
  %cmp17 = icmp eq i64 %bf.cast1, 141, !dbg !2287
  br i1 %cmp17, label %if.then19, label %if.end21, !dbg !2288

if.then19:                                        ; preds = %for.body
  %var20 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2289
  %7 = bitcast i32* %var20 to %union.tree_node**, !dbg !2289
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2289
  call void @llvm.dbg.value(metadata %union.tree_node* %8, metadata !2254, metadata !DIExpression()), !dbg !2257
  br label %if.end21, !dbg !2290

if.end21:                                         ; preds = %if.then19, %for.body
  %var.0 = phi %union.tree_node* [ %8, %if.then19 ], [ %call15, %for.body ], !dbg !2291
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2254, metadata !DIExpression()), !dbg !2257
  %call22 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %var.0) #7, !dbg !2292
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call22, metadata !2255, metadata !DIExpression()), !dbg !2257
  %9 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call22, i64 0, i32 0, !dbg !2293
  %bf.load23 = load i8, i8* %9, align 8, !dbg !2293
  %bf.clear24 = and i8 %bf.load23, 1, !dbg !2293
  %tobool26 = icmp eq i8 %bf.clear24, 0, !dbg !2294
  br i1 %tobool26, label %if.then27, label %if.end32, !dbg !2295

if.then27:                                        ; preds = %if.end21
  %bf.set = or i8 %bf.load23, 1, !dbg !2296
  store i8 %bf.set, i8* %9, align 8, !dbg !2296
  %inc = add nsw i32 %num.0, 1, !dbg !2297
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2253, metadata !DIExpression()), !dbg !2257
  %base_index = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call22, i64 0, i32 1, !dbg !2298
  store i32 %num.0, i32* %base_index, align 4, !dbg !2299
  %call31 = tail call fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** nonnull %basevars30, %union.tree_node* %var.0) #7, !dbg !2300
  br label %if.end32, !dbg !2301

if.end32:                                         ; preds = %if.end21, %if.then27
  %num.1 = phi i32 [ %num.0, %if.end21 ], [ %inc, %if.then27 ], !dbg !2257
  call void @llvm.dbg.value(metadata i32 %num.1, metadata !2253, metadata !DIExpression()), !dbg !2257
  %base_index33 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call22, i64 0, i32 1, !dbg !2302
  %10 = load i32, i32* %base_index33, align 4, !dbg !2302
  %11 = load i32*, i32** %partition_to_base_index, align 8, !dbg !2303
  %arrayidx = getelementptr inbounds i32, i32* %11, i64 %indvars.iv, !dbg !2304
  store i32 %10, i32* %arrayidx, align 4, !dbg !2305
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2306
  call void @llvm.dbg.value(metadata i32 undef, metadata !2251, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !2257
  br label %for.cond, !dbg !2307, !llvm.loop !2308

for.end:                                          ; preds = %for.cond
  %num.0.lcssa = phi i32 [ %num.0, %for.cond ], !dbg !2281
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2257
  call void @llvm.dbg.value(metadata i32 %num.0.lcssa, metadata !2253, metadata !DIExpression()), !dbg !2257
  %num_basevars = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 5, !dbg !2310
  store i32 %num.0.lcssa, i32* %num_basevars, align 8, !dbg !2311
  call void @llvm.dbg.value(metadata i32 0, metadata !2251, metadata !DIExpression()), !dbg !2257
  br label %for.cond36, !dbg !2312

for.cond36:                                       ; preds = %cond.end46, %for.end
  %x.1 = phi i32 [ 0, %for.end ], [ %inc53, %cond.end46 ], !dbg !2314
  call void @llvm.dbg.value(metadata i32 %x.1, metadata !2251, metadata !DIExpression()), !dbg !2257
  %cmp37 = icmp slt i32 %x.1, %num.0.lcssa, !dbg !2315
  br i1 %cmp37, label %for.body39, label %for.end54, !dbg !2317

for.body39:                                       ; preds = %for.cond36
  %12 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %basevars30, align 8, !dbg !2318
  %tobool41 = icmp eq %struct.VEC_tree_heap* %12, null, !dbg !2318
  br i1 %tobool41, label %cond.end46, label %cond.true42, !dbg !2318

cond.true42:                                      ; preds = %for.body39
  %base44 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %12, i64 0, i32 0, !dbg !2318
  br label %cond.end46, !dbg !2318

cond.end46:                                       ; preds = %for.body39, %cond.true42
  %cond47 = phi %struct.VEC_tree_base* [ %base44, %cond.true42 ], [ null, %for.body39 ], !dbg !2318
  %call48 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond47, i32 %x.1) #7, !dbg !2318
  call void @llvm.dbg.value(metadata %union.tree_node* %call48, metadata !2254, metadata !DIExpression()), !dbg !2257
  %call49 = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %call48) #7, !dbg !2320
  %13 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call49, i64 0, i32 0, !dbg !2321
  %bf.load50 = load i8, i8* %13, align 8, !dbg !2322
  %bf.clear51 = and i8 %bf.load50, -2, !dbg !2322
  store i8 %bf.clear51, i8* %13, align 8, !dbg !2322
  %inc53 = add nuw nsw i32 %x.1, 1, !dbg !2323
  call void @llvm.dbg.value(metadata i32 %inc53, metadata !2251, metadata !DIExpression()), !dbg !2257
  br label %for.cond36, !dbg !2324, !llvm.loop !2325

for.end54:                                        ; preds = %for.cond36
  ret void, !dbg !2327
}

; Function Attrs: nounwind uwtable
define dso_local void @partition_view_bitmap(%struct._var_map* %map, %struct.bitmap_head_def* %only, i8 zeroext %want_bases) local_unnamed_addr #5 !dbg !2328 {
entry:
  %x = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !2332, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %only, metadata !2333, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i8 %want_bases, metadata !2334, metadata !DIExpression()), !dbg !2340
  %call = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2341
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !2336, metadata !DIExpression()), !dbg !2340
  %0 = bitcast i32* %x to i8*, !dbg !2342
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2342
  %1 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !2343
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2343
  %call1 = tail call fastcc %struct.bitmap_head_def* @partition_view_init(%struct._var_map* %map) #7, !dbg !2344
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !2335, metadata !DIExpression()), !dbg !2340
  call void @llvm.dbg.value(metadata i32* %x, metadata !2337, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2339, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %only, i32 0, i32* nonnull %x) #7, !dbg !2345
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !2347
  br label %for.cond, !dbg !2345

for.cond:                                         ; preds = %cond.end, %entry
  call void @llvm.dbg.value(metadata i32* %x, metadata !2337, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2339, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  %call2 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !2350
  %tobool = icmp eq i8 %call2, 0, !dbg !2345
  br i1 %tobool, label %for.end, label %for.body, !dbg !2345

for.body:                                         ; preds = %for.cond
  %2 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !2351
  %3 = load i32, i32* %x, align 4, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %3, metadata !2337, metadata !DIExpression()), !dbg !2340
  %idxprom = zext i32 %3 to i64, !dbg !2351
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !2351
  %4 = load i32, i32* %class_element, align 8, !dbg !2351
  call void @llvm.dbg.value(metadata i32 %4, metadata !2338, metadata !DIExpression()), !dbg !2340
  %call3 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* %call1, i32 %4) #6, !dbg !2352
  %tobool4 = icmp eq i32 %call3, 0, !dbg !2352
  br i1 %tobool4, label %cond.true, label %cond.end, !dbg !2352

cond.true:                                        ; preds = %for.body
  call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 331, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2352
  br label %cond.end, !dbg !2352

cond.end:                                         ; preds = %for.body, %cond.true
  %call5 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %call, i32 %4) #6, !dbg !2353
  call void @llvm.dbg.value(metadata i32* %x, metadata !2337, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2339, metadata !DIExpression(DW_OP_deref)), !dbg !2340
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %x) #7, !dbg !2350
  br label %for.cond, !dbg !2350, !llvm.loop !2354

for.end:                                          ; preds = %for.cond
  call fastcc void @partition_view_fini(%struct._var_map* %map, %struct.bitmap_head_def* %call) #7, !dbg !2356
  call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !2357
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2335, metadata !DIExpression()), !dbg !2340
  %tobool6 = icmp eq i8 %want_bases, 0, !dbg !2358
  br i1 %tobool6, label %if.else, label %if.then, !dbg !2360

if.then:                                          ; preds = %for.end
  call fastcc void @var_map_base_init(%struct._var_map* %map) #7, !dbg !2361
  br label %if.end, !dbg !2361

if.else:                                          ; preds = %for.end
  call fastcc void @var_map_base_fini(%struct._var_map* %map) #7, !dbg !2362
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #8, !dbg !2363
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !2363
  ret void, !dbg !2363
}

declare dso_local %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* %bi, %struct.bitmap_head_def* %map, i32 %start_bit, i32* %bit_no) unnamed_addr #0 !dbg !2364 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2373, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %map, metadata !2374, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32 0, metadata !2375, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2376, metadata !DIExpression()), !dbg !2377
  %0 = bitcast %struct.bitmap_head_def* %map to i64*, !dbg !2378
  %1 = load i64, i64* %0, align 8, !dbg !2378
  %2 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2379
  store i64 %1, i64* %2, align 8, !dbg !2379
  %elt2 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 1, !dbg !2380
  store %struct.bitmap_element_def* null, %struct.bitmap_element_def** %elt2, align 8, !dbg !2381
  %elt11 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2382
  %3 = inttoptr i64 %1 to %struct.bitmap_element_def*, !dbg !2385
  br label %while.body, !dbg !2385

while.body:                                       ; preds = %entry, %if.end5
  %tobool = icmp eq i64 %1, 0, !dbg !2386
  br i1 %tobool, label %if.then, label %if.end, !dbg !2387

if.then:                                          ; preds = %while.body
  store %struct.bitmap_element_def* @bitmap_zero_bits, %struct.bitmap_element_def** %elt11, align 8, !dbg !2388
  br label %while.end, !dbg !2390

if.end:                                           ; preds = %while.body
  br i1 false, label %if.end5, label %while.end.loopexit, !dbg !2391

if.end5:                                          ; preds = %if.end
  br label %while.body, !dbg !2385, !llvm.loop !2392

while.end.loopexit:                               ; preds = %if.end
  br label %while.end, !dbg !2394

while.end:                                        ; preds = %while.end.loopexit, %if.then
  %4 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %5 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ]
  %6 = phi %struct.bitmap_element_def* [ %3, %while.end.loopexit ], [ @bitmap_zero_bits, %if.then ], !dbg !2394
  %indx9 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %6, i64 0, i32 2, !dbg !2396
  %7 = load i32, i32* %indx9, align 8, !dbg !2396
  %cmp11 = icmp eq i32 %7, 0, !dbg !2397
  br i1 %cmp11, label %if.end15, label %if.then12, !dbg !2398

if.then12:                                        ; preds = %while.end
  %indx14 = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %5, i64 0, i32 2, !dbg !2399
  %8 = load i32, i32* %indx14, align 8, !dbg !2399
  %mul = shl i32 %8, 7, !dbg !2400
  call void @llvm.dbg.value(metadata i32 %mul, metadata !2375, metadata !DIExpression()), !dbg !2377
  br label %if.end15, !dbg !2401

if.end15:                                         ; preds = %while.end, %if.then12
  %start_bit.addr.0 = phi i32 [ %mul, %if.then12 ], [ 0, %while.end ]
  call void @llvm.dbg.value(metadata i32 %start_bit.addr.0, metadata !2375, metadata !DIExpression()), !dbg !2377
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2402
  store i32 0, i32* %word_no, align 8, !dbg !2403
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %4, i64 0, i32 3, i64 0, !dbg !2404
  %9 = load i64, i64* %arrayidx, align 8, !dbg !2404
  %bits21 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2405
  store i64 %9, i64* %bits21, align 8, !dbg !2406
  %tobool23 = icmp eq i64 %9, 0, !dbg !2407
  %lnot.ext = zext i1 %tobool23 to i32, !dbg !2407
  %add = or i32 %start_bit.addr.0, %lnot.ext, !dbg !2408
  call void @llvm.dbg.value(metadata i32 %add, metadata !2375, metadata !DIExpression()), !dbg !2377
  store i32 %add, i32* %bit_no, align 4, !dbg !2409
  ret void, !dbg !2410
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2411 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2415, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2416, metadata !DIExpression()), !dbg !2420
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2421
  %0 = load i64, i64* %bits, align 8, !dbg !2421
  %tobool = icmp eq i64 %0, 0, !dbg !2422
  br i1 %tobool, label %if.end, label %next_bit, !dbg !2423

next_bit.loopexit:                                ; preds = %while.body9
  %.lcssa6 = phi i64 [ %10, %while.body9 ], !dbg !2424
  br label %next_bit, !dbg !2427

next_bit:                                         ; preds = %next_bit.loopexit, %entry
  %1 = phi i64 [ %.lcssa6, %next_bit.loopexit ], [ %0, %entry ]
  call void @llvm.dbg.label(metadata !2417), !dbg !2428
  br label %while.cond, !dbg !2427

while.cond:                                       ; preds = %while.body, %next_bit
  %2 = phi i64 [ %.pre, %while.body ], [ %1, %next_bit ], !dbg !2429
  %and = and i64 %2, 1, !dbg !2430
  %tobool2 = icmp eq i64 %and, 0, !dbg !2431
  br i1 %tobool2, label %while.body, label %return.loopexit, !dbg !2427

while.body:                                       ; preds = %while.cond
  %shr = lshr i64 %2, 1, !dbg !2432
  store i64 %shr, i64* %bits, align 8, !dbg !2432
  %3 = load i32, i32* %bit_no, align 4, !dbg !2434
  %add = add i32 %3, 1, !dbg !2434
  store i32 %add, i32* %bit_no, align 4, !dbg !2434
  %.pre = load i64, i64* %bits, align 8, !dbg !2429
  br label %while.cond, !dbg !2427, !llvm.loop !2435

if.end:                                           ; preds = %entry
  %4 = load i32, i32* %bit_no, align 4, !dbg !2437
  %sub = add i32 %4, 63, !dbg !2438
  %div = and i32 %sub, -64, !dbg !2439
  store i32 %div, i32* %bit_no, align 4, !dbg !2440
  %word_no = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 2, !dbg !2441
  %5 = load i32, i32* %word_no, align 8, !dbg !2442
  %inc = add i32 %5, 1, !dbg !2442
  store i32 %inc, i32* %word_no, align 8, !dbg !2442
  %elt1 = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 0, !dbg !2443
  %6 = bitcast %struct.bitmap_iterator* %bi to i64*, !dbg !2443
  br label %while.body6, !dbg !2444

while.body6:                                      ; preds = %if.end, %if.end26
  %7 = phi i32 [ %inc, %if.end ], [ 0, %if.end26 ]
  br label %while.cond7, !dbg !2445

while.cond7:                                      ; preds = %if.end16, %while.body6
  %8 = phi i32 [ %inc19, %if.end16 ], [ %7, %while.body6 ], !dbg !2446
  %cmp = icmp eq i32 %8, 2, !dbg !2447
  %9 = load %struct.bitmap_element_def*, %struct.bitmap_element_def** %elt1, align 8, !dbg !2443
  br i1 %cmp, label %while.end20, label %while.body9, !dbg !2445

while.body9:                                      ; preds = %while.cond7
  %idxprom = zext i32 %8 to i64, !dbg !2424
  %arrayidx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %9, i64 0, i32 3, i64 %idxprom, !dbg !2424
  %10 = load i64, i64* %arrayidx, align 8, !dbg !2424
  store i64 %10, i64* %bits, align 8, !dbg !2448
  %tobool14 = icmp eq i64 %10, 0, !dbg !2449
  br i1 %tobool14, label %if.end16, label %next_bit.loopexit, !dbg !2451

if.end16:                                         ; preds = %while.body9
  %11 = load i32, i32* %bit_no, align 4, !dbg !2452
  %add17 = add i32 %11, 64, !dbg !2452
  store i32 %add17, i32* %bit_no, align 4, !dbg !2452
  %12 = load i32, i32* %word_no, align 8, !dbg !2453
  %inc19 = add i32 %12, 1, !dbg !2453
  store i32 %inc19, i32* %word_no, align 8, !dbg !2453
  br label %while.cond7, !dbg !2445, !llvm.loop !2454

while.end20:                                      ; preds = %while.cond7
  %.lcssa = phi %struct.bitmap_element_def* [ %9, %while.cond7 ], !dbg !2443
  %13 = bitcast %struct.bitmap_element_def* %.lcssa to i64*, !dbg !2456
  %14 = load i64, i64* %13, align 8, !dbg !2456
  store i64 %14, i64* %6, align 8, !dbg !2457
  %tobool24 = icmp eq i64 %14, 0, !dbg !2458
  br i1 %tobool24, label %return.loopexit1, label %if.end26, !dbg !2460

if.end26:                                         ; preds = %while.end20
  %15 = inttoptr i64 %14 to %struct.bitmap_element_def*, !dbg !2460
  %indx = getelementptr inbounds %struct.bitmap_element_def, %struct.bitmap_element_def* %15, i64 0, i32 2, !dbg !2461
  %16 = load i32, i32* %indx, align 8, !dbg !2461
  %mul28 = shl i32 %16, 7, !dbg !2462
  store i32 %mul28, i32* %bit_no, align 4, !dbg !2463
  store i32 0, i32* %word_no, align 8, !dbg !2464
  br label %while.body6, !dbg !2444, !llvm.loop !2465

return.loopexit:                                  ; preds = %while.cond
  br label %return, !dbg !2467

return.loopexit1:                                 ; preds = %while.end20
  br label %return, !dbg !2467

return:                                           ; preds = %return.loopexit1, %return.loopexit
  %retval.0 = phi i8 [ 1, %return.loopexit ], [ 0, %return.loopexit1 ], !dbg !2420
  ret i8 %retval.0, !dbg !2467
}

declare dso_local i32 @bitmap_bit_p(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @bmp_iter_next(%struct.bitmap_iterator* %bi, i32* %bit_no) unnamed_addr #0 !dbg !2468 {
entry:
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !2472, metadata !DIExpression()), !dbg !2474
  call void @llvm.dbg.value(metadata i32* %bit_no, metadata !2473, metadata !DIExpression()), !dbg !2474
  %bits = getelementptr inbounds %struct.bitmap_iterator, %struct.bitmap_iterator* %bi, i64 0, i32 3, !dbg !2475
  %0 = load i64, i64* %bits, align 8, !dbg !2476
  %shr = lshr i64 %0, 1, !dbg !2476
  store i64 %shr, i64* %bits, align 8, !dbg !2476
  %1 = load i32, i32* %bit_no, align 4, !dbg !2477
  %add = add i32 %1, 1, !dbg !2477
  store i32 %add, i32* %bit_no, align 4, !dbg !2477
  ret void, !dbg !2478
}

declare dso_local void @bitmap_obstack_free(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @debug_scope_block(%union.tree_node* %scope, i32 %flags) local_unnamed_addr #5 !dbg !2479 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %scope, metadata !2483, metadata !DIExpression()), !dbg !2485
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2486
  tail call fastcc void @dump_scope_block(%struct._IO_FILE* %0, i32 0, %union.tree_node* %scope, i32 %flags) #7, !dbg !2487
  ret void, !dbg !2488
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dump_scope_block(%struct._IO_FILE* %file, i32 %indent, %union.tree_node* %scope, i32 %flags) unnamed_addr #5 !dbg !2489 {
entry:
  %s = alloca %struct.expanded_location, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2493, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %indent, metadata !2494, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata %union.tree_node* %scope, metadata !2495, metadata !DIExpression()), !dbg !2518
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2496, metadata !DIExpression()), !dbg !2518
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2519
  %bf.load = load i32, i32* %0, align 8, !dbg !2519
  %bf.lshr = lshr i32 %bf.load, 1, !dbg !2519
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2520
  %bf.load1 = load i64, i64* %1, align 8, !dbg !2520
  %bf.cast1 = and i64 %bf.load1, 16777216, !dbg !2520
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !2520
  %cond = select i1 %tobool, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !2520
  %bf.clear5 = and i32 %bf.load, 1, !dbg !2521
  %tobool6 = icmp eq i32 %bf.clear5, 0, !dbg !2521
  %cond7 = select i1 %tobool6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), !dbg !2521
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), i32 %bf.lshr, i8* %cond, i8* %cond7) #6, !dbg !2522
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2523
  %3 = load i32, i32* %2, align 4, !dbg !2523
  %cmp = icmp eq i32 %3, 0, !dbg !2524
  br i1 %cmp, label %if.end, label %if.then, !dbg !2525

if.then:                                          ; preds = %entry
  %4 = bitcast %struct.expanded_location* %s to i8*, !dbg !2526
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2526
  call void @llvm.dbg.value(metadata %struct.expanded_location* %s, metadata !2500, metadata !DIExpression(DW_OP_deref)), !dbg !2527
  call void @expand_location(%struct.expanded_location* nonnull sret %s, i32 %3) #6, !dbg !2528
  %file11 = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 0, !dbg !2529
  %5 = load i8*, i8** %file11, align 8, !dbg !2529
  %line = getelementptr inbounds %struct.expanded_location, %struct.expanded_location* %s, i64 0, i32 1, !dbg !2530
  %6 = load i32, i32* %line, align 8, !dbg !2530
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %5, i32 %6) #6, !dbg !2531
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #8, !dbg !2532
  br label %if.end, !dbg !2533

if.end:                                           ; preds = %entry, %if.then
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2534
  %7 = bitcast i32* %abstract_origin to %union.tree_node**, !dbg !2534
  %8 = load %union.tree_node*, %union.tree_node** %7, align 8, !dbg !2534
  %tobool14 = icmp eq %union.tree_node* %8, null, !dbg !2534
  br i1 %tobool14, label %if.end33, label %if.then15, !dbg !2535

if.then15:                                        ; preds = %if.end
  %call16 = call %union.tree_node* @block_ultimate_origin(%union.tree_node* %scope) #6, !dbg !2536
  call void @llvm.dbg.value(metadata %union.tree_node* %call16, metadata !2510, metadata !DIExpression()), !dbg !2537
  %tobool17 = icmp eq %union.tree_node* %call16, null, !dbg !2538
  br i1 %tobool17, label %if.end33, label %if.then18, !dbg !2540

if.then18:                                        ; preds = %if.then15
  %call19 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !2541
  %9 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2543
  %bf.load21 = load i64, i64* %9, align 8, !dbg !2543
  %bf.cast23 = and i64 %bf.load21, 65535, !dbg !2543
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast23, !dbg !2543
  %10 = load i32, i32* %arrayidx, align 4, !dbg !2543
  %cmp24 = icmp eq i32 %10, 3, !dbg !2543
  br i1 %cmp24, label %if.then25, label %if.else, !dbg !2545

if.then25:                                        ; preds = %if.then18
  call void @print_generic_decl(%struct._IO_FILE* %file, %union.tree_node* nonnull %call16, i32 %flags) #6, !dbg !2546
  br label %if.end33, !dbg !2546

if.else:                                          ; preds = %if.then18
  %11 = getelementptr inbounds %union.tree_node, %union.tree_node* %call16, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2547
  %bf.load28 = load i32, i32* %11, align 8, !dbg !2547
  %bf.lshr29 = lshr i32 %bf.load28, 1, !dbg !2547
  %call30 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i32 %bf.lshr29) #6, !dbg !2548
  br label %if.end33

if.end33:                                         ; preds = %if.then15, %if.end, %if.else, %if.then25
  %call34 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2549
  %12 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2550
  br label %for.cond, !dbg !2551

for.cond:                                         ; preds = %if.end45, %if.end33
  %var.0.in = phi %union.tree_node** [ %12, %if.end33 ], [ %chain, %if.end45 ]
  %var.0 = load %union.tree_node*, %union.tree_node** %var.0.in, align 8, !dbg !2552
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2497, metadata !DIExpression()), !dbg !2518
  %tobool36 = icmp eq %union.tree_node* %var.0, null, !dbg !2553
  br i1 %tobool36, label %for.cond50.preheader, label %for.body, !dbg !2553

for.cond50.preheader:                             ; preds = %for.cond
  %nonlocalized_vars = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2554
  %13 = bitcast %union.tree_node** %nonlocalized_vars to %struct.VEC_tree_gc**, !dbg !2554
  br label %for.cond50, !dbg !2557

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata i8 0, metadata !2513, metadata !DIExpression()), !dbg !2558
  %call37 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* nonnull %var.0) #7, !dbg !2559
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call37, metadata !2517, metadata !DIExpression()), !dbg !2558
  %tobool38 = icmp eq %struct.var_ann_d* %call37, null, !dbg !2561
  br i1 %tobool38, label %if.end45, label %land.lhs.true, !dbg !2562

land.lhs.true:                                    ; preds = %for.body
  %14 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call37, i64 0, i32 0, !dbg !2563
  %bf.load39 = load i8, i8* %14, align 8, !dbg !2563
  %bf.lshr40 = lshr i8 %bf.load39, 1, !dbg !2563
  %bf.clear41 = and i8 %bf.lshr40, 1, !dbg !2563
  %bf.cast42 = zext i8 %bf.clear41 to i32, !dbg !2563
  br label %if.end45, !dbg !2564

if.end45:                                         ; preds = %for.body, %land.lhs.true
  %used.0 = phi i32 [ 0, %for.body ], [ %bf.cast42, %land.lhs.true ], !dbg !2558
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2565
  call void @print_generic_decl(%struct._IO_FILE* %file, %union.tree_node* nonnull %var.0, i32 %flags) #6, !dbg !2566
  %tobool47 = icmp eq i32 %used.0, 0, !dbg !2567
  %cond48 = select i1 %tobool47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0), !dbg !2567
  %call49 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i8* %cond48) #6, !dbg !2568
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2569
  br label %for.cond, !dbg !2570, !llvm.loop !2571

for.cond50:                                       ; preds = %for.cond50.preheader, %cond.end70
  %i.0 = phi i32 [ %inc, %cond.end70 ], [ 0, %for.cond50.preheader ], !dbg !2573
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !2499, metadata !DIExpression()), !dbg !2518
  %15 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %13, align 8, !dbg !2574
  %tobool52 = icmp eq %struct.VEC_tree_gc* %15, null, !dbg !2574
  br i1 %tobool52, label %cond.end, label %cond.true, !dbg !2574

cond.true:                                        ; preds = %for.cond50
  %base55 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %15, i64 0, i32 0, !dbg !2574
  br label %cond.end, !dbg !2574

cond.end:                                         ; preds = %for.cond50, %cond.true
  %cond56 = phi %struct.VEC_tree_base* [ %base55, %cond.true ], [ null, %for.cond50 ], !dbg !2574
  %call57 = call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond56) #7, !dbg !2574
  %cmp58 = icmp ult i32 %i.0, %call57, !dbg !2575
  br i1 %cmp58, label %for.body60, label %for.end75, !dbg !2557

for.body60:                                       ; preds = %cond.end
  %call61 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.20, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2576
  %16 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %13, align 8, !dbg !2578
  %tobool64 = icmp eq %struct.VEC_tree_gc* %16, null, !dbg !2578
  br i1 %tobool64, label %cond.end70, label %cond.true65, !dbg !2578

cond.true65:                                      ; preds = %for.body60
  %base68 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %16, i64 0, i32 0, !dbg !2578
  br label %cond.end70, !dbg !2578

cond.end70:                                       ; preds = %for.body60, %cond.true65
  %cond71 = phi %struct.VEC_tree_base* [ %base68, %cond.true65 ], [ null, %for.body60 ], !dbg !2578
  %call72 = call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond71, i32 %i.0) #7, !dbg !2578
  call void @print_generic_decl(%struct._IO_FILE* %file, %union.tree_node* %call72, i32 %flags) #6, !dbg !2579
  %call73 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0)) #6, !dbg !2580
  %inc = add i32 %i.0, 1, !dbg !2581
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2499, metadata !DIExpression()), !dbg !2518
  br label %for.cond50, !dbg !2582, !llvm.loop !2583

for.end75:                                        ; preds = %cond.end
  %17 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2585
  %add = add nsw i32 %indent, 2, !dbg !2587
  br label %for.cond77, !dbg !2589

for.cond77:                                       ; preds = %for.body79, %for.end75
  %t.0.in = phi %union.tree_node** [ %17, %for.end75 ], [ %chain82, %for.body79 ]
  %t.0 = load %union.tree_node*, %union.tree_node** %t.0.in, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2498, metadata !DIExpression()), !dbg !2518
  %tobool78 = icmp eq %union.tree_node* %t.0, null, !dbg !2591
  br i1 %tobool78, label %for.end83, label %for.body79, !dbg !2591

for.body79:                                       ; preds = %for.cond77
  call fastcc void @dump_scope_block(%struct._IO_FILE* %file, i32 %add, %union.tree_node* nonnull %t.0, i32 %flags) #7, !dbg !2592
  %chain82 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2593
  br label %for.cond77, !dbg !2594, !llvm.loop !2595

for.end83:                                        ; preds = %for.cond77
  %call84 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %file, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %indent, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2597
  ret void, !dbg !2598
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_scope_blocks(%struct._IO_FILE* %file, i32 %flags) local_unnamed_addr #5 !dbg !2599 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %file, metadata !2603, metadata !DIExpression()), !dbg !2605
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2604, metadata !DIExpression()), !dbg !2605
  %0 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2606
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %0, i64 0, i32 5, !dbg !2606
  %1 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2606
  tail call fastcc void @dump_scope_block(%struct._IO_FILE* %file, i32 0, %union.tree_node* %1, i32 %flags) #7, !dbg !2607
  ret void, !dbg !2608
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_scope_blocks(i32 %flags) local_unnamed_addr #5 !dbg !2609 {
entry:
  call void @llvm.dbg.value(metadata i32 %flags, metadata !2613, metadata !DIExpression()), !dbg !2614
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2615
  tail call void @dump_scope_blocks(%struct._IO_FILE* %0, i32 %flags) #7, !dbg !2616
  ret void, !dbg !2617
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_unused_locals() local_unnamed_addr #5 !dbg !2618 {
entry:
  %rvi = alloca %struct.referenced_var_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp38 = alloca %struct.gimple_stmt_iterator, align 8
  %i44 = alloca %struct.ssa_operand_iterator_d, align 8
  %def = alloca %union.tree_node*, align 8
  %arg = alloca %union.tree_node*, align 8
  %tmp70 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.referenced_var_iterator* %rvi to i8*, !dbg !2699
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2637, metadata !DIExpression()), !dbg !2700
  %1 = load i32, i32* @optimize, align 4, !dbg !2701
  %tobool = icmp eq i32 %1, 0, !dbg !2701
  br i1 %tobool, label %cleanup274, label %if.end, !dbg !2703

if.end:                                           ; preds = %entry
  %2 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2704
  %initial = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %2, i64 0, i32 5, !dbg !2704
  %3 = load %union.tree_node*, %union.tree_node** %initial, align 8, !dbg !2704
  tail call fastcc void @mark_scope_block_unused(%union.tree_node* %3) #7, !dbg !2705
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2706
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2623, metadata !DIExpression()), !dbg !2700
  br label %for.cond, !dbg !2706

for.cond:                                         ; preds = %for.body, %if.end
  %t.0 = phi %union.tree_node* [ %call, %if.end ], [ %call4, %for.body ], !dbg !2708
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2623, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call1 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2709
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2709
  br i1 %tobool2, label %for.body, label %for.end, !dbg !2706

for.body:                                         ; preds = %for.cond
  %call3 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t.0) #7, !dbg !2711
  %4 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call3, i64 0, i32 0, !dbg !2712
  %bf.load = load i8, i8* %4, align 8, !dbg !2713
  %bf.clear = and i8 %bf.load, -3, !dbg !2713
  store i8 %bf.clear, i8* %4, align 8, !dbg !2713
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call4 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2709
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !2623, metadata !DIExpression()), !dbg !2700
  br label %for.cond, !dbg !2709, !llvm.loop !2714

for.end:                                          ; preds = %for.cond
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2716
  %cfg = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2716
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2716
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !2716
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2716
  %8 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !2717
  %9 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2717
  %10 = bitcast %struct.edge_def** %e to i8*, !dbg !2717
  %11 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2718
  %12 = bitcast %struct.gimple_stmt_iterator* %tmp38 to i8*, !dbg !2719
  %13 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %i44, i64 0, i32 0, !dbg !2720
  %14 = bitcast %union.tree_node** %def to i8*, !dbg !2720
  %15 = bitcast %union.tree_node** %arg to i8*, !dbg !2721
  %16 = bitcast %struct.edge_iterator* %tmp70 to i8*, !dbg !2722
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp70, i64 0, i32 0, !dbg !2722
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp70, i64 0, i32 1, !dbg !2722
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2724
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2724
  br label %for.cond5, !dbg !2716

for.cond5:                                        ; preds = %for.end84, %for.end
  %21 = phi %struct.control_flow_graph* [ %6, %for.end ], [ %.pre10, %for.end84 ], !dbg !2726
  %22 = phi %struct.function* [ %5, %for.end ], [ %.pre, %for.end84 ], !dbg !2726
  %.pn = phi %struct.basic_block_def* [ %7, %for.end ], [ %bb.0, %for.end84 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2727
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2727
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2622, metadata !DIExpression()), !dbg !2700
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %21, i64 0, i32 1, !dbg !2726
  %23 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2726
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %23, !dbg !2726
  br i1 %cmp, label %for.end87, label %for.body8, !dbg !2716

for.body8:                                        ; preds = %for.cond5
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2728
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #8, !dbg !2729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2730
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !2731
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #7, !dbg !2731
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %11, i64 24, i1 false), !dbg !2731
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !2731
  br label %for.cond9, !dbg !2732

for.cond9:                                        ; preds = %cleanup, %for.body8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call10 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2733
  %tobool11 = icmp eq i8 %call10, 0, !dbg !2734
  br i1 %tobool11, label %for.body13, label %for.end37, !dbg !2735

for.body13:                                       ; preds = %for.cond9
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call14 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2736
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call14, metadata !2657, metadata !DIExpression()), !dbg !2737
  %call15 = call fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %call14) #7, !dbg !2738
  call void @llvm.dbg.value(metadata %union.tree_node* %call15, metadata !2661, metadata !DIExpression()), !dbg !2737
  %call16 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call14) #7, !dbg !2739
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2739
  br i1 %tobool17, label %if.end19, label %cleanup, !dbg !2741

if.end19:                                         ; preds = %for.body13
  %tobool20 = icmp eq %union.tree_node* %call15, null, !dbg !2742
  br i1 %tobool20, label %if.end24, label %if.then21, !dbg !2744

if.then21:                                        ; preds = %if.end19
  %24 = getelementptr inbounds %union.tree_node, %union.tree_node* %call15, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2745
  %bf.load22 = load i64, i64* %24, align 8, !dbg !2746
  %bf.set = or i64 %bf.load22, 16777216, !dbg !2746
  store i64 %bf.set, i64* %24, align 8, !dbg !2746
  br label %if.end24, !dbg !2745

if.end24:                                         ; preds = %if.end19, %if.then21
  call void @llvm.dbg.value(metadata i64 0, metadata !2648, metadata !DIExpression()), !dbg !2717
  br label %for.cond25, !dbg !2747

for.cond25:                                       ; preds = %for.body29, %if.end24
  %i.0 = phi i64 [ 0, %if.end24 ], [ %inc, %for.body29 ], !dbg !2749
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !2648, metadata !DIExpression()), !dbg !2717
  %call26 = call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %call14) #7, !dbg !2750
  %conv = zext i32 %call26 to i64, !dbg !2750
  %cmp27 = icmp ult i64 %i.0, %conv, !dbg !2752
  br i1 %cmp27, label %for.body29, label %cleanup.loopexit, !dbg !2753

for.body29:                                       ; preds = %for.cond25
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call30 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2754
  %conv31 = trunc i64 %i.0 to i32, !dbg !2755
  %call32 = call fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %call30, i32 %conv31) #7, !dbg !2756
  call fastcc void @mark_all_vars_used(%union.tree_node** %call32, i8* null) #7, !dbg !2757
  %inc = add nuw nsw i64 %i.0, 1, !dbg !2758
  call void @llvm.dbg.value(metadata i64 %inc, metadata !2648, metadata !DIExpression()), !dbg !2717
  br label %for.cond25, !dbg !2759, !llvm.loop !2760

cleanup.loopexit:                                 ; preds = %for.cond25
  br label %cleanup, !dbg !2762

cleanup:                                          ; preds = %cleanup.loopexit, %for.body13
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2762
  br label %for.cond9, !dbg !2763, !llvm.loop !2764

for.end37:                                        ; preds = %for.cond9
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2766
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp38, %struct.basic_block_def* %bb.0) #6, !dbg !2766
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !2766
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2766
  br label %for.cond39, !dbg !2767

for.cond39:                                       ; preds = %cleanup62, %for.end37
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call40 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2768
  %tobool41 = icmp eq i8 %call40, 0, !dbg !2769
  br i1 %tobool41, label %for.body43, label %for.end69, !dbg !2770

for.body43:                                       ; preds = %for.cond39
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #8, !dbg !2771
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !2772
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call45 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !2773
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call45, metadata !2680, metadata !DIExpression()), !dbg !2720
  %call46 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call45) #7, !dbg !2774
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %call46, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2774
  %25 = bitcast i32* %var to %union.tree_node**, !dbg !2774
  %26 = load %union.tree_node*, %union.tree_node** %25, align 8, !dbg !2774
  %call47 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %26) #7, !dbg !2776
  %tobool48 = icmp eq i8 %call47, 0, !dbg !2776
  br i1 %tobool48, label %if.end50, label %cleanup62, !dbg !2777

if.end50:                                         ; preds = %for.body43
  %call51 = call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %call45) #7, !dbg !2778
  call void @llvm.dbg.value(metadata %union.tree_node* %call51, metadata !2679, metadata !DIExpression()), !dbg !2720
  store %union.tree_node* %call51, %union.tree_node** %def, align 8, !dbg !2779
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !2679, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %def, i8* null) #7, !dbg !2780
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i44, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call52 = call fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* nonnull %i44, %union.gimple_statement_d* %call45, i32 5) #7, !dbg !2781
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call52, metadata !2662, metadata !DIExpression()), !dbg !2720
  br label %for.cond53, !dbg !2781

for.cond53:                                       ; preds = %for.body57, %if.end50
  %arg_p.0 = phi %struct.ssa_use_operand_d* [ %call52, %if.end50 ], [ %call60, %for.body57 ], !dbg !2782
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %arg_p.0, metadata !2662, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i44, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call54 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %i44) #7, !dbg !2783
  %tobool55 = icmp eq i8 %call54, 0, !dbg !2783
  br i1 %tobool55, label %for.body57, label %cleanup62.loopexit, !dbg !2781

for.body57:                                       ; preds = %for.cond53
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2784
  %call58 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %arg_p.0) #7, !dbg !2785
  call void @llvm.dbg.value(metadata %union.tree_node* %call58, metadata !2681, metadata !DIExpression()), !dbg !2721
  store %union.tree_node* %call58, %union.tree_node** %arg, align 8, !dbg !2786
  call void @llvm.dbg.value(metadata %union.tree_node** %arg, metadata !2681, metadata !DIExpression(DW_OP_deref)), !dbg !2721
  call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %arg, i8* null) #7, !dbg !2787
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %15) #8, !dbg !2788
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %i44, metadata !2666, metadata !DIExpression(DW_OP_deref)), !dbg !2720
  %call60 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %i44) #7, !dbg !2783
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call60, metadata !2662, metadata !DIExpression()), !dbg !2720
  br label %for.cond53, !dbg !2783, !llvm.loop !2789

cleanup62.loopexit:                               ; preds = %for.cond53
  br label %cleanup62, !dbg !2791

cleanup62:                                        ; preds = %cleanup62.loopexit, %for.body43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !2791
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #8, !dbg !2791
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2638, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !2792
  br label %for.cond39, !dbg !2793, !llvm.loop !2794

for.end69:                                        ; preds = %for.cond39
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2796
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2796
  %call71 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2796
  %27 = extractvalue { i32, %struct.VEC_edge_gc** } %call71, 0, !dbg !2796
  store i32 %27, i32* %17, align 8, !dbg !2796
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call71, 1, !dbg !2796
  store %struct.VEC_edge_gc** %28, %struct.VEC_edge_gc*** %18, align 8, !dbg !2796
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %16, i64 16, i1 false), !dbg !2796
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #8, !dbg !2796
  br label %for.cond72, !dbg !2796

for.cond72:                                       ; preds = %for.inc83, %for.end69
  %29 = load i32, i32* %19, align 8, !dbg !2797
  %30 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %20, align 8, !dbg !2797
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2656, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  %call73 = call fastcc zeroext i8 @ei_cond(i32 %29, %struct.VEC_edge_gc** %30, %struct.edge_def** nonnull %e) #7, !dbg !2797
  %tobool74 = icmp eq i8 %call73, 0, !dbg !2796
  br i1 %tobool74, label %for.end84, label %for.body75, !dbg !2796

for.body75:                                       ; preds = %for.cond72
  %31 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2798
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !2656, metadata !DIExpression()), !dbg !2717
  %goto_locus = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 5, !dbg !2800
  %32 = load i32, i32* %goto_locus, align 8, !dbg !2800
  %tobool76 = icmp eq i32 %32, 0, !dbg !2798
  br i1 %tobool76, label %for.inc83, label %if.then77, !dbg !2801

if.then77:                                        ; preds = %for.body75
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !2656, metadata !DIExpression()), !dbg !2717
  %goto_block = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 4, !dbg !2802
  %33 = bitcast %union.tree_node** %goto_block to i64**, !dbg !2802
  %34 = load i64*, i64** %33, align 8, !dbg !2802
  %bf.load79 = load i64, i64* %34, align 8, !dbg !2803
  %bf.set81 = or i64 %bf.load79, 16777216, !dbg !2803
  store i64 %bf.set81, i64* %34, align 8, !dbg !2803
  br label %for.inc83, !dbg !2802

for.inc83:                                        ; preds = %for.body75, %if.then77
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2649, metadata !DIExpression(DW_OP_deref)), !dbg !2717
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2797
  br label %for.cond72, !dbg !2797, !llvm.loop !2804

for.end84:                                        ; preds = %for.cond72
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %10) #8, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #8, !dbg !2806
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !2806
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2726
  %cfg7.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2807
  %.pre10 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7.phi.trans.insert, align 8, !dbg !2726
  br label %for.cond5, !dbg !2726, !llvm.loop !2808

for.end87:                                        ; preds = %for.cond5
  %.lcssa = phi %struct.function* [ %22, %for.cond5 ], !dbg !2726
  %has_local_explicit_reg_vars = getelementptr inbounds %struct.function, %struct.function* %.lcssa, i64 0, i32 20, !dbg !2810
  %bf.load89 = load i32, i32* %has_local_explicit_reg_vars, align 8, !dbg !2811
  %bf.clear90 = and i32 %bf.load89, -536870913, !dbg !2811
  store i32 %bf.clear90, i32* %has_local_explicit_reg_vars, align 8, !dbg !2811
  %local_decls = getelementptr inbounds %struct.function, %struct.function* %.lcssa, i64 0, i32 9, !dbg !2812
  call void @llvm.dbg.value(metadata %union.tree_node** %local_decls, metadata !2624, metadata !DIExpression()), !dbg !2700
  br label %for.cond92, !dbg !2813

for.cond92:                                       ; preds = %cleanup143, %for.end87
  %global_unused_vars.0 = phi %struct.bitmap_head_def* [ null, %for.end87 ], [ %global_unused_vars.3, %cleanup143 ], !dbg !2814
  %cell.0 = phi %union.tree_node** [ %local_decls, %for.end87 ], [ %cell.1, %cleanup143 ], !dbg !2815
  call void @llvm.dbg.value(metadata %union.tree_node** %cell.0, metadata !2624, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.0, metadata !2637, metadata !DIExpression()), !dbg !2700
  %35 = load %union.tree_node*, %union.tree_node** %cell.0, align 8, !dbg !2816
  %tobool93 = icmp eq %union.tree_node* %35, null, !dbg !2817
  br i1 %tobool93, label %for.end146, label %for.body94, !dbg !2817

for.body94:                                       ; preds = %for.cond92
  %36 = getelementptr inbounds %union.tree_node, %union.tree_node* %35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2818
  %37 = load %union.tree_node*, %union.tree_node** %36, align 8, !dbg !2818
  call void @llvm.dbg.value(metadata %union.tree_node* %37, metadata !2685, metadata !DIExpression()), !dbg !2819
  %38 = getelementptr inbounds %union.tree_node, %union.tree_node* %37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2820
  %bf.load97 = load i64, i64* %38, align 8, !dbg !2820
  %bf.cast8 = and i64 %bf.load97, 65535, !dbg !2822
  %cmp99 = icmp eq i64 %bf.cast8, 29, !dbg !2822
  br i1 %cmp99, label %if.else118, label %land.lhs.true, !dbg !2823

land.lhs.true:                                    ; preds = %for.body94
  %call101 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %37) #7, !dbg !2824
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call101, metadata !2636, metadata !DIExpression()), !dbg !2700
  %tobool102 = icmp eq %struct.var_ann_d* %call101, null, !dbg !2825
  br i1 %tobool102, label %if.then107, label %lor.lhs.false, !dbg !2826

lor.lhs.false:                                    ; preds = %land.lhs.true
  %39 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call101, i64 0, i32 0, !dbg !2827
  %bf.load103 = load i8, i8* %39, align 8, !dbg !2827
  %bf.clear104 = and i8 %bf.load103, 2, !dbg !2827
  %tobool106 = icmp eq i8 %bf.clear104, 0, !dbg !2828
  br i1 %tobool106, label %if.then107, label %lor.lhs.false.if.else118_crit_edge, !dbg !2829

lor.lhs.false.if.else118_crit_edge:               ; preds = %lor.lhs.false
  %bf.load120.pre = load i64, i64* %38, align 8, !dbg !2830
  br label %if.else118, !dbg !2829

if.then107:                                       ; preds = %lor.lhs.false, %land.lhs.true
  %call108 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %37) #7, !dbg !2832
  %tobool109 = icmp eq i8 %call108, 0, !dbg !2832
  br i1 %tobool109, label %if.else, label %if.then110, !dbg !2835

if.then110:                                       ; preds = %if.then107
  %cmp111 = icmp eq %struct.bitmap_head_def* %global_unused_vars.0, null, !dbg !2836
  br i1 %cmp111, label %if.then113, label %if.end115, !dbg !2839

if.then113:                                       ; preds = %if.then110
  %call114 = call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call114, metadata !2637, metadata !DIExpression()), !dbg !2700
  br label %if.end115, !dbg !2841

if.end115:                                        ; preds = %if.then113, %if.then110
  %global_unused_vars.1 = phi %struct.bitmap_head_def* [ %call114, %if.then113 ], [ %global_unused_vars.0, %if.then110 ], !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.1, metadata !2637, metadata !DIExpression()), !dbg !2700
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %37, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2842
  %40 = load i32, i32* %uid, align 4, !dbg !2842
  %call116 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %global_unused_vars.1, i32 %40) #6, !dbg !2843
  br label %if.end140, !dbg !2844

if.else:                                          ; preds = %if.then107
  %41 = bitcast %union.tree_node** %cell.0 to %struct.tree_common**, !dbg !2845
  %42 = load %struct.tree_common*, %struct.tree_common** %41, align 8, !dbg !2845
  %chain = getelementptr inbounds %struct.tree_common, %struct.tree_common* %42, i64 0, i32 1, !dbg !2845
  %43 = bitcast %union.tree_node** %chain to i64*, !dbg !2845
  %44 = load i64, i64* %43, align 8, !dbg !2845
  %45 = bitcast %union.tree_node** %cell.0 to i64*, !dbg !2847
  store i64 %44, i64* %45, align 8, !dbg !2847
  br label %cleanup143, !dbg !2848, !llvm.loop !2849

if.else118:                                       ; preds = %lor.lhs.false.if.else118_crit_edge, %for.body94
  %bf.load120 = phi i64 [ %bf.load120.pre, %lor.lhs.false.if.else118_crit_edge ], [ %bf.load97, %for.body94 ], !dbg !2830
  %bf.cast1229 = and i64 %bf.load120, 65535, !dbg !2851
  %cmp123 = icmp eq i64 %bf.cast1229, 32, !dbg !2851
  br i1 %cmp123, label %land.lhs.true125, label %if.end140, !dbg !2852

land.lhs.true125:                                 ; preds = %if.else118
  %hard_register = getelementptr inbounds %union.tree_node, %union.tree_node* %37, i64 0, i32 0, i32 0, i32 0, i32 4, !dbg !2853
  %46 = bitcast i24* %hard_register to i32*, !dbg !2853
  %bf.load126 = load i32, i32* %46, align 8, !dbg !2853
  %bf.clear128 = and i32 %bf.load126, 2, !dbg !2853
  %tobool129 = icmp eq i32 %bf.clear128, 0, !dbg !2853
  br i1 %tobool129, label %if.end140, label %land.lhs.true130, !dbg !2854

land.lhs.true130:                                 ; preds = %land.lhs.true125
  %call131 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %37) #7, !dbg !2855
  %tobool132 = icmp eq i8 %call131, 0, !dbg !2855
  br i1 %tobool132, label %if.then133, label %if.end140, !dbg !2856

if.then133:                                       ; preds = %land.lhs.true130
  %47 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2857
  %has_local_explicit_reg_vars135 = getelementptr inbounds %struct.function, %struct.function* %47, i64 0, i32 20, !dbg !2858
  %bf.load136 = load i32, i32* %has_local_explicit_reg_vars135, align 8, !dbg !2859
  %bf.set138 = or i32 %bf.load136, 536870912, !dbg !2859
  store i32 %bf.set138, i32* %has_local_explicit_reg_vars135, align 8, !dbg !2859
  br label %if.end140, !dbg !2857

if.end140:                                        ; preds = %land.lhs.true130, %land.lhs.true125, %if.else118, %if.then133, %if.end115
  %global_unused_vars.2 = phi %struct.bitmap_head_def* [ %global_unused_vars.1, %if.end115 ], [ %global_unused_vars.0, %if.then133 ], [ %global_unused_vars.0, %land.lhs.true130 ], [ %global_unused_vars.0, %land.lhs.true125 ], [ %global_unused_vars.0, %if.else118 ], !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.2, metadata !2637, metadata !DIExpression()), !dbg !2700
  %48 = bitcast %union.tree_node** %cell.0 to %struct.tree_common**, !dbg !2860
  %49 = load %struct.tree_common*, %struct.tree_common** %48, align 8, !dbg !2860
  %chain142 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %49, i64 0, i32 1, !dbg !2860
  call void @llvm.dbg.value(metadata %union.tree_node** %chain142, metadata !2624, metadata !DIExpression()), !dbg !2700
  br label %cleanup143, !dbg !2861

cleanup143:                                       ; preds = %if.end140, %if.else
  %global_unused_vars.3 = phi %struct.bitmap_head_def* [ %global_unused_vars.2, %if.end140 ], [ %global_unused_vars.0, %if.else ], !dbg !2814
  %cell.1 = phi %union.tree_node** [ %chain142, %if.end140 ], [ %cell.0, %if.else ], !dbg !2815
  call void @llvm.dbg.value(metadata %union.tree_node** %cell.1, metadata !2624, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.3, metadata !2637, metadata !DIExpression()), !dbg !2700
  br label %for.cond92

for.end146:                                       ; preds = %for.cond92
  %global_unused_vars.0.lcssa = phi %struct.bitmap_head_def* [ %global_unused_vars.0, %for.cond92 ], !dbg !2814
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.0.lcssa, metadata !2637, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.0.lcssa, metadata !2637, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %global_unused_vars.0.lcssa, metadata !2637, metadata !DIExpression()), !dbg !2700
  %cmp147 = icmp eq %struct.bitmap_head_def* %global_unused_vars.0.lcssa, null, !dbg !2862
  br i1 %cmp147, label %if.end217, label %if.then149, !dbg !2863

if.then149:                                       ; preds = %for.end146
  %50 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2864
  %local_decls151 = getelementptr inbounds %struct.function, %struct.function* %50, i64 0, i32 9, !dbg !2865
  %51 = bitcast %struct.bitmap_head_def* %global_unused_vars.0.lcssa to i8*, !dbg !2866
  br label %for.cond152, !dbg !2868

for.cond152:                                      ; preds = %for.inc182, %if.then149
  %t.1.in = phi %union.tree_node** [ %local_decls151, %if.then149 ], [ %chain184, %for.inc182 ]
  %t.1 = load %union.tree_node*, %union.tree_node** %t.1.in, align 8, !dbg !2869
  call void @llvm.dbg.value(metadata %union.tree_node* %t.1, metadata !2623, metadata !DIExpression()), !dbg !2700
  %tobool153 = icmp eq %union.tree_node* %t.1, null, !dbg !2870
  br i1 %tobool153, label %for.end185, label %for.body154, !dbg !2870

for.body154:                                      ; preds = %for.cond152
  %52 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2871
  %53 = load %union.tree_node*, %union.tree_node** %52, align 8, !dbg !2871
  call void @llvm.dbg.value(metadata %union.tree_node* %53, metadata !2689, metadata !DIExpression()), !dbg !2872
  %54 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2873
  %bf.load159 = load i64, i64* %54, align 8, !dbg !2873
  %bf.cast1617 = and i64 %bf.load159, 65535, !dbg !2874
  %cmp162 = icmp eq i64 %bf.cast1617, 32, !dbg !2874
  br i1 %cmp162, label %land.lhs.true164, label %for.inc182, !dbg !2875

land.lhs.true164:                                 ; preds = %for.body154
  %call165 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %53) #7, !dbg !2876
  %tobool167 = icmp eq i8 %call165, 0, !dbg !2876
  br i1 %tobool167, label %for.inc182, label %land.lhs.true168, !dbg !2877

land.lhs.true168:                                 ; preds = %land.lhs.true164
  %call169 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %53) #7, !dbg !2878
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call169, metadata !2636, metadata !DIExpression()), !dbg !2700
  %cmp170 = icmp eq %struct.var_ann_d* %call169, null, !dbg !2879
  br i1 %cmp170, label %for.inc182, label %land.lhs.true172, !dbg !2880

land.lhs.true172:                                 ; preds = %land.lhs.true168
  %55 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call169, i64 0, i32 0, !dbg !2881
  %bf.load173 = load i8, i8* %55, align 8, !dbg !2881
  %bf.clear175 = and i8 %bf.load173, 2, !dbg !2881
  %tobool177 = icmp eq i8 %bf.clear175, 0, !dbg !2882
  br i1 %tobool177, label %for.inc182, label %if.then178, !dbg !2883

if.then178:                                       ; preds = %land.lhs.true172
  %initial180 = getelementptr inbounds %union.tree_node, %union.tree_node* %53, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !2884
  call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %initial180, i8* nonnull %51) #7, !dbg !2885
  br label %for.inc182, !dbg !2885

for.inc182:                                       ; preds = %land.lhs.true172, %land.lhs.true168, %land.lhs.true164, %for.body154, %if.then178
  %chain184 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.1, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2886
  br label %for.cond152, !dbg !2887, !llvm.loop !2888

for.end185:                                       ; preds = %for.cond152
  %56 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2890
  %local_decls187 = getelementptr inbounds %struct.function, %struct.function* %56, i64 0, i32 9, !dbg !2891
  call void @llvm.dbg.value(metadata %union.tree_node** %local_decls187, metadata !2624, metadata !DIExpression()), !dbg !2700
  br label %for.cond188, !dbg !2892

for.cond188:                                      ; preds = %if.end215, %for.end185
  %cell.2 = phi %union.tree_node** [ %local_decls187, %for.end185 ], [ %cell.3, %if.end215 ], !dbg !2893
  call void @llvm.dbg.value(metadata %union.tree_node** %cell.2, metadata !2624, metadata !DIExpression()), !dbg !2700
  %57 = load %union.tree_node*, %union.tree_node** %cell.2, align 8, !dbg !2894
  %tobool189 = icmp eq %union.tree_node* %57, null, !dbg !2895
  br i1 %tobool189, label %for.end216, label %for.body190, !dbg !2895

for.body190:                                      ; preds = %for.cond188
  %58 = getelementptr inbounds %union.tree_node, %union.tree_node* %57, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2896
  %59 = load %union.tree_node*, %union.tree_node** %58, align 8, !dbg !2896
  call void @llvm.dbg.value(metadata %union.tree_node* %59, metadata !2695, metadata !DIExpression()), !dbg !2897
  %60 = getelementptr inbounds %union.tree_node, %union.tree_node* %59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2898
  %bf.load195 = load i64, i64* %60, align 8, !dbg !2898
  %bf.cast1976 = and i64 %bf.load195, 65535, !dbg !2900
  %cmp198 = icmp eq i64 %bf.cast1976, 32, !dbg !2900
  br i1 %cmp198, label %land.lhs.true200, label %if.else212, !dbg !2901

land.lhs.true200:                                 ; preds = %for.body190
  %call201 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %59) #7, !dbg !2902
  %tobool203 = icmp eq i8 %call201, 0, !dbg !2902
  br i1 %tobool203, label %if.else212, label %land.lhs.true204, !dbg !2903

land.lhs.true204:                                 ; preds = %land.lhs.true200
  %uid206 = getelementptr inbounds %union.tree_node, %union.tree_node* %59, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2904
  %61 = load i32, i32* %uid206, align 4, !dbg !2904
  %call207 = call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %global_unused_vars.0.lcssa, i32 %61) #6, !dbg !2905
  %tobool208 = icmp eq i32 %call207, 0, !dbg !2905
  br i1 %tobool208, label %if.else212, label %if.then209, !dbg !2906

if.then209:                                       ; preds = %land.lhs.true204
  %62 = bitcast %union.tree_node** %cell.2 to %struct.tree_common**, !dbg !2907
  %63 = load %struct.tree_common*, %struct.tree_common** %62, align 8, !dbg !2907
  %chain211 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %63, i64 0, i32 1, !dbg !2907
  %64 = bitcast %union.tree_node** %chain211 to i64*, !dbg !2907
  %65 = load i64, i64* %64, align 8, !dbg !2907
  %66 = bitcast %union.tree_node** %cell.2 to i64*, !dbg !2908
  store i64 %65, i64* %66, align 8, !dbg !2908
  br label %if.end215, !dbg !2909

if.else212:                                       ; preds = %land.lhs.true204, %land.lhs.true200, %for.body190
  %67 = bitcast %union.tree_node** %cell.2 to %struct.tree_common**, !dbg !2910
  %68 = load %struct.tree_common*, %struct.tree_common** %67, align 8, !dbg !2910
  %chain214 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %68, i64 0, i32 1, !dbg !2910
  call void @llvm.dbg.value(metadata %union.tree_node** %chain214, metadata !2624, metadata !DIExpression()), !dbg !2700
  br label %if.end215

if.end215:                                        ; preds = %if.else212, %if.then209
  %cell.3 = phi %union.tree_node** [ %cell.2, %if.then209 ], [ %chain214, %if.else212 ], !dbg !2911
  call void @llvm.dbg.value(metadata %union.tree_node** %cell.3, metadata !2624, metadata !DIExpression()), !dbg !2700
  br label %for.cond188, !dbg !2912, !llvm.loop !2913

for.end216:                                       ; preds = %for.cond188
  call void @bitmap_obstack_free(%struct.bitmap_head_def* nonnull %global_unused_vars.0.lcssa) #6, !dbg !2915
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !2637, metadata !DIExpression()), !dbg !2700
  br label %if.end217, !dbg !2916

if.end217:                                        ; preds = %for.end146, %for.end216
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call218 = call fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2917
  call void @llvm.dbg.value(metadata %union.tree_node* %call218, metadata !2623, metadata !DIExpression()), !dbg !2700
  br label %for.cond219, !dbg !2917

for.cond219:                                      ; preds = %for.inc262, %if.end217
  %t.2 = phi %union.tree_node* [ %call218, %if.end217 ], [ %call263, %for.inc262 ], !dbg !2919
  call void @llvm.dbg.value(metadata %union.tree_node* %t.2, metadata !2623, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call220 = call fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2920
  %tobool221 = icmp eq i8 %call220, 0, !dbg !2920
  br i1 %tobool221, label %for.body223, label %for.end264, !dbg !2917

for.body223:                                      ; preds = %for.cond219
  %call224 = call fastcc zeroext i8 @is_global_var(%union.tree_node* %t.2) #7, !dbg !2922
  %tobool225 = icmp eq i8 %call224, 0, !dbg !2922
  br i1 %tobool225, label %land.lhs.true226, label %for.inc262, !dbg !2924

land.lhs.true226:                                 ; preds = %for.body223
  %69 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2925
  %bf.load228 = load i64, i64* %69, align 8, !dbg !2925
  %bf.cast2303 = and i64 %bf.load228, 65535, !dbg !2926
  %cmp231 = icmp eq i64 %bf.cast2303, 34, !dbg !2926
  br i1 %cmp231, label %for.inc262, label %land.lhs.true233, !dbg !2927

land.lhs.true233:                                 ; preds = %land.lhs.true226
  %cmp238 = icmp eq i64 %bf.cast2303, 36, !dbg !2928
  br i1 %cmp238, label %for.inc262, label %land.lhs.true240, !dbg !2929

land.lhs.true240:                                 ; preds = %land.lhs.true233
  %call241 = call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t.2) #7, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call241, metadata !2636, metadata !DIExpression()), !dbg !2700
  %70 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call241, i64 0, i32 0, !dbg !2931
  %bf.load242 = load i8, i8* %70, align 8, !dbg !2931
  %bf.clear244 = and i8 %bf.load242, 2, !dbg !2931
  %tobool246 = icmp eq i8 %bf.clear244, 0, !dbg !2932
  br i1 %tobool246, label %land.lhs.true247, label %for.inc262, !dbg !2933

land.lhs.true247:                                 ; preds = %land.lhs.true240
  %bf.clear250 = and i8 %bf.load242, 16, !dbg !2934
  %tobool252 = icmp eq i8 %bf.clear250, 0, !dbg !2935
  br i1 %tobool252, label %land.lhs.true253, label %for.inc262, !dbg !2936

land.lhs.true253:                                 ; preds = %land.lhs.true247
  %bf.load255 = load i64, i64* %69, align 8, !dbg !2937
  %bf.cast2585 = and i64 %bf.load255, 262144, !dbg !2937
  %tobool259 = icmp eq i64 %bf.cast2585, 0, !dbg !2937
  br i1 %tobool259, label %if.then260, label %for.inc262, !dbg !2938

if.then260:                                       ; preds = %land.lhs.true253
  call void @remove_referenced_var(%union.tree_node* %t.2) #6, !dbg !2939
  br label %for.inc262, !dbg !2939

for.inc262:                                       ; preds = %land.lhs.true253, %land.lhs.true247, %land.lhs.true240, %land.lhs.true233, %land.lhs.true226, %for.body223, %if.then260
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %rvi, metadata !2625, metadata !DIExpression(DW_OP_deref)), !dbg !2700
  %call263 = call fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* nonnull %rvi) #7, !dbg !2920
  call void @llvm.dbg.value(metadata %union.tree_node* %call263, metadata !2623, metadata !DIExpression()), !dbg !2700
  br label %for.cond219, !dbg !2920, !llvm.loop !2940

for.end264:                                       ; preds = %for.cond219
  %71 = load %struct.tree_decl_common*, %struct.tree_decl_common** bitcast (%union.tree_node** @current_function_decl to %struct.tree_decl_common**), align 8, !dbg !2942
  %initial266 = getelementptr inbounds %struct.tree_decl_common, %struct.tree_decl_common* %71, i64 0, i32 5, !dbg !2942
  %72 = load %union.tree_node*, %union.tree_node** %initial266, align 8, !dbg !2942
  %call267 = call fastcc zeroext i8 @remove_unused_scope_block_p(%union.tree_node* %72) #7, !dbg !2943
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2944
  %tobool268 = icmp eq %struct._IO_FILE* %73, null, !dbg !2944
  br i1 %tobool268, label %cleanup274, label %land.lhs.true269, !dbg !2946

land.lhs.true269:                                 ; preds = %for.end264
  %74 = load i32, i32* @dump_flags, align 4, !dbg !2947
  %and = and i32 %74, 8, !dbg !2948
  %tobool270 = icmp eq i32 %and, 0, !dbg !2948
  br i1 %tobool270, label %cleanup274, label %if.then271, !dbg !2949

if.then271:                                       ; preds = %land.lhs.true269
  %call272 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %73, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !2950
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2952
  %76 = load i32, i32* @dump_flags, align 4, !dbg !2953
  call void @dump_scope_blocks(%struct._IO_FILE* %75, i32 %76) #7, !dbg !2954
  br label %cleanup274, !dbg !2955

cleanup274:                                       ; preds = %land.lhs.true269, %for.end264, %entry, %if.then271
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !2956
  ret void, !dbg !2956
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mark_scope_block_unused(%union.tree_node* %scope) unnamed_addr #5 !dbg !2957 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %scope, metadata !2961, metadata !DIExpression()), !dbg !2963
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2964
  %bf.load = load i64, i64* %0, align 8, !dbg !2965
  %bf.clear = and i64 %bf.load, -16777217, !dbg !2965
  store i64 %bf.clear, i64* %0, align 8, !dbg !2965
  %1 = load %struct.gcc_debug_hooks*, %struct.gcc_debug_hooks** @debug_hooks, align 8, !dbg !2966
  %ignore_block = getelementptr inbounds %struct.gcc_debug_hooks, %struct.gcc_debug_hooks* %1, i64 0, i32 9, !dbg !2968
  %2 = load i8 (%union.tree_node*)*, i8 (%union.tree_node*)** %ignore_block, align 8, !dbg !2968
  %call = tail call zeroext i8 %2(%union.tree_node* %scope) #6, !dbg !2969
  %tobool = icmp eq i8 %call, 0, !dbg !2969
  br i1 %tobool, label %if.then, label %if.end, !dbg !2970

if.then:                                          ; preds = %entry
  %bf.load2 = load i64, i64* %0, align 8, !dbg !2971
  %bf.set = or i64 %bf.load2, 16777216, !dbg !2971
  store i64 %bf.set, i64* %0, align 8, !dbg !2971
  br label %if.end, !dbg !2972

if.end:                                           ; preds = %entry, %if.then
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2973
  br label %for.cond, !dbg !2975

for.cond:                                         ; preds = %for.body, %if.end
  %t.0.in = phi %union.tree_node** [ %3, %if.end ], [ %chain, %for.body ]
  %t.0 = load %union.tree_node*, %union.tree_node** %t.0.in, align 8, !dbg !2976
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2962, metadata !DIExpression()), !dbg !2963
  %tobool4 = icmp eq %union.tree_node* %t.0, null, !dbg !2977
  br i1 %tobool4, label %for.end, label %for.body, !dbg !2977

for.body:                                         ; preds = %for.cond
  tail call fastcc void @mark_scope_block_unused(%union.tree_node* nonnull %t.0) #7, !dbg !2978
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !2980
  br label %for.cond, !dbg !2981, !llvm.loop !2982

for.end:                                          ; preds = %for.cond
  ret void, !dbg !2984
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @first_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2985 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !2991, metadata !DIExpression()), !dbg !2992
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !2993
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2994
  %call = tail call fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %0) #7, !dbg !2995
  %call1 = tail call fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %call) #7, !dbg !2996
  %1 = bitcast i8* %call1 to %union.tree_node*, !dbg !2997
  ret %union.tree_node* %1, !dbg !2998
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_referenced_vars_p(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !2999 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !3005, metadata !DIExpression()), !dbg !3006
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !3007
  %call = tail call fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) #7, !dbg !3008
  ret i8 %call, !dbg !3009
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @var_ann(%union.tree_node* %t) unnamed_addr #0 !dbg !3010 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3017, metadata !DIExpression()), !dbg !3021
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3022
  %bf.load = load i64, i64* %0, align 8, !dbg !3022
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3022
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !3022
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3022

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 1, !dbg !3022
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !3022
  br label %cond.end19, !dbg !3022

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !3022
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !3022

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !3022
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !3022
  br label %cond.end19, !dbg !3022

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !3022
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !3022
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !3022
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !3022
  br label %cond.end19, !dbg !3022

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !3022
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !3018, metadata !DIExpression()), !dbg !3021
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !3023
  br i1 %tobool, label %cond.end23, label %cond.true21, !dbg !3023

cond.true21:                                      ; preds = %cond.end19
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !3024
  br label %cond.end23, !dbg !3023

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %cond24 = phi %struct.var_ann_d* [ %4, %cond.true21 ], [ null, %cond.end19 ], !dbg !3023
  ret %struct.var_ann_d* %cond24, !dbg !3025
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @next_referenced_var(%struct.referenced_var_iterator* %iter) unnamed_addr #0 !dbg !3026 {
entry:
  call void @llvm.dbg.value(metadata %struct.referenced_var_iterator* %iter, metadata !3028, metadata !DIExpression()), !dbg !3029
  %hti = getelementptr inbounds %struct.referenced_var_iterator, %struct.referenced_var_iterator* %iter, i64 0, i32 0, !dbg !3030
  %call = tail call fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) #7, !dbg !3031
  %0 = bitcast i8* %call to %union.tree_node*, !dbg !3032
  ret %union.tree_node* %0, !dbg !3033
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3034 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3038, metadata !DIExpression()), !dbg !3041
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3039, metadata !DIExpression()), !dbg !3042
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3043
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3040, metadata !DIExpression()), !dbg !3041
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3044
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3045
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3046
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3047
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3048
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3049
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3050
  ret void, !dbg !3051
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3052 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3056, metadata !DIExpression()), !dbg !3057
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3058
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3058
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3059
  %conv1 = zext i1 %cmp to i8, !dbg !3060
  ret i8 %conv1, !dbg !3061
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3062 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3066, metadata !DIExpression()), !dbg !3067
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3068
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3068
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !3069
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !3069
  ret %union.gimple_statement_d* %1, !dbg !3070
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_block(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3071 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3076, metadata !DIExpression()), !dbg !3077
  %block = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 5, !dbg !3078
  %0 = load %union.tree_node*, %union.tree_node** %block, align 8, !dbg !3078
  ret %union.tree_node* %0, !dbg !3079
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3080 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3084, metadata !DIExpression()), !dbg !3085
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3086
  %cmp = icmp eq i32 %call, 2, !dbg !3087
  %conv1 = zext i1 %cmp to i8, !dbg !3086
  ret i8 %conv1, !dbg !3088
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3089 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3093, metadata !DIExpression()), !dbg !3094
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3095
  %0 = load i32, i32* %num_ops, align 4, !dbg !3095
  ret i32 %0, !dbg !3096
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @mark_all_vars_used(%union.tree_node** %expr_p, i8* %data) unnamed_addr #0 !dbg !3097 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %expr_p, metadata !3101, metadata !DIExpression()), !dbg !3103
  call void @llvm.dbg.value(metadata i8* %data, metadata !3102, metadata !DIExpression()), !dbg !3103
  %call = tail call %union.tree_node* @walk_tree_1(%union.tree_node** %expr_p, %union.tree_node* (%union.tree_node**, i32*, i8*)* nonnull @mark_all_vars_used_1, i8* %data, %struct.pointer_set_t* null, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)* null) #6, !dbg !3104
  ret void, !dbg !3105
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_op_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3106 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3110, metadata !DIExpression()), !dbg !3112
  call void @llvm.dbg.value(metadata i32 %i, metadata !3111, metadata !DIExpression()), !dbg !3112
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3113
  %tobool = icmp eq i8 %call, 0, !dbg !3113
  br i1 %tobool, label %return, label %if.then, !dbg !3115

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3116
  %idx.ext = zext i32 %i to i64, !dbg !3118
  %add.ptr = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idx.ext, !dbg !3118
  br label %return, !dbg !3119

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node** [ %add.ptr, %if.then ], [ null, %entry ], !dbg !3120
  ret %union.tree_node** %retval.0, !dbg !3121
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3122 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3127, metadata !DIExpression()), !dbg !3128
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3129
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3129
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3130
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3130
  %2 = load i64, i64* %1, align 8, !dbg !3130
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3131
  store i64 %2, i64* %3, align 8, !dbg !3131
  ret void, !dbg !3132
}

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_global_var(%union.tree_node* %t) unnamed_addr #0 !dbg !3133 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !3137, metadata !DIExpression()), !dbg !3138
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3139
  %bf.load = load i64, i64* %0, align 8, !dbg !3139
  %bf.cast1 = and i64 %bf.load, 67108864, !dbg !3139
  %tobool = icmp eq i64 %bf.cast1, 0, !dbg !3139
  br i1 %tobool, label %lor.rhs, label %lor.end, !dbg !3140

lor.rhs:                                          ; preds = %entry
  %decl_flag_1 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3141
  %1 = bitcast i40* %decl_flag_1 to i64*, !dbg !3141
  %bf.load1 = load i64, i64* %1, align 8, !dbg !3141
  %bf.cast42 = lshr i64 %bf.load1, 25, !dbg !3140
  %2 = trunc i64 %bf.cast42 to i8, !dbg !3140
  %3 = and i8 %2, 1, !dbg !3140
  br label %lor.end, !dbg !3140

lor.end:                                          ; preds = %entry, %lor.rhs
  %4 = phi i8 [ 1, %entry ], [ %3, %lor.rhs ]
  ret i8 %4, !dbg !3142
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3143 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3145, metadata !DIExpression()), !dbg !3146
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !3147
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !3147
  ret %union.tree_node* %0, !dbg !3148
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_phiuse(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %phi, i32 %flags) unnamed_addr #0 !dbg !3149 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3154, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3155, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.value(metadata i32 5, metadata !3156, metadata !DIExpression()), !dbg !3159
  %call = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %phi) #7, !dbg !3160
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3157, metadata !DIExpression()), !dbg !3159
  tail call fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3161
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3162
  store i8 0, i8* %done, align 8, !dbg !3163
  %call1 = tail call zeroext i8 @is_gimple_reg(%union.tree_node* %call) #6, !dbg !3164
  br i1 false, label %if.then, label %if.end, !dbg !3165

if.then:                                          ; preds = %entry
  br label %cleanup, !dbg !3166

if.end:                                           ; preds = %entry
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3169
  store %union.gimple_statement_d* %phi, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3170
  %call7 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !3171
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3172
  store i32 %call7, i32* %num_phi, align 4, !dbg !3173
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !3174
  store i32 2, i32* %iter_type, align 4, !dbg !3175
  %call8 = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !3176
  br label %cleanup, !dbg !3177

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ undef, %if.then ], [ %call8, %if.end ], !dbg !3159
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3178
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3179 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3185, metadata !DIExpression()), !dbg !3186
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3187
  %0 = load i8, i8* %done, align 8, !dbg !3187
  ret i8 %0, !dbg !3188
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3189 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3193, metadata !DIExpression()), !dbg !3194
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3195
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3195
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3196
  ret %union.tree_node* %1, !dbg !3197
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !3198 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3202, metadata !DIExpression()), !dbg !3204
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3205
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !3205
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !3207
  br i1 %tobool, label %if.end, label %if.then, !dbg !3208

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !3209
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !3203, metadata !DIExpression()), !dbg !3204
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !3211
  %2 = load i64, i64* %1, align 8, !dbg !3211
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3212
  store i64 %2, i64* %3, align 8, !dbg !3212
  br label %cleanup, !dbg !3213

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3214
  %4 = load i32, i32* %phi_i, align 8, !dbg !3214
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3216
  %5 = load i32, i32* %num_phi, align 4, !dbg !3216
  %cmp = icmp slt i32 %4, %5, !dbg !3217
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !3218

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3219
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3219
  %inc = add nsw i32 %4, 1, !dbg !3219
  store i32 %inc, i32* %phi_i, align 8, !dbg !3219
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !3219
  br label %cleanup, !dbg !3221

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3222
  store i8 1, i8* %done, align 8, !dbg !3223
  br label %cleanup, !dbg !3224

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !3204
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !3225
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3226 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3230, metadata !DIExpression()), !dbg !3232
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3233
  store i32 0, i32* %index, align 8, !dbg !3234
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3235
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3236
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3237
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3237
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3237
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3238 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3244, metadata !DIExpression()), !dbg !3245
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3246
  %tobool = icmp eq i8 %call, 0, !dbg !3246
  br i1 %tobool, label %if.then, label %if.else, !dbg !3248

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3249
  br label %return, !dbg !3251

if.else:                                          ; preds = %entry
  br label %return, !dbg !3252

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3254
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3254
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3254
  ret i8 %retval.0, !dbg !3255
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3256 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3261, metadata !DIExpression()), !dbg !3262
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3263
  %0 = load i32, i32* %index, align 8, !dbg !3263
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3263
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3263
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3263
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3263
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3263

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3263
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3263
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3263
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3263
  br label %cond.end, !dbg !3263

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3263
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3263
  %cmp = icmp ult i32 %0, %call2, !dbg !3263
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3263

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3263
  br label %cond.end5, !dbg !3263

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3264
  %inc = add i32 %5, 1, !dbg !3264
  store i32 %inc, i32* %index, align 8, !dbg !3264
  ret void, !dbg !3265
}

declare dso_local void @remove_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @remove_unused_scope_block_p(%union.tree_node* %scope) unnamed_addr #5 !dbg !3266 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %scope, metadata !3270, metadata !DIExpression()), !dbg !3292
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3293
  %bf.load = load i64, i64* %0, align 8, !dbg !3293
  %bf.cast4 = lshr i64 %bf.load, 24, !dbg !3294
  %1 = trunc i64 %bf.cast4 to i8, !dbg !3294
  %2 = and i8 %1, 1, !dbg !3294
  %3 = xor i8 %2, 1, !dbg !3294
  call void @llvm.dbg.value(metadata i8 %3, metadata !3273, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 0, metadata !3275, metadata !DIExpression()), !dbg !3292
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3295
  call void @llvm.dbg.value(metadata %union.tree_node** %4, metadata !3271, metadata !DIExpression()), !dbg !3292
  br label %for.cond, !dbg !3297

for.cond:                                         ; preds = %for.inc, %entry
  %unused.0 = phi i8 [ %3, %entry ], [ %unused.4, %for.inc ], !dbg !3292
  %t.0 = phi %union.tree_node** [ %4, %entry ], [ %next.4, %for.inc ], !dbg !3298
  call void @llvm.dbg.value(metadata %union.tree_node** %t.0, metadata !3271, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.0, metadata !3273, metadata !DIExpression()), !dbg !3292
  %5 = load %union.tree_node*, %union.tree_node** %t.0, align 8, !dbg !3299
  %tobool1 = icmp eq %union.tree_node* %5, null, !dbg !3301
  br i1 %tobool1, label %for.end, label %for.body, !dbg !3301

for.body:                                         ; preds = %for.cond
  %6 = bitcast %union.tree_node** %t.0 to %struct.tree_common**, !dbg !3302
  %chain = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3302
  call void @llvm.dbg.value(metadata %union.tree_node** %chain, metadata !3272, metadata !DIExpression()), !dbg !3292
  %.cast = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3304
  %bf.load3 = load i64, i64* %.cast, align 8, !dbg !3304
  %bf.cast58 = and i64 %bf.load3, 65535, !dbg !3306
  %cmp = icmp eq i64 %bf.cast58, 29, !dbg !3306
  br i1 %cmp, label %for.inc, label %if.else, !dbg !3307

if.else:                                          ; preds = %for.body
  %cmp11 = icmp eq i64 %bf.cast58, 32, !dbg !3308
  br i1 %cmp11, label %land.lhs.true, label %if.else.if.else19_crit_edge, !dbg !3310

if.else.if.else19_crit_edge:                      ; preds = %if.else
  %ignored_flag.phi.trans.insert = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3311
  %.phi.trans.insert = bitcast i40* %ignored_flag.phi.trans.insert to i64*, !dbg !3311
  %bf.load21.pre = load i64, i64* %.phi.trans.insert, align 8, !dbg !3313
  br label %if.else19, !dbg !3310

land.lhs.true:                                    ; preds = %if.else
  %decl_flag_2 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3314
  %7 = bitcast i40* %decl_flag_2 to i64*, !dbg !3314
  %bf.load13 = load i64, i64* %7, align 8, !dbg !3314
  %bf.cast1612 = and i64 %bf.load13, 67108864, !dbg !3314
  %tobool17 = icmp eq i64 %bf.cast1612, 0, !dbg !3314
  br i1 %tobool17, label %if.else19, label %for.inc, !dbg !3315

if.else19:                                        ; preds = %if.else.if.else19_crit_edge, %land.lhs.true
  %bf.load21 = phi i64 [ %bf.load21.pre, %if.else.if.else19_crit_edge ], [ %bf.load13, %land.lhs.true ], !dbg !3313
  %bf.cast2410 = and i64 %bf.load21, 1024, !dbg !3313
  %tobool25 = icmp eq i64 %bf.cast2410, 0, !dbg !3313
  br i1 %tobool25, label %if.else29, label %if.then26, !dbg !3316

if.then26:                                        ; preds = %if.else19
  %chain28 = getelementptr inbounds %union.tree_node, %union.tree_node* %5, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3317
  %8 = bitcast %union.tree_node** %chain28 to i64*, !dbg !3317
  %9 = load i64, i64* %8, align 8, !dbg !3317
  %10 = bitcast %union.tree_node** %t.0 to i64*, !dbg !3319
  store i64 %9, i64* %10, align 8, !dbg !3319
  call void @llvm.dbg.value(metadata %union.tree_node** %t.0, metadata !3272, metadata !DIExpression()), !dbg !3292
  br label %for.inc, !dbg !3320

if.else29:                                        ; preds = %if.else19
  %call = tail call fastcc %struct.var_ann_d* @var_ann(%union.tree_node* nonnull %5) #7, !dbg !3321
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call, metadata !3274, metadata !DIExpression()), !dbg !3292
  %cmp30 = icmp eq %struct.var_ann_d* %call, null, !dbg !3323
  br i1 %cmp30, label %if.else39, label %land.lhs.true32, !dbg !3324

land.lhs.true32:                                  ; preds = %if.else29
  %11 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call, i64 0, i32 0, !dbg !3325
  %bf.load33 = load i8, i8* %11, align 8, !dbg !3325
  %bf.clear35 = and i8 %bf.load33, 2, !dbg !3325
  %tobool37 = icmp eq i8 %bf.clear35, 0, !dbg !3326
  br i1 %tobool37, label %if.else39, label %for.inc, !dbg !3327

if.else39:                                        ; preds = %land.lhs.true32, %if.else29
  %12 = load i32, i32* @debug_info_level, align 4, !dbg !3328
  %13 = or i32 %12, 1, !dbg !3330
  %14 = icmp eq i32 %13, 3, !dbg !3330
  br i1 %14, label %for.inc, label %if.else45, !dbg !3330

if.else45:                                        ; preds = %if.else39
  %15 = load %struct.tree_common*, %struct.tree_common** %6, align 8, !dbg !3331
  %chain47 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %15, i64 0, i32 1, !dbg !3331
  %16 = bitcast %union.tree_node** %chain47 to i64*, !dbg !3331
  %17 = load i64, i64* %16, align 8, !dbg !3331
  %18 = bitcast %union.tree_node** %t.0 to i64*, !dbg !3333
  store i64 %17, i64* %18, align 8, !dbg !3333
  call void @llvm.dbg.value(metadata %union.tree_node** %t.0, metadata !3272, metadata !DIExpression()), !dbg !3292
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true, %land.lhs.true32, %for.body, %if.then26, %if.else45, %if.else39
  %unused.4 = phi i8 [ 0, %for.body ], [ 0, %land.lhs.true ], [ %unused.0, %if.then26 ], [ 0, %land.lhs.true32 ], [ %unused.0, %if.else39 ], [ %unused.0, %if.else45 ], !dbg !3334
  %next.4 = phi %union.tree_node** [ %chain, %for.body ], [ %chain, %land.lhs.true ], [ %t.0, %if.then26 ], [ %chain, %land.lhs.true32 ], [ %chain, %if.else39 ], [ %t.0, %if.else45 ], !dbg !3335
  call void @llvm.dbg.value(metadata %union.tree_node** %next.4, metadata !3272, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.4, metadata !3273, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %union.tree_node** %next.4, metadata !3271, metadata !DIExpression()), !dbg !3292
  br label %for.cond, !dbg !3336, !llvm.loop !3337

for.end:                                          ; preds = %for.cond
  %unused.0.lcssa = phi i8 [ %unused.0, %for.cond ], !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.0.lcssa, metadata !3273, metadata !DIExpression()), !dbg !3292
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3339
  call void @llvm.dbg.value(metadata %union.tree_node** %19, metadata !3271, metadata !DIExpression()), !dbg !3292
  br label %for.cond53, !dbg !3340

for.cond53:                                       ; preds = %if.end91, %for.end
  %nsubblocks.0 = phi i32 [ 0, %for.end ], [ %nsubblocks.2, %if.end91 ], !dbg !3292
  %t.1 = phi %union.tree_node** [ %19, %for.end ], [ %t.4, %if.end91 ], !dbg !3341
  call void @llvm.dbg.value(metadata %union.tree_node** %t.1, metadata !3271, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %nsubblocks.0, metadata !3275, metadata !DIExpression()), !dbg !3292
  %20 = load %union.tree_node*, %union.tree_node** %t.1, align 8, !dbg !3342
  %tobool54 = icmp eq %union.tree_node* %20, null, !dbg !3343
  br i1 %tobool54, label %for.end92, label %for.body55, !dbg !3343

for.body55:                                       ; preds = %for.cond53
  %call56 = tail call fastcc zeroext i8 @remove_unused_scope_block_p(%union.tree_node* nonnull %20) #7, !dbg !3344
  %tobool57 = icmp eq i8 %call56, 0, !dbg !3344
  %21 = load %union.tree_node*, %union.tree_node** %t.1, align 8, !dbg !3345
  br i1 %tobool57, label %if.else87, label %if.then58, !dbg !3346

if.then58:                                        ; preds = %for.body55
  %22 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3347
  %23 = load %union.tree_node*, %union.tree_node** %22, align 8, !dbg !3347
  %tobool61 = icmp eq %union.tree_node* %23, null, !dbg !3347
  %chain65 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3348
  %24 = bitcast %union.tree_node** %chain65 to i64*, !dbg !3348
  %25 = load i64, i64* %24, align 8, !dbg !3348
  br i1 %tobool61, label %if.else83, label %if.then62, !dbg !3349

if.then62:                                        ; preds = %if.then58
  %26 = ptrtoint %union.tree_node* %23 to i64, !dbg !3349
  %supercontext67 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3350
  %27 = bitcast i40* %supercontext67 to i64*, !dbg !3350
  %28 = load i64, i64* %27, align 8, !dbg !3350
  %29 = bitcast %union.tree_node** %t.1 to i64*, !dbg !3351
  store i64 %26, i64* %29, align 8, !dbg !3351
  %30 = getelementptr inbounds %union.tree_node, %union.tree_node* %23, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3352
  br label %while.cond, !dbg !3352

while.cond:                                       ; preds = %while.body, %if.then62
  %31 = phi %struct.tree_common* [ %30, %if.then62 ], [ %.pre, %while.body ], !dbg !3353
  %t.2 = phi %union.tree_node** [ %t.1, %if.then62 ], [ %chain76, %while.body ], !dbg !3341
  call void @llvm.dbg.value(metadata %union.tree_node** %t.2, metadata !3271, metadata !DIExpression()), !dbg !3292
  %32 = bitcast %union.tree_node** %t.2 to %struct.tree_common**, !dbg !3353
  %chain71 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i64 0, i32 1, !dbg !3353
  %33 = load %union.tree_node*, %union.tree_node** %chain71, align 8, !dbg !3353
  %tobool72 = icmp eq %union.tree_node* %33, null, !dbg !3352
  br i1 %tobool72, label %while.end, label %while.body, !dbg !3352

while.body:                                       ; preds = %while.cond
  %34 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %31, i64 2, i32 1, !dbg !3354
  %35 = bitcast %union.tree_node** %34 to i64*, !dbg !3356
  store i64 %28, i64* %35, align 8, !dbg !3356
  %36 = load %struct.tree_common*, %struct.tree_common** %32, align 8, !dbg !3357
  %chain76 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %36, i64 0, i32 1, !dbg !3357
  call void @llvm.dbg.value(metadata %union.tree_node** %chain76, metadata !3271, metadata !DIExpression()), !dbg !3292
  %.phi.trans.insert15 = bitcast %union.tree_node** %chain76 to %struct.tree_common**, !dbg !3358
  %.pre = load %struct.tree_common*, %struct.tree_common** %.phi.trans.insert15, align 8, !dbg !3353
  br label %while.cond, !dbg !3352, !llvm.loop !3359

while.end:                                        ; preds = %while.cond
  %t.2.lcssa = phi %union.tree_node** [ %t.2, %while.cond ], !dbg !3341
  %.lcssa = phi %struct.tree_common** [ %32, %while.cond ], !dbg !3353
  %chain71.lcssa = phi %union.tree_node** [ %chain71, %while.cond ], !dbg !3353
  call void @llvm.dbg.value(metadata %union.tree_node** %t.2.lcssa, metadata !3271, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %union.tree_node** %t.2.lcssa, metadata !3271, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata %union.tree_node** %t.2.lcssa, metadata !3271, metadata !DIExpression()), !dbg !3292
  %37 = bitcast %union.tree_node** %chain71.lcssa to i64*, !dbg !3361
  store i64 %25, i64* %37, align 8, !dbg !3361
  %38 = bitcast %union.tree_node** %t.2.lcssa to %struct.tree_block**, !dbg !3362
  %39 = load %struct.tree_block*, %struct.tree_block** %38, align 8, !dbg !3362
  %supercontext80 = getelementptr inbounds %struct.tree_block, %struct.tree_block* %39, i64 0, i32 6, !dbg !3362
  %40 = bitcast %union.tree_node** %supercontext80 to i64*, !dbg !3363
  store i64 %28, i64* %40, align 8, !dbg !3363
  %41 = load %struct.tree_common*, %struct.tree_common** %.lcssa, align 8, !dbg !3364
  %chain82 = getelementptr inbounds %struct.tree_common, %struct.tree_common* %41, i64 0, i32 1, !dbg !3364
  call void @llvm.dbg.value(metadata %union.tree_node** %chain82, metadata !3271, metadata !DIExpression()), !dbg !3292
  %inc = add nsw i32 %nsubblocks.0, 1, !dbg !3365
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3275, metadata !DIExpression()), !dbg !3292
  br label %if.end91, !dbg !3366

if.else83:                                        ; preds = %if.then58
  %42 = bitcast %union.tree_node** %t.1 to i64*, !dbg !3367
  store i64 %25, i64* %42, align 8, !dbg !3367
  br label %if.end91

if.else87:                                        ; preds = %for.body55
  %chain89 = getelementptr inbounds %union.tree_node, %union.tree_node* %21, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !3368
  call void @llvm.dbg.value(metadata %union.tree_node** %chain89, metadata !3271, metadata !DIExpression()), !dbg !3292
  %inc90 = add nsw i32 %nsubblocks.0, 1, !dbg !3370
  call void @llvm.dbg.value(metadata i32 %inc90, metadata !3275, metadata !DIExpression()), !dbg !3292
  br label %if.end91

if.end91:                                         ; preds = %while.end, %if.else83, %if.else87
  %nsubblocks.2 = phi i32 [ %inc90, %if.else87 ], [ %inc, %while.end ], [ %nsubblocks.0, %if.else83 ], !dbg !3345
  %t.4 = phi %union.tree_node** [ %chain89, %if.else87 ], [ %chain82, %while.end ], [ %t.1, %if.else83 ], !dbg !3345
  call void @llvm.dbg.value(metadata %union.tree_node** %t.4, metadata !3271, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %nsubblocks.2, metadata !3275, metadata !DIExpression()), !dbg !3292
  br label %for.cond53, !dbg !3371, !llvm.loop !3372

for.end92:                                        ; preds = %for.cond53
  %nsubblocks.0.lcssa = phi i32 [ %nsubblocks.0, %for.cond53 ], !dbg !3292
  call void @llvm.dbg.value(metadata i32 %nsubblocks.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %nsubblocks.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3292
  call void @llvm.dbg.value(metadata i32 %nsubblocks.0.lcssa, metadata !3275, metadata !DIExpression()), !dbg !3292
  %tobool93 = icmp eq i8 %unused.0.lcssa, 0, !dbg !3374
  br i1 %tobool93, label %if.end188, label %if.else95, !dbg !3375

if.else95:                                        ; preds = %for.end92
  %supercontext97 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3376
  %43 = bitcast i40* %supercontext97 to %union.tree_node**, !dbg !3376
  %44 = load %union.tree_node*, %union.tree_node** %43, align 8, !dbg !3376
  %tobool98 = icmp eq %union.tree_node* %44, null, !dbg !3376
  br i1 %tobool98, label %if.end188, label %lor.lhs.false99, !dbg !3377

lor.lhs.false99:                                  ; preds = %if.else95
  %45 = getelementptr inbounds %union.tree_node, %union.tree_node* %44, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3377
  %bf.load103 = load i64, i64* %45, align 8, !dbg !3378
  %bf.cast1055 = and i64 %bf.load103, 65535, !dbg !3379
  %cmp106 = icmp eq i64 %bf.cast1055, 29, !dbg !3379
  br i1 %cmp106, label %if.end188, label %if.else109, !dbg !3380

if.else109:                                       ; preds = %lor.lhs.false99
  %tobool110 = icmp eq i32 %nsubblocks.0.lcssa, 0, !dbg !3381
  br i1 %tobool110, label %if.end188, label %if.else112, !dbg !3382

if.else112:                                       ; preds = %if.else109
  %46 = load i32, i32* @debug_info_level, align 4, !dbg !3383
  %47 = icmp ult i32 %46, 2, !dbg !3384
  br i1 %47, label %if.then118, label %if.else158, !dbg !3384

if.then118:                                       ; preds = %if.else112
  %call119 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(%union.tree_node* %scope) #7, !dbg !3385
  %tobool120 = icmp eq i8 %call119, 0, !dbg !3385
  br i1 %tobool120, label %if.end188, label %while.cond122.preheader, !dbg !3386

while.cond122.preheader:                          ; preds = %if.then118
  br label %while.cond122, !dbg !3387

while.cond122:                                    ; preds = %while.cond122.preheader, %while.body134
  %ao.0 = phi %union.tree_node* [ %50, %while.body134 ], [ %scope, %while.cond122.preheader ], !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0, metadata !3284, metadata !DIExpression()), !dbg !3388
  %cond3 = icmp eq %union.tree_node* %ao.0, null, !dbg !3389
  br i1 %cond3, label %if.end188.loopexit, label %land.lhs.true124, !dbg !3389

land.lhs.true124:                                 ; preds = %while.cond122
  %48 = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3390
  %bf.load126 = load i64, i64* %48, align 8, !dbg !3390
  %bf.cast1286 = and i64 %bf.load126, 65535, !dbg !3391
  %cmp129 = icmp eq i64 %bf.cast1286, 4, !dbg !3391
  br i1 %cmp129, label %land.rhs, label %while.end137, !dbg !3392

land.rhs:                                         ; preds = %land.lhs.true124
  %abstract_origin = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3393
  %49 = bitcast i32* %abstract_origin to %union.tree_node**, !dbg !3393
  %50 = load %union.tree_node*, %union.tree_node** %49, align 8, !dbg !3393
  %cmp132 = icmp eq %union.tree_node* %50, %ao.0, !dbg !3394
  br i1 %cmp132, label %while.end137, label %while.body134, !dbg !3387

while.body134:                                    ; preds = %land.rhs
  call void @llvm.dbg.value(metadata %union.tree_node* %50, metadata !3284, metadata !DIExpression()), !dbg !3388
  br label %while.cond122, !dbg !3387, !llvm.loop !3395

while.end137:                                     ; preds = %land.rhs, %land.lhs.true124
  %bf.cast1286.lcssa = phi i64 [ %bf.cast1286, %land.rhs ], [ %bf.cast1286, %land.lhs.true124 ], !dbg !3391
  %ao.0.lcssa19 = phi %union.tree_node* [ %ao.0, %land.rhs ], [ %ao.0, %land.lhs.true124 ], !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  call void @llvm.dbg.value(metadata %union.tree_node* %ao.0.lcssa19, metadata !3284, metadata !DIExpression()), !dbg !3388
  %cmp144 = icmp eq i64 %bf.cast1286.lcssa, 29, !dbg !3397
  br i1 %cmp144, label %land.lhs.true146, label %if.end188, !dbg !3399

land.lhs.true146:                                 ; preds = %while.end137
  %declared_inline_flag = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0.lcssa19, i64 0, i32 0, i32 5, !dbg !3400
  %bf.load147 = load i32, i32* %declared_inline_flag, align 8, !dbg !3400
  %bf.clear149 = and i32 %bf.load147, 2097152, !dbg !3400
  %tobool150 = icmp eq i32 %bf.clear149, 0, !dbg !3400
  br i1 %tobool150, label %if.end188, label %land.lhs.true151, !dbg !3401

land.lhs.true151:                                 ; preds = %land.lhs.true146
  %attributes = getelementptr inbounds %union.tree_node, %union.tree_node* %ao.0.lcssa19, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 6, !dbg !3402
  %51 = load %union.tree_node*, %union.tree_node** %attributes, align 8, !dbg !3402
  %call153 = tail call %union.tree_node* @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i64 0, i64 0), %union.tree_node* %51) #6, !dbg !3403
  %tobool154 = icmp eq %union.tree_node* %call153, null, !dbg !3403
  %spec.select = select i1 %tobool154, i8 %unused.0.lcssa, i8 0, !dbg !3404
  br label %if.end188, !dbg !3404

if.else158:                                       ; preds = %if.else112
  %52 = load %union.tree_node*, %union.tree_node** %4, align 8, !dbg !3405
  %tobool161 = icmp eq %union.tree_node* %52, null, !dbg !3405
  br i1 %tobool161, label %lor.lhs.false162, label %if.end188, !dbg !3407

lor.lhs.false162:                                 ; preds = %if.else158
  %nonlocalized_vars = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3408
  %53 = bitcast %union.tree_node** %nonlocalized_vars to %struct.VEC_tree_gc**, !dbg !3408
  %54 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %53, align 8, !dbg !3408
  %tobool164 = icmp eq %struct.VEC_tree_gc* %54, null, !dbg !3408
  br i1 %tobool164, label %cond.end, label %cond.true, !dbg !3408

cond.true:                                        ; preds = %lor.lhs.false162
  %base167 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %54, i64 0, i32 0, !dbg !3408
  br label %cond.end, !dbg !3408

cond.end:                                         ; preds = %lor.lhs.false162, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base167, %cond.true ], [ null, %lor.lhs.false162 ], !dbg !3408
  %call168 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !3408
  %tobool169 = icmp eq i32 %call168, 0, !dbg !3408
  br i1 %tobool169, label %if.else171, label %if.end188, !dbg !3409

if.else171:                                       ; preds = %cond.end
  %call172 = tail call fastcc zeroext i8 @inlined_function_outer_scope_p(%union.tree_node* %scope) #7, !dbg !3410
  %tobool173 = icmp eq i8 %call172, 0, !dbg !3410
  br i1 %tobool173, label %if.else175, label %if.end188, !dbg !3412

if.else175:                                       ; preds = %if.else171
  %55 = getelementptr inbounds %union.tree_node, %union.tree_node* %scope, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3413
  %56 = load i32, i32* %55, align 4, !dbg !3413
  %cmp177 = icmp eq i32 %56, 0, !dbg !3413
  br i1 %cmp177, label %if.end188, label %cond.true179, !dbg !3413

cond.true179:                                     ; preds = %if.else175
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 559, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3413
  br label %if.end188, !dbg !3413

if.end188.loopexit:                               ; preds = %while.cond122
  br label %if.end188, !dbg !3414

if.end188:                                        ; preds = %if.end188.loopexit, %land.lhs.true146, %if.then118, %if.else171, %cond.end, %if.else158, %if.else109, %if.else95, %for.end92, %land.lhs.true151, %lor.lhs.false99, %while.end137, %if.else175, %cond.true179
  %unused.12 = phi i8 [ 0, %for.end92 ], [ 0, %lor.lhs.false99 ], [ 0, %if.else95 ], [ %unused.0.lcssa, %if.else109 ], [ %unused.0.lcssa, %if.then118 ], [ %unused.0.lcssa, %land.lhs.true146 ], [ %unused.0.lcssa, %while.end137 ], [ %spec.select, %land.lhs.true151 ], [ 0, %cond.end ], [ 0, %if.else158 ], [ 0, %if.else171 ], [ %unused.0.lcssa, %if.else175 ], [ %unused.0.lcssa, %cond.true179 ], [ %unused.0.lcssa, %if.end188.loopexit ], !dbg !3292
  call void @llvm.dbg.value(metadata i8 %unused.12, metadata !3273, metadata !DIExpression()), !dbg !3292
  %tobool189 = icmp eq i8 %unused.12, 0, !dbg !3414
  %57 = zext i1 %tobool189 to i64, !dbg !3415
  %bf.load193 = load i64, i64* %0, align 8, !dbg !3415
  %bf.shl = shl nuw nsw i64 %57, 24, !dbg !3415
  %bf.clear194 = and i64 %bf.load193, -16777217, !dbg !3415
  %bf.set = or i64 %bf.clear194, %bf.shl, !dbg !3415
  store i64 %bf.set, i64* %0, align 8, !dbg !3415
  ret i8 %unused.12, !dbg !3416
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @delete_tree_live_info(%struct.tree_live_info_d* %live) local_unnamed_addr #5 !dbg !3417 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3421, metadata !DIExpression()), !dbg !3423
  %global = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 1, !dbg !3424
  %0 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global, align 8, !dbg !3424
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %0) #6, !dbg !3424
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %global, align 8, !dbg !3424
  %work_stack = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 4, !dbg !3425
  %1 = bitcast i32** %work_stack to i8**, !dbg !3425
  %2 = load i8*, i8** %1, align 8, !dbg !3425
  tail call void @free(i8* %2) #6, !dbg !3426
  %num_blocks = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 3, !dbg !3427
  %3 = load i32, i32* %num_blocks, align 8, !dbg !3427
  call void @llvm.dbg.value(metadata i32 %3, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 6, !dbg !3423
  %4 = sext i32 %3 to i64, !dbg !3429
  br label %for.cond, !dbg !3429

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv3 = phi i64 [ %indvars.iv.next4, %for.body ], [ %4, %entry ]
  %indvars.iv.next4 = add nsw i64 %indvars.iv3, -1, !dbg !3430
  call void @llvm.dbg.value(metadata i32 undef, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  %cmp = icmp sgt i64 %indvars.iv3, 0, !dbg !3431
  %5 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3423
  br i1 %cmp, label %for.body, label %for.end, !dbg !3433

for.body:                                         ; preds = %for.cond
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %5, i64 %indvars.iv.next4, !dbg !3434
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3434
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %6) #6, !dbg !3434
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3434
  %arrayidx4 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %indvars.iv.next4, !dbg !3434
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx4, align 8, !dbg !3434
  call void @llvm.dbg.value(metadata i32 undef, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  br label %for.cond, !dbg !3435, !llvm.loop !3436

for.end:                                          ; preds = %for.cond
  %.lcssa5 = phi %struct.bitmap_head_def** [ %5, %for.cond ], !dbg !3423
  %8 = bitcast %struct.bitmap_head_def** %.lcssa5 to i8*, !dbg !3438
  tail call void @free(i8* %8) #6, !dbg !3439
  %9 = load i32, i32* %num_blocks, align 8, !dbg !3440
  call void @llvm.dbg.value(metadata i32 %9, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  %livein = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 2, !dbg !3423
  %10 = sext i32 %9 to i64, !dbg !3442
  br label %for.cond8, !dbg !3442

for.cond8:                                        ; preds = %for.body10, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body10 ], [ %10, %for.end ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1, !dbg !3443
  call void @llvm.dbg.value(metadata i32 undef, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  %cmp9 = icmp sgt i64 %indvars.iv, 0, !dbg !3444
  %11 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !3423
  br i1 %cmp9, label %for.body10, label %for.end18, !dbg !3446

for.body10:                                       ; preds = %for.cond8
  %arrayidx12 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %11, i64 %indvars.iv.next, !dbg !3447
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx12, align 8, !dbg !3447
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %12) #6, !dbg !3447
  %13 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !3447
  %arrayidx15 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %13, i64 %indvars.iv.next, !dbg !3447
  store %struct.bitmap_head_def* null, %struct.bitmap_head_def** %arrayidx15, align 8, !dbg !3447
  call void @llvm.dbg.value(metadata i32 undef, metadata !3422, metadata !DIExpression(DW_OP_constu, 1, DW_OP_minus, DW_OP_constu, 1, DW_OP_minus, DW_OP_stack_value)), !dbg !3423
  br label %for.cond8, !dbg !3448, !llvm.loop !3449

for.end18:                                        ; preds = %for.cond8
  %.lcssa = phi %struct.bitmap_head_def** [ %11, %for.cond8 ], !dbg !3423
  %14 = bitcast %struct.bitmap_head_def** %.lcssa to i8*, !dbg !3451
  tail call void @free(i8* %14) #6, !dbg !3452
  %15 = bitcast %struct.tree_live_info_d* %live to i8*, !dbg !3453
  tail call void @free(i8* %15) #6, !dbg !3454
  ret void, !dbg !3455
}

; Function Attrs: nounwind uwtable
define dso_local void @calculate_live_on_exit(%struct.tree_live_info_d* %liveinfo) local_unnamed_addr #5 !dbg !3456 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp51 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %liveinfo, metadata !3458, metadata !DIExpression()), !dbg !3476
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3477
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3477
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3478
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3478
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3479
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3479
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3479
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3479
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3479
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %liveinfo, i64 0, i32 6, !dbg !3481
  br label %for.cond, !dbg !3479

for.cond:                                         ; preds = %for.body, %entry
  %5 = phi %struct.control_flow_graph* [ %3, %entry ], [ %.pre3, %for.body ], !dbg !3483
  %.pn = phi %struct.basic_block_def* [ %4, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3484
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3484
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3459, metadata !DIExpression()), !dbg !3476
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 1, !dbg !3483
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3483
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %6, !dbg !3483
  br i1 %cmp, label %for.end, label %for.body, !dbg !3479

for.body:                                         ; preds = %for.cond
  %7 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3485
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !3486
  %8 = load i32, i32* %index, align 8, !dbg !3486
  %idxprom = sext i32 %8 to i64, !dbg !3487
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %7, i64 %idxprom, !dbg !3487
  %9 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3487
  tail call void @bitmap_clear(%struct.bitmap_head_def* %9) #6, !dbg !3488
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3483
  %cfg2.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3481
  %.pre3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2.phi.trans.insert, align 8, !dbg !3483
  br label %for.cond, !dbg !3483, !llvm.loop !3489

for.end:                                          ; preds = %for.cond
  %.lcssa = phi %struct.control_flow_graph* [ %5, %for.cond ], !dbg !3483
  %bb.0.lcssa = phi %struct.basic_block_def* [ %bb.0, %for.cond ], !dbg !3484
  %x_entry_block_ptr6 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.lcssa, i64 0, i32 0, !dbg !3491
  %10 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr6, align 8, !dbg !3491
  %11 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3492
  %12 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3493
  %map = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %liveinfo, i64 0, i32 0, !dbg !3494
  %13 = bitcast %struct.edge_iterator* %tmp51 to i8*, !dbg !3495
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp51, i64 0, i32 0, !dbg !3495
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp51, i64 0, i32 1, !dbg !3495
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3497
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3497
  br label %for.cond8, !dbg !3491

for.cond8:                                        ; preds = %for.end72, %for.end
  %18 = phi %struct.basic_block_def* [ %bb.0.lcssa, %for.end ], [ %.pre6, %for.end72 ], !dbg !3499
  %.pn2 = phi %struct.basic_block_def* [ %10, %for.end ], [ %bb.1, %for.end72 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn2, i64 0, i32 6, !dbg !3500
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !3500
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3459, metadata !DIExpression()), !dbg !3476
  %cmp12 = icmp eq %struct.basic_block_def* %bb.1, %18, !dbg !3499
  br i1 %cmp12, label %for.end75, label %for.body13, !dbg !3491

for.body13:                                       ; preds = %for.cond8
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %11) #8, !dbg !3501
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !3502
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.1) #6, !dbg !3502
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %11, i8* nonnull align 8 %12, i64 24, i1 false), !dbg !3502
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !3502
  br label %for.cond14, !dbg !3503

for.cond14:                                       ; preds = %for.inc49, %for.body13
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3462, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  %call = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3504
  %tobool = icmp eq i8 %call, 0, !dbg !3505
  br i1 %tobool, label %for.body15, label %for.end50, !dbg !3506

for.body15:                                       ; preds = %for.cond14
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3462, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  %call16 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3507
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call16, metadata !3467, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.value(metadata i64 0, metadata !3466, metadata !DIExpression()), !dbg !3492
  br label %for.cond17, !dbg !3509

for.cond17:                                       ; preds = %cleanup, %for.body15
  %i.0 = phi i64 [ 0, %for.body15 ], [ %inc, %cleanup ], !dbg !3510
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3466, metadata !DIExpression()), !dbg !3492
  %call18 = call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %call16) #7, !dbg !3511
  %conv = zext i32 %call18 to i64, !dbg !3511
  %cmp19 = icmp ult i64 %i.0, %conv, !dbg !3512
  br i1 %cmp19, label %for.body21, label %for.inc49, !dbg !3513

for.body21:                                       ; preds = %for.cond17
  %conv22 = trunc i64 %i.0 to i32, !dbg !3514
  %call23 = call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %call16, i32 %conv22) #7, !dbg !3514
  %call24 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %call23) #7, !dbg !3514
  call void @llvm.dbg.value(metadata %union.tree_node* %call24, metadata !3471, metadata !DIExpression()), !dbg !3494
  %19 = getelementptr inbounds %union.tree_node, %union.tree_node* %call24, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3515
  %bf.load = load i64, i64* %19, align 8, !dbg !3515
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3517
  %cmp25 = icmp eq i64 %bf.cast1, 141, !dbg !3517
  br i1 %cmp25, label %if.end, label %cleanup, !dbg !3518

if.end:                                           ; preds = %for.body21
  %20 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3519
  %call27 = call fastcc i32 @var_to_partition(%struct._var_map* %20, %union.tree_node* %call24) #7, !dbg !3520
  call void @llvm.dbg.value(metadata i32 %call27, metadata !3475, metadata !DIExpression()), !dbg !3494
  %cmp28 = icmp eq i32 %call27, -1, !dbg !3521
  br i1 %cmp28, label %cleanup, label %if.end31, !dbg !3523

if.end31:                                         ; preds = %if.end
  %call32 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %call16, i64 %i.0) #7, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.edge_def* %call32, metadata !3460, metadata !DIExpression()), !dbg !3476
  store %struct.edge_def* %call32, %struct.edge_def** %e, align 8, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.edge_def* %call32, metadata !3460, metadata !DIExpression()), !dbg !3476
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call32, i64 0, i32 0, !dbg !3526
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3526
  %22 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3528
  %cfg34 = getelementptr inbounds %struct.function, %struct.function* %22, i64 0, i32 1, !dbg !3528
  %23 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg34, align 8, !dbg !3528
  %x_entry_block_ptr35 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %23, i64 0, i32 0, !dbg !3528
  %24 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr35, align 8, !dbg !3528
  %cmp36 = icmp eq %struct.basic_block_def* %21, %24, !dbg !3529
  br i1 %cmp36, label %cleanup, label %if.then38, !dbg !3530

if.then38:                                        ; preds = %if.end31
  %25 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3531
  call void @llvm.dbg.value(metadata %struct.edge_def* %call32, metadata !3460, metadata !DIExpression()), !dbg !3476
  %index41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %21, i64 0, i32 9, !dbg !3532
  %26 = load i32, i32* %index41, align 8, !dbg !3532
  %idxprom42 = sext i32 %26 to i64, !dbg !3533
  %arrayidx43 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %25, i64 %idxprom42, !dbg !3533
  %27 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx43, align 8, !dbg !3533
  %call44 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %27, i32 %call27) #6, !dbg !3534
  br label %cleanup, !dbg !3534

cleanup:                                          ; preds = %if.end31, %for.body21, %if.then38, %if.end
  %inc = add nuw nsw i64 %i.0, 1, !dbg !3535
  call void @llvm.dbg.value(metadata i64 %inc, metadata !3466, metadata !DIExpression()), !dbg !3492
  br label %for.cond17, !dbg !3536, !llvm.loop !3537

for.inc49:                                        ; preds = %for.cond17
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !3462, metadata !DIExpression(DW_OP_deref)), !dbg !3492
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3539
  br label %for.cond14, !dbg !3540, !llvm.loop !3541

for.end50:                                        ; preds = %for.cond14
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3543
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !3543
  %call52 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3543
  %28 = extractvalue { i32, %struct.VEC_edge_gc** } %call52, 0, !dbg !3543
  store i32 %28, i32* %14, align 8, !dbg !3543
  %29 = extractvalue { i32, %struct.VEC_edge_gc** } %call52, 1, !dbg !3543
  store %struct.VEC_edge_gc** %29, %struct.VEC_edge_gc*** %15, align 8, !dbg !3543
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %13, i64 16, i1 false), !dbg !3543
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #8, !dbg !3543
  %index64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !3544
  br label %for.cond53, !dbg !3543

for.cond53:                                       ; preds = %for.inc71, %for.end50
  %30 = load i32, i32* %16, align 8, !dbg !3546
  %31 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3546
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3460, metadata !DIExpression(DW_OP_deref)), !dbg !3476
  %call54 = call fastcc zeroext i8 @ei_cond(i32 %30, %struct.VEC_edge_gc** %31, %struct.edge_def** nonnull %e) #7, !dbg !3546
  %tobool55 = icmp eq i8 %call54, 0, !dbg !3543
  br i1 %tobool55, label %for.end72, label %for.body56, !dbg !3543

for.body56:                                       ; preds = %for.cond53
  %32 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3547
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3460, metadata !DIExpression()), !dbg !3476
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %32, i64 0, i32 1, !dbg !3548
  %33 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3548
  %34 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3549
  %cfg58 = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 1, !dbg !3549
  %35 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg58, align 8, !dbg !3549
  %x_exit_block_ptr59 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %35, i64 0, i32 1, !dbg !3549
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr59, align 8, !dbg !3549
  %cmp60 = icmp eq %struct.basic_block_def* %33, %36, !dbg !3550
  br i1 %cmp60, label %for.inc71, label %if.then62, !dbg !3551

if.then62:                                        ; preds = %for.body56
  %37 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3552
  %38 = load i32, i32* %index64, align 8, !dbg !3553
  %idxprom65 = sext i32 %38 to i64, !dbg !3554
  %arrayidx66 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %37, i64 %idxprom65, !dbg !3554
  %39 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx66, align 8, !dbg !3554
  call void @llvm.dbg.value(metadata %struct.edge_def* %32, metadata !3460, metadata !DIExpression()), !dbg !3476
  %call68 = call fastcc %struct.bitmap_head_def* @live_on_entry(%struct.tree_live_info_d* %liveinfo, %struct.basic_block_def* %33) #7, !dbg !3555
  %call69 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %39, %struct.bitmap_head_def* %call68) #6, !dbg !3556
  br label %for.inc71, !dbg !3556

for.inc71:                                        ; preds = %for.body56, %if.then62
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3461, metadata !DIExpression(DW_OP_deref)), !dbg !3476
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3546
  br label %for.cond53, !dbg !3546, !llvm.loop !3557

for.end72:                                        ; preds = %for.cond53
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %11) #8, !dbg !3559
  %.pre4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3499
  %cfg10.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre4, i64 0, i32 1, !dbg !3560
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10.phi.trans.insert, align 8, !dbg !3499
  %x_exit_block_ptr11.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre5, i64 0, i32 1, !dbg !3560
  %.pre6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr11.phi.trans.insert, align 8, !dbg !3499
  br label %for.cond8, !dbg !3499, !llvm.loop !3561

for.end75:                                        ; preds = %for.cond8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3563
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3563
  ret void, !dbg !3563
}

declare dso_local void @bitmap_clear(%struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3564 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3566, metadata !DIExpression()), !dbg !3567
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !3568
  %0 = load i32, i32* %nargs, align 4, !dbg !3568
  ret i32 %0, !dbg !3569
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3570 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3574, metadata !DIExpression()), !dbg !3576
  call void @llvm.dbg.value(metadata i32 %i, metadata !3575, metadata !DIExpression()), !dbg !3576
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !3577
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !3578
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !3579
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @var_to_partition(%struct._var_map* %map, %union.tree_node* %var) unnamed_addr #0 !dbg !3580 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3584, metadata !DIExpression()), !dbg !3587
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3585, metadata !DIExpression()), !dbg !3587
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3588
  %bf.load = load i64, i64* %0, align 8, !dbg !3588
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3588
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !3588
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !3588

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 147, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3588
  br label %cond.end, !dbg !3588

cond.end:                                         ; preds = %entry, %cond.true
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !3589
  %1 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !3589
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3589
  %2 = bitcast %union.tree_node** %version to i32*, !dbg !3589
  %3 = load i32, i32* %2, align 8, !dbg !3589
  %idxprom = zext i32 %3 to i64, !dbg !3589
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %1, i64 0, i32 1, i64 %idxprom, i32 0, !dbg !3589
  %4 = load i32, i32* %class_element, align 8, !dbg !3589
  call void @llvm.dbg.value(metadata i32 %4, metadata !3586, metadata !DIExpression()), !dbg !3587
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !3590
  %5 = load i32*, i32** %partition_to_view, align 8, !dbg !3590
  %tobool = icmp eq i32* %5, null, !dbg !3592
  br i1 %tobool, label %if.end, label %if.then, !dbg !3593

if.then:                                          ; preds = %cond.end
  %idxprom2 = sext i32 %4 to i64, !dbg !3594
  %arrayidx3 = getelementptr inbounds i32, i32* %5, i64 %idxprom2, !dbg !3594
  %6 = load i32, i32* %arrayidx3, align 4, !dbg !3594
  call void @llvm.dbg.value(metadata i32 %6, metadata !3586, metadata !DIExpression()), !dbg !3587
  br label %if.end, !dbg !3595

if.end:                                           ; preds = %cond.end, %if.then
  %part.0 = phi i32 [ %6, %if.then ], [ %4, %cond.end ], !dbg !3587
  call void @llvm.dbg.value(metadata i32 %part.0, metadata !3586, metadata !DIExpression()), !dbg !3587
  ret i32 %part.0, !dbg !3596
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !3597 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3601, metadata !DIExpression()), !dbg !3603
  call void @llvm.dbg.value(metadata i64 %i, metadata !3602, metadata !DIExpression()), !dbg !3603
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3604
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !3604
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3604
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3604
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3604

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !3604
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !3604
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !3604
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !3604
  br label %cond.end, !dbg !3604

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3604
  %conv = trunc i64 %i to i32, !dbg !3604
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !3604
  ret %struct.edge_def* %call3, !dbg !3605
}

declare dso_local zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.bitmap_head_def* @live_on_entry(%struct.tree_live_info_d* %live, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3606 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3610, metadata !DIExpression()), !dbg !3612
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3611, metadata !DIExpression()), !dbg !3612
  %livein = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 2, !dbg !3613
  %0 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !3613
  %tobool = icmp eq %struct.bitmap_head_def** %0, null, !dbg !3613
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3613

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 285, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3613
  br label %cond.end, !dbg !3613

cond.end:                                         ; preds = %entry, %cond.true
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3614
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3614
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3614
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 0, !dbg !3614
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3614
  %cmp = icmp eq %struct.basic_block_def* %3, %bb, !dbg !3614
  br i1 %cmp, label %cond.true1, label %cond.end3, !dbg !3614

cond.true1:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 286, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3614
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3615
  %cfg6.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3612
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg6.phi.trans.insert, align 8, !dbg !3615
  br label %cond.end3, !dbg !3614

cond.end3:                                        ; preds = %cond.end, %cond.true1
  %4 = phi %struct.control_flow_graph* [ %2, %cond.end ], [ %.pre1, %cond.true1 ], !dbg !3615
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3615
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3615
  %cmp7 = icmp eq %struct.basic_block_def* %5, %bb, !dbg !3615
  br i1 %cmp7, label %cond.true8, label %cond.end10, !dbg !3615

cond.true8:                                       ; preds = %cond.end3
  tail call void @fancy_abort(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i64 0, i64 0), i32 287, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3615
  br label %cond.end10, !dbg !3615

cond.end10:                                       ; preds = %cond.end3, %cond.true8
  %6 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !3616
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !3617
  %7 = load i32, i32* %index, align 8, !dbg !3617
  %idxprom = sext i32 %7 to i64, !dbg !3618
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %6, i64 %idxprom, !dbg !3618
  %8 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3618
  ret %struct.bitmap_head_def* %8, !dbg !3619
}

; Function Attrs: nounwind uwtable
define dso_local %struct.tree_live_info_d* @calculate_live_ranges(%struct._var_map* %map) local_unnamed_addr #5 !dbg !3620 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3624, metadata !DIExpression()), !dbg !3628
  %call = tail call fastcc %struct.tree_live_info_d* @new_tree_live_info(%struct._var_map* %map) #7, !dbg !3629
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %call, metadata !3627, metadata !DIExpression()), !dbg !3628
  call void @llvm.dbg.value(metadata i32 0, metadata !3626, metadata !DIExpression()), !dbg !3628
  br label %for.cond, !dbg !3630

for.cond:                                         ; preds = %for.inc, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %for.inc ], !dbg !3632
  call void @llvm.dbg.value(metadata i32 %i.0, metadata !3626, metadata !DIExpression()), !dbg !3628
  %call1 = tail call fastcc i32 @num_var_partitions(%struct._var_map* %map) #7, !dbg !3633
  %cmp = icmp ult i32 %i.0, %call1, !dbg !3635
  br i1 %cmp, label %for.body, label %for.end, !dbg !3636

for.body:                                         ; preds = %for.cond
  %call2 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %i.0) #7, !dbg !3637
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3625, metadata !DIExpression()), !dbg !3628
  %cmp3 = icmp eq %union.tree_node* %call2, null, !dbg !3639
  br i1 %cmp3, label %for.inc, label %if.then, !dbg !3641

if.then:                                          ; preds = %for.body
  tail call fastcc void @set_var_live_on_entry(%union.tree_node* nonnull %call2, %struct.tree_live_info_d* %call) #7, !dbg !3642
  br label %for.inc, !dbg !3642

for.inc:                                          ; preds = %for.body, %if.then
  %inc = add i32 %i.0, 1, !dbg !3643
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3626, metadata !DIExpression()), !dbg !3628
  br label %for.cond, !dbg !3644, !llvm.loop !3645

for.end:                                          ; preds = %for.cond
  tail call fastcc void @live_worklist(%struct.tree_live_info_d* %call) #7, !dbg !3647
  tail call void @calculate_live_on_exit(%struct.tree_live_info_d* %call) #7, !dbg !3648
  ret %struct.tree_live_info_d* %call, !dbg !3649
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.tree_live_info_d* @new_tree_live_info(%struct._var_map* %map) unnamed_addr #5 !dbg !3650 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3652, metadata !DIExpression()), !dbg !3655
  %call = tail call i8* @xmalloc(i64 56) #6, !dbg !3656
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %20, metadata !3653, metadata !DIExpression()), !dbg !3655
  %map1 = bitcast i8* %call to %struct._var_map**, !dbg !3657
  store %struct._var_map* %map, %struct._var_map** %map1, align 8, !dbg !3658
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3659
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3659
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3659
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3659
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3659
  %num_blocks = getelementptr inbounds i8, i8* %call, i64 24, !dbg !3660
  %3 = bitcast i8* %num_blocks to i32*, !dbg !3660
  store i32 %2, i32* %3, align 8, !dbg !3661
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3662
  %x_last_basic_block4 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 5, !dbg !3662
  %5 = load i32, i32* %x_last_basic_block4, align 8, !dbg !3662
  %conv = sext i32 %5 to i64, !dbg !3662
  %mul = shl nsw i64 %conv, 3, !dbg !3663
  %call5 = tail call i8* @xmalloc(i64 %mul) #6, !dbg !3664
  %livein = getelementptr inbounds i8, i8* %call, i64 16, !dbg !3665
  %6 = bitcast i8* %livein to i8**, !dbg !3666
  store i8* %call5, i8** %6, align 8, !dbg !3666
  call void @llvm.dbg.value(metadata i32 0, metadata !3654, metadata !DIExpression()), !dbg !3655
  %7 = bitcast i8* %livein to %struct.bitmap_head_def***, !dbg !3667
  br label %for.cond, !dbg !3670

for.cond:                                         ; preds = %for.body, %entry
  %indvars.iv2 = phi i64 [ %indvars.iv.next3, %for.body ], [ 0, %entry ], !dbg !3671
  call void @llvm.dbg.value(metadata i64 %indvars.iv2, metadata !3654, metadata !DIExpression()), !dbg !3655
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3672
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 1, !dbg !3672
  %9 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !3672
  %x_last_basic_block8 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %9, i64 0, i32 5, !dbg !3672
  %10 = load i32, i32* %x_last_basic_block8, align 8, !dbg !3672
  %11 = zext i32 %10 to i64, !dbg !3673
  %cmp = icmp ult i64 %indvars.iv2, %11, !dbg !3673
  br i1 %cmp, label %for.body, label %for.end, !dbg !3674

for.body:                                         ; preds = %for.cond
  %call10 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3675
  %12 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %7, align 8, !dbg !3676
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %12, i64 %indvars.iv2, !dbg !3677
  store %struct.bitmap_head_def* %call10, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3678
  %indvars.iv.next3 = add nuw nsw i64 %indvars.iv2, 1, !dbg !3679
  br label %for.cond, !dbg !3680, !llvm.loop !3681

for.end:                                          ; preds = %for.cond
  %.lcssa4 = phi i32 [ %10, %for.cond ], !dbg !3672
  %conv15 = sext i32 %.lcssa4 to i64, !dbg !3683
  %mul16 = shl nsw i64 %conv15, 3, !dbg !3684
  %call17 = tail call i8* @xmalloc(i64 %mul16) #6, !dbg !3685
  %liveout = getelementptr inbounds i8, i8* %call, i64 48, !dbg !3686
  %13 = bitcast i8* %liveout to i8**, !dbg !3687
  store i8* %call17, i8** %13, align 8, !dbg !3687
  call void @llvm.dbg.value(metadata i32 0, metadata !3654, metadata !DIExpression()), !dbg !3655
  %14 = bitcast i8* %liveout to %struct.bitmap_head_def***, !dbg !3688
  br label %for.cond18, !dbg !3691

for.cond18:                                       ; preds = %for.body24, %for.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body24 ], [ 0, %for.end ], !dbg !3692
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3654, metadata !DIExpression()), !dbg !3655
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3693
  %cfg20 = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 1, !dbg !3693
  %16 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20, align 8, !dbg !3693
  %x_last_basic_block21 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 5, !dbg !3693
  %17 = load i32, i32* %x_last_basic_block21, align 8, !dbg !3693
  %18 = zext i32 %17 to i64, !dbg !3694
  %cmp22 = icmp ult i64 %indvars.iv, %18, !dbg !3694
  br i1 %cmp22, label %for.body24, label %for.end31, !dbg !3695

for.body24:                                       ; preds = %for.cond18
  %call25 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3696
  %19 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %14, align 8, !dbg !3697
  %arrayidx28 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %19, i64 %indvars.iv, !dbg !3698
  store %struct.bitmap_head_def* %call25, %struct.bitmap_head_def** %arrayidx28, align 8, !dbg !3699
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3700
  br label %for.cond18, !dbg !3701, !llvm.loop !3702

for.end31:                                        ; preds = %for.cond18
  %.lcssa = phi i32 [ %17, %for.cond18 ], !dbg !3693
  %20 = bitcast i8* %call to %struct.tree_live_info_d*, !dbg !3704
  %conv35 = sext i32 %.lcssa to i64, !dbg !3705
  %mul36 = shl nsw i64 %conv35, 2, !dbg !3705
  %call37 = tail call i8* @xmalloc(i64 %mul36) #6, !dbg !3705
  %work_stack = getelementptr inbounds i8, i8* %call, i64 32, !dbg !3706
  %21 = bitcast i8* %work_stack to i8**, !dbg !3707
  store i8* %call37, i8** %21, align 8, !dbg !3707
  %.cast = ptrtoint i8* %call37 to i64, !dbg !3708
  %stack_top = getelementptr inbounds i8, i8* %call, i64 40, !dbg !3709
  %22 = bitcast i8* %stack_top to i64*, !dbg !3710
  store i64 %.cast, i64* %22, align 8, !dbg !3710
  %call39 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3711
  %global = getelementptr inbounds i8, i8* %call, i64 8, !dbg !3712
  %23 = bitcast i8* %global to %struct.bitmap_head_def**, !dbg !3712
  store %struct.bitmap_head_def* %call39, %struct.bitmap_head_def** %23, align 8, !dbg !3713
  ret %struct.tree_live_info_d* %20, !dbg !3714
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @num_var_partitions(%struct._var_map* %map) unnamed_addr #0 !dbg !3715 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3719, metadata !DIExpression()), !dbg !3720
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !3721
  %0 = load i32, i32* %num_partitions, align 8, !dbg !3721
  ret i32 %0, !dbg !3722
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %i) unnamed_addr #0 !dbg !3723 {
entry:
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3727, metadata !DIExpression()), !dbg !3730
  call void @llvm.dbg.value(metadata i32 %i, metadata !3728, metadata !DIExpression()), !dbg !3730
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !3731
  %0 = load i32*, i32** %view_to_partition, align 8, !dbg !3731
  %tobool = icmp eq i32* %0, null, !dbg !3733
  br i1 %tobool, label %if.end, label %if.then, !dbg !3734

if.then:                                          ; preds = %entry
  %idxprom = sext i32 %i to i64, !dbg !3735
  %arrayidx = getelementptr inbounds i32, i32* %0, i64 %idxprom, !dbg !3735
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3735
  call void @llvm.dbg.value(metadata i32 %1, metadata !3728, metadata !DIExpression()), !dbg !3730
  br label %if.end, !dbg !3736

if.end:                                           ; preds = %entry, %if.then
  %i.addr.0 = phi i32 [ %1, %if.then ], [ %i, %entry ]
  call void @llvm.dbg.value(metadata i32 %i.addr.0, metadata !3728, metadata !DIExpression()), !dbg !3730
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !3737
  %2 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !3737
  %idxprom2 = sext i32 %i.addr.0 to i64, !dbg !3737
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %2, i64 0, i32 1, i64 %idxprom2, i32 0, !dbg !3737
  %3 = load i32, i32* %class_element, align 8, !dbg !3737
  call void @llvm.dbg.value(metadata i32 %3, metadata !3728, metadata !DIExpression()), !dbg !3730
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3738
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 3, !dbg !3738
  %5 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3738
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %5, i64 0, i32 2, !dbg !3738
  %6 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3738
  %tobool4 = icmp eq %struct.VEC_tree_gc* %6, null, !dbg !3738
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3738

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %6, i64 0, i32 0, !dbg !3738
  br label %cond.end, !dbg !3738

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3738
  %call = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %3) #7, !dbg !3738
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !3729, metadata !DIExpression()), !dbg !3730
  ret %union.tree_node* %call, !dbg !3739
}

; Function Attrs: nounwind uwtable
define internal fastcc void @set_var_live_on_entry(%union.tree_node* %ssa_name, %struct.tree_live_info_d* %live) unnamed_addr #5 !dbg !3740 {
entry:
  %imm_iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %ssa_name, metadata !3744, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3745, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3749, metadata !DIExpression()), !dbg !3771
  %0 = bitcast %struct.immediate_use_iterator_d* %imm_iter to i8*, !dbg !3772
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3772
  call void @llvm.dbg.value(metadata i8 0, metadata !3758, metadata !DIExpression()), !dbg !3771
  %map = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 0, !dbg !3773
  %1 = load %struct._var_map*, %struct._var_map** %map, align 8, !dbg !3773
  %call = tail call fastcc i32 @var_to_partition(%struct._var_map* %1, %union.tree_node* %ssa_name) #7, !dbg !3774
  call void @llvm.dbg.value(metadata i32 %call, metadata !3746, metadata !DIExpression()), !dbg !3771
  %cmp = icmp eq i32 %call, -1, !dbg !3775
  br i1 %cmp, label %cleanup58, label %if.end, !dbg !3777

if.end:                                           ; preds = %entry
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %ssa_name, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !3778
  %2 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !3778
  %3 = load %union.gimple_statement_d*, %union.gimple_statement_d** %2, align 8, !dbg !3778
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %3, metadata !3747, metadata !DIExpression()), !dbg !3771
  %tobool = icmp eq %union.gimple_statement_d* %3, null, !dbg !3779
  br i1 %tobool, label %if.else, label %if.then2, !dbg !3781

if.then2:                                         ; preds = %if.end
  %call3 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* nonnull %3) #7, !dbg !3782
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call3, metadata !3749, metadata !DIExpression()), !dbg !3771
  %tobool4 = icmp eq %struct.basic_block_def* %call3, null, !dbg !3784
  br i1 %tobool4, label %if.end8, label %if.then5, !dbg !3786

if.then5:                                         ; preds = %if.then2
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 6, !dbg !3787
  %4 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !3787
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call3, i64 0, i32 9, !dbg !3788
  %5 = load i32, i32* %index, align 8, !dbg !3788
  %idxprom = sext i32 %5 to i64, !dbg !3789
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %4, i64 %idxprom, !dbg !3789
  %6 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !3789
  %call6 = tail call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %6, i32 %call) #6, !dbg !3790
  br label %if.end8, !dbg !3790

if.else:                                          ; preds = %if.end
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3791
  %cfg = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !3791
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3791
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !3791
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3791
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !3749, metadata !DIExpression()), !dbg !3771
  br label %if.end8

if.end8:                                          ; preds = %if.then2, %if.then5, %if.else
  %def_bb.0 = phi %struct.basic_block_def* [ %9, %if.else ], [ %call3, %if.then5 ], [ null, %if.then2 ], !dbg !3792
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %def_bb.0, metadata !3749, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3750, metadata !DIExpression(DW_OP_deref)), !dbg !3771
  %call9 = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter, %union.tree_node* %ssa_name) #7, !dbg !3793
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call9, metadata !3748, metadata !DIExpression()), !dbg !3771
  %livein = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 2, !dbg !3794
  br label %for.cond, !dbg !3793

for.cond:                                         ; preds = %cleanup, %if.end8
  %use.0 = phi %struct.ssa_use_operand_d* [ %call9, %if.end8 ], [ %call52, %cleanup ], !dbg !3797
  %global.0 = phi i8 [ 0, %if.end8 ], [ %global.2, %cleanup ], !dbg !3771
  call void @llvm.dbg.value(metadata i8 %global.0, metadata !3758, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use.0, metadata !3748, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3750, metadata !DIExpression(DW_OP_deref)), !dbg !3771
  %call10 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3798
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3798
  br i1 %tobool11, label %for.body, label %for.end, !dbg !3793

for.body:                                         ; preds = %for.cond
  %stmt12 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use.0, i64 0, i32 2, i32 0, !dbg !3799
  %10 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt12, align 8, !dbg !3799
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %10, metadata !3759, metadata !DIExpression()), !dbg !3800
  call void @llvm.dbg.value(metadata %struct.basic_block_def* null, metadata !3763, metadata !DIExpression()), !dbg !3800
  %call13 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %10) #7, !dbg !3801
  %cmp14 = icmp eq i32 %call13, 16, !dbg !3802
  br i1 %cmp14, label %if.then15, label %if.else32, !dbg !3803

if.then15:                                        ; preds = %for.body
  %call17 = call fastcc i32 @phi_arg_index_from_use(%struct.ssa_use_operand_d* %use.0) #7, !dbg !3804
  call void @llvm.dbg.value(metadata i32 %call17, metadata !3764, metadata !DIExpression()), !dbg !3805
  %conv = sext i32 %call17 to i64, !dbg !3806
  %call18 = call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %10, i64 %conv) #7, !dbg !3807
  call void @llvm.dbg.value(metadata %struct.edge_def* %call18, metadata !3767, metadata !DIExpression()), !dbg !3805
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call18, i64 0, i32 0, !dbg !3808
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3808
  %12 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3810
  %cfg20 = getelementptr inbounds %struct.function, %struct.function* %12, i64 0, i32 1, !dbg !3810
  %13 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg20, align 8, !dbg !3810
  %x_entry_block_ptr21 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %13, i64 0, i32 0, !dbg !3810
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr21, align 8, !dbg !3810
  %cmp22 = icmp eq %struct.basic_block_def* %11, %14, !dbg !3811
  br i1 %cmp22, label %if.end43, label %if.then24, !dbg !3812

if.then24:                                        ; preds = %if.then15
  %cmp26 = icmp eq %struct.basic_block_def* %11, %def_bb.0, !dbg !3813
  br i1 %cmp26, label %if.end43, label %if.then28, !dbg !3816

if.then28:                                        ; preds = %if.then24
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %11, metadata !3763, metadata !DIExpression()), !dbg !3800
  br label %if.end43, !dbg !3817

if.else32:                                        ; preds = %for.body
  %call33 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %10) #7, !dbg !3818
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3818
  br i1 %tobool34, label %if.else36, label %cleanup, !dbg !3819

if.else36:                                        ; preds = %if.else32
  %call37 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %10) #7, !dbg !3820
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call37, metadata !3768, metadata !DIExpression()), !dbg !3821
  %cmp38 = icmp eq %struct.basic_block_def* %call37, %def_bb.0, !dbg !3822
  %spec.select = select i1 %cmp38, %struct.basic_block_def* null, %struct.basic_block_def* %call37, !dbg !3824
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %spec.select, metadata !3763, metadata !DIExpression()), !dbg !3800
  br label %if.end43

if.end43:                                         ; preds = %if.then24, %if.then15, %if.then28, %if.else36
  %add_block.3 = phi %struct.basic_block_def* [ %spec.select, %if.else36 ], [ null, %if.then15 ], [ %11, %if.then28 ], [ null, %if.then24 ], !dbg !3825
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %add_block.3, metadata !3763, metadata !DIExpression()), !dbg !3800
  %tobool44 = icmp eq %struct.basic_block_def* %add_block.3, null, !dbg !3826
  br i1 %tobool44, label %cleanup, label %if.then45, !dbg !3827

if.then45:                                        ; preds = %if.end43
  call void @llvm.dbg.value(metadata i8 1, metadata !3758, metadata !DIExpression()), !dbg !3771
  %15 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !3828
  %index46 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %add_block.3, i64 0, i32 9, !dbg !3829
  %16 = load i32, i32* %index46, align 8, !dbg !3829
  %idxprom47 = sext i32 %16 to i64, !dbg !3830
  %arrayidx48 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %15, i64 %idxprom47, !dbg !3830
  %17 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx48, align 8, !dbg !3830
  %call49 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %17, i32 %call) #6, !dbg !3831
  br label %cleanup, !dbg !3832

cleanup:                                          ; preds = %if.end43, %if.else32, %if.then45
  %global.2 = phi i8 [ %global.0, %if.else32 ], [ 1, %if.then45 ], [ %global.0, %if.end43 ], !dbg !3771
  call void @llvm.dbg.value(metadata i8 %global.2, metadata !3758, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm_iter, metadata !3750, metadata !DIExpression(DW_OP_deref)), !dbg !3771
  %call52 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %imm_iter) #7, !dbg !3798
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call52, metadata !3748, metadata !DIExpression()), !dbg !3771
  br label %for.cond, !dbg !3798, !llvm.loop !3833

for.end:                                          ; preds = %for.cond
  %global.0.lcssa = phi i8 [ %global.0, %for.cond ], !dbg !3771
  call void @llvm.dbg.value(metadata i8 %global.0.lcssa, metadata !3758, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8 %global.0.lcssa, metadata !3758, metadata !DIExpression()), !dbg !3771
  call void @llvm.dbg.value(metadata i8 %global.0.lcssa, metadata !3758, metadata !DIExpression()), !dbg !3771
  %tobool53 = icmp eq i8 %global.0.lcssa, 0, !dbg !3835
  br i1 %tobool53, label %cleanup58, label %if.then54, !dbg !3837

if.then54:                                        ; preds = %for.end
  %global55 = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 1, !dbg !3838
  %18 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %global55, align 8, !dbg !3838
  %call56 = call zeroext i8 @bitmap_set_bit(%struct.bitmap_head_def* %18, i32 %call) #6, !dbg !3839
  br label %cleanup58, !dbg !3839

cleanup58:                                        ; preds = %for.end, %if.then54, %entry
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !3840
  ret void, !dbg !3840
}

; Function Attrs: nounwind uwtable
define internal fastcc void @live_worklist(%struct.tree_live_info_d* %live) unnamed_addr #5 !dbg !3841 {
entry:
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3843, metadata !DIExpression()), !dbg !3858
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3859
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !3859
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3859
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 5, !dbg !3859
  %2 = load i32, i32* %x_last_basic_block, align 8, !dbg !3859
  %add = add nsw i32 %2, 1, !dbg !3860
  %call = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %add) #6, !dbg !3861
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %call, metadata !3846, metadata !DIExpression()), !dbg !3858
  %call1 = tail call %struct.bitmap_head_def* @bitmap_obstack_alloc_stat(%struct.bitmap_obstack* null) #6, !dbg !3862
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call1, metadata !3857, metadata !DIExpression()), !dbg !3858
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call) #6, !dbg !3863
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3864
  %cfg3 = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3864
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg3, align 8, !dbg !3864
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3864
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3864
  br label %for.cond, !dbg !3864

for.cond:                                         ; preds = %for.body, %entry
  %6 = phi %struct.control_flow_graph* [ %4, %entry ], [ %.pre1, %for.body ], !dbg !3866
  %.pn = phi %struct.basic_block_def* [ %5, %entry ], [ %bb.0, %for.body ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 5, !dbg !3868
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3868
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3845, metadata !DIExpression()), !dbg !3858
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 0, !dbg !3866
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3866
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %7, !dbg !3866
  br i1 %cmp, label %while.cond.preheader, label %for.body, !dbg !3864

while.cond.preheader:                             ; preds = %for.cond
  %stack_top = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 5, !dbg !3858
  %work_stack = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 4, !dbg !3858
  br label %while.cond, !dbg !3869

for.body:                                         ; preds = %for.cond
  tail call fastcc void @loe_visit_block(%struct.tree_live_info_d* %live, %struct.basic_block_def* %bb.0, %struct.simple_bitmap_def* %call, %struct.bitmap_head_def* %call1) #7, !dbg !3870
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3866
  %cfg5.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3871
  %.pre1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg5.phi.trans.insert, align 8, !dbg !3866
  br label %for.cond, !dbg !3866, !llvm.loop !3872

while.cond:                                       ; preds = %while.cond.preheader, %cond.end
  %8 = load i32*, i32** %stack_top, align 8, !dbg !3874
  %9 = load i32*, i32** %work_stack, align 8, !dbg !3875
  %cmp7 = icmp eq i32* %8, %9, !dbg !3876
  br i1 %cmp7, label %while.end, label %while.body, !dbg !3869

while.body:                                       ; preds = %while.cond
  %incdec.ptr = getelementptr inbounds i32, i32* %8, i64 -1, !dbg !3877
  store i32* %incdec.ptr, i32** %stack_top, align 8, !dbg !3877
  %10 = load i32, i32* %incdec.ptr, align 4, !dbg !3879
  call void @llvm.dbg.value(metadata i32 %10, metadata !3844, metadata !DIExpression()), !dbg !3858
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3880
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 1, !dbg !3880
  %12 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !3880
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %12, i64 0, i32 2, !dbg !3880
  %13 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !3880
  %tobool = icmp eq %struct.VEC_basic_block_gc* %13, null, !dbg !3880
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3880

cond.true:                                        ; preds = %while.body
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %13, i64 0, i32 0, !dbg !3880
  br label %cond.end, !dbg !3880

cond.end:                                         ; preds = %while.body, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %while.body ], !dbg !3880
  %call14 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %10) #7, !dbg !3880
  tail call fastcc void @loe_visit_block(%struct.tree_live_info_d* %live, %struct.basic_block_def* %call14, %struct.simple_bitmap_def* %call, %struct.bitmap_head_def* %call1) #7, !dbg !3881
  br label %while.cond, !dbg !3869, !llvm.loop !3882

while.end:                                        ; preds = %while.cond
  tail call void @bitmap_obstack_free(%struct.bitmap_head_def* %call1) #6, !dbg !3884
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* null, metadata !3857, metadata !DIExpression()), !dbg !3858
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %call, i64 0, i32 0, !dbg !3885
  %14 = load i8*, i8** %popcount, align 8, !dbg !3885
  tail call void @free(i8* %14) #6, !dbg !3885
  %15 = bitcast %struct.simple_bitmap_def* %call to i8*, !dbg !3885
  tail call void @free(i8* %15) #6, !dbg !3885
  ret void, !dbg !3886
}

; Function Attrs: nounwind uwtable
define dso_local void @dump_var_map(%struct._IO_FILE* %f, %struct._var_map* %map) local_unnamed_addr #5 !dbg !3887 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3891, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata %struct._var_map* %map, metadata !3892, metadata !DIExpression()), !dbg !3897
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3898
  call void @llvm.dbg.value(metadata i32 0, metadata !3894, metadata !DIExpression()), !dbg !3897
  %num_partitions = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 3, !dbg !3899
  %view_to_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 2, !dbg !3902
  %var_partition = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 0, !dbg !3905
  %partition_to_view = getelementptr inbounds %struct._var_map, %struct._var_map* %map, i64 0, i32 1, !dbg !3909
  br label %for.cond, !dbg !3911

for.cond:                                         ; preds = %for.inc49, %entry
  %indvars.iv1 = phi i64 [ %indvars.iv.next2, %for.inc49 ], [ 0, %entry ], !dbg !3912
  call void @llvm.dbg.value(metadata i64 %indvars.iv1, metadata !3894, metadata !DIExpression()), !dbg !3897
  %0 = load i32, i32* %num_partitions, align 8, !dbg !3913
  %1 = zext i32 %0 to i64, !dbg !3914
  %cmp = icmp ult i64 %indvars.iv1, %1, !dbg !3914
  br i1 %cmp, label %for.body, label %for.end51, !dbg !3915

for.body:                                         ; preds = %for.cond
  %2 = load i32*, i32** %view_to_partition, align 8, !dbg !3916
  %cmp1 = icmp eq i32* %2, null, !dbg !3917
  %3 = trunc i64 %indvars.iv1 to i32, !dbg !3918
  br i1 %cmp1, label %if.end, label %if.then, !dbg !3918

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, i32* %2, i64 %indvars.iv1, !dbg !3919
  %4 = load i32, i32* %arrayidx, align 4, !dbg !3919
  call void @llvm.dbg.value(metadata i32 %4, metadata !3896, metadata !DIExpression()), !dbg !3897
  br label %if.end, !dbg !3920

if.end:                                           ; preds = %for.body, %if.then
  %p.0 = phi i32 [ %4, %if.then ], [ %3, %for.body ], !dbg !3902
  call void @llvm.dbg.value(metadata i32 %p.0, metadata !3896, metadata !DIExpression()), !dbg !3897
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3921
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 3, !dbg !3921
  %6 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !3921
  %ssa_names = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %6, i64 0, i32 2, !dbg !3921
  %7 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names, align 8, !dbg !3921
  %tobool = icmp eq %struct.VEC_tree_gc* %7, null, !dbg !3921
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3921

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %7, i64 0, i32 0, !dbg !3921
  br label %cond.end, !dbg !3921

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !3921
  %call6 = tail call fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %cond, i32 %p.0) #7, !dbg !3921
  %cmp7 = icmp eq %union.tree_node* %call6, null, !dbg !3923
  br i1 %cmp7, label %for.inc49, label %for.cond10.preheader, !dbg !3924

for.cond10.preheader:                             ; preds = %cond.end
  br label %for.cond10, !dbg !3925

for.cond10:                                       ; preds = %for.cond10.preheader, %for.inc
  %indvars.iv = phi i64 [ 1, %for.cond10.preheader ], [ %indvars.iv.next, %for.inc ], !dbg !3926
  %t.0 = phi i32 [ 0, %for.cond10.preheader ], [ %t.1, %for.inc ], !dbg !3926
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !3895, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %t.0, metadata !3893, metadata !DIExpression()), !dbg !3897
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3927
  %gimple_df12 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 3, !dbg !3927
  %9 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df12, align 8, !dbg !3927
  %ssa_names13 = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %9, i64 0, i32 2, !dbg !3927
  %10 = load %struct.VEC_tree_gc*, %struct.VEC_tree_gc** %ssa_names13, align 8, !dbg !3927
  %tobool14 = icmp eq %struct.VEC_tree_gc* %10, null, !dbg !3927
  br i1 %tobool14, label %cond.end21, label %cond.true15, !dbg !3927

cond.true15:                                      ; preds = %for.cond10
  %base19 = getelementptr inbounds %struct.VEC_tree_gc, %struct.VEC_tree_gc* %10, i64 0, i32 0, !dbg !3927
  br label %cond.end21, !dbg !3927

cond.end21:                                       ; preds = %for.cond10, %cond.true15
  %cond22 = phi %struct.VEC_tree_base* [ %base19, %cond.true15 ], [ null, %for.cond10 ], !dbg !3927
  %call23 = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond22) #7, !dbg !3927
  %11 = zext i32 %call23 to i64, !dbg !3928
  %cmp24 = icmp ult i64 %indvars.iv, %11, !dbg !3928
  br i1 %cmp24, label %for.body25, label %for.end, !dbg !3925

for.body25:                                       ; preds = %cond.end21
  %12 = load %struct.partition_def*, %struct.partition_def** %var_partition, align 8, !dbg !3929
  %class_element = getelementptr inbounds %struct.partition_def, %struct.partition_def* %12, i64 0, i32 1, i64 %indvars.iv, i32 0, !dbg !3929
  %13 = load i32, i32* %class_element, align 8, !dbg !3929
  call void @llvm.dbg.value(metadata i32 %13, metadata !3896, metadata !DIExpression()), !dbg !3897
  %14 = load i32*, i32** %partition_to_view, align 8, !dbg !3930
  %tobool28 = icmp eq i32* %14, null, !dbg !3931
  br i1 %tobool28, label %if.end33, label %if.then29, !dbg !3932

if.then29:                                        ; preds = %for.body25
  %idxprom31 = sext i32 %13 to i64, !dbg !3933
  %arrayidx32 = getelementptr inbounds i32, i32* %14, i64 %idxprom31, !dbg !3933
  %15 = load i32, i32* %arrayidx32, align 4, !dbg !3933
  call void @llvm.dbg.value(metadata i32 %15, metadata !3896, metadata !DIExpression()), !dbg !3897
  br label %if.end33, !dbg !3934

if.end33:                                         ; preds = %for.body25, %if.then29
  %p.1 = phi i32 [ %15, %if.then29 ], [ %13, %for.body25 ], !dbg !3905
  call void @llvm.dbg.value(metadata i32 %p.1, metadata !3896, metadata !DIExpression()), !dbg !3897
  %16 = zext i32 %p.1 to i64, !dbg !3935
  %cmp34 = icmp eq i64 %indvars.iv1, %16, !dbg !3935
  br i1 %cmp34, label %if.then35, label %for.inc, !dbg !3937

if.then35:                                        ; preds = %if.end33
  %inc = add nsw i32 %t.0, 1, !dbg !3938
  call void @llvm.dbg.value(metadata i32 %inc, metadata !3893, metadata !DIExpression()), !dbg !3897
  %cmp36 = icmp eq i32 %t.0, 0, !dbg !3941
  br i1 %cmp36, label %if.then37, label %if.end41, !dbg !3942

if.then37:                                        ; preds = %if.then35
  %17 = trunc i64 %indvars.iv1 to i32, !dbg !3943
  %call38 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %17) #6, !dbg !3943
  %18 = trunc i64 %indvars.iv1 to i32, !dbg !3945
  %call39 = tail call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %map, i32 %18) #7, !dbg !3945
  tail call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call39, i32 2) #6, !dbg !3946
  %call40 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3947
  br label %if.end41, !dbg !3948

if.end41:                                         ; preds = %if.then37, %if.then35
  %19 = trunc i64 %indvars.iv to i32, !dbg !3949
  %call42 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0), i32 %19) #6, !dbg !3949
  br label %for.inc, !dbg !3950

for.inc:                                          ; preds = %if.end33, %if.end41
  %t.1 = phi i32 [ %inc, %if.end41 ], [ %t.0, %if.end33 ], !dbg !3926
  call void @llvm.dbg.value(metadata i32 %t.1, metadata !3893, metadata !DIExpression()), !dbg !3897
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !3951
  br label %for.cond10, !dbg !3952, !llvm.loop !3953

for.end:                                          ; preds = %cond.end21
  %t.0.lcssa = phi i32 [ %t.0, %cond.end21 ], !dbg !3926
  call void @llvm.dbg.value(metadata i32 %t.0.lcssa, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %t.0.lcssa, metadata !3893, metadata !DIExpression()), !dbg !3897
  call void @llvm.dbg.value(metadata i32 %t.0.lcssa, metadata !3893, metadata !DIExpression()), !dbg !3897
  %cmp45 = icmp eq i32 %t.0.lcssa, 0, !dbg !3955
  br i1 %cmp45, label %for.inc49, label %if.then46, !dbg !3957

if.then46:                                        ; preds = %for.end
  %call47 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3958
  br label %for.inc49, !dbg !3958

for.inc49:                                        ; preds = %for.end, %if.then46, %cond.end
  %indvars.iv.next2 = add nuw nsw i64 %indvars.iv1, 1, !dbg !3959
  br label %for.cond, !dbg !3960, !llvm.loop !3961

for.end51:                                        ; preds = %for.cond
  %call52 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !3963
  ret void, !dbg !3964
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_index(%struct.VEC_tree_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !3965 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3971, metadata !DIExpression()), !dbg !3973
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !3972, metadata !DIExpression()), !dbg !3973
  br label %land.end, !dbg !3974

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !3974
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3974
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3974
  ret %union.tree_node* %0, !dbg !3974
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3975 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3979, metadata !DIExpression()), !dbg !3980
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3981
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3981

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3981
  %0 = load i32, i32* %num, align 8, !dbg !3981
  br label %cond.end, !dbg !3981

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3981
  ret i32 %cond, !dbg !3981
}

declare dso_local void @print_generic_expr(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_live_info(%struct._IO_FILE* %f, %struct.tree_live_info_d* %live, i32 %flag) local_unnamed_addr #5 !dbg !3982 {
entry:
  %i = alloca i32, align 4
  %bi = alloca %struct.bitmap_iterator, align 8
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %f, metadata !3986, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !3987, metadata !DIExpression()), !dbg !3993
  call void @llvm.dbg.value(metadata i32 %flag, metadata !3988, metadata !DIExpression()), !dbg !3993
  %0 = bitcast i32* %i to i8*, !dbg !3994
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #8, !dbg !3994
  %map1 = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 0, !dbg !3995
  %1 = load %struct._var_map*, %struct._var_map** %map1, align 8, !dbg !3995
  call void @llvm.dbg.value(metadata %struct._var_map* %1, metadata !3991, metadata !DIExpression()), !dbg !3993
  %2 = bitcast %struct.bitmap_iterator* %bi to i8*, !dbg !3996
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #8, !dbg !3996
  %and = and i32 %flag, 1, !dbg !3997
  %tobool = icmp eq i32 %and, 0, !dbg !3997
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3999

land.lhs.true:                                    ; preds = %entry
  %livein = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 2, !dbg !4000
  %3 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !4000
  %tobool2 = icmp eq %struct.bitmap_head_def** %3, null, !dbg !4001
  br i1 %tobool2, label %if.end, label %if.then, !dbg !4002

if.then:                                          ; preds = %land.lhs.true
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4003
  %cfg = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !4003
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4003
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 0, !dbg !4003
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4003
  br label %for.cond, !dbg !4003

for.cond:                                         ; preds = %for.end, %if.then
  %7 = phi %struct.control_flow_graph* [ %5, %if.then ], [ %.pre2, %for.end ], !dbg !4006
  %.pn = phi %struct.basic_block_def* [ %6, %if.then ], [ %bb.0, %for.end ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !4008
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !4008
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3989, metadata !DIExpression()), !dbg !3993
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %7, i64 0, i32 1, !dbg !4006
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4006
  %cmp = icmp eq %struct.basic_block_def* %bb.0, %8, !dbg !4006
  br i1 %cmp, label %if.end.loopexit, label %for.body, !dbg !4003

for.body:                                         ; preds = %for.cond
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !4009
  %9 = load i32, i32* %index, align 8, !dbg !4009
  %call = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 %9) #6, !dbg !4011
  %10 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %livein, align 8, !dbg !4012
  %11 = load i32, i32* %index, align 8, !dbg !4012
  %idxprom = sext i32 %11 to i64, !dbg !4012
  %arrayidx = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %10, i64 %idxprom, !dbg !4012
  %12 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx, align 8, !dbg !4012
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %12, i32 0, i32* nonnull %i) #7, !dbg !4012
  br label %for.cond7, !dbg !4012

for.cond7:                                        ; preds = %for.body10, %for.body
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  %call8 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4014
  %tobool9 = icmp eq i8 %call8, 0, !dbg !4012
  br i1 %tobool9, label %for.end, label %for.body10, !dbg !4012

for.body10:                                       ; preds = %for.cond7
  %13 = load i32, i32* %i, align 4, !dbg !4016
  call void @llvm.dbg.value(metadata i32 %13, metadata !3990, metadata !DIExpression()), !dbg !3993
  %call11 = call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %1, i32 %13) #7, !dbg !4018
  call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call11, i32 2) #6, !dbg !4019
  %call12 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4020
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4014
  br label %for.cond7, !dbg !4014, !llvm.loop !4021

for.end:                                          ; preds = %for.cond7
  %call13 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4023
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4006
  %cfg4.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !4024
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4.phi.trans.insert, align 8, !dbg !4006
  br label %for.cond, !dbg !4006, !llvm.loop !4025

if.end.loopexit:                                  ; preds = %for.cond
  br label %if.end, !dbg !4027

if.end:                                           ; preds = %if.end.loopexit, %land.lhs.true, %entry
  %and17 = and i32 %flag, 2, !dbg !4027
  %tobool18 = icmp eq i32 %and17, 0, !dbg !4027
  br i1 %tobool18, label %if.end50, label %land.lhs.true19, !dbg !4029

land.lhs.true19:                                  ; preds = %if.end
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 6, !dbg !4030
  %14 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !4030
  %tobool20 = icmp eq %struct.bitmap_head_def** %14, null, !dbg !4031
  br i1 %tobool20, label %if.end50, label %if.then21, !dbg !4032

if.then21:                                        ; preds = %land.lhs.true19
  %15 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4033
  %cfg23 = getelementptr inbounds %struct.function, %struct.function* %15, i64 0, i32 1, !dbg !4033
  %16 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg23, align 8, !dbg !4033
  %x_entry_block_ptr24 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %16, i64 0, i32 0, !dbg !4033
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr24, align 8, !dbg !4033
  br label %for.cond26, !dbg !4033

for.cond26:                                       ; preds = %for.end45, %if.then21
  %18 = phi %struct.control_flow_graph* [ %16, %if.then21 ], [ %.pre4, %for.end45 ], !dbg !4036
  %.pn1 = phi %struct.basic_block_def* [ %17, %if.then21 ], [ %bb.1, %for.end45 ]
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn1, i64 0, i32 6, !dbg !4038
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !4038
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !3989, metadata !DIExpression()), !dbg !3993
  %x_exit_block_ptr29 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %18, i64 0, i32 1, !dbg !4036
  %19 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr29, align 8, !dbg !4036
  %cmp30 = icmp eq %struct.basic_block_def* %bb.1, %19, !dbg !4036
  br i1 %cmp30, label %if.end50.loopexit, label %for.body31, !dbg !4033

for.body31:                                       ; preds = %for.cond26
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !4039
  %20 = load i32, i32* %index32, align 8, !dbg !4039
  %call33 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.11, i64 0, i64 0), i32 %20) #6, !dbg !4041
  %21 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !4042
  %22 = load i32, i32* %index32, align 8, !dbg !4042
  %idxprom36 = sext i32 %22 to i64, !dbg !4042
  %arrayidx37 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %21, i64 %idxprom36, !dbg !4042
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx37, align 8, !dbg !4042
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call fastcc void @bmp_iter_set_init(%struct.bitmap_iterator* nonnull %bi, %struct.bitmap_head_def* %23, i32 0, i32* nonnull %i) #7, !dbg !4042
  br label %for.cond38, !dbg !4042

for.cond38:                                       ; preds = %for.body41, %for.body31
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  %call39 = call fastcc zeroext i8 @bmp_iter_set(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4044
  %tobool40 = icmp eq i8 %call39, 0, !dbg !4042
  br i1 %tobool40, label %for.end45, label %for.body41, !dbg !4042

for.body41:                                       ; preds = %for.cond38
  %24 = load i32, i32* %i, align 4, !dbg !4046
  call void @llvm.dbg.value(metadata i32 %24, metadata !3990, metadata !DIExpression()), !dbg !3993
  %call42 = call fastcc %union.tree_node* @partition_to_var(%struct._var_map* %1, i32 %24) #7, !dbg !4048
  call void @print_generic_expr(%struct._IO_FILE* %f, %union.tree_node* %call42, i32 2) #6, !dbg !4049
  %call43 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0)) #6, !dbg !4050
  call void @llvm.dbg.value(metadata i32* %i, metadata !3990, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call void @llvm.dbg.value(metadata %struct.bitmap_iterator* %bi, metadata !3992, metadata !DIExpression(DW_OP_deref)), !dbg !3993
  call fastcc void @bmp_iter_next(%struct.bitmap_iterator* nonnull %bi, i32* nonnull %i) #7, !dbg !4044
  br label %for.cond38, !dbg !4044, !llvm.loop !4051

for.end45:                                        ; preds = %for.cond38
  %call46 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %f, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0)) #6, !dbg !4053
  %.pre3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4036
  %cfg28.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre3, i64 0, i32 1, !dbg !4054
  %.pre4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg28.phi.trans.insert, align 8, !dbg !4036
  br label %for.cond26, !dbg !4036, !llvm.loop !4055

if.end50.loopexit:                                ; preds = %for.cond26
  br label %if.end50, !dbg !4057

if.end50:                                         ; preds = %if.end50.loopexit, %land.lhs.true19, %if.end
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #8, !dbg !4057
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #8, !dbg !4057
  ret void, !dbg !4057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !4058 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !4063, metadata !DIExpression()), !dbg !4064
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4065
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4065
  br i1 %tobool, label %if.end, label %if.then, !dbg !4067

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !4067
  tail call void @free(i8* nonnull %1) #6, !dbg !4065
  br label %if.end, !dbg !4065

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4067
  ret void, !dbg !4067
}

declare dso_local zeroext i8 @is_gimple_reg(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !4068 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4070, metadata !DIExpression()), !dbg !4075
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4076
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !4076
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4071, metadata !DIExpression()), !dbg !4075
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4077
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !4077
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !4077
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !4079
  br i1 %cmp, label %cleanup, label %if.end, !dbg !4080

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !4081
  %tobool = icmp eq i32 %3, 0, !dbg !4081
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !4083

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !4084
  br label %cleanup, !dbg !4085

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !4075
  ret i8 %retval.0, !dbg !4086
}

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

declare dso_local i64 @bitmap_count_bits(%struct.bitmap_head_def*) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_base_truncate(%struct.VEC_tree_base* %vec_, i32 %size_) unnamed_addr #0 !dbg !4087 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4092, metadata !DIExpression()), !dbg !4094
  call void @llvm.dbg.value(metadata i32 0, metadata !4093, metadata !DIExpression()), !dbg !4094
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4095
  br label %cond.true, !dbg !4095

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !4095

cond.false:                                       ; No predecessors!
  br label %cond.end, !dbg !4095

cond.end:                                         ; preds = %cond.false, %cond.true
  br i1 %tobool, label %if.end, label %if.then, !dbg !4095

if.then:                                          ; preds = %cond.end
  %num3 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4096
  store i32 0, i32* %num3, align 8, !dbg !4096
  br label %if.end, !dbg !4096

if.end:                                           ; preds = %cond.end, %if.then
  ret void, !dbg !4095
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !4098 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4102, metadata !DIExpression()), !dbg !4103
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !4104
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !4104
  ret %struct.VEC_tree_heap* %0, !dbg !4104
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_heap_safe_push(%struct.VEC_tree_heap** %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4105 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !4109, metadata !DIExpression()), !dbg !4111
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4110, metadata !DIExpression()), !dbg !4111
  %call = tail call fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 1) #7, !dbg !4112
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4112
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4112
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4112

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !4112
  br label %cond.end, !dbg !4112

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4112
  %call1 = tail call fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %cond, %union.tree_node* %obj_) #7, !dbg !4112
  ret %union.tree_node** %call1, !dbg !4112
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4113 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !4117, metadata !DIExpression()), !dbg !4120
  call void @llvm.dbg.value(metadata i32 1, metadata !4118, metadata !DIExpression()), !dbg !4120
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !4121
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !4121
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4121

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !4121
  br label %cond.end, !dbg !4121

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4121
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 1) #7, !dbg !4121
  %tobool1 = icmp eq i32 %call, 0, !dbg !4121
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4121
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4119, metadata !DIExpression()), !dbg !4120
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4121

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !4122
  %2 = load i8*, i8** %1, align 8, !dbg !4122
  %call3 = tail call i8* @vec_heap_p_reserve(i8* %2, i32 1) #6, !dbg !4122
  store i8* %call3, i8** %1, align 8, !dbg !4122
  br label %if.end, !dbg !4122

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4121
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @VEC_tree_base_quick_push(%struct.VEC_tree_base* %vec_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !4124 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4128, metadata !DIExpression()), !dbg !4131
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !4129, metadata !DIExpression()), !dbg !4131
  %num1 = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4132
  %0 = load i32, i32* %num1, align 8, !dbg !4132
  %inc = add i32 %0, 1, !dbg !4132
  store i32 %inc, i32* %num1, align 8, !dbg !4132
  %idxprom = zext i32 %0 to i64, !dbg !4132
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4132
  call void @llvm.dbg.value(metadata %union.tree_node** %arrayidx, metadata !4130, metadata !DIExpression()), !dbg !4131
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !4132
  ret %union.tree_node** %arrayidx, !dbg !4132
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4133 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !4137, metadata !DIExpression()), !dbg !4139
  call void @llvm.dbg.value(metadata i32 1, metadata !4138, metadata !DIExpression()), !dbg !4139
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !4140
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4140

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !4140
  %0 = load i32, i32* %alloc, align 4, !dbg !4140
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !4140
  %1 = load i32, i32* %num, align 8, !dbg !4140
  %cmp1 = icmp ne i32 %0, %1, !dbg !4140
  %phitmp = zext i1 %cmp1 to i32, !dbg !4140
  br label %cond.end, !dbg !4140

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4140

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4140
}

declare dso_local i8* @vec_heap_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.label(metadata) #1

declare dso_local void @expand_location(%struct.expanded_location* sret, i32) local_unnamed_addr #2

declare dso_local %union.tree_node* @block_ultimate_origin(%union.tree_node*) local_unnamed_addr #2

declare dso_local void @print_generic_decl(%struct._IO_FILE*, %union.tree_node*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @first_htab_element(%struct.htab_iterator* %hti, %struct.htab* %table) unnamed_addr #0 !dbg !4141 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4146, metadata !DIExpression()), !dbg !4150
  call void @llvm.dbg.value(metadata %struct.htab* %table, metadata !4147, metadata !DIExpression()), !dbg !4150
  %htab = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 0, !dbg !4151
  store %struct.htab* %table, %struct.htab** %htab, align 8, !dbg !4152
  %entries = getelementptr inbounds %struct.htab, %struct.htab* %table, i64 0, i32 3, !dbg !4153
  %0 = bitcast i8*** %entries to i64*, !dbg !4153
  %1 = load i64, i64* %0, align 8, !dbg !4153
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4154
  %2 = bitcast i8*** %slot to i64*, !dbg !4155
  store i64 %1, i64* %2, align 8, !dbg !4155
  %.cast = inttoptr i64 %1 to i8**, !dbg !4156
  %call = tail call i64 @htab_size(%struct.htab* %table) #6, !dbg !4157
  %add.ptr = getelementptr inbounds i8*, i8** %.cast, i64 %call, !dbg !4158
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4159
  store i8** %add.ptr, i8*** %limit, align 8, !dbg !4160
  %.pre3 = load i8**, i8*** %slot, align 8, !dbg !4161
  br label %do.body, !dbg !4162

do.body:                                          ; preds = %do.cond, %entry
  %3 = phi i8** [ %incdec.ptr, %do.cond ], [ %.pre3, %entry ]
  %indvars2 = bitcast i8** %3 to i64*, !dbg !4161
  %4 = load i64, i64* %indvars2, align 8, !dbg !4163
  %switch1 = icmp ult i64 %4, 2, !dbg !4164
  br i1 %switch1, label %do.cond, label %do.end

do.cond:                                          ; preds = %do.body
  %incdec.ptr = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !4166
  store i8** %incdec.ptr, i8*** %slot, align 8, !dbg !4166
  %cmp6 = icmp ult i8** %incdec.ptr, %add.ptr, !dbg !4167
  br i1 %cmp6, label %do.body, label %do.end, !dbg !4168, !llvm.loop !4169

do.end:                                           ; preds = %do.body, %do.cond
  %5 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ]
  %6 = phi i8** [ %3, %do.body ], [ %incdec.ptr, %do.cond ], !dbg !4171
  %cmp9 = icmp ult i8** %6, %add.ptr, !dbg !4173
  br i1 %cmp9, label %if.then10, label %return, !dbg !4174

if.then10:                                        ; preds = %do.end
  %7 = load i8*, i8** %5, align 8, !dbg !4175
  br label %return, !dbg !4176

return:                                           ; preds = %do.end, %if.then10
  %retval.0 = phi i8* [ %7, %if.then10 ], [ null, %do.end ], !dbg !4150
  ret i8* %retval.0, !dbg !4177
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.htab* @gimple_referenced_vars(%struct.function* %fun) unnamed_addr #0 !dbg !4178 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !4184, metadata !DIExpression()), !dbg !4185
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !4186
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !4186
  %tobool = icmp eq %struct.gimple_df* %0, null, !dbg !4188
  br i1 %tobool, label %return, label %if.end, !dbg !4189

if.end:                                           ; preds = %entry
  %referenced_vars = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 0, !dbg !4190
  %1 = load %struct.htab*, %struct.htab** %referenced_vars, align 8, !dbg !4190
  br label %return, !dbg !4191

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.htab* [ %1, %if.end ], [ null, %entry ], !dbg !4185
  ret %struct.htab* %retval.0, !dbg !4192
}

declare dso_local i64 @htab_size(%struct.htab*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_htab_p(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !4193 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4199, metadata !DIExpression()), !dbg !4200
  %slot = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4201
  %0 = load i8**, i8*** %slot, align 8, !dbg !4201
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4203
  %1 = load i8**, i8*** %limit, align 8, !dbg !4203
  %cmp = icmp uge i8** %0, %1, !dbg !4204
  %. = zext i1 %cmp to i8, !dbg !4200
  ret i8 %., !dbg !4205
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i8* @next_htab_element(%struct.htab_iterator* %hti) unnamed_addr #0 !dbg !4206 {
entry:
  call void @llvm.dbg.value(metadata %struct.htab_iterator* %hti, metadata !4210, metadata !DIExpression()), !dbg !4213
  %slot1 = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 1, !dbg !4214
  %limit = getelementptr inbounds %struct.htab_iterator, %struct.htab_iterator* %hti, i64 0, i32 2, !dbg !4213
  %.pre = load i8**, i8*** %slot1, align 8, !dbg !4215
  %.pre3 = load i8**, i8*** %limit, align 8, !dbg !4216
  br label %while.cond, !dbg !4217

while.cond:                                       ; preds = %while.body, %entry
  %0 = phi i8** [ %.pre, %entry ], [ %incdec.ptr, %while.body ], !dbg !4215
  %retval.0 = phi i8* [ undef, %entry ], [ %spec.select2, %while.body ]
  %incdec.ptr = getelementptr inbounds i8*, i8** %0, i64 1, !dbg !4215
  store i8** %incdec.ptr, i8*** %slot1, align 8, !dbg !4215
  %cmp = icmp ult i8** %incdec.ptr, %.pre3, !dbg !4218
  br i1 %cmp, label %while.body, label %return, !dbg !4217

while.body:                                       ; preds = %while.cond
  %1 = load i8*, i8** %incdec.ptr, align 8, !dbg !4219
  call void @llvm.dbg.value(metadata i8* %1, metadata !4211, metadata !DIExpression()), !dbg !4220
  %switch1 = icmp ult i8* %1, inttoptr (i64 2 to i8*), !dbg !4221
  %spec.select2 = select i1 %switch1, i8* %retval.0, i8* %1, !dbg !4221
  br i1 %switch1, label %while.cond, label %return, !llvm.loop !4223

return:                                           ; preds = %while.cond, %while.body
  %retval.2 = phi i8* [ %spec.select2, %while.body ], [ null, %while.cond ], !dbg !4213
  ret i8* %retval.2, !dbg !4225
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4226 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4233, metadata !DIExpression()), !dbg !4234
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4235
  %0 = load i32, i32* %flags, align 8, !dbg !4235
  %and = and i32 %0, 512, !dbg !4236
  %tobool = icmp eq i32 %and, 0, !dbg !4236
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4237

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4238
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4238
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4239
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4240

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4241
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4241
  br label %cond.end, !dbg !4240

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4240
  ret %struct.gimple_seq_d* %cond, !dbg !4242
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4243 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4250, metadata !DIExpression()), !dbg !4251
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4252
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4252

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4253
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4253
  br label %cond.end, !dbg !4252

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4252
  ret %struct.gimple_seq_node_d* %cond, !dbg !4254
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4255 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4259, metadata !DIExpression()), !dbg !4260
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !4261
  %bf.load = load i32, i32* %0, align 8, !dbg !4261
  %bf.clear = and i32 %bf.load, 255, !dbg !4261
  ret i32 %bf.clear, !dbg !4262
}

declare dso_local %union.tree_node* @walk_tree_1(%union.tree_node**, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*, %union.tree_node* (%union.tree_node**, i32*, %union.tree_node* (%union.tree_node**, i32*, i8*)*, i8*, %struct.pointer_set_t*)*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal %union.tree_node* @mark_all_vars_used_1(%union.tree_node** %tp, i32* %walk_subtrees, i8* %data) #5 !dbg !4263 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %tp, metadata !4267, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i32* %walk_subtrees, metadata !4268, metadata !DIExpression()), !dbg !4273
  call void @llvm.dbg.value(metadata i8* %data, metadata !4269, metadata !DIExpression()), !dbg !4273
  %0 = load %union.tree_node*, %union.tree_node** %tp, align 8, !dbg !4274
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !4270, metadata !DIExpression()), !dbg !4273
  %1 = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4275
  %bf.load = load i64, i64* %1, align 8, !dbg !4275
  %bf.cast = and i64 %bf.load, 65535, !dbg !4275
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast, !dbg !4275
  %2 = load i32, i32* %arrayidx, align 4, !dbg !4275
  call void @llvm.dbg.value(metadata i32 %2, metadata !4271, metadata !DIExpression()), !dbg !4273
  %cmp = icmp eq i64 %bf.cast, 141, !dbg !4276
  br i1 %cmp, label %if.then, label %if.end, !dbg !4278

if.then:                                          ; preds = %entry
  %var = getelementptr inbounds %union.tree_node, %union.tree_node* %0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, !dbg !4279
  %3 = bitcast i32* %var to %union.tree_node**, !dbg !4279
  %4 = load %union.tree_node*, %union.tree_node** %3, align 8, !dbg !4279
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4270, metadata !DIExpression()), !dbg !4273
  br label %if.end, !dbg !4280

if.end:                                           ; preds = %if.then, %entry
  %t.0 = phi %union.tree_node* [ %4, %if.then ], [ %0, %entry ], !dbg !4273
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !4270, metadata !DIExpression()), !dbg !4273
  %.off = add i32 %2, -4, !dbg !4281
  %5 = icmp ult i32 %.off, 7, !dbg !4281
  br i1 %5, label %land.lhs.true7, label %if.end13, !dbg !4281

land.lhs.true7:                                   ; preds = %if.end
  %call = tail call %union.tree_node** @tree_block(%union.tree_node* %t.0) #6, !dbg !4283
  %6 = load %union.tree_node*, %union.tree_node** %call, align 8, !dbg !4283
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !4272, metadata !DIExpression()), !dbg !4273
  %cmp8 = icmp eq %union.tree_node* %6, null, !dbg !4284
  br i1 %cmp8, label %if.end13, label %if.then9, !dbg !4285

if.then9:                                         ; preds = %land.lhs.true7
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4286
  %bf.load11 = load i64, i64* %7, align 8, !dbg !4287
  %bf.set = or i64 %bf.load11, 16777216, !dbg !4287
  store i64 %bf.set, i64* %7, align 8, !dbg !4287
  br label %if.end13, !dbg !4286

if.end13:                                         ; preds = %land.lhs.true7, %if.then9, %if.end
  %8 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4288
  %bf.load15 = load i64, i64* %8, align 8, !dbg !4288
  %bf.cast172 = and i64 %bf.load15, 65535, !dbg !4290
  %cmp18 = icmp eq i64 %bf.cast172, 152, !dbg !4290
  br i1 %cmp18, label %if.then19, label %if.end27, !dbg !4291

if.then19:                                        ; preds = %if.end13
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !4292
  tail call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %operands, i8* %data) #7, !dbg !4294
  %arrayidx23 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !4295
  tail call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %arrayidx23, i8* %data) #7, !dbg !4296
  %arrayidx26 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 2, !dbg !4297
  tail call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %arrayidx26, i8* %data) #7, !dbg !4298
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4299
  br label %cleanup, !dbg !4300

if.end27:                                         ; preds = %if.end13
  %cmp32 = icmp eq i64 %bf.cast172, 32, !dbg !4301
  br i1 %cmp32, label %if.then33, label %if.end42, !dbg !4303

if.then33:                                        ; preds = %if.end27
  %cmp34 = icmp eq i8* %data, null, !dbg !4304
  br i1 %cmp34, label %if.end41, label %land.lhs.true35, !dbg !4307

land.lhs.true35:                                  ; preds = %if.then33
  %9 = bitcast i8* %data to %struct.bitmap_head_def*, !dbg !4308
  %uid = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4309
  %10 = load i32, i32* %uid, align 4, !dbg !4309
  %call36 = tail call i32 @bitmap_bit_p(%struct.bitmap_head_def* nonnull %9, i32 %10) #6, !dbg !4310
  %tobool = icmp eq i32 %call36, 0, !dbg !4310
  br i1 %tobool, label %if.end41, label %if.then37, !dbg !4311

if.then37:                                        ; preds = %land.lhs.true35
  %11 = load i32, i32* %uid, align 4, !dbg !4312
  %call40 = tail call zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def* nonnull %9, i32 %11) #6, !dbg !4314
  %initial = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, !dbg !4315
  tail call fastcc void @mark_all_vars_used(%union.tree_node** nonnull %initial, i8* nonnull %data) #7, !dbg !4316
  br label %if.end41, !dbg !4317

if.end41:                                         ; preds = %land.lhs.true35, %if.then33, %if.then37
  tail call fastcc void @set_is_used(%union.tree_node* %t.0) #7, !dbg !4318
  %bf.load44.pre = load i64, i64* %8, align 8, !dbg !4319
  %.pre = and i64 %bf.load44.pre, 65535, !dbg !4319
  br label %if.end42, !dbg !4321

if.end42:                                         ; preds = %if.end41, %if.end27
  %bf.cast46.pre-phi = phi i64 [ %.pre, %if.end41 ], [ %bf.cast172, %if.end27 ], !dbg !4319
  %arrayidx48 = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast46.pre-phi, !dbg !4319
  %12 = load i32, i32* %arrayidx48, align 4, !dbg !4319
  %cmp49 = icmp eq i32 %12, 2, !dbg !4319
  br i1 %cmp49, label %if.then57, label %lor.lhs.false, !dbg !4319

lor.lhs.false:                                    ; preds = %if.end42
  %cmp56 = icmp eq i32 %12, 3, !dbg !4319
  br i1 %cmp56, label %if.then57, label %cleanup, !dbg !4322

if.then57:                                        ; preds = %lor.lhs.false, %if.end42
  store i32 0, i32* %walk_subtrees, align 4, !dbg !4323
  br label %cleanup, !dbg !4324

cleanup:                                          ; preds = %lor.lhs.false, %if.then57, %if.then19
  ret %union.tree_node* null, !dbg !4325
}

declare dso_local %union.tree_node** @tree_block(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @bitmap_clear_bit(%struct.bitmap_head_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @set_is_used(%union.tree_node* %var) unnamed_addr #0 !dbg !4326 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4328, metadata !DIExpression()), !dbg !4330
  %call = tail call fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %var) #7, !dbg !4331
  call void @llvm.dbg.value(metadata %struct.var_ann_d* %call, metadata !4329, metadata !DIExpression()), !dbg !4330
  %0 = getelementptr inbounds %struct.var_ann_d, %struct.var_ann_d* %call, i64 0, i32 0, !dbg !4332
  %bf.load = load i8, i8* %0, align 8, !dbg !4333
  %bf.set = or i8 %bf.load, 2, !dbg !4333
  store i8 %bf.set, i8* %0, align 8, !dbg !4333
  ret void, !dbg !4334
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.var_ann_d* @get_var_ann(%union.tree_node* %var) unnamed_addr #0 !dbg !4335 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4339, metadata !DIExpression()), !dbg !4342
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !4343
  %bf.load = load i64, i64* %0, align 8, !dbg !4343
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !4343
  %cmp = icmp eq i64 %bf.cast1, 32, !dbg !4343
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !4343

cond.true:                                        ; preds = %entry
  %ann = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 1, !dbg !4343
  %1 = bitcast %union.tree_node** %ann to %struct.var_ann_d**, !dbg !4343
  br label %cond.end19, !dbg !4343

cond.false:                                       ; preds = %entry
  %cmp5 = icmp eq i64 %bf.cast1, 34, !dbg !4343
  br i1 %cmp5, label %cond.true6, label %cond.false8, !dbg !4343

cond.true6:                                       ; preds = %cond.false
  %ann7 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 2, !dbg !4343
  %2 = bitcast %union.tree_node** %ann7 to %struct.var_ann_d**, !dbg !4343
  br label %cond.end19, !dbg !4343

cond.false8:                                      ; preds = %cond.false
  %cmp13 = icmp eq i64 %bf.cast1, 36, !dbg !4343
  %ann15 = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 1, !dbg !4343
  %3 = bitcast %union.tree_node** %ann15 to %struct.var_ann_d**, !dbg !4343
  %cond = select i1 %cmp13, %struct.var_ann_d** %3, %struct.var_ann_d** null, !dbg !4343
  br label %cond.end19, !dbg !4343

cond.end19:                                       ; preds = %cond.true6, %cond.false8, %cond.true
  %cond20 = phi %struct.var_ann_d** [ %1, %cond.true ], [ %2, %cond.true6 ], [ %cond, %cond.false8 ], !dbg !4343
  call void @llvm.dbg.value(metadata %struct.var_ann_d** %cond20, metadata !4340, metadata !DIExpression()), !dbg !4342
  %tobool = icmp eq %struct.var_ann_d** %cond20, null, !dbg !4344
  br i1 %tobool, label %cond.true21, label %cond.end23, !dbg !4344

cond.true21:                                      ; preds = %cond.end19
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4344
  br label %cond.end23, !dbg !4344

cond.end23:                                       ; preds = %cond.end19, %cond.true21
  %4 = load %struct.var_ann_d*, %struct.var_ann_d** %cond20, align 8, !dbg !4345
  %tobool25 = icmp eq %struct.var_ann_d* %4, null, !dbg !4345
  br i1 %tobool25, label %cond.false27, label %cond.true26, !dbg !4345

cond.true26:                                      ; preds = %cond.end23
  br label %cond.end28, !dbg !4345

cond.false27:                                     ; preds = %cond.end23
  %call = tail call %struct.var_ann_d* @create_var_ann(%union.tree_node* %var) #6, !dbg !4346
  br label %cond.end28, !dbg !4345

cond.end28:                                       ; preds = %cond.false27, %cond.true26
  %cond29 = phi %struct.var_ann_d* [ %4, %cond.true26 ], [ %call, %cond.false27 ], !dbg !4345
  ret %struct.var_ann_d* %cond29, !dbg !4347
}

declare dso_local %struct.var_ann_d* @create_var_ann(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4348 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4350, metadata !DIExpression()), !dbg !4351
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4352
  %cmp = icmp eq i32 %call, 0, !dbg !4353
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !4354

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !4355
  %cmp2 = icmp ult i32 %call1, 10, !dbg !4356
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !4357
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4358 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4362, metadata !DIExpression()), !dbg !4364
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !4365
  %idxprom = zext i32 %call to i64, !dbg !4366
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !4366
  %0 = load i64, i64* %arrayidx, align 8, !dbg !4366
  call void @llvm.dbg.value(metadata i64 %0, metadata !4363, metadata !DIExpression()), !dbg !4364
  %cmp = icmp eq i64 %0, 0, !dbg !4367
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4367

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4367
  br label %cond.end, !dbg !4367

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !4368
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !4369
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !4370
  ret %union.tree_node** %2, !dbg !4371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4372 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4376, metadata !DIExpression()), !dbg !4377
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !4378
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !4379
  ret i32 %call1, !dbg !4380
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !4381 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !4385, metadata !DIExpression()), !dbg !4386
  %idxprom = zext i32 %code to i64, !dbg !4387
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !4387
  %0 = load i32, i32* %arrayidx, align 4, !dbg !4387
  ret i32 %0, !dbg !4388
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @clear_and_done_ssa_iter(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4389 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4393, metadata !DIExpression()), !dbg !4394
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !4395
  store %struct.def_optype_d* null, %struct.def_optype_d** %defs, align 8, !dbg !4396
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4397
  store %struct.use_optype_d* null, %struct.use_optype_d** %uses, align 8, !dbg !4398
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4399
  store i32 0, i32* %iter_type, align 4, !dbg !4400
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4401
  store i32 0, i32* %phi_i, align 8, !dbg !4402
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4403
  store i32 0, i32* %num_phi, align 4, !dbg !4404
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4405
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4406
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4407
  store i8 1, i8* %done, align 8, !dbg !4408
  ret void, !dbg !4409
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4410 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4415
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4415
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4415

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4415
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4415
  br label %cond.end, !dbg !4415

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4415
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4415
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4416
  %conv3 = zext i1 %cmp to i8, !dbg !4417
  ret i8 %conv3, !dbg !4418
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4419 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4424
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4424
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4424

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4424
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4424
  br label %cond.end, !dbg !4424

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4424
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4424
  ret %struct.edge_def* %call2, !dbg !4425
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4426 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4432, metadata !DIExpression()), !dbg !4433
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4434
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4434

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4434
  %0 = load i32, i32* %num, align 8, !dbg !4434
  br label %cond.end, !dbg !4434

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4434
  ret i32 %cond, !dbg !4434
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4435 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4440
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4440

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.26, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4440
  br label %cond.end, !dbg !4440

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4441
  ret %struct.VEC_edge_gc* %0, !dbg !4442
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4443 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4447, metadata !DIExpression()), !dbg !4449
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4448, metadata !DIExpression()), !dbg !4449
  br label %land.end, !dbg !4450

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4450
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4450
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4450
  ret %struct.edge_def* %0, !dbg !4450
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @inlined_function_outer_scope_p(%union.tree_node* %block) unnamed_addr #0 !dbg !4451 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %block, metadata !4453, metadata !DIExpression()), !dbg !4454
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %block, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4455
  %1 = load i32, i32* %0, align 4, !dbg !4455
  %cmp = icmp ne i32 %1, 0, !dbg !4456
  %conv2 = zext i1 %cmp to i8, !dbg !4455
  ret i8 %conv2, !dbg !4457
}

declare dso_local %union.tree_node* @lookup_attribute(i8*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4458 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4462, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.value(metadata i32 %index, metadata !4463, metadata !DIExpression()), !dbg !4464
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4465
  %0 = load i32, i32* %capacity, align 8, !dbg !4465
  %cmp = icmp ult i32 %0, %index, !dbg !4465
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4465

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4465
  br label %cond.end, !dbg !4465

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4466
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4466
  ret %struct.phi_arg_d* %arrayidx, !dbg !4467
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4468 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4472, metadata !DIExpression()), !dbg !4473
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4474
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4474
  ret %struct.basic_block_def* %0, !dbg !4475
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !4476 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4481, metadata !DIExpression()), !dbg !4483
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4482, metadata !DIExpression()), !dbg !4483
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4484
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4485
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !4486
  store i40* %imm_uses, i40** %0, align 8, !dbg !4486
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4487
  %1 = bitcast i40* %next to i64*, !dbg !4487
  %2 = load i64, i64* %1, align 8, !dbg !4487
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4488
  store i64 %2, i64* %3, align 8, !dbg !4488
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4489
  %tobool = icmp eq i8 %call, 0, !dbg !4489
  br i1 %tobool, label %if.end, label %return, !dbg !4491

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4492
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !4492
  br label %return, !dbg !4493

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4483
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4494
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4495 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4501, metadata !DIExpression()), !dbg !4502
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4503
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4503
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4504
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !4504
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !4505
  %conv1 = zext i1 %cmp to i8, !dbg !4506
  ret i8 %conv1, !dbg !4507
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @phi_arg_index_from_use(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !4508 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4512, metadata !DIExpression()), !dbg !4517
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 2, i32 0, !dbg !4518
  %0 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4518
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %0, metadata !4516, metadata !DIExpression()), !dbg !4517
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %0) #7, !dbg !4519
  %cmp = icmp eq i32 %call, 16, !dbg !4519
  br i1 %cmp, label %cond.end, label %cond.true, !dbg !4519

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.24, i64 0, i64 0), i32 544, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4519
  br label %cond.end, !dbg !4519

cond.end:                                         ; preds = %entry, %cond.true
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !4513, metadata !DIExpression()), !dbg !4517
  %call1 = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %0, i32 0) #7, !dbg !4520
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call1, metadata !4514, metadata !DIExpression()), !dbg !4517
  %sub.ptr.lhs.cast = ptrtoint %struct.ssa_use_operand_d* %use to i64, !dbg !4521
  %sub.ptr.rhs.cast = ptrtoint %struct.phi_arg_d* %call1 to i64, !dbg !4521
  %sub.ptr.sub = sub i64 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast, !dbg !4521
  %sub.ptr.div = sdiv exact i64 %sub.ptr.sub, 48, !dbg !4521
  call void @llvm.dbg.value(metadata i64 %sub.ptr.div, metadata !4515, metadata !DIExpression()), !dbg !4517
  %conv = trunc i64 %sub.ptr.div to i32, !dbg !4522
  ret i32 %conv, !dbg !4523
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4524 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4528, metadata !DIExpression()), !dbg !4530
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4531
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4531
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4529, metadata !DIExpression()), !dbg !4530
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4532
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4532
  %2 = load i64, i64* %1, align 8, !dbg !4532
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4533
  store i64 %2, i64* %3, align 8, !dbg !4533
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4534
  %tobool = icmp eq i8 %call, 0, !dbg !4534
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4536

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4537
  br label %cleanup, !dbg !4538

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4530
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4539
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @loe_visit_block(%struct.tree_live_info_d* %live, %struct.basic_block_def* %bb, %struct.simple_bitmap_def* %visited, %struct.bitmap_head_def* %tmp) unnamed_addr #5 !dbg !4540 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp3 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.tree_live_info_d* %live, metadata !4544, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4545, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %visited, metadata !4546, metadata !DIExpression()), !dbg !4553
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %tmp, metadata !4547, metadata !DIExpression()), !dbg !4553
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !4554
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4554
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4555
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4555
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4556
  %2 = load i32, i32* %index, align 8, !dbg !4556
  %div = lshr i32 %2, 6, !dbg !4556
  %idxprom = zext i32 %div to i64, !dbg !4556
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %visited, i64 0, i32 3, i64 %idxprom, !dbg !4556
  %3 = load i64, i64* %arrayidx, align 8, !dbg !4556
  %rem = and i32 %2, 63, !dbg !4556
  %sh_prom = zext i32 %rem to i64, !dbg !4556
  %4 = shl i64 1, %sh_prom, !dbg !4556
  %5 = and i64 %3, %4, !dbg !4556
  %tobool = icmp eq i64 %5, 0, !dbg !4556
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4556

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 876, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4556
  %.pre = load i32, i32* %index, align 8, !dbg !4557
  br label %cond.end, !dbg !4556

cond.end:                                         ; preds = %entry, %cond.true
  %6 = phi i32 [ %2, %entry ], [ %.pre, %cond.true ], !dbg !4557
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %visited, i32 %6) #7, !dbg !4558
  %call = tail call fastcc %struct.bitmap_head_def* @live_on_entry(%struct.tree_live_info_d* %live, %struct.basic_block_def* %bb) #7, !dbg !4559
  call void @llvm.dbg.value(metadata %struct.bitmap_head_def* %call, metadata !4552, metadata !DIExpression()), !dbg !4553
  %7 = bitcast %struct.edge_iterator* %tmp3 to i8*, !dbg !4560
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !4560
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4560
  %call4 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !4560
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp3, i64 0, i32 0, !dbg !4560
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 0, !dbg !4560
  store i32 %9, i32* %8, align 8, !dbg !4560
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp3, i64 0, i32 1, !dbg !4560
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call4, 1, !dbg !4560
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !4560
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !4560
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !4560
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4562
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4562
  %liveout = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 6, !dbg !4564
  %stack_top = getelementptr inbounds %struct.tree_live_info_d, %struct.tree_live_info_d* %live, i64 0, i32 5, !dbg !4566
  br label %for.cond, !dbg !4560

for.cond:                                         ; preds = %for.inc, %cond.end
  %14 = load i32, i32* %12, align 8, !dbg !4569
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !4569
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4548, metadata !DIExpression(DW_OP_deref)), !dbg !4553
  %call5 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !4569
  %tobool6 = icmp eq i8 %call5, 0, !dbg !4560
  br i1 %tobool6, label %for.end, label %for.body, !dbg !4560

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4570
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4548, metadata !DIExpression()), !dbg !4553
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !4571
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !4571
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %17, metadata !4551, metadata !DIExpression()), !dbg !4553
  %18 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4572
  %cfg = getelementptr inbounds %struct.function, %struct.function* %18, i64 0, i32 1, !dbg !4572
  %19 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4572
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %19, i64 0, i32 0, !dbg !4572
  %20 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4572
  %cmp = icmp eq %struct.basic_block_def* %17, %20, !dbg !4574
  br i1 %cmp, label %for.inc, label %if.end, !dbg !4575

if.end:                                           ; preds = %for.body
  %21 = load %struct.bitmap_head_def**, %struct.bitmap_head_def*** %liveout, align 8, !dbg !4576
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 9, !dbg !4577
  %22 = load i32, i32* %index7, align 8, !dbg !4577
  %idxprom8 = sext i32 %22 to i64, !dbg !4578
  %arrayidx9 = getelementptr inbounds %struct.bitmap_head_def*, %struct.bitmap_head_def** %21, i64 %idxprom8, !dbg !4578
  %23 = load %struct.bitmap_head_def*, %struct.bitmap_head_def** %arrayidx9, align 8, !dbg !4578
  %call10 = call zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def* %tmp, %struct.bitmap_head_def* %call, %struct.bitmap_head_def* %23) #6, !dbg !4579
  %call11 = call fastcc %struct.bitmap_head_def* @live_on_entry(%struct.tree_live_info_d* %live, %struct.basic_block_def* %17) #7, !dbg !4580
  %call12 = call zeroext i8 @bitmap_ior_into(%struct.bitmap_head_def* %call11, %struct.bitmap_head_def* %tmp) #6, !dbg !4581
  call void @llvm.dbg.value(metadata i8 %call12, metadata !4549, metadata !DIExpression()), !dbg !4553
  %24 = load i32, i32* %index7, align 8, !dbg !4582
  %div15 = lshr i32 %24, 6, !dbg !4582
  %idxprom16 = zext i32 %div15 to i64, !dbg !4582
  %arrayidx17 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %visited, i64 0, i32 3, i64 %idxprom16, !dbg !4582
  %25 = load i64, i64* %arrayidx17, align 8, !dbg !4582
  %rem19 = and i32 %24, 63, !dbg !4582
  %sh_prom20 = zext i32 %rem19 to i64, !dbg !4582
  %26 = shl i64 1, %sh_prom20, !dbg !4582
  %27 = and i64 %25, %26, !dbg !4582
  %tobool23 = icmp ne i64 %27, 0, !dbg !4582
  %tobool24 = icmp ne i8 %call12, 0, !dbg !4583
  %or.cond = and i1 %tobool23, %tobool24, !dbg !4584
  br i1 %or.cond, label %if.then25, label %for.inc, !dbg !4584

if.then25:                                        ; preds = %if.end
  call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %visited, i32 %24) #7, !dbg !4585
  %28 = load i32, i32* %index7, align 8, !dbg !4586
  %29 = load i32*, i32** %stack_top, align 8, !dbg !4587
  %incdec.ptr = getelementptr inbounds i32, i32* %29, i64 1, !dbg !4587
  store i32* %incdec.ptr, i32** %stack_top, align 8, !dbg !4587
  store i32 %28, i32* %29, align 4, !dbg !4588
  br label %for.inc, !dbg !4589

for.inc:                                          ; preds = %if.end, %if.then25, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4550, metadata !DIExpression(DW_OP_deref)), !dbg !4553
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4569
  br label %for.cond, !dbg !4569, !llvm.loop !4590

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !4592
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4592
  ret void, !dbg !4592
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4593 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4599, metadata !DIExpression()), !dbg !4601
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4600, metadata !DIExpression()), !dbg !4601
  br label %land.end, !dbg !4602

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4602
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4602
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4602
  ret %struct.basic_block_def* %0, !dbg !4602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4603 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4607, metadata !DIExpression()), !dbg !4612
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4608, metadata !DIExpression()), !dbg !4612
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4613
  %0 = load i8*, i8** %popcount, align 8, !dbg !4613
  %tobool = icmp eq i8* %0, null, !dbg !4614
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4615

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4616
  %.pre2 = zext i32 %.pre to i64, !dbg !4617
  %.pre3 = shl i64 1, %.pre2, !dbg !4617
  %.pre4 = lshr i32 %bitno, 6, !dbg !4618
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4619
  br label %if.end7, !dbg !4615

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4620
  %idxprom = zext i32 %div to i64, !dbg !4620
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4620
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4620
  %rem = and i32 %bitno, 63, !dbg !4620
  %sh_prom = zext i32 %rem to i64, !dbg !4620
  %2 = shl i64 1, %sh_prom, !dbg !4621
  %3 = and i64 %1, %2, !dbg !4621
  %tobool1 = icmp eq i64 %3, 0, !dbg !4621
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !4623

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4624
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4625
  %inc = add i8 %4, 1, !dbg !4625
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !4625
  br label %if.end7, !dbg !4624

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4619
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4617
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4619
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4626
  %or = or i64 %5, %shl.pre-phi, !dbg !4626
  store i64 %or, i64* %arrayidx13, align 8, !dbg !4626
  ret void, !dbg !4627
}

declare dso_local zeroext i8 @bitmap_and_compl(%struct.bitmap_head_def*, %struct.bitmap_head_def*, %struct.bitmap_head_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4628 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4630, metadata !DIExpression()), !dbg !4635
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4631, metadata !DIExpression()), !dbg !4635
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4636
  %0 = load i8*, i8** %popcount, align 8, !dbg !4636
  %tobool = icmp eq i8* %0, null, !dbg !4637
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4638

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4639
  %.pre2 = zext i32 %.pre to i64, !dbg !4640
  %.pre3 = shl i64 1, %.pre2, !dbg !4640
  %.pre4 = lshr i32 %bitno, 6, !dbg !4641
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4642
  br label %if.end7, !dbg !4638

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4643
  %idxprom = zext i32 %div to i64, !dbg !4643
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4643
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4643
  %rem = and i32 %bitno, 63, !dbg !4643
  %sh_prom = zext i32 %rem to i64, !dbg !4643
  %2 = shl i64 1, %sh_prom, !dbg !4644
  %3 = and i64 %1, %2, !dbg !4644
  %tobool1 = icmp eq i64 %3, 0, !dbg !4644
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !4646

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4647
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4648
  %dec = add i8 %4, -1, !dbg !4648
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !4648
  br label %if.end7, !dbg !4647

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4642
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4640
  %neg = xor i64 %shl.pre-phi, -1, !dbg !4649
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4642
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4650
  %and14 = and i64 %5, %neg, !dbg !4650
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !4650
  ret void, !dbg !4651
}

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
!llvm.module.flags = !{!1566, !1567, !1568}
!llvm.ident = !{!1569}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !332, nameTableKind: None)
!1 = !DIFile(filename: "tree-ssa-live.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2 = !{!3, !199, !205, !210, !215, !233, !240, !247, !254, !293, !306}
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
!293 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code_class", file: !4, line: 58, baseType: !5, size: 32, elements: !294)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305}
!295 = !DIEnumerator(name: "tcc_exceptional", value: 0, isUnsigned: true)
!296 = !DIEnumerator(name: "tcc_constant", value: 1, isUnsigned: true)
!297 = !DIEnumerator(name: "tcc_type", value: 2, isUnsigned: true)
!298 = !DIEnumerator(name: "tcc_declaration", value: 3, isUnsigned: true)
!299 = !DIEnumerator(name: "tcc_reference", value: 4, isUnsigned: true)
!300 = !DIEnumerator(name: "tcc_comparison", value: 5, isUnsigned: true)
!301 = !DIEnumerator(name: "tcc_unary", value: 6, isUnsigned: true)
!302 = !DIEnumerator(name: "tcc_binary", value: 7, isUnsigned: true)
!303 = !DIEnumerator(name: "tcc_statement", value: 8, isUnsigned: true)
!304 = !DIEnumerator(name: "tcc_vl_exp", value: 9, isUnsigned: true)
!305 = !DIEnumerator(name: "tcc_expression", value: 10, isUnsigned: true)
!306 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !255, line: 727, baseType: !5, size: 32, elements: !307)
!307 = !{!308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331}
!308 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!309 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!310 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!311 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!312 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!313 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!314 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!315 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!316 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!317 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!318 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!319 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!320 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!321 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!322 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!323 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!324 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!325 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!326 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!327 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!328 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!329 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!330 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!331 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!332 = !{!333, !334, !335, !336, !339, !340, !342, !3, !1036, !384, !365, !372, !5, !493, !678, !1548, !711, !337, !1550, !1553, !1560, !1565, !438}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!335 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !338)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_map", file: !343, line: 77, baseType: !344)
!343 = !DIFile(filename: "./tree-ssa-live.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_var_map", file: !343, line: 54, size: 448, elements: !346)
!346 = !{!347, !364, !366, !367, !368, !369, !370, !371}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "var_partition", scope: !345, file: !343, line: 57, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "partition", file: !349, line: 65, baseType: !350)
!349 = !DIFile(filename: "./include/partition.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_def", file: !349, line: 59, size: 256, elements: !352)
!352 = !{!353, !354}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "num_elements", scope: !351, file: !349, line: 62, baseType: !335, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !351, file: !349, line: 64, baseType: !355, size: 192, offset: 64)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 192, elements: !362)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "partition_elem", file: !349, line: 46, size: 192, elements: !357)
!357 = !{!358, !359, !361}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "class_element", scope: !356, file: !349, line: 50, baseType: !335, size: 32)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !356, file: !349, line: 53, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "class_count", scope: !356, file: !349, line: 56, baseType: !5, size: 32, offset: 128)
!362 = !{!363}
!363 = !DISubrange(count: 1)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_view", scope: !345, file: !343, line: 60, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "view_to_partition", scope: !345, file: !343, line: 61, baseType: !365, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "num_partitions", scope: !345, file: !343, line: 64, baseType: !5, size: 32, offset: 192)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "partition_size", scope: !345, file: !343, line: 67, baseType: !5, size: 32, offset: 224)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "num_basevars", scope: !345, file: !343, line: 70, baseType: !335, size: 32, offset: 256)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "partition_to_base_index", scope: !345, file: !343, line: 73, baseType: !365, size: 64, offset: 320)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "basevars", scope: !345, file: !343, line: 76, baseType: !372, size: 64, offset: 384)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !4, line: 184, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !4, line: 184, size: 128, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !374, file: !4, line: 184, baseType: !377, size: 128)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !4, line: 182, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !4, line: 182, size: 128, elements: !379)
!379 = !{!380, !381, !382}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !378, file: !4, line: 182, baseType: !5, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !378, file: !4, line: 182, baseType: !5, size: 32, offset: 32)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !378, file: !4, line: 182, baseType: !383, size: 64, offset: 64)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !384, size: 64, elements: !362)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !385, line: 56, baseType: !386)
!385 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !4, line: 3371, size: 1792, elements: !388)
!388 = !{!389, !422, !428, !441, !448, !455, !460, !467, !473, !486, !498, !536, !544, !572, !589, !590, !595, !604, !610, !615, !619, !623, !1197, !1246, !1252, !1258, !1265, !1278, !1292, !1309, !1321, !1343, !1358, !1530}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !387, file: !4, line: 3372, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !4, line: 360, size: 64, elements: !391)
!391 = !{!392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !390, file: !4, line: 361, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !390, file: !4, line: 363, baseType: !5, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !390, file: !4, line: 364, baseType: !5, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !390, file: !4, line: 365, baseType: !5, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !390, file: !4, line: 366, baseType: !5, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !390, file: !4, line: 367, baseType: !5, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !390, file: !4, line: 368, baseType: !5, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !390, file: !4, line: 369, baseType: !5, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !390, file: !4, line: 370, baseType: !5, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !390, file: !4, line: 372, baseType: !5, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !390, file: !4, line: 373, baseType: !5, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !390, file: !4, line: 374, baseType: !5, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !390, file: !4, line: 375, baseType: !5, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !390, file: !4, line: 376, baseType: !5, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !390, file: !4, line: 377, baseType: !5, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !390, file: !4, line: 378, baseType: !5, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !390, file: !4, line: 379, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !390, file: !4, line: 381, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !390, file: !4, line: 382, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !390, file: !4, line: 383, baseType: !5, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !390, file: !4, line: 384, baseType: !5, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !390, file: !4, line: 385, baseType: !5, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !390, file: !4, line: 386, baseType: !5, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !390, file: !4, line: 387, baseType: !5, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !390, file: !4, line: 388, baseType: !5, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !390, file: !4, line: 390, baseType: !5, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !390, file: !4, line: 391, baseType: !5, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !390, file: !4, line: 392, baseType: !5, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !390, file: !4, line: 394, baseType: !5, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !390, file: !4, line: 399, baseType: !5, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !387, file: !4, line: 3373, baseType: !423, size: 192)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !4, line: 402, size: 192, elements: !424)
!424 = !{!425, !426, !427}
!425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !423, file: !4, line: 403, baseType: !390, size: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !423, file: !4, line: 404, baseType: !384, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !423, file: !4, line: 405, baseType: !384, size: 64, offset: 128)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !387, file: !4, line: 3374, baseType: !429, size: 320)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !4, line: 1384, size: 320, elements: !430)
!430 = !{!431, !432}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !429, file: !4, line: 1385, baseType: !423, size: 192)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !429, file: !4, line: 1386, baseType: !433, size: 128, offset: 192)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !434, line: 58, baseType: !435)
!434 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !434, line: 54, size: 128, elements: !436)
!436 = !{!437, !439}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !435, file: !434, line: 56, baseType: !438, size: 64)
!438 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !435, file: !434, line: 57, baseType: !440, size: 64, offset: 64)
!440 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !387, file: !4, line: 3375, baseType: !442, size: 256)
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !4, line: 1397, size: 256, elements: !443)
!443 = !{!444, !445}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !442, file: !4, line: 1398, baseType: !423, size: 192)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !442, file: !4, line: 1399, baseType: !446, size: 64, offset: 192)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !4, line: 1392, flags: DIFlagFwdDecl)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !387, file: !4, line: 3376, baseType: !449, size: 256)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !4, line: 1408, size: 256, elements: !450)
!450 = !{!451, !452}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !449, file: !4, line: 1409, baseType: !423, size: 192)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !449, file: !4, line: 1410, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !4, line: 1403, flags: DIFlagFwdDecl)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !387, file: !4, line: 3377, baseType: !456, size: 256)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !4, line: 1437, size: 256, elements: !457)
!457 = !{!458, !459}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !456, file: !4, line: 1438, baseType: !423, size: 192)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !456, file: !4, line: 1439, baseType: !384, size: 64, offset: 192)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !387, file: !4, line: 3378, baseType: !461, size: 256)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !4, line: 1418, size: 256, elements: !462)
!462 = !{!463, !464, !465}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !461, file: !4, line: 1419, baseType: !423, size: 192)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !461, file: !4, line: 1420, baseType: !335, size: 32, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !461, file: !4, line: 1421, baseType: !466, size: 8, offset: 224)
!466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 8, elements: !362)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !387, file: !4, line: 3379, baseType: !468, size: 320)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !4, line: 1428, size: 320, elements: !469)
!469 = !{!470, !471, !472}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !468, file: !4, line: 1429, baseType: !423, size: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !468, file: !4, line: 1430, baseType: !384, size: 64, offset: 192)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !468, file: !4, line: 1431, baseType: !384, size: 64, offset: 256)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !387, file: !4, line: 3380, baseType: !474, size: 320)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !4, line: 1460, size: 320, elements: !475)
!475 = !{!476, !477}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !474, file: !4, line: 1461, baseType: !423, size: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !474, file: !4, line: 1462, baseType: !478, size: 128, offset: 192)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !479, line: 31, size: 128, elements: !480)
!479 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!480 = !{!481, !484, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !478, file: !479, line: 32, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !478, file: !479, line: 33, baseType: !5, size: 32, offset: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !478, file: !479, line: 34, baseType: !5, size: 32, offset: 96)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !387, file: !4, line: 3381, baseType: !487, size: 384)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !4, line: 2507, size: 384, elements: !488)
!488 = !{!489, !490, !495, !496, !497}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !487, file: !4, line: 2508, baseType: !423, size: 192)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !487, file: !4, line: 2509, baseType: !491, size: 32, offset: 192)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !492, line: 58, baseType: !493)
!492 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!493 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !494, line: 44, baseType: !5)
!494 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!495 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !487, file: !4, line: 2510, baseType: !5, size: 32, offset: 224)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !487, file: !4, line: 2511, baseType: !384, size: 64, offset: 256)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !487, file: !4, line: 2512, baseType: !384, size: 64, offset: 320)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !387, file: !4, line: 3382, baseType: !499, size: 896)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !4, line: 2652, size: 896, elements: !500)
!500 = !{!501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !499, file: !4, line: 2653, baseType: !487, size: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !499, file: !4, line: 2654, baseType: !384, size: 64, offset: 384)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !499, file: !4, line: 2656, baseType: !5, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !499, file: !4, line: 2658, baseType: !5, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !499, file: !4, line: 2659, baseType: !5, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !499, file: !4, line: 2660, baseType: !5, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !499, file: !4, line: 2661, baseType: !5, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !499, file: !4, line: 2662, baseType: !5, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !499, file: !4, line: 2663, baseType: !5, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !499, file: !4, line: 2664, baseType: !5, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !499, file: !4, line: 2666, baseType: !5, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !499, file: !4, line: 2667, baseType: !5, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !499, file: !4, line: 2668, baseType: !5, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !499, file: !4, line: 2669, baseType: !5, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !499, file: !4, line: 2670, baseType: !5, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !499, file: !4, line: 2671, baseType: !5, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !499, file: !4, line: 2672, baseType: !5, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !499, file: !4, line: 2673, baseType: !5, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !499, file: !4, line: 2674, baseType: !5, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !499, file: !4, line: 2678, baseType: !5, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !499, file: !4, line: 2682, baseType: !5, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !499, file: !4, line: 2685, baseType: !5, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !499, file: !4, line: 2688, baseType: !5, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !499, file: !4, line: 2690, baseType: !5, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !499, file: !4, line: 2692, baseType: !5, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !499, file: !4, line: 2695, baseType: !5, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !499, file: !4, line: 2698, baseType: !5, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !499, file: !4, line: 2703, baseType: !5, size: 32, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !499, file: !4, line: 2705, baseType: !384, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !499, file: !4, line: 2706, baseType: !384, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !499, file: !4, line: 2707, baseType: !384, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !499, file: !4, line: 2708, baseType: !384, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !499, file: !4, line: 2711, baseType: !534, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !4, line: 2711, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !387, file: !4, line: 3383, baseType: !537, size: 960)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !4, line: 2756, size: 960, elements: !538)
!538 = !{!539, !540}
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !537, file: !4, line: 2757, baseType: !499, size: 896)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !537, file: !4, line: 2758, baseType: !541, size: 64, offset: 896)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !385, line: 50, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !385, line: 49, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !387, file: !4, line: 3384, baseType: !545, size: 1472)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !4, line: 3114, size: 1472, elements: !546)
!546 = !{!547, !568, !569, !570, !571}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !545, file: !4, line: 3115, baseType: !548, size: 1216)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !4, line: 2984, size: 1216, elements: !549)
!549 = !{!550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !548, file: !4, line: 2985, baseType: !537, size: 960)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !548, file: !4, line: 2986, baseType: !384, size: 64, offset: 960)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !548, file: !4, line: 2987, baseType: !384, size: 64, offset: 1024)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !548, file: !4, line: 2988, baseType: !384, size: 64, offset: 1088)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !548, file: !4, line: 2991, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !548, file: !4, line: 2992, baseType: !5, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !548, file: !4, line: 2993, baseType: !5, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !548, file: !4, line: 2994, baseType: !5, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !548, file: !4, line: 2995, baseType: !5, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !548, file: !4, line: 2996, baseType: !5, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !548, file: !4, line: 2998, baseType: !5, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !548, file: !4, line: 3000, baseType: !5, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !548, file: !4, line: 3002, baseType: !5, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !548, file: !4, line: 3003, baseType: !5, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !548, file: !4, line: 3004, baseType: !5, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !548, file: !4, line: 3005, baseType: !5, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !548, file: !4, line: 3007, baseType: !5, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !548, file: !4, line: 3010, baseType: !5, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !545, file: !4, line: 3117, baseType: !384, size: 64, offset: 1216)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !545, file: !4, line: 3119, baseType: !384, size: 64, offset: 1280)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !545, file: !4, line: 3121, baseType: !384, size: 64, offset: 1344)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !545, file: !4, line: 3123, baseType: !384, size: 64, offset: 1408)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !387, file: !4, line: 3385, baseType: !573, size: 1088)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !4, line: 2874, size: 1088, elements: !574)
!574 = !{!575, !576, !577}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !573, file: !4, line: 2875, baseType: !537, size: 960)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !573, file: !4, line: 2876, baseType: !541, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !573, file: !4, line: 2877, baseType: !578, size: 64, offset: 1024)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !580, line: 172, size: 128, elements: !581)
!580 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!581 = !{!582, !583, !584, !585, !586, !587, !588}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !579, file: !580, line: 174, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !579, file: !580, line: 178, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !579, file: !580, line: 183, baseType: !5, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !579, file: !580, line: 187, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !579, file: !580, line: 192, baseType: !5, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !579, file: !580, line: 195, baseType: !5, size: 32, offset: 32)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !579, file: !580, line: 199, baseType: !384, size: 64, offset: 64)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !387, file: !4, line: 3386, baseType: !548, size: 1216)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !387, file: !4, line: 3387, baseType: !591, size: 1280)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !4, line: 3093, size: 1280, elements: !592)
!592 = !{!593, !594}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !591, file: !4, line: 3094, baseType: !548, size: 1216)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !591, file: !4, line: 3095, baseType: !578, size: 64, offset: 1216)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !387, file: !4, line: 3388, baseType: !596, size: 1216)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !4, line: 2824, size: 1216, elements: !597)
!597 = !{!598, !599, !600, !601, !602, !603}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !596, file: !4, line: 2825, baseType: !499, size: 896)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !596, file: !4, line: 2827, baseType: !384, size: 64, offset: 896)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !596, file: !4, line: 2828, baseType: !384, size: 64, offset: 960)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !596, file: !4, line: 2829, baseType: !384, size: 64, offset: 1024)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !596, file: !4, line: 2830, baseType: !384, size: 64, offset: 1088)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !596, file: !4, line: 2831, baseType: !384, size: 64, offset: 1152)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !387, file: !4, line: 3389, baseType: !605, size: 1024)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !4, line: 2850, size: 1024, elements: !606)
!606 = !{!607, !608, !609}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !605, file: !4, line: 2851, baseType: !537, size: 960)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !605, file: !4, line: 2852, baseType: !335, size: 32, offset: 960)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !605, file: !4, line: 2853, baseType: !335, size: 32, offset: 992)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !387, file: !4, line: 3390, baseType: !611, size: 1024)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !4, line: 2857, size: 1024, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !611, file: !4, line: 2858, baseType: !537, size: 960)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !611, file: !4, line: 2859, baseType: !578, size: 64, offset: 960)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !387, file: !4, line: 3391, baseType: !616, size: 960)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !4, line: 2862, size: 960, elements: !617)
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !616, file: !4, line: 2863, baseType: !537, size: 960)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !387, file: !4, line: 3392, baseType: !620, size: 1472)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !4, line: 3304, size: 1472, elements: !621)
!621 = !{!622}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !620, file: !4, line: 3305, baseType: !545, size: 1472)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !387, file: !4, line: 3393, baseType: !624, size: 1792)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !4, line: 3248, size: 1792, elements: !625)
!625 = !{!626, !627, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !624, file: !4, line: 3249, baseType: !545, size: 1472)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !624, file: !4, line: 3251, baseType: !628, size: 64, offset: 1472)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !630, line: 463, size: 1152, elements: !631)
!630 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!631 = !{!632, !635, !950, !951, !1117, !1120, !1121, !1122, !1123, !1124, !1125, !1149, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !629, file: !630, line: 464, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !630, line: 464, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !629, file: !630, line: 467, baseType: !636, size: 64, offset: 64)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !200, line: 374, size: 640, elements: !638)
!638 = !{!639, !925, !926, !939, !940, !941, !942, !943, !944, !946, !948, !949}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !637, file: !200, line: 377, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !385, line: 111, baseType: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !200, line: 217, size: 832, elements: !643)
!643 = !{!644, !888, !889, !890, !893, !899, !900, !901, !919, !920, !921, !922, !923, !924}
!644 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !642, file: !200, line: 219, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !200, line: 151, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !200, line: 151, size: 128, elements: !648)
!648 = !{!649}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !647, file: !200, line: 151, baseType: !650, size: 128)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !200, line: 150, baseType: !651)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !200, line: 150, size: 128, elements: !652)
!652 = !{!653, !654, !655}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !651, file: !200, line: 150, baseType: !5, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !651, file: !200, line: 150, baseType: !5, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !651, file: !200, line: 150, baseType: !656, size: 64, offset: 64)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !657, size: 64, elements: !362)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !385, line: 108, baseType: !658)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !200, line: 122, size: 512, elements: !660)
!660 = !{!661, !662, !663, !880, !881, !882, !883, !884, !885, !886}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !659, file: !200, line: 124, baseType: !641, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !659, file: !200, line: 125, baseType: !641, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !659, file: !200, line: 131, baseType: !664, size: 64, offset: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !200, line: 128, size: 64, elements: !665)
!665 = !{!666, !879}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !664, file: !200, line: 129, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !385, line: 66, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !255, line: 143, size: 192, elements: !670)
!670 = !{!671, !877, !878}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !669, file: !255, line: 145, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !385, line: 69, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !255, line: 136, size: 192, elements: !675)
!675 = !{!676, !875, !876}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !674, file: !255, line: 137, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !385, line: 58, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!679 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !255, line: 737, size: 768, elements: !680)
!680 = !{!681, !698, !730, !736, !741, !746, !753, !759, !765, !770, !784, !789, !795, !800, !810, !815, !833, !840, !847, !853, !858, !864, !870}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !679, file: !255, line: 738, baseType: !682, size: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !255, line: 271, size: 256, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !682, file: !255, line: 274, baseType: !5, size: 8, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !682, file: !255, line: 277, baseType: !5, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !682, file: !255, line: 281, baseType: !5, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !682, file: !255, line: 284, baseType: !5, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !682, file: !255, line: 291, baseType: !5, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !682, file: !255, line: 295, baseType: !5, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !682, file: !255, line: 298, baseType: !5, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !682, file: !255, line: 301, baseType: !5, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !682, file: !255, line: 307, baseType: !5, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !682, file: !255, line: 312, baseType: !5, size: 32, offset: 32)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !682, file: !255, line: 316, baseType: !491, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !682, file: !255, line: 319, baseType: !5, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !682, file: !255, line: 323, baseType: !641, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !682, file: !255, line: 327, baseType: !384, size: 64, offset: 192)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !679, file: !255, line: 739, baseType: !699, size: 448)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !255, line: 350, size: 448, elements: !700)
!700 = !{!701, !729}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !699, file: !255, line: 353, baseType: !702, size: 384)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !255, line: 333, size: 384, elements: !703)
!703 = !{!704, !705, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !702, file: !255, line: 336, baseType: !682, size: 256)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !702, file: !255, line: 343, baseType: !706, size: 64, offset: 256)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !248, line: 37, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !248, line: 39, baseType: !706, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !707, file: !248, line: 40, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !702, file: !255, line: 344, baseType: !713, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !248, line: 45, size: 320, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !714, file: !248, line: 47, baseType: !713, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !714, file: !248, line: 48, baseType: !718, size: 256, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !4, line: 1883, size: 256, elements: !719)
!719 = !{!720, !722, !723, !728}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !718, file: !4, line: 1884, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !718, file: !4, line: 1885, baseType: !721, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !718, file: !4, line: 1891, baseType: !724, size: 64, offset: 128)
!724 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !718, file: !4, line: 1891, size: 64, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !724, file: !4, line: 1891, baseType: !677, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !724, file: !4, line: 1891, baseType: !384, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !718, file: !4, line: 1892, baseType: !711, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !699, file: !255, line: 359, baseType: !383, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !679, file: !255, line: 740, baseType: !731, size: 512)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !255, line: 365, size: 512, elements: !732)
!732 = !{!733, !734, !735}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !731, file: !255, line: 368, baseType: !702, size: 384)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !731, file: !255, line: 373, baseType: !384, size: 64, offset: 384)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !731, file: !255, line: 374, baseType: !384, size: 64, offset: 448)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !679, file: !255, line: 741, baseType: !737, size: 576)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !255, line: 380, size: 576, elements: !738)
!738 = !{!739, !740}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !737, file: !255, line: 383, baseType: !731, size: 512)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !737, file: !255, line: 389, baseType: !383, size: 64, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !679, file: !255, line: 742, baseType: !742, size: 320)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !255, line: 395, size: 320, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !742, file: !255, line: 397, baseType: !682, size: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !742, file: !255, line: 400, baseType: !667, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !679, file: !255, line: 743, baseType: !747, size: 448)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !255, line: 406, size: 448, elements: !748)
!748 = !{!749, !750, !751, !752}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !747, file: !255, line: 408, baseType: !682, size: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !747, file: !255, line: 412, baseType: !384, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !747, file: !255, line: 420, baseType: !384, size: 64, offset: 320)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !747, file: !255, line: 423, baseType: !667, size: 64, offset: 384)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !679, file: !255, line: 744, baseType: !754, size: 384)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !255, line: 429, size: 384, elements: !755)
!755 = !{!756, !757, !758}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !754, file: !255, line: 431, baseType: !682, size: 256)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !754, file: !255, line: 434, baseType: !384, size: 64, offset: 256)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !754, file: !255, line: 437, baseType: !667, size: 64, offset: 320)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !679, file: !255, line: 745, baseType: !760, size: 384)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !255, line: 443, size: 384, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !760, file: !255, line: 445, baseType: !682, size: 256)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !760, file: !255, line: 449, baseType: !384, size: 64, offset: 256)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !760, file: !255, line: 453, baseType: !667, size: 64, offset: 320)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !679, file: !255, line: 746, baseType: !766, size: 320)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !255, line: 459, size: 320, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !766, file: !255, line: 461, baseType: !682, size: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !766, file: !255, line: 464, baseType: !384, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !679, file: !255, line: 747, baseType: !771, size: 768)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !255, line: 469, size: 768, elements: !772)
!772 = !{!773, !774, !775, !776, !777}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !771, file: !255, line: 471, baseType: !682, size: 256)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !771, file: !255, line: 474, baseType: !5, size: 32, offset: 256)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !771, file: !255, line: 475, baseType: !5, size: 32, offset: 288)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !771, file: !255, line: 478, baseType: !384, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !771, file: !255, line: 481, baseType: !778, size: 384, offset: 384)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 384, elements: !362)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !4, line: 1917, size: 384, elements: !780)
!780 = !{!781, !782, !783}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !779, file: !4, line: 1920, baseType: !718, size: 256)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !779, file: !4, line: 1921, baseType: !384, size: 64, offset: 256)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !779, file: !4, line: 1922, baseType: !491, size: 32, offset: 320)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !679, file: !255, line: 748, baseType: !785, size: 320)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !255, line: 487, size: 320, elements: !786)
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !785, file: !255, line: 490, baseType: !682, size: 256)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !785, file: !255, line: 494, baseType: !335, size: 32, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !679, file: !255, line: 749, baseType: !790, size: 384)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !255, line: 500, size: 384, elements: !791)
!791 = !{!792, !793, !794}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !790, file: !255, line: 502, baseType: !682, size: 256)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !790, file: !255, line: 506, baseType: !667, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !790, file: !255, line: 510, baseType: !667, size: 64, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !679, file: !255, line: 750, baseType: !796, size: 320)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !255, line: 529, size: 320, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !796, file: !255, line: 531, baseType: !682, size: 256)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !796, file: !255, line: 540, baseType: !667, size: 64, offset: 256)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !679, file: !255, line: 751, baseType: !801, size: 704)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !255, line: 546, size: 704, elements: !802)
!802 = !{!803, !804, !805, !806, !807, !808, !809}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !801, file: !255, line: 549, baseType: !731, size: 512)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !801, file: !255, line: 553, baseType: !340, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !801, file: !255, line: 557, baseType: !334, size: 8, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !801, file: !255, line: 558, baseType: !334, size: 8, offset: 584)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !801, file: !255, line: 559, baseType: !334, size: 8, offset: 592)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !801, file: !255, line: 560, baseType: !334, size: 8, offset: 600)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !801, file: !255, line: 566, baseType: !383, size: 64, offset: 640)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !679, file: !255, line: 752, baseType: !811, size: 384)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !255, line: 571, size: 384, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !811, file: !255, line: 573, baseType: !742, size: 320)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !811, file: !255, line: 577, baseType: !384, size: 64, offset: 320)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !679, file: !255, line: 753, baseType: !816, size: 576)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !255, line: 600, size: 576, elements: !817)
!817 = !{!818, !819, !820, !823, !832}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !816, file: !255, line: 602, baseType: !742, size: 320)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !816, file: !255, line: 605, baseType: !384, size: 64, offset: 320)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !816, file: !255, line: 609, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !822, line: 46, baseType: !438)
!822 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!823 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !816, file: !255, line: 612, baseType: !824, size: 64, offset: 448)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !255, line: 581, size: 320, elements: !826)
!826 = !{!827, !828, !829, !830, !831}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !825, file: !255, line: 583, baseType: !3, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !825, file: !255, line: 586, baseType: !384, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !825, file: !255, line: 589, baseType: !384, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !825, file: !255, line: 592, baseType: !384, size: 64, offset: 192)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !825, file: !255, line: 595, baseType: !384, size: 64, offset: 256)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !816, file: !255, line: 616, baseType: !667, size: 64, offset: 512)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !679, file: !255, line: 754, baseType: !834, size: 512)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !255, line: 622, size: 512, elements: !835)
!835 = !{!836, !837, !838, !839}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !834, file: !255, line: 624, baseType: !742, size: 320)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !834, file: !255, line: 628, baseType: !384, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !834, file: !255, line: 632, baseType: !384, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !834, file: !255, line: 636, baseType: !384, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !679, file: !255, line: 755, baseType: !841, size: 704)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !255, line: 642, size: 704, elements: !842)
!842 = !{!843, !844, !845, !846}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !841, file: !255, line: 644, baseType: !834, size: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !841, file: !255, line: 648, baseType: !384, size: 64, offset: 512)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !841, file: !255, line: 652, baseType: !384, size: 64, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !841, file: !255, line: 653, baseType: !384, size: 64, offset: 640)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !679, file: !255, line: 756, baseType: !848, size: 448)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !255, line: 663, size: 448, elements: !849)
!849 = !{!850, !851, !852}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !848, file: !255, line: 665, baseType: !742, size: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !848, file: !255, line: 668, baseType: !384, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !848, file: !255, line: 673, baseType: !384, size: 64, offset: 384)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !679, file: !255, line: 757, baseType: !854, size: 384)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !255, line: 694, size: 384, elements: !855)
!855 = !{!856, !857}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !854, file: !255, line: 696, baseType: !742, size: 320)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !854, file: !255, line: 699, baseType: !384, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !679, file: !255, line: 758, baseType: !859, size: 384)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !255, line: 681, size: 384, elements: !860)
!860 = !{!861, !862, !863}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !859, file: !255, line: 683, baseType: !682, size: 256)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !859, file: !255, line: 686, baseType: !384, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !859, file: !255, line: 689, baseType: !384, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !679, file: !255, line: 759, baseType: !865, size: 384)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !255, line: 707, size: 384, elements: !866)
!866 = !{!867, !868, !869}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !865, file: !255, line: 709, baseType: !682, size: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !865, file: !255, line: 712, baseType: !384, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !865, file: !255, line: 712, baseType: !384, size: 64, offset: 320)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !679, file: !255, line: 760, baseType: !871, size: 320)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !255, line: 718, size: 320, elements: !872)
!872 = !{!873, !874}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !871, file: !255, line: 720, baseType: !682, size: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !871, file: !255, line: 723, baseType: !384, size: 64, offset: 256)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !674, file: !255, line: 138, baseType: !673, size: 64, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !674, file: !255, line: 139, baseType: !673, size: 64, offset: 128)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !669, file: !255, line: 146, baseType: !672, size: 64, offset: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !669, file: !255, line: 152, baseType: !667, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !664, file: !200, line: 130, baseType: !541, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !659, file: !200, line: 134, baseType: !339, size: 64, offset: 192)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !659, file: !200, line: 137, baseType: !384, size: 64, offset: 256)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !659, file: !200, line: 138, baseType: !491, size: 32, offset: 320)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !659, file: !200, line: 142, baseType: !5, size: 32, offset: 352)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !659, file: !200, line: 144, baseType: !335, size: 32, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !659, file: !200, line: 145, baseType: !335, size: 32, offset: 416)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !659, file: !200, line: 146, baseType: !887, size: 64, offset: 448)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !200, line: 119, baseType: !440)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !642, file: !200, line: 220, baseType: !645, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !642, file: !200, line: 223, baseType: !339, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !642, file: !200, line: 226, baseType: !891, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !200, line: 185, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !642, file: !200, line: 229, baseType: !894, size: 128, offset: 256)
!894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !895, size: 128, elements: !897)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !200, line: 229, flags: DIFlagFwdDecl)
!897 = !{!898}
!898 = !DISubrange(count: 2)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !642, file: !200, line: 232, baseType: !641, size: 64, offset: 384)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !642, file: !200, line: 233, baseType: !641, size: 64, offset: 448)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !642, file: !200, line: 238, baseType: !902, size: 64, offset: 512)
!902 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !200, line: 235, size: 64, elements: !903)
!903 = !{!904, !910}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !902, file: !200, line: 236, baseType: !905, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !200, line: 273, size: 128, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !906, file: !200, line: 275, baseType: !667, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !906, file: !200, line: 278, baseType: !667, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !902, file: !200, line: 237, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !200, line: 259, size: 320, elements: !913)
!913 = !{!914, !915, !916, !917, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !912, file: !200, line: 261, baseType: !541, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !912, file: !200, line: 262, baseType: !541, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !912, file: !200, line: 266, baseType: !541, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !912, file: !200, line: 267, baseType: !541, size: 64, offset: 192)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !912, file: !200, line: 270, baseType: !335, size: 32, offset: 256)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !642, file: !200, line: 241, baseType: !887, size: 64, offset: 576)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !642, file: !200, line: 244, baseType: !335, size: 32, offset: 640)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !642, file: !200, line: 247, baseType: !335, size: 32, offset: 672)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !642, file: !200, line: 250, baseType: !335, size: 32, offset: 704)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !642, file: !200, line: 253, baseType: !335, size: 32, offset: 736)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !642, file: !200, line: 256, baseType: !335, size: 32, offset: 768)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !637, file: !200, line: 378, baseType: !640, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !637, file: !200, line: 381, baseType: !927, size: 64, offset: 128)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !200, line: 282, baseType: !929)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !200, line: 282, size: 128, elements: !930)
!930 = !{!931}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !200, line: 282, baseType: !932, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !200, line: 281, baseType: !933)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !200, line: 281, size: 128, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !933, file: !200, line: 281, baseType: !5, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !933, file: !200, line: 281, baseType: !5, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !933, file: !200, line: 281, baseType: !938, size: 64, offset: 64)
!938 = !DICompositeType(tag: DW_TAG_array_type, baseType: !640, size: 64, elements: !362)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !637, file: !200, line: 384, baseType: !335, size: 32, offset: 192)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !637, file: !200, line: 387, baseType: !335, size: 32, offset: 224)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !637, file: !200, line: 390, baseType: !335, size: 32, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !637, file: !200, line: 394, baseType: !927, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !637, file: !200, line: 396, baseType: !199, size: 32, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !637, file: !200, line: 399, baseType: !945, size: 64, offset: 416)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !205, size: 64, elements: !897)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !637, file: !200, line: 402, baseType: !947, size: 64, offset: 480)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !897)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !637, file: !200, line: 406, baseType: !335, size: 32, offset: 544)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !637, file: !200, line: 409, baseType: !335, size: 32, offset: 576)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !629, file: !630, line: 470, baseType: !668, size: 64, offset: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !629, file: !630, line: 473, baseType: !952, size: 64, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !580, line: 39, size: 1152, elements: !954)
!954 = !{!955, !1005, !1018, !1024, !1025, !1094, !1095, !1099, !1100, !1101, !1102, !1103}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !953, file: !580, line: 41, baseType: !956, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !957, line: 144, baseType: !958)
!957 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !957, line: 100, size: 896, elements: !960)
!960 = !{!961, !969, !974, !979, !981, !982, !983, !984, !985, !986, !991, !993, !994, !999, !1004}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !959, file: !957, line: 102, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !957, line: 52, baseType: !963)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !957, line: 47, baseType: !5)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !959, file: !957, line: 105, baseType: !970, size: 64, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !957, line: 59, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!335, !967, !967}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !959, file: !957, line: 108, baseType: !975, size: 64, offset: 128)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !957, line: 63, baseType: !976)
!976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !977, size: 64)
!977 = !DISubroutineType(types: !978)
!978 = !{null, !339}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !959, file: !957, line: 111, baseType: !980, size: 64, offset: 192)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !959, file: !957, line: 114, baseType: !821, size: 64, offset: 256)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !959, file: !957, line: 117, baseType: !821, size: 64, offset: 320)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !959, file: !957, line: 120, baseType: !821, size: 64, offset: 384)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !959, file: !957, line: 124, baseType: !5, size: 32, offset: 448)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !959, file: !957, line: 128, baseType: !5, size: 32, offset: 480)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !959, file: !957, line: 131, baseType: !987, size: 64, offset: 512)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !957, line: 75, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!339, !821, !821}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !959, file: !957, line: 132, baseType: !992, size: 64, offset: 576)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !957, line: 78, baseType: !976)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !959, file: !957, line: 135, baseType: !339, size: 64, offset: 640)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !959, file: !957, line: 136, baseType: !995, size: 64, offset: 704)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !957, line: 82, baseType: !996)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DISubroutineType(types: !998)
!998 = !{!339, !339, !821, !821}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !959, file: !957, line: 137, baseType: !1000, size: 64, offset: 768)
!1000 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !957, line: 83, baseType: !1001)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DISubroutineType(types: !1003)
!1003 = !{null, !339, !339}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !959, file: !957, line: 141, baseType: !5, size: 32, offset: 832)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !953, file: !580, line: 48, baseType: !1006, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !255, line: 35, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !255, line: 35, size: 128, elements: !1009)
!1009 = !{!1010}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1008, file: !255, line: 35, baseType: !1011, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !255, line: 33, baseType: !1012)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !255, line: 33, size: 128, elements: !1013)
!1013 = !{!1014, !1015, !1016}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1012, file: !255, line: 33, baseType: !5, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1012, file: !255, line: 33, baseType: !5, size: 32, offset: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1012, file: !255, line: 33, baseType: !1017, size: 64, offset: 64)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !677, size: 64, elements: !362)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !953, file: !580, line: 51, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !4, line: 183, baseType: !1021)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !4, line: 183, size: 128, elements: !1022)
!1022 = !{!1023}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1021, file: !4, line: 183, baseType: !377, size: 128)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !953, file: !580, line: 54, baseType: !384, size: 64, offset: 192)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !953, file: !580, line: 57, baseType: !1026, size: 128, offset: 256)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1027, line: 31, size: 128, elements: !1028)
!1027 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1028 = !{!1029, !1030, !1031, !1032, !1033, !1034, !1035}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1026, file: !1027, line: 35, baseType: !5, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1026, file: !1027, line: 39, baseType: !5, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1026, file: !1027, line: 42, baseType: !5, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1026, file: !1027, line: 46, baseType: !5, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1026, file: !1027, line: 50, baseType: !5, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1026, file: !1027, line: 53, baseType: !5, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1026, file: !1027, line: 56, baseType: !1036, size: 64, offset: 64)
!1036 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !385, line: 47, baseType: !1037)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !1039, line: 75, size: 256, elements: !1040)
!1039 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1040 = !{!1041, !1053, !1054, !1055}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !1038, file: !1039, line: 76, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !1039, line: 68, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !1039, line: 63, size: 320, elements: !1045)
!1045 = !{!1046, !1048, !1049, !1050}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1044, file: !1039, line: 64, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1044, file: !1039, line: 65, baseType: !1047, size: 64, offset: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1044, file: !1039, line: 66, baseType: !5, size: 32, offset: 128)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1044, file: !1039, line: 67, baseType: !1051, size: 128, offset: 192)
!1051 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 128, elements: !897)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !1039, line: 29, baseType: !438)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !1038, file: !1039, line: 77, baseType: !1042, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !1038, file: !1039, line: 78, baseType: !5, size: 32, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1038, file: !1039, line: 79, baseType: !1056, size: 64, offset: 192)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !1039, line: 49, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !1039, line: 45, size: 832, elements: !1059)
!1059 = !{!1060, !1061, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1058, file: !1039, line: 46, baseType: !1047, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !1058, file: !1039, line: 47, baseType: !1037, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !1058, file: !1039, line: 48, baseType: !1063, size: 704, offset: 128)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !1064, line: 164, size: 704, elements: !1065)
!1064 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1065 = !{!1066, !1067, !1077, !1078, !1079, !1080, !1081, !1082, !1086, !1090, !1091, !1092, !1093}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !1063, file: !1064, line: 166, baseType: !440, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !1063, file: !1064, line: 167, baseType: !1068, size: 64, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !1064, line: 157, size: 192, elements: !1070)
!1070 = !{!1071, !1072, !1073}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !1069, file: !1064, line: 159, baseType: !337, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1069, file: !1064, line: 160, baseType: !1068, size: 64, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !1069, file: !1064, line: 161, baseType: !1074, size: 32, offset: 128)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 32, elements: !1075)
!1075 = !{!1076}
!1076 = !DISubrange(count: 4)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !1063, file: !1064, line: 168, baseType: !337, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !1063, file: !1064, line: 169, baseType: !337, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !1063, file: !1064, line: 170, baseType: !337, size: 64, offset: 256)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !1063, file: !1064, line: 171, baseType: !440, size: 64, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !1063, file: !1064, line: 172, baseType: !335, size: 32, offset: 384)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !1063, file: !1064, line: 176, baseType: !1083, size: 64, offset: 448)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!1068, !339, !440}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !1063, file: !1064, line: 177, baseType: !1087, size: 64, offset: 512)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DISubroutineType(types: !1089)
!1089 = !{null, !339, !1068}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !1063, file: !1064, line: 178, baseType: !339, size: 64, offset: 576)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !1063, file: !1064, line: 179, baseType: !5, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !1063, file: !1064, line: 180, baseType: !5, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !1063, file: !1064, line: 184, baseType: !5, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !953, file: !580, line: 60, baseType: !1026, size: 128, offset: 384)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !953, file: !580, line: 64, baseType: !1096, size: 64, offset: 512)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1097, size: 64)
!1097 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1098, line: 33, flags: DIFlagFwdDecl)
!1098 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !953, file: !580, line: 67, baseType: !384, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !953, file: !580, line: 73, baseType: !956, size: 64, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !953, file: !580, line: 77, baseType: !1036, size: 64, offset: 704)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !953, file: !580, line: 80, baseType: !5, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !953, file: !580, line: 82, baseType: !1104, size: 320, offset: 832)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !248, line: 62, size: 320, elements: !1105)
!1105 = !{!1106, !1112, !1113, !1114, !1115, !1116}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1104, file: !248, line: 63, baseType: !1107, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !248, line: 56, size: 128, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1108, file: !248, line: 57, baseType: !1107, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1108, file: !248, line: 58, baseType: !466, size: 8, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1104, file: !248, line: 64, baseType: !5, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1104, file: !248, line: 66, baseType: !5, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1104, file: !248, line: 68, baseType: !334, size: 8, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1104, file: !248, line: 70, baseType: !706, size: 64, offset: 192)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1104, file: !248, line: 71, baseType: !713, size: 64, offset: 256)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !629, file: !630, line: 476, baseType: !1118, size: 64, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !630, line: 476, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !629, file: !630, line: 479, baseType: !956, size: 64, offset: 320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !629, file: !630, line: 484, baseType: !384, size: 64, offset: 384)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !629, file: !630, line: 488, baseType: !384, size: 64, offset: 448)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !629, file: !630, line: 493, baseType: !384, size: 64, offset: 512)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !629, file: !630, line: 496, baseType: !384, size: 64, offset: 576)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !629, file: !630, line: 501, baseType: !1126, size: 64, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !211, line: 2355, size: 576, elements: !1128)
!1128 = !{!1129, !1132, !1133, !1134, !1135, !1137, !1138, !1143, !1144, !1145, !1146, !1147, !1148}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1127, file: !211, line: 2356, baseType: !1130, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !211, line: 2356, flags: DIFlagFwdDecl)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1127, file: !211, line: 2357, baseType: !340, size: 64, offset: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1127, file: !211, line: 2358, baseType: !335, size: 32, offset: 128)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1127, file: !211, line: 2359, baseType: !335, size: 32, offset: 160)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1127, file: !211, line: 2360, baseType: !1136, size: 128, offset: 192)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 128, elements: !1075)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1127, file: !211, line: 2364, baseType: !335, size: 32, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1127, file: !211, line: 2367, baseType: !1139, size: 128, offset: 384)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !211, line: 2349, size: 128, elements: !1140)
!1140 = !{!1141, !1142}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1139, file: !211, line: 2351, baseType: !541, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1139, file: !211, line: 2352, baseType: !440, size: 64, offset: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1127, file: !211, line: 2371, baseType: !210, size: 32, offset: 512)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1127, file: !211, line: 2374, baseType: !5, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1127, file: !211, line: 2377, baseType: !5, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1127, file: !211, line: 2381, baseType: !5, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1127, file: !211, line: 2392, baseType: !5, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1127, file: !211, line: 2396, baseType: !5, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !629, file: !630, line: 504, baseType: !1150, size: 64, offset: 704)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !630, line: 504, flags: DIFlagFwdDecl)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !629, file: !630, line: 507, baseType: !956, size: 64, offset: 768)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !629, file: !630, line: 510, baseType: !335, size: 32, offset: 832)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !629, file: !630, line: 513, baseType: !335, size: 32, offset: 864)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !629, file: !630, line: 516, baseType: !491, size: 32, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !629, file: !630, line: 519, baseType: !491, size: 32, offset: 928)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !629, file: !630, line: 522, baseType: !5, size: 32, offset: 960)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !629, file: !630, line: 523, baseType: !5, size: 32, offset: 992)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !629, file: !630, line: 528, baseType: !340, size: 64, offset: 1024)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !629, file: !630, line: 535, baseType: !5, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !629, file: !630, line: 539, baseType: !5, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !629, file: !630, line: 543, baseType: !5, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !629, file: !630, line: 546, baseType: !5, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !629, file: !630, line: 550, baseType: !5, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !629, file: !630, line: 554, baseType: !5, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !629, file: !630, line: 559, baseType: !5, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !629, file: !630, line: 562, baseType: !5, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !629, file: !630, line: 571, baseType: !5, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !629, file: !630, line: 573, baseType: !5, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !629, file: !630, line: 574, baseType: !5, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !629, file: !630, line: 581, baseType: !5, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !629, file: !630, line: 585, baseType: !5, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !629, file: !630, line: 588, baseType: !5, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !629, file: !630, line: 592, baseType: !5, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !629, file: !630, line: 598, baseType: !5, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !624, file: !4, line: 3254, baseType: !384, size: 64, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !624, file: !4, line: 3257, baseType: !384, size: 64, offset: 1600)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !624, file: !4, line: 3258, baseType: !384, size: 64, offset: 1664)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !624, file: !4, line: 3264, baseType: !5, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !624, file: !4, line: 3265, baseType: !5, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !624, file: !4, line: 3267, baseType: !5, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !624, file: !4, line: 3268, baseType: !5, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !624, file: !4, line: 3269, baseType: !5, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !624, file: !4, line: 3271, baseType: !5, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !624, file: !4, line: 3272, baseType: !5, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !624, file: !4, line: 3273, baseType: !5, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !624, file: !4, line: 3274, baseType: !5, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !624, file: !4, line: 3275, baseType: !5, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !624, file: !4, line: 3276, baseType: !5, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !624, file: !4, line: 3277, baseType: !5, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !624, file: !4, line: 3279, baseType: !5, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !624, file: !4, line: 3280, baseType: !5, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !624, file: !4, line: 3281, baseType: !5, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !624, file: !4, line: 3282, baseType: !5, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !624, file: !4, line: 3283, baseType: !5, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !624, file: !4, line: 3284, baseType: !5, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !387, file: !4, line: 3394, baseType: !1198, size: 1344)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !4, line: 2279, size: 1344, elements: !1199)
!1199 = !{!1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1225, !1226, !1227, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1198, file: !4, line: 2280, baseType: !423, size: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1198, file: !4, line: 2281, baseType: !384, size: 64, offset: 192)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1198, file: !4, line: 2282, baseType: !384, size: 64, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1198, file: !4, line: 2283, baseType: !384, size: 64, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1198, file: !4, line: 2284, baseType: !384, size: 64, offset: 384)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1198, file: !4, line: 2285, baseType: !5, size: 32, offset: 448)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1198, file: !4, line: 2287, baseType: !5, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1198, file: !4, line: 2288, baseType: !5, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1198, file: !4, line: 2289, baseType: !5, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1198, file: !4, line: 2290, baseType: !5, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1198, file: !4, line: 2291, baseType: !5, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1198, file: !4, line: 2292, baseType: !5, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1198, file: !4, line: 2294, baseType: !5, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1198, file: !4, line: 2296, baseType: !5, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1198, file: !4, line: 2297, baseType: !5, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1198, file: !4, line: 2298, baseType: !5, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1198, file: !4, line: 2299, baseType: !5, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1198, file: !4, line: 2300, baseType: !5, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1198, file: !4, line: 2301, baseType: !5, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1198, file: !4, line: 2302, baseType: !5, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1198, file: !4, line: 2303, baseType: !5, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1198, file: !4, line: 2305, baseType: !5, size: 32, offset: 512)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1198, file: !4, line: 2306, baseType: !1223, size: 32, offset: 544)
!1223 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1224, line: 31, baseType: !335)
!1224 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1198, file: !4, line: 2307, baseType: !384, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1198, file: !4, line: 2308, baseType: !384, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1198, file: !4, line: 2314, baseType: !1228, size: 64, offset: 704)
!1228 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !4, line: 2309, size: 64, elements: !1229)
!1229 = !{!1230, !1231, !1232}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1228, file: !4, line: 2310, baseType: !335, size: 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1228, file: !4, line: 2311, baseType: !340, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1228, file: !4, line: 2312, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !4, line: 2277, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1198, file: !4, line: 2315, baseType: !384, size: 64, offset: 768)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1198, file: !4, line: 2316, baseType: !384, size: 64, offset: 832)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1198, file: !4, line: 2317, baseType: !384, size: 64, offset: 896)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1198, file: !4, line: 2318, baseType: !384, size: 64, offset: 960)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1198, file: !4, line: 2319, baseType: !384, size: 64, offset: 1024)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1198, file: !4, line: 2320, baseType: !384, size: 64, offset: 1088)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1198, file: !4, line: 2321, baseType: !384, size: 64, offset: 1152)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1198, file: !4, line: 2322, baseType: !384, size: 64, offset: 1216)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1198, file: !4, line: 2324, baseType: !1244, size: 64, offset: 1280)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !4, line: 2324, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !387, file: !4, line: 3395, baseType: !1247, size: 320)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !4, line: 1469, size: 320, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1247, file: !4, line: 1470, baseType: !423, size: 192)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1247, file: !4, line: 1471, baseType: !384, size: 64, offset: 192)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1247, file: !4, line: 1472, baseType: !384, size: 64, offset: 256)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !387, file: !4, line: 3396, baseType: !1253, size: 320)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !4, line: 1482, size: 320, elements: !1254)
!1254 = !{!1255, !1256, !1257}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1253, file: !4, line: 1483, baseType: !423, size: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1253, file: !4, line: 1484, baseType: !335, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1253, file: !4, line: 1485, baseType: !383, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !387, file: !4, line: 3397, baseType: !1259, size: 384)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !4, line: 1829, size: 384, elements: !1260)
!1260 = !{!1261, !1262, !1263, !1264}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1259, file: !4, line: 1830, baseType: !423, size: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1259, file: !4, line: 1831, baseType: !491, size: 32, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1259, file: !4, line: 1832, baseType: !384, size: 64, offset: 256)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1259, file: !4, line: 1835, baseType: !383, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !387, file: !4, line: 3398, baseType: !1266, size: 704)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !4, line: 1898, size: 704, elements: !1267)
!1267 = !{!1268, !1269, !1270, !1271, !1272, !1277}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1266, file: !4, line: 1899, baseType: !423, size: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1266, file: !4, line: 1902, baseType: !384, size: 64, offset: 192)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1266, file: !4, line: 1905, baseType: !677, size: 64, offset: 256)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1266, file: !4, line: 1908, baseType: !5, size: 32, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1266, file: !4, line: 1911, baseType: !1273, size: 64, offset: 384)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !580, line: 117, size: 128, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1274, file: !580, line: 120, baseType: !1026, size: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1266, file: !4, line: 1914, baseType: !718, size: 256, offset: 448)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !387, file: !4, line: 3399, baseType: !1279, size: 704)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !4, line: 2008, size: 704, elements: !1280)
!1280 = !{!1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1279, file: !4, line: 2009, baseType: !423, size: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1279, file: !4, line: 2011, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1279, file: !4, line: 2012, baseType: !5, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1279, file: !4, line: 2014, baseType: !491, size: 32, offset: 224)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1279, file: !4, line: 2016, baseType: !384, size: 64, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1279, file: !4, line: 2017, baseType: !1019, size: 64, offset: 320)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1279, file: !4, line: 2019, baseType: !384, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1279, file: !4, line: 2020, baseType: !384, size: 64, offset: 448)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1279, file: !4, line: 2021, baseType: !384, size: 64, offset: 512)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1279, file: !4, line: 2022, baseType: !384, size: 64, offset: 576)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1279, file: !4, line: 2023, baseType: !384, size: 64, offset: 640)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !387, file: !4, line: 3400, baseType: !1293, size: 832)
!1293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !4, line: 2430, size: 832, elements: !1294)
!1294 = !{!1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1293, file: !4, line: 2431, baseType: !423, size: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1293, file: !4, line: 2433, baseType: !384, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1293, file: !4, line: 2434, baseType: !384, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1293, file: !4, line: 2435, baseType: !384, size: 64, offset: 320)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1293, file: !4, line: 2436, baseType: !384, size: 64, offset: 384)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1293, file: !4, line: 2437, baseType: !1019, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1293, file: !4, line: 2438, baseType: !384, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1293, file: !4, line: 2440, baseType: !384, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1293, file: !4, line: 2441, baseType: !384, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1293, file: !4, line: 2443, baseType: !1305, size: 128, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !4, line: 182, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !4, line: 182, size: 128, elements: !1307)
!1307 = !{!1308}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1306, file: !4, line: 182, baseType: !377, size: 128)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !387, file: !4, line: 3401, baseType: !1310, size: 320)
!1310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !4, line: 3327, size: 320, elements: !1311)
!1311 = !{!1312, !1313, !1320}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1310, file: !4, line: 3329, baseType: !423, size: 192)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1310, file: !4, line: 3330, baseType: !1314, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !4, line: 3320, size: 192, elements: !1316)
!1316 = !{!1317, !1318, !1319}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1315, file: !4, line: 3322, baseType: !1314, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1315, file: !4, line: 3323, baseType: !1314, size: 64, offset: 64)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1315, file: !4, line: 3324, baseType: !384, size: 64, offset: 128)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1310, file: !4, line: 3331, baseType: !1314, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !387, file: !4, line: 3402, baseType: !1322, size: 256)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !4, line: 1540, size: 256, elements: !1323)
!1323 = !{!1324, !1325}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1322, file: !4, line: 1541, baseType: !423, size: 192)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1322, file: !4, line: 1542, baseType: !1326, size: 64, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !4, line: 1538, baseType: !1328)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !4, line: 1538, size: 192, elements: !1329)
!1329 = !{!1330}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1328, file: !4, line: 1538, baseType: !1331, size: 192)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !4, line: 1537, baseType: !1332)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !4, line: 1537, size: 192, elements: !1333)
!1333 = !{!1334, !1335, !1336}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1332, file: !4, line: 1537, baseType: !5, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1332, file: !4, line: 1537, baseType: !5, size: 32, offset: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1332, file: !4, line: 1537, baseType: !1337, size: 128, offset: 64)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1338, size: 128, elements: !362)
!1338 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !4, line: 1535, baseType: !1339)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !4, line: 1532, size: 128, elements: !1340)
!1340 = !{!1341, !1342}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1339, file: !4, line: 1533, baseType: !384, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1339, file: !4, line: 1534, baseType: !384, size: 64, offset: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !387, file: !4, line: 3403, baseType: !1344, size: 512)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !4, line: 1938, size: 512, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1355, !1356, !1357}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1344, file: !4, line: 1939, baseType: !423, size: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1344, file: !4, line: 1940, baseType: !491, size: 32, offset: 192)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1344, file: !4, line: 1941, baseType: !215, size: 32, offset: 224)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1344, file: !4, line: 1946, baseType: !1350, size: 32, offset: 256)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !4, line: 1942, size: 32, elements: !1351)
!1351 = !{!1352, !1353, !1354}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1350, file: !4, line: 1943, baseType: !233, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1350, file: !4, line: 1944, baseType: !240, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1350, file: !4, line: 1945, baseType: !3, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1344, file: !4, line: 1950, baseType: !667, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1344, file: !4, line: 1951, baseType: !667, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1344, file: !4, line: 1953, baseType: !383, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !387, file: !4, line: 3404, baseType: !1359, size: 1664)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !4, line: 3337, size: 1664, elements: !1360)
!1360 = !{!1361, !1362}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1359, file: !4, line: 3338, baseType: !423, size: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1359, file: !4, line: 3341, baseType: !1363, size: 1472, offset: 192)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1364, line: 410, size: 1472, elements: !1365)
!1364 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1365 = !{!1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529}
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1363, file: !1364, line: 412, baseType: !335, size: 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1363, file: !1364, line: 413, baseType: !335, size: 32, offset: 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1363, file: !1364, line: 414, baseType: !335, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1363, file: !1364, line: 415, baseType: !335, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1363, file: !1364, line: 416, baseType: !335, size: 32, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1363, file: !1364, line: 417, baseType: !335, size: 32, offset: 160)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1363, file: !1364, line: 418, baseType: !334, size: 8, offset: 192)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1363, file: !1364, line: 419, baseType: !334, size: 8, offset: 200)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1363, file: !1364, line: 420, baseType: !1375, size: 8, offset: 208)
!1375 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1363, file: !1364, line: 421, baseType: !1375, size: 8, offset: 216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1363, file: !1364, line: 422, baseType: !1375, size: 8, offset: 224)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1363, file: !1364, line: 423, baseType: !1375, size: 8, offset: 232)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1363, file: !1364, line: 424, baseType: !1375, size: 8, offset: 240)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1363, file: !1364, line: 425, baseType: !1375, size: 8, offset: 248)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1363, file: !1364, line: 426, baseType: !1375, size: 8, offset: 256)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1363, file: !1364, line: 427, baseType: !1375, size: 8, offset: 264)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1363, file: !1364, line: 428, baseType: !1375, size: 8, offset: 272)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1363, file: !1364, line: 429, baseType: !1375, size: 8, offset: 280)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1363, file: !1364, line: 430, baseType: !1375, size: 8, offset: 288)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1363, file: !1364, line: 431, baseType: !1375, size: 8, offset: 296)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1363, file: !1364, line: 432, baseType: !1375, size: 8, offset: 304)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1363, file: !1364, line: 433, baseType: !1375, size: 8, offset: 312)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1363, file: !1364, line: 434, baseType: !1375, size: 8, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1363, file: !1364, line: 435, baseType: !1375, size: 8, offset: 328)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1363, file: !1364, line: 436, baseType: !1375, size: 8, offset: 336)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1363, file: !1364, line: 437, baseType: !1375, size: 8, offset: 344)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1363, file: !1364, line: 438, baseType: !1375, size: 8, offset: 352)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1363, file: !1364, line: 439, baseType: !1375, size: 8, offset: 360)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1363, file: !1364, line: 440, baseType: !1375, size: 8, offset: 368)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1363, file: !1364, line: 441, baseType: !1375, size: 8, offset: 376)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1363, file: !1364, line: 442, baseType: !1375, size: 8, offset: 384)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1363, file: !1364, line: 443, baseType: !1375, size: 8, offset: 392)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1363, file: !1364, line: 444, baseType: !1375, size: 8, offset: 400)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1363, file: !1364, line: 445, baseType: !1375, size: 8, offset: 408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1363, file: !1364, line: 446, baseType: !1375, size: 8, offset: 416)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1363, file: !1364, line: 447, baseType: !1375, size: 8, offset: 424)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1363, file: !1364, line: 448, baseType: !1375, size: 8, offset: 432)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1363, file: !1364, line: 449, baseType: !1375, size: 8, offset: 440)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1363, file: !1364, line: 450, baseType: !1375, size: 8, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1363, file: !1364, line: 451, baseType: !1375, size: 8, offset: 456)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1363, file: !1364, line: 452, baseType: !1375, size: 8, offset: 464)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1363, file: !1364, line: 453, baseType: !1375, size: 8, offset: 472)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1363, file: !1364, line: 454, baseType: !1375, size: 8, offset: 480)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1363, file: !1364, line: 455, baseType: !1375, size: 8, offset: 488)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1363, file: !1364, line: 456, baseType: !1375, size: 8, offset: 496)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1363, file: !1364, line: 457, baseType: !1375, size: 8, offset: 504)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1363, file: !1364, line: 458, baseType: !1375, size: 8, offset: 512)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1363, file: !1364, line: 459, baseType: !1375, size: 8, offset: 520)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1363, file: !1364, line: 460, baseType: !1375, size: 8, offset: 528)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1363, file: !1364, line: 461, baseType: !1375, size: 8, offset: 536)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1363, file: !1364, line: 462, baseType: !1375, size: 8, offset: 544)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1363, file: !1364, line: 463, baseType: !1375, size: 8, offset: 552)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1363, file: !1364, line: 464, baseType: !1375, size: 8, offset: 560)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1363, file: !1364, line: 465, baseType: !1375, size: 8, offset: 568)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1363, file: !1364, line: 466, baseType: !1375, size: 8, offset: 576)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1363, file: !1364, line: 467, baseType: !1375, size: 8, offset: 584)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1363, file: !1364, line: 468, baseType: !1375, size: 8, offset: 592)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1363, file: !1364, line: 469, baseType: !1375, size: 8, offset: 600)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1363, file: !1364, line: 470, baseType: !1375, size: 8, offset: 608)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1363, file: !1364, line: 471, baseType: !1375, size: 8, offset: 616)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1363, file: !1364, line: 472, baseType: !1375, size: 8, offset: 624)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1363, file: !1364, line: 473, baseType: !1375, size: 8, offset: 632)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1363, file: !1364, line: 474, baseType: !1375, size: 8, offset: 640)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1363, file: !1364, line: 475, baseType: !1375, size: 8, offset: 648)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1363, file: !1364, line: 476, baseType: !1375, size: 8, offset: 656)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1363, file: !1364, line: 477, baseType: !1375, size: 8, offset: 664)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1363, file: !1364, line: 478, baseType: !1375, size: 8, offset: 672)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1363, file: !1364, line: 479, baseType: !1375, size: 8, offset: 680)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1363, file: !1364, line: 480, baseType: !1375, size: 8, offset: 688)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1363, file: !1364, line: 481, baseType: !1375, size: 8, offset: 696)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1363, file: !1364, line: 482, baseType: !1375, size: 8, offset: 704)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1363, file: !1364, line: 483, baseType: !1375, size: 8, offset: 712)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1363, file: !1364, line: 484, baseType: !1375, size: 8, offset: 720)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1363, file: !1364, line: 485, baseType: !1375, size: 8, offset: 728)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1363, file: !1364, line: 486, baseType: !1375, size: 8, offset: 736)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1363, file: !1364, line: 487, baseType: !1375, size: 8, offset: 744)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1363, file: !1364, line: 488, baseType: !1375, size: 8, offset: 752)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1363, file: !1364, line: 489, baseType: !1375, size: 8, offset: 760)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1363, file: !1364, line: 490, baseType: !1375, size: 8, offset: 768)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1363, file: !1364, line: 491, baseType: !1375, size: 8, offset: 776)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1363, file: !1364, line: 492, baseType: !1375, size: 8, offset: 784)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1363, file: !1364, line: 493, baseType: !1375, size: 8, offset: 792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1363, file: !1364, line: 494, baseType: !1375, size: 8, offset: 800)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1363, file: !1364, line: 495, baseType: !1375, size: 8, offset: 808)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1363, file: !1364, line: 496, baseType: !1375, size: 8, offset: 816)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1363, file: !1364, line: 497, baseType: !1375, size: 8, offset: 824)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1363, file: !1364, line: 498, baseType: !1375, size: 8, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1363, file: !1364, line: 499, baseType: !1375, size: 8, offset: 840)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1363, file: !1364, line: 500, baseType: !1375, size: 8, offset: 848)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1363, file: !1364, line: 501, baseType: !1375, size: 8, offset: 856)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1363, file: !1364, line: 502, baseType: !1375, size: 8, offset: 864)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1363, file: !1364, line: 503, baseType: !1375, size: 8, offset: 872)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1363, file: !1364, line: 504, baseType: !1375, size: 8, offset: 880)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1363, file: !1364, line: 505, baseType: !1375, size: 8, offset: 888)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1363, file: !1364, line: 506, baseType: !1375, size: 8, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1363, file: !1364, line: 507, baseType: !1375, size: 8, offset: 904)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1363, file: !1364, line: 508, baseType: !1375, size: 8, offset: 912)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1363, file: !1364, line: 509, baseType: !1375, size: 8, offset: 920)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1363, file: !1364, line: 510, baseType: !1375, size: 8, offset: 928)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1363, file: !1364, line: 511, baseType: !1375, size: 8, offset: 936)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1363, file: !1364, line: 512, baseType: !1375, size: 8, offset: 944)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1363, file: !1364, line: 513, baseType: !1375, size: 8, offset: 952)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1363, file: !1364, line: 514, baseType: !1375, size: 8, offset: 960)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1363, file: !1364, line: 515, baseType: !1375, size: 8, offset: 968)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1363, file: !1364, line: 516, baseType: !1375, size: 8, offset: 976)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1363, file: !1364, line: 517, baseType: !1375, size: 8, offset: 984)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1363, file: !1364, line: 518, baseType: !1375, size: 8, offset: 992)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1363, file: !1364, line: 519, baseType: !1375, size: 8, offset: 1000)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1363, file: !1364, line: 520, baseType: !1375, size: 8, offset: 1008)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1363, file: !1364, line: 521, baseType: !1375, size: 8, offset: 1016)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1363, file: !1364, line: 522, baseType: !1375, size: 8, offset: 1024)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1363, file: !1364, line: 523, baseType: !1375, size: 8, offset: 1032)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1363, file: !1364, line: 524, baseType: !1375, size: 8, offset: 1040)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1363, file: !1364, line: 525, baseType: !1375, size: 8, offset: 1048)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1363, file: !1364, line: 526, baseType: !1375, size: 8, offset: 1056)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1363, file: !1364, line: 527, baseType: !1375, size: 8, offset: 1064)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1363, file: !1364, line: 528, baseType: !1375, size: 8, offset: 1072)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1363, file: !1364, line: 529, baseType: !1375, size: 8, offset: 1080)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1363, file: !1364, line: 530, baseType: !1375, size: 8, offset: 1088)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1363, file: !1364, line: 531, baseType: !1375, size: 8, offset: 1096)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1363, file: !1364, line: 532, baseType: !1375, size: 8, offset: 1104)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1363, file: !1364, line: 533, baseType: !1375, size: 8, offset: 1112)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1363, file: !1364, line: 534, baseType: !1375, size: 8, offset: 1120)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1363, file: !1364, line: 535, baseType: !1375, size: 8, offset: 1128)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1363, file: !1364, line: 536, baseType: !1375, size: 8, offset: 1136)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1363, file: !1364, line: 537, baseType: !1375, size: 8, offset: 1144)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1363, file: !1364, line: 538, baseType: !1375, size: 8, offset: 1152)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1363, file: !1364, line: 539, baseType: !1375, size: 8, offset: 1160)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1363, file: !1364, line: 540, baseType: !1375, size: 8, offset: 1168)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1363, file: !1364, line: 541, baseType: !1375, size: 8, offset: 1176)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1363, file: !1364, line: 542, baseType: !1375, size: 8, offset: 1184)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1363, file: !1364, line: 543, baseType: !1375, size: 8, offset: 1192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1363, file: !1364, line: 544, baseType: !1375, size: 8, offset: 1200)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1363, file: !1364, line: 545, baseType: !1375, size: 8, offset: 1208)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1363, file: !1364, line: 546, baseType: !1375, size: 8, offset: 1216)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1363, file: !1364, line: 547, baseType: !1375, size: 8, offset: 1224)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1363, file: !1364, line: 548, baseType: !1375, size: 8, offset: 1232)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1363, file: !1364, line: 549, baseType: !1375, size: 8, offset: 1240)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1363, file: !1364, line: 550, baseType: !1375, size: 8, offset: 1248)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1363, file: !1364, line: 551, baseType: !1375, size: 8, offset: 1256)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1363, file: !1364, line: 552, baseType: !1375, size: 8, offset: 1264)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1363, file: !1364, line: 553, baseType: !1375, size: 8, offset: 1272)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1363, file: !1364, line: 554, baseType: !1375, size: 8, offset: 1280)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1363, file: !1364, line: 555, baseType: !1375, size: 8, offset: 1288)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1363, file: !1364, line: 556, baseType: !1375, size: 8, offset: 1296)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1363, file: !1364, line: 557, baseType: !1375, size: 8, offset: 1304)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1363, file: !1364, line: 558, baseType: !1375, size: 8, offset: 1312)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1363, file: !1364, line: 559, baseType: !1375, size: 8, offset: 1320)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1363, file: !1364, line: 560, baseType: !1375, size: 8, offset: 1328)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1363, file: !1364, line: 561, baseType: !1375, size: 8, offset: 1336)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1363, file: !1364, line: 562, baseType: !1375, size: 8, offset: 1344)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1363, file: !1364, line: 563, baseType: !1375, size: 8, offset: 1352)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1363, file: !1364, line: 564, baseType: !1375, size: 8, offset: 1360)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1363, file: !1364, line: 565, baseType: !1375, size: 8, offset: 1368)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1363, file: !1364, line: 566, baseType: !1375, size: 8, offset: 1376)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1363, file: !1364, line: 567, baseType: !1375, size: 8, offset: 1384)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1363, file: !1364, line: 568, baseType: !1375, size: 8, offset: 1392)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1363, file: !1364, line: 569, baseType: !1375, size: 8, offset: 1400)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1363, file: !1364, line: 570, baseType: !1375, size: 8, offset: 1408)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1363, file: !1364, line: 571, baseType: !1375, size: 8, offset: 1416)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1363, file: !1364, line: 572, baseType: !1375, size: 8, offset: 1424)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1363, file: !1364, line: 573, baseType: !1375, size: 8, offset: 1432)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1363, file: !1364, line: 574, baseType: !1375, size: 8, offset: 1440)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !387, file: !4, line: 3405, baseType: !1531, size: 384)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !4, line: 3352, size: 384, elements: !1532)
!1532 = !{!1533, !1534}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1531, file: !4, line: 3353, baseType: !423, size: 192)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1531, file: !4, line: 3356, baseType: !1535, size: 192, offset: 192)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1364, line: 578, size: 192, elements: !1536)
!1536 = !{!1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1535, file: !1364, line: 580, baseType: !335, size: 32)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1535, file: !1364, line: 581, baseType: !335, size: 32, offset: 32)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1535, file: !1364, line: 582, baseType: !335, size: 32, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1535, file: !1364, line: 583, baseType: !335, size: 32, offset: 96)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1535, file: !1364, line: 584, baseType: !334, size: 8, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1535, file: !1364, line: 585, baseType: !334, size: 8, offset: 136)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1535, file: !1364, line: 586, baseType: !334, size: 8, offset: 144)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1535, file: !1364, line: 587, baseType: !334, size: 8, offset: 152)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1535, file: !1364, line: 588, baseType: !334, size: 8, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1535, file: !1364, line: 589, baseType: !334, size: 8, offset: 168)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1535, file: !1364, line: 590, baseType: !334, size: 8, offset: 176)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !679)
!1550 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !248, line: 30, baseType: !1551)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !4, line: 1893, baseType: !718)
!1553 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree_live_info_p", file: !343, line: 256, baseType: !1554)
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_live_info_d", file: !343, line: 234, size: 448, elements: !1556)
!1556 = !{!1557, !1558, !1559, !1561, !1562, !1563, !1564}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1555, file: !343, line: 237, baseType: !342, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "global", scope: !1555, file: !343, line: 240, baseType: !1036, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "livein", scope: !1555, file: !343, line: 243, baseType: !1560, size: 64, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "num_blocks", scope: !1555, file: !343, line: 246, baseType: !335, size: 32, offset: 192)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "work_stack", scope: !1555, file: !343, line: 249, baseType: !365, size: 64, offset: 256)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_top", scope: !1555, file: !343, line: 252, baseType: !365, size: 64, offset: 320)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "liveout", scope: !1555, file: !343, line: 255, baseType: !1560, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!1566 = !{i32 2, !"Dwarf Version", i32 4}
!1567 = !{i32 2, !"Debug Info Version", i32 3}
!1568 = !{i32 1, !"wchar_size", i32 4}
!1569 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1570 = distinct !DISubprogram(name: "vprintf", scope: !1571, file: !1571, line: 39, type: !1572, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1582)
!1571 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!335, !1574, !1575}
!1574 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !340)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !1, size: 192, elements: !1577)
!1577 = !{!1578, !1579, !1580, !1581}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1576, file: !1, baseType: !5, size: 32)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1576, file: !1, baseType: !5, size: 32, offset: 32)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1576, file: !1, baseType: !339, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1576, file: !1, baseType: !339, size: 64, offset: 128)
!1582 = !{!1583, !1584}
!1583 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1570, file: !1571, line: 39, type: !1574)
!1584 = !DILocalVariable(name: "__arg", arg: 2, scope: !1570, file: !1571, line: 39, type: !1575)
!1585 = !DILocation(line: 0, scope: !1570)
!1586 = !DILocation(line: 41, column: 20, scope: !1570)
!1587 = !DILocation(line: 41, column: 10, scope: !1570)
!1588 = !DILocation(line: 41, column: 3, scope: !1570)
!1589 = distinct !DISubprogram(name: "getchar", scope: !1571, file: !1571, line: 47, type: !1590, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1592)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{!335}
!1592 = !{}
!1593 = !DILocation(line: 49, column: 16, scope: !1589)
!1594 = !DILocation(line: 49, column: 10, scope: !1589)
!1595 = !DILocation(line: 49, column: 3, scope: !1589)
!1596 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1571, file: !1571, line: 56, type: !1597, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1650)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!335, !1599}
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1601, line: 7, baseType: !1602)
!1601 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1603, line: 49, size: 1728, elements: !1604)
!1603 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1604 = !{!1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1620, !1622, !1623, !1624, !1627, !1629, !1630, !1631, !1634, !1636, !1639, !1642, !1643, !1644, !1645, !1646}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1602, file: !1603, line: 51, baseType: !335, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1602, file: !1603, line: 54, baseType: !337, size: 64, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1602, file: !1603, line: 55, baseType: !337, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1602, file: !1603, line: 56, baseType: !337, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1602, file: !1603, line: 57, baseType: !337, size: 64, offset: 256)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1602, file: !1603, line: 58, baseType: !337, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1602, file: !1603, line: 59, baseType: !337, size: 64, offset: 384)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1602, file: !1603, line: 60, baseType: !337, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1602, file: !1603, line: 61, baseType: !337, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1602, file: !1603, line: 64, baseType: !337, size: 64, offset: 576)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1602, file: !1603, line: 65, baseType: !337, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1602, file: !1603, line: 66, baseType: !337, size: 64, offset: 704)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1602, file: !1603, line: 68, baseType: !1618, size: 64, offset: 768)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1603, line: 36, flags: DIFlagFwdDecl)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1602, file: !1603, line: 70, baseType: !1621, size: 64, offset: 832)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1602, file: !1603, line: 72, baseType: !335, size: 32, offset: 896)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1602, file: !1603, line: 73, baseType: !335, size: 32, offset: 928)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1602, file: !1603, line: 74, baseType: !1625, size: 64, offset: 960)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1626, line: 152, baseType: !440)
!1626 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1602, file: !1603, line: 77, baseType: !1628, size: 16, offset: 1024)
!1628 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1602, file: !1603, line: 78, baseType: !1375, size: 8, offset: 1040)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1602, file: !1603, line: 79, baseType: !466, size: 8, offset: 1048)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1602, file: !1603, line: 81, baseType: !1632, size: 64, offset: 1088)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1603, line: 43, baseType: null)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1602, file: !1603, line: 89, baseType: !1635, size: 64, offset: 1152)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1626, line: 153, baseType: !440)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1602, file: !1603, line: 91, baseType: !1637, size: 64, offset: 1216)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1603, line: 37, flags: DIFlagFwdDecl)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1602, file: !1603, line: 92, baseType: !1640, size: 64, offset: 1280)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1603, line: 38, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1602, file: !1603, line: 93, baseType: !1621, size: 64, offset: 1344)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1602, file: !1603, line: 94, baseType: !339, size: 64, offset: 1408)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1602, file: !1603, line: 95, baseType: !821, size: 64, offset: 1472)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1602, file: !1603, line: 96, baseType: !335, size: 32, offset: 1536)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1602, file: !1603, line: 98, baseType: !1647, size: 160, offset: 1568)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !338, size: 160, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 20)
!1650 = !{!1651}
!1651 = !DILocalVariable(name: "__fp", arg: 1, scope: !1596, file: !1571, line: 56, type: !1599)
!1652 = !DILocation(line: 0, scope: !1596)
!1653 = !DILocation(line: 58, column: 10, scope: !1596)
!1654 = !DILocation(line: 58, column: 3, scope: !1596)
!1655 = distinct !DISubprogram(name: "getc_unlocked", scope: !1571, file: !1571, line: 66, type: !1597, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1656)
!1656 = !{!1657}
!1657 = !DILocalVariable(name: "__fp", arg: 1, scope: !1655, file: !1571, line: 66, type: !1599)
!1658 = !DILocation(line: 0, scope: !1655)
!1659 = !DILocation(line: 68, column: 10, scope: !1655)
!1660 = !DILocation(line: 68, column: 3, scope: !1655)
!1661 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1571, file: !1571, line: 73, type: !1590, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1592)
!1662 = !DILocation(line: 75, column: 10, scope: !1661)
!1663 = !DILocation(line: 75, column: 3, scope: !1661)
!1664 = distinct !DISubprogram(name: "putchar", scope: !1571, file: !1571, line: 82, type: !1665, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1667)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!335, !335}
!1667 = !{!1668}
!1668 = !DILocalVariable(name: "__c", arg: 1, scope: !1664, file: !1571, line: 82, type: !335)
!1669 = !DILocation(line: 0, scope: !1664)
!1670 = !DILocation(line: 84, column: 21, scope: !1664)
!1671 = !DILocation(line: 84, column: 10, scope: !1664)
!1672 = !DILocation(line: 84, column: 3, scope: !1664)
!1673 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1571, file: !1571, line: 91, type: !1674, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1676)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!335, !335, !1599}
!1676 = !{!1677, !1678}
!1677 = !DILocalVariable(name: "__c", arg: 1, scope: !1673, file: !1571, line: 91, type: !335)
!1678 = !DILocalVariable(name: "__stream", arg: 2, scope: !1673, file: !1571, line: 91, type: !1599)
!1679 = !DILocation(line: 0, scope: !1673)
!1680 = !DILocation(line: 93, column: 10, scope: !1673)
!1681 = !DILocation(line: 93, column: 3, scope: !1673)
!1682 = distinct !DISubprogram(name: "putc_unlocked", scope: !1571, file: !1571, line: 101, type: !1674, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1683)
!1683 = !{!1684, !1685}
!1684 = !DILocalVariable(name: "__c", arg: 1, scope: !1682, file: !1571, line: 101, type: !335)
!1685 = !DILocalVariable(name: "__stream", arg: 2, scope: !1682, file: !1571, line: 101, type: !1599)
!1686 = !DILocation(line: 0, scope: !1682)
!1687 = !DILocation(line: 103, column: 10, scope: !1682)
!1688 = !DILocation(line: 103, column: 3, scope: !1682)
!1689 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1571, file: !1571, line: 108, type: !1665, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1690)
!1690 = !{!1691}
!1691 = !DILocalVariable(name: "__c", arg: 1, scope: !1689, file: !1571, line: 108, type: !335)
!1692 = !DILocation(line: 0, scope: !1689)
!1693 = !DILocation(line: 110, column: 10, scope: !1689)
!1694 = !DILocation(line: 110, column: 3, scope: !1689)
!1695 = distinct !DISubprogram(name: "getline", scope: !1571, file: !1571, line: 118, type: !1696, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1700)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1698, !336, !1699, !1599}
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1626, line: 193, baseType: !440)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!1700 = !{!1701, !1702, !1703}
!1701 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !1695, file: !1571, line: 118, type: !336)
!1702 = !DILocalVariable(name: "__n", arg: 2, scope: !1695, file: !1571, line: 118, type: !1699)
!1703 = !DILocalVariable(name: "__stream", arg: 3, scope: !1695, file: !1571, line: 118, type: !1599)
!1704 = !DILocation(line: 0, scope: !1695)
!1705 = !DILocation(line: 120, column: 10, scope: !1695)
!1706 = !DILocation(line: 120, column: 3, scope: !1695)
!1707 = distinct !DISubprogram(name: "feof_unlocked", scope: !1571, file: !1571, line: 128, type: !1597, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1708)
!1708 = !{!1709}
!1709 = !DILocalVariable(name: "__stream", arg: 1, scope: !1707, file: !1571, line: 128, type: !1599)
!1710 = !DILocation(line: 0, scope: !1707)
!1711 = !DILocation(line: 130, column: 10, scope: !1707)
!1712 = !DILocation(line: 130, column: 3, scope: !1707)
!1713 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1571, file: !1571, line: 135, type: !1597, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1714)
!1714 = !{!1715}
!1715 = !DILocalVariable(name: "__stream", arg: 1, scope: !1713, file: !1571, line: 135, type: !1599)
!1716 = !DILocation(line: 0, scope: !1713)
!1717 = !DILocation(line: 137, column: 10, scope: !1713)
!1718 = !DILocation(line: 137, column: 3, scope: !1713)
!1719 = distinct !DISubprogram(name: "tolower", scope: !1720, file: !1720, line: 207, type: !1665, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1721)
!1720 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!1721 = !{!1722}
!1722 = !DILocalVariable(name: "__c", arg: 1, scope: !1719, file: !1720, line: 207, type: !335)
!1723 = !DILocation(line: 0, scope: !1719)
!1724 = !DILocation(line: 209, column: 22, scope: !1719)
!1725 = !DILocation(line: 209, column: 39, scope: !1719)
!1726 = !DILocation(line: 209, column: 38, scope: !1719)
!1727 = !DILocation(line: 209, column: 37, scope: !1719)
!1728 = !DILocation(line: 209, column: 10, scope: !1719)
!1729 = !DILocation(line: 209, column: 3, scope: !1719)
!1730 = distinct !DISubprogram(name: "toupper", scope: !1720, file: !1720, line: 213, type: !1665, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1731)
!1731 = !{!1732}
!1732 = !DILocalVariable(name: "__c", arg: 1, scope: !1730, file: !1720, line: 213, type: !335)
!1733 = !DILocation(line: 0, scope: !1730)
!1734 = !DILocation(line: 215, column: 22, scope: !1730)
!1735 = !DILocation(line: 215, column: 39, scope: !1730)
!1736 = !DILocation(line: 215, column: 38, scope: !1730)
!1737 = !DILocation(line: 215, column: 37, scope: !1730)
!1738 = !DILocation(line: 215, column: 10, scope: !1730)
!1739 = !DILocation(line: 215, column: 3, scope: !1730)
!1740 = distinct !DISubprogram(name: "atoi", scope: !1741, file: !1741, line: 361, type: !1742, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1744)
!1741 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!335, !340}
!1744 = !{!1745}
!1745 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1740, file: !1741, line: 361, type: !340)
!1746 = !DILocation(line: 0, scope: !1740)
!1747 = !DILocation(line: 363, column: 16, scope: !1740)
!1748 = !DILocation(line: 363, column: 10, scope: !1740)
!1749 = !DILocation(line: 363, column: 3, scope: !1740)
!1750 = distinct !DISubprogram(name: "atol", scope: !1741, file: !1741, line: 366, type: !1751, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1753)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!440, !340}
!1753 = !{!1754}
!1754 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1750, file: !1741, line: 366, type: !340)
!1755 = !DILocation(line: 0, scope: !1750)
!1756 = !DILocation(line: 368, column: 10, scope: !1750)
!1757 = !DILocation(line: 368, column: 3, scope: !1750)
!1758 = distinct !DISubprogram(name: "atoll", scope: !1741, file: !1741, line: 373, type: !1759, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1762)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !340}
!1761 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!1762 = !{!1763}
!1763 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1758, file: !1741, line: 373, type: !340)
!1764 = !DILocation(line: 0, scope: !1758)
!1765 = !DILocation(line: 375, column: 10, scope: !1758)
!1766 = !DILocation(line: 375, column: 3, scope: !1758)
!1767 = distinct !DISubprogram(name: "bsearch", scope: !1768, file: !1768, line: 20, type: !1769, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1772)
!1768 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!1769 = !DISubroutineType(types: !1770)
!1770 = !{!339, !967, !967, !821, !821, !1771}
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !1741, line: 808, baseType: !971)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1773 = !DILocalVariable(name: "__key", arg: 1, scope: !1767, file: !1768, line: 20, type: !967)
!1774 = !DILocalVariable(name: "__base", arg: 2, scope: !1767, file: !1768, line: 20, type: !967)
!1775 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !1767, file: !1768, line: 20, type: !821)
!1776 = !DILocalVariable(name: "__size", arg: 4, scope: !1767, file: !1768, line: 20, type: !821)
!1777 = !DILocalVariable(name: "__compar", arg: 5, scope: !1767, file: !1768, line: 21, type: !1771)
!1778 = !DILocalVariable(name: "__l", scope: !1767, file: !1768, line: 23, type: !821)
!1779 = !DILocalVariable(name: "__u", scope: !1767, file: !1768, line: 23, type: !821)
!1780 = !DILocalVariable(name: "__idx", scope: !1767, file: !1768, line: 23, type: !821)
!1781 = !DILocalVariable(name: "__p", scope: !1767, file: !1768, line: 24, type: !967)
!1782 = !DILocalVariable(name: "__comparison", scope: !1767, file: !1768, line: 25, type: !335)
!1783 = !DILocation(line: 0, scope: !1767)
!1784 = !DILocation(line: 29, column: 3, scope: !1767)
!1785 = !DILocation(line: 27, column: 7, scope: !1767)
!1786 = !DILocation(line: 29, column: 14, scope: !1767)
!1787 = !DILocation(line: 31, column: 20, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1767, file: !1768, line: 30, column: 5)
!1789 = !DILocation(line: 31, column: 27, scope: !1788)
!1790 = !DILocation(line: 32, column: 56, scope: !1788)
!1791 = !DILocation(line: 32, column: 47, scope: !1788)
!1792 = !DILocation(line: 33, column: 22, scope: !1788)
!1793 = !DILocation(line: 34, column: 24, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1788, file: !1768, line: 34, column: 11)
!1795 = !DILocation(line: 34, column: 11, scope: !1788)
!1796 = !DILocation(line: 36, column: 29, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !1768, line: 36, column: 16)
!1798 = !DILocation(line: 36, column: 16, scope: !1794)
!1799 = !DILocation(line: 37, column: 14, scope: !1797)
!1800 = distinct !{!1800, !1784, !1801}
!1801 = !DILocation(line: 40, column: 5, scope: !1767)
!1802 = !DILocation(line: 43, column: 1, scope: !1767)
!1803 = distinct !DISubprogram(name: "atof", scope: !1804, file: !1804, line: 25, type: !1805, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1808)
!1804 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1807, !340}
!1807 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1808 = !{!1809}
!1809 = !DILocalVariable(name: "__nptr", arg: 1, scope: !1803, file: !1804, line: 25, type: !340)
!1810 = !DILocation(line: 0, scope: !1803)
!1811 = !DILocation(line: 27, column: 10, scope: !1803)
!1812 = !DILocation(line: 27, column: 3, scope: !1803)
!1813 = distinct !DISubprogram(name: "strtoimax", scope: !1814, file: !1814, line: 324, type: !1815, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1821)
!1814 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!1815 = !DISubroutineType(types: !1816)
!1816 = !{!1817, !1574, !1820, !335}
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !1818, line: 101, baseType: !1819)
!1818 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!1819 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1626, line: 72, baseType: !440)
!1820 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !336)
!1821 = !{!1822, !1823, !1824}
!1822 = !DILocalVariable(name: "nptr", arg: 1, scope: !1813, file: !1814, line: 324, type: !1574)
!1823 = !DILocalVariable(name: "endptr", arg: 2, scope: !1813, file: !1814, line: 324, type: !1820)
!1824 = !DILocalVariable(name: "base", arg: 3, scope: !1813, file: !1814, line: 324, type: !335)
!1825 = !DILocation(line: 0, scope: !1813)
!1826 = !DILocation(line: 327, column: 10, scope: !1813)
!1827 = !DILocation(line: 327, column: 3, scope: !1813)
!1828 = distinct !DISubprogram(name: "strtoumax", scope: !1814, file: !1814, line: 336, type: !1829, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1833)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!1831, !1574, !1820, !335}
!1831 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !1818, line: 102, baseType: !1832)
!1832 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1626, line: 73, baseType: !438)
!1833 = !{!1834, !1835, !1836}
!1834 = !DILocalVariable(name: "nptr", arg: 1, scope: !1828, file: !1814, line: 336, type: !1574)
!1835 = !DILocalVariable(name: "endptr", arg: 2, scope: !1828, file: !1814, line: 336, type: !1820)
!1836 = !DILocalVariable(name: "base", arg: 3, scope: !1828, file: !1814, line: 336, type: !335)
!1837 = !DILocation(line: 0, scope: !1828)
!1838 = !DILocation(line: 339, column: 10, scope: !1828)
!1839 = !DILocation(line: 339, column: 3, scope: !1828)
!1840 = distinct !DISubprogram(name: "wcstoimax", scope: !1814, file: !1814, line: 348, type: !1841, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1850)
!1841 = !DISubroutineType(types: !1842)
!1842 = !{!1817, !1843, !1847, !335}
!1843 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1844)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1846)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !1814, line: 34, baseType: !335)
!1847 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1848)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1850 = !{!1851, !1852, !1853}
!1851 = !DILocalVariable(name: "nptr", arg: 1, scope: !1840, file: !1814, line: 348, type: !1843)
!1852 = !DILocalVariable(name: "endptr", arg: 2, scope: !1840, file: !1814, line: 348, type: !1847)
!1853 = !DILocalVariable(name: "base", arg: 3, scope: !1840, file: !1814, line: 348, type: !335)
!1854 = !DILocation(line: 0, scope: !1840)
!1855 = !DILocation(line: 351, column: 10, scope: !1840)
!1856 = !DILocation(line: 351, column: 3, scope: !1840)
!1857 = distinct !DISubprogram(name: "wcstoumax", scope: !1814, file: !1814, line: 362, type: !1858, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1860)
!1858 = !DISubroutineType(types: !1859)
!1859 = !{!1831, !1843, !1847, !335}
!1860 = !{!1861, !1862, !1863}
!1861 = !DILocalVariable(name: "nptr", arg: 1, scope: !1857, file: !1814, line: 362, type: !1843)
!1862 = !DILocalVariable(name: "endptr", arg: 2, scope: !1857, file: !1814, line: 362, type: !1847)
!1863 = !DILocalVariable(name: "base", arg: 3, scope: !1857, file: !1814, line: 362, type: !335)
!1864 = !DILocation(line: 0, scope: !1857)
!1865 = !DILocation(line: 365, column: 10, scope: !1857)
!1866 = !DILocation(line: 365, column: 3, scope: !1857)
!1867 = distinct !DISubprogram(name: "stat", scope: !1868, file: !1868, line: 453, type: !1869, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1908)
!1868 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!335, !340, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !1873, line: 46, size: 1152, elements: !1874)
!1873 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!1874 = !{!1875, !1877, !1879, !1881, !1883, !1885, !1887, !1888, !1889, !1890, !1892, !1894, !1902, !1903, !1904}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1872, file: !1873, line: 48, baseType: !1876, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1626, line: 145, baseType: !438)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1872, file: !1873, line: 53, baseType: !1878, size: 64, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1626, line: 148, baseType: !438)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1872, file: !1873, line: 61, baseType: !1880, size: 64, offset: 128)
!1880 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1626, line: 151, baseType: !438)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1872, file: !1873, line: 62, baseType: !1882, size: 32, offset: 192)
!1882 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1626, line: 150, baseType: !5)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1872, file: !1873, line: 64, baseType: !1884, size: 32, offset: 224)
!1884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1626, line: 146, baseType: !5)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1872, file: !1873, line: 65, baseType: !1886, size: 32, offset: 256)
!1886 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1626, line: 147, baseType: !5)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1872, file: !1873, line: 67, baseType: !335, size: 32, offset: 288)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1872, file: !1873, line: 69, baseType: !1876, size: 64, offset: 320)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1872, file: !1873, line: 74, baseType: !1625, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1872, file: !1873, line: 78, baseType: !1891, size: 64, offset: 448)
!1891 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1626, line: 174, baseType: !440)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1872, file: !1873, line: 80, baseType: !1893, size: 64, offset: 512)
!1893 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1626, line: 179, baseType: !440)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1872, file: !1873, line: 91, baseType: !1895, size: 128, offset: 576)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !1896, line: 10, size: 128, elements: !1897)
!1896 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!1897 = !{!1898, !1900}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1895, file: !1896, line: 12, baseType: !1899, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1626, line: 160, baseType: !440)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !1895, file: !1896, line: 16, baseType: !1901, size: 64, offset: 64)
!1901 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1626, line: 196, baseType: !440)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1872, file: !1873, line: 92, baseType: !1895, size: 128, offset: 704)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1872, file: !1873, line: 93, baseType: !1895, size: 128, offset: 832)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1872, file: !1873, line: 106, baseType: !1905, size: 192, offset: 960)
!1905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1901, size: 192, elements: !1906)
!1906 = !{!1907}
!1907 = !DISubrange(count: 3)
!1908 = !{!1909, !1910}
!1909 = !DILocalVariable(name: "__path", arg: 1, scope: !1867, file: !1868, line: 453, type: !340)
!1910 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1867, file: !1868, line: 453, type: !1871)
!1911 = !DILocation(line: 0, scope: !1867)
!1912 = !DILocation(line: 455, column: 10, scope: !1867)
!1913 = !DILocation(line: 455, column: 3, scope: !1867)
!1914 = distinct !DISubprogram(name: "lstat", scope: !1868, file: !1868, line: 460, type: !1869, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1915)
!1915 = !{!1916, !1917}
!1916 = !DILocalVariable(name: "__path", arg: 1, scope: !1914, file: !1868, line: 460, type: !340)
!1917 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1914, file: !1868, line: 460, type: !1871)
!1918 = !DILocation(line: 0, scope: !1914)
!1919 = !DILocation(line: 462, column: 10, scope: !1914)
!1920 = !DILocation(line: 462, column: 3, scope: !1914)
!1921 = distinct !DISubprogram(name: "fstat", scope: !1868, file: !1868, line: 467, type: !1922, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!335, !335, !1871}
!1924 = !{!1925, !1926}
!1925 = !DILocalVariable(name: "__fd", arg: 1, scope: !1921, file: !1868, line: 467, type: !335)
!1926 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1921, file: !1868, line: 467, type: !1871)
!1927 = !DILocation(line: 0, scope: !1921)
!1928 = !DILocation(line: 469, column: 10, scope: !1921)
!1929 = !DILocation(line: 469, column: 3, scope: !1921)
!1930 = distinct !DISubprogram(name: "fstatat", scope: !1868, file: !1868, line: 474, type: !1931, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1933)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{!335, !335, !340, !1871, !335}
!1933 = !{!1934, !1935, !1936, !1937}
!1934 = !DILocalVariable(name: "__fd", arg: 1, scope: !1930, file: !1868, line: 474, type: !335)
!1935 = !DILocalVariable(name: "__filename", arg: 2, scope: !1930, file: !1868, line: 474, type: !340)
!1936 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !1930, file: !1868, line: 474, type: !1871)
!1937 = !DILocalVariable(name: "__flag", arg: 4, scope: !1930, file: !1868, line: 474, type: !335)
!1938 = !DILocation(line: 0, scope: !1930)
!1939 = !DILocation(line: 477, column: 10, scope: !1930)
!1940 = !DILocation(line: 477, column: 3, scope: !1930)
!1941 = distinct !DISubprogram(name: "mknod", scope: !1868, file: !1868, line: 483, type: !1942, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1944)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!335, !340, !1882, !1876}
!1944 = !{!1945, !1946, !1947}
!1945 = !DILocalVariable(name: "__path", arg: 1, scope: !1941, file: !1868, line: 483, type: !340)
!1946 = !DILocalVariable(name: "__mode", arg: 2, scope: !1941, file: !1868, line: 483, type: !1882)
!1947 = !DILocalVariable(name: "__dev", arg: 3, scope: !1941, file: !1868, line: 483, type: !1876)
!1948 = !DILocation(line: 0, scope: !1941)
!1949 = !DILocation(line: 485, column: 10, scope: !1941)
!1950 = !DILocation(line: 485, column: 3, scope: !1941)
!1951 = distinct !DISubprogram(name: "mknodat", scope: !1868, file: !1868, line: 491, type: !1952, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1954)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!335, !335, !340, !1882, !1876}
!1954 = !{!1955, !1956, !1957, !1958}
!1955 = !DILocalVariable(name: "__fd", arg: 1, scope: !1951, file: !1868, line: 491, type: !335)
!1956 = !DILocalVariable(name: "__path", arg: 2, scope: !1951, file: !1868, line: 491, type: !340)
!1957 = !DILocalVariable(name: "__mode", arg: 3, scope: !1951, file: !1868, line: 491, type: !1882)
!1958 = !DILocalVariable(name: "__dev", arg: 4, scope: !1951, file: !1868, line: 491, type: !1876)
!1959 = !DILocation(line: 0, scope: !1951)
!1960 = !DILocation(line: 494, column: 10, scope: !1951)
!1961 = !DILocation(line: 494, column: 3, scope: !1951)
!1962 = distinct !DISubprogram(name: "stat64", scope: !1868, file: !1868, line: 502, type: !1963, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1985)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!335, !340, !1965}
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !1873, line: 119, size: 1152, elements: !1967)
!1967 = !{!1968, !1969, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1981, !1982, !1983, !1984}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !1966, file: !1873, line: 121, baseType: !1876, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !1966, file: !1873, line: 123, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1626, line: 149, baseType: !438)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !1966, file: !1873, line: 124, baseType: !1880, size: 64, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !1966, file: !1873, line: 125, baseType: !1882, size: 32, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !1966, file: !1873, line: 132, baseType: !1884, size: 32, offset: 224)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !1966, file: !1873, line: 133, baseType: !1886, size: 32, offset: 256)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !1966, file: !1873, line: 135, baseType: !335, size: 32, offset: 288)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !1966, file: !1873, line: 136, baseType: !1876, size: 64, offset: 320)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1966, file: !1873, line: 137, baseType: !1625, size: 64, offset: 384)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !1966, file: !1873, line: 143, baseType: !1891, size: 64, offset: 448)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !1966, file: !1873, line: 144, baseType: !1980, size: 64, offset: 512)
!1980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1626, line: 180, baseType: !440)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !1966, file: !1873, line: 152, baseType: !1895, size: 128, offset: 576)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !1966, file: !1873, line: 153, baseType: !1895, size: 128, offset: 704)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !1966, file: !1873, line: 154, baseType: !1895, size: 128, offset: 832)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !1966, file: !1873, line: 164, baseType: !1905, size: 192, offset: 960)
!1985 = !{!1986, !1987}
!1986 = !DILocalVariable(name: "__path", arg: 1, scope: !1962, file: !1868, line: 502, type: !340)
!1987 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1962, file: !1868, line: 502, type: !1965)
!1988 = !DILocation(line: 0, scope: !1962)
!1989 = !DILocation(line: 504, column: 10, scope: !1962)
!1990 = !DILocation(line: 504, column: 3, scope: !1962)
!1991 = distinct !DISubprogram(name: "lstat64", scope: !1868, file: !1868, line: 509, type: !1963, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !1992)
!1992 = !{!1993, !1994}
!1993 = !DILocalVariable(name: "__path", arg: 1, scope: !1991, file: !1868, line: 509, type: !340)
!1994 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1991, file: !1868, line: 509, type: !1965)
!1995 = !DILocation(line: 0, scope: !1991)
!1996 = !DILocation(line: 511, column: 10, scope: !1991)
!1997 = !DILocation(line: 511, column: 3, scope: !1991)
!1998 = distinct !DISubprogram(name: "fstat64", scope: !1868, file: !1868, line: 516, type: !1999, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2001)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!335, !335, !1965}
!2001 = !{!2002, !2003}
!2002 = !DILocalVariable(name: "__fd", arg: 1, scope: !1998, file: !1868, line: 516, type: !335)
!2003 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !1998, file: !1868, line: 516, type: !1965)
!2004 = !DILocation(line: 0, scope: !1998)
!2005 = !DILocation(line: 518, column: 10, scope: !1998)
!2006 = !DILocation(line: 518, column: 3, scope: !1998)
!2007 = distinct !DISubprogram(name: "fstatat64", scope: !1868, file: !1868, line: 523, type: !2008, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2010)
!2008 = !DISubroutineType(types: !2009)
!2009 = !{!335, !335, !340, !1965, !335}
!2010 = !{!2011, !2012, !2013, !2014}
!2011 = !DILocalVariable(name: "__fd", arg: 1, scope: !2007, file: !1868, line: 523, type: !335)
!2012 = !DILocalVariable(name: "__filename", arg: 2, scope: !2007, file: !1868, line: 523, type: !340)
!2013 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2007, file: !1868, line: 523, type: !1965)
!2014 = !DILocalVariable(name: "__flag", arg: 4, scope: !2007, file: !1868, line: 523, type: !335)
!2015 = !DILocation(line: 0, scope: !2007)
!2016 = !DILocation(line: 526, column: 10, scope: !2007)
!2017 = !DILocation(line: 526, column: 3, scope: !2007)
!2018 = distinct !DISubprogram(name: "init_var_map", scope: !1, file: !1, line: 133, type: !2019, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2021)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{!342, !335}
!2021 = !{!2022, !2023}
!2022 = !DILocalVariable(name: "size", arg: 1, scope: !2018, file: !1, line: 133, type: !335)
!2023 = !DILocalVariable(name: "map", scope: !2018, file: !1, line: 135, type: !342)
!2024 = !DILocation(line: 0, scope: !2018)
!2025 = !DILocation(line: 137, column: 19, scope: !2018)
!2026 = !DILocation(line: 137, column: 9, scope: !2018)
!2027 = !DILocation(line: 138, column: 24, scope: !2018)
!2028 = !DILocation(line: 138, column: 8, scope: !2018)
!2029 = !DILocation(line: 138, column: 22, scope: !2018)
!2030 = !DILocation(line: 140, column: 8, scope: !2018)
!2031 = !DILocation(line: 140, column: 26, scope: !2018)
!2032 = !DILocation(line: 141, column: 8, scope: !2018)
!2033 = !DILocation(line: 141, column: 26, scope: !2018)
!2034 = !DILocation(line: 142, column: 8, scope: !2018)
!2035 = !DILocation(line: 142, column: 23, scope: !2018)
!2036 = !DILocation(line: 143, column: 8, scope: !2018)
!2037 = !DILocation(line: 143, column: 23, scope: !2018)
!2038 = !DILocation(line: 144, column: 8, scope: !2018)
!2039 = !DILocation(line: 144, column: 21, scope: !2018)
!2040 = !DILocation(line: 145, column: 8, scope: !2018)
!2041 = !DILocation(line: 145, column: 32, scope: !2018)
!2042 = !DILocation(line: 146, column: 8, scope: !2018)
!2043 = !DILocation(line: 146, column: 17, scope: !2018)
!2044 = !DILocation(line: 147, column: 3, scope: !2018)
!2045 = distinct !DISubprogram(name: "delete_var_map", scope: !1, file: !1, line: 154, type: !2046, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2048)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{null, !342}
!2048 = !{!2049}
!2049 = !DILocalVariable(name: "map", arg: 1, scope: !2045, file: !1, line: 154, type: !342)
!2050 = !DILocation(line: 0, scope: !2045)
!2051 = !DILocation(line: 156, column: 3, scope: !2045)
!2052 = !DILocation(line: 157, column: 26, scope: !2045)
!2053 = !DILocation(line: 157, column: 3, scope: !2045)
!2054 = !DILocation(line: 158, column: 12, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 158, column: 7)
!2056 = !DILocation(line: 158, column: 7, scope: !2055)
!2057 = !DILocation(line: 158, column: 7, scope: !2045)
!2058 = !DILocation(line: 159, column: 5, scope: !2055)
!2059 = !DILocation(line: 160, column: 12, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2045, file: !1, line: 160, column: 7)
!2061 = !DILocation(line: 160, column: 7, scope: !2060)
!2062 = !DILocation(line: 160, column: 7, scope: !2045)
!2063 = !DILocation(line: 161, column: 5, scope: !2060)
!2064 = !DILocation(line: 162, column: 9, scope: !2045)
!2065 = !DILocation(line: 162, column: 3, scope: !2045)
!2066 = !DILocation(line: 163, column: 1, scope: !2045)
!2067 = distinct !DISubprogram(name: "var_map_base_fini", scope: !1, file: !1, line: 119, type: !2046, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2068)
!2068 = !{!2069}
!2069 = !DILocalVariable(name: "map", arg: 1, scope: !2067, file: !1, line: 119, type: !342)
!2070 = !DILocation(line: 0, scope: !2067)
!2071 = !DILocation(line: 122, column: 12, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2067, file: !1, line: 122, column: 7)
!2073 = !DILocation(line: 122, column: 36, scope: !2072)
!2074 = !DILocation(line: 122, column: 7, scope: !2067)
!2075 = !DILocation(line: 124, column: 7, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2072, file: !1, line: 123, column: 5)
!2077 = !DILocation(line: 125, column: 18, scope: !2076)
!2078 = !DILocation(line: 125, column: 7, scope: !2076)
!2079 = !DILocation(line: 126, column: 36, scope: !2076)
!2080 = !DILocation(line: 127, column: 12, scope: !2076)
!2081 = !DILocation(line: 127, column: 25, scope: !2076)
!2082 = !DILocation(line: 128, column: 5, scope: !2076)
!2083 = !DILocation(line: 129, column: 1, scope: !2067)
!2084 = distinct !DISubprogram(name: "var_union", scope: !1, file: !1, line: 171, type: !2085, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2087)
!2085 = !DISubroutineType(types: !2086)
!2086 = !{!335, !342, !384, !384}
!2087 = !{!2088, !2089, !2090, !2091, !2092, !2093}
!2088 = !DILocalVariable(name: "map", arg: 1, scope: !2084, file: !1, line: 171, type: !342)
!2089 = !DILocalVariable(name: "var1", arg: 2, scope: !2084, file: !1, line: 171, type: !384)
!2090 = !DILocalVariable(name: "var2", arg: 3, scope: !2084, file: !1, line: 171, type: !384)
!2091 = !DILocalVariable(name: "p1", scope: !2084, file: !1, line: 173, type: !335)
!2092 = !DILocalVariable(name: "p2", scope: !2084, file: !1, line: 173, type: !335)
!2093 = !DILocalVariable(name: "p3", scope: !2084, file: !1, line: 173, type: !335)
!2094 = !DILocation(line: 0, scope: !2084)
!2095 = !DILocation(line: 175, column: 3, scope: !2084)
!2096 = !DILocation(line: 176, column: 3, scope: !2084)
!2097 = !DILocation(line: 182, column: 8, scope: !2084)
!2098 = !DILocation(line: 183, column: 8, scope: !2084)
!2099 = !DILocation(line: 185, column: 3, scope: !2084)
!2100 = !DILocation(line: 186, column: 3, scope: !2084)
!2101 = !DILocation(line: 188, column: 10, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2084, file: !1, line: 188, column: 7)
!2103 = !DILocation(line: 188, column: 7, scope: !2084)
!2104 = !DILocation(line: 191, column: 32, scope: !2102)
!2105 = !DILocation(line: 191, column: 10, scope: !2102)
!2106 = !DILocation(line: 0, scope: !2102)
!2107 = !DILocation(line: 193, column: 12, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2084, file: !1, line: 193, column: 7)
!2109 = !DILocation(line: 193, column: 7, scope: !2108)
!2110 = !DILocation(line: 193, column: 7, scope: !2084)
!2111 = !DILocation(line: 194, column: 10, scope: !2108)
!2112 = !DILocation(line: 194, column: 5, scope: !2108)
!2113 = !DILocation(line: 196, column: 3, scope: !2084)
!2114 = distinct !DISubprogram(name: "partition_view_normal", scope: !1, file: !1, line: 301, type: !2115, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2117)
!2115 = !DISubroutineType(types: !2116)
!2116 = !{null, !342, !334}
!2117 = !{!2118, !2119, !2120}
!2118 = !DILocalVariable(name: "map", arg: 1, scope: !2114, file: !1, line: 301, type: !342)
!2119 = !DILocalVariable(name: "want_bases", arg: 2, scope: !2114, file: !1, line: 301, type: !334)
!2120 = !DILocalVariable(name: "used", scope: !2114, file: !1, line: 303, type: !1036)
!2121 = !DILocation(line: 0, scope: !2114)
!2122 = !DILocation(line: 305, column: 10, scope: !2114)
!2123 = !DILocation(line: 306, column: 3, scope: !2114)
!2124 = !DILocation(line: 308, column: 7, scope: !2125)
!2125 = distinct !DILexicalBlock(scope: !2114, file: !1, line: 308, column: 7)
!2126 = !DILocation(line: 308, column: 7, scope: !2114)
!2127 = !DILocation(line: 309, column: 5, scope: !2125)
!2128 = !DILocation(line: 311, column: 5, scope: !2125)
!2129 = !DILocation(line: 312, column: 1, scope: !2114)
!2130 = distinct !DISubprogram(name: "partition_view_init", scope: !1, file: !1, line: 223, type: !2131, scopeLine: 224, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!1036, !342}
!2133 = !{!2134, !2135, !2136, !2137}
!2134 = !DILocalVariable(name: "map", arg: 1, scope: !2130, file: !1, line: 223, type: !342)
!2135 = !DILocalVariable(name: "used", scope: !2130, file: !1, line: 225, type: !1036)
!2136 = !DILocalVariable(name: "tmp", scope: !2130, file: !1, line: 226, type: !335)
!2137 = !DILocalVariable(name: "x", scope: !2130, file: !1, line: 227, type: !5)
!2138 = !DILocation(line: 0, scope: !2130)
!2139 = !DILocation(line: 229, column: 10, scope: !2130)
!2140 = !DILocation(line: 232, column: 12, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 232, column: 7)
!2142 = !DILocation(line: 232, column: 7, scope: !2141)
!2143 = !DILocation(line: 232, column: 7, scope: !2130)
!2144 = !DILocation(line: 234, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2141, file: !1, line: 233, column: 5)
!2146 = !DILocation(line: 235, column: 30, scope: !2145)
!2147 = !DILocation(line: 236, column: 5, scope: !2145)
!2148 = !DILocation(line: 237, column: 12, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 237, column: 7)
!2150 = !DILocation(line: 237, column: 7, scope: !2149)
!2151 = !DILocation(line: 237, column: 7, scope: !2130)
!2152 = !DILocation(line: 239, column: 7, scope: !2153)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !1, line: 238, column: 5)
!2154 = !DILocation(line: 240, column: 30, scope: !2153)
!2155 = !DILocation(line: 241, column: 5, scope: !2153)
!2156 = !DILocation(line: 0, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2158, file: !1, line: 244, column: 3)
!2158 = distinct !DILexicalBlock(scope: !2130, file: !1, line: 244, column: 3)
!2159 = !DILocation(line: 0, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !1, line: 245, column: 5)
!2161 = !DILocation(line: 244, column: 8, scope: !2158)
!2162 = !DILocation(line: 0, scope: !2158)
!2163 = !DILocation(line: 244, column: 24, scope: !2157)
!2164 = !DILocation(line: 244, column: 17, scope: !2157)
!2165 = !DILocation(line: 244, column: 3, scope: !2158)
!2166 = !DILocation(line: 246, column: 13, scope: !2160)
!2167 = !DILocation(line: 247, column: 11, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2160, file: !1, line: 247, column: 11)
!2169 = !DILocation(line: 247, column: 26, scope: !2168)
!2170 = !DILocation(line: 247, column: 39, scope: !2168)
!2171 = !DILocation(line: 247, column: 57, scope: !2168)
!2172 = !DILocation(line: 247, column: 42, scope: !2168)
!2173 = !DILocation(line: 248, column: 4, scope: !2168)
!2174 = !DILocation(line: 248, column: 24, scope: !2168)
!2175 = !DILocation(line: 248, column: 9, scope: !2168)
!2176 = !DILocation(line: 249, column: 8, scope: !2168)
!2177 = !DILocation(line: 249, column: 12, scope: !2168)
!2178 = !DILocation(line: 247, column: 11, scope: !2160)
!2179 = !DILocation(line: 250, column: 2, scope: !2168)
!2180 = !DILocation(line: 244, column: 41, scope: !2157)
!2181 = !DILocation(line: 244, column: 3, scope: !2157)
!2182 = distinct !{!2182, !2165, !2183}
!2183 = !DILocation(line: 251, column: 5, scope: !2158)
!2184 = !DILocation(line: 253, column: 8, scope: !2130)
!2185 = !DILocation(line: 253, column: 23, scope: !2130)
!2186 = !DILocation(line: 254, column: 3, scope: !2130)
!2187 = distinct !DISubprogram(name: "partition_view_fini", scope: !1, file: !1, line: 264, type: !2188, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2190)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{null, !342, !1036}
!2190 = !{!2191, !2192, !2193, !2201, !2202, !2203, !2204}
!2191 = !DILocalVariable(name: "map", arg: 1, scope: !2187, file: !1, line: 264, type: !342)
!2192 = !DILocalVariable(name: "selected", arg: 2, scope: !2187, file: !1, line: 264, type: !1036)
!2193 = !DILocalVariable(name: "bi", scope: !2187, file: !1, line: 266, type: !2194)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_iterator", file: !1039, line: 218, baseType: !2195)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1039, line: 203, size: 256, elements: !2196)
!2196 = !{!2197, !2198, !2199, !2200}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "elt1", scope: !2195, file: !1039, line: 206, baseType: !1042, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "elt2", scope: !2195, file: !1039, line: 209, baseType: !1042, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "word_no", scope: !2195, file: !1039, line: 212, baseType: !5, size: 32, offset: 128)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2195, file: !1039, line: 217, baseType: !1052, size: 64, offset: 192)
!2201 = !DILocalVariable(name: "count", scope: !2187, file: !1, line: 267, type: !5)
!2202 = !DILocalVariable(name: "i", scope: !2187, file: !1, line: 267, type: !5)
!2203 = !DILocalVariable(name: "x", scope: !2187, file: !1, line: 267, type: !5)
!2204 = !DILocalVariable(name: "limit", scope: !2187, file: !1, line: 267, type: !5)
!2205 = !DILocation(line: 0, scope: !2187)
!2206 = !DILocation(line: 266, column: 3, scope: !2187)
!2207 = !DILocation(line: 267, column: 3, scope: !2187)
!2208 = !DILocation(line: 269, column: 3, scope: !2187)
!2209 = !DILocation(line: 271, column: 11, scope: !2187)
!2210 = !DILocation(line: 272, column: 16, scope: !2187)
!2211 = !DILocation(line: 275, column: 13, scope: !2212)
!2212 = distinct !DILexicalBlock(scope: !2187, file: !1, line: 275, column: 7)
!2213 = !DILocation(line: 275, column: 7, scope: !2187)
!2214 = !DILocation(line: 277, column: 48, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2212, file: !1, line: 276, column: 5)
!2216 = !DILocation(line: 277, column: 54, scope: !2215)
!2217 = !DILocation(line: 277, column: 39, scope: !2215)
!2218 = !DILocation(line: 277, column: 12, scope: !2215)
!2219 = !DILocation(line: 277, column: 30, scope: !2215)
!2220 = !DILocation(line: 278, column: 7, scope: !2215)
!2221 = !DILocation(line: 279, column: 54, scope: !2215)
!2222 = !DILocation(line: 279, column: 39, scope: !2215)
!2223 = !DILocation(line: 279, column: 12, scope: !2215)
!2224 = !DILocation(line: 279, column: 30, scope: !2215)
!2225 = !DILocation(line: 283, column: 7, scope: !2226)
!2226 = distinct !DILexicalBlock(scope: !2215, file: !1, line: 283, column: 7)
!2227 = !DILocation(line: 0, scope: !2215)
!2228 = !DILocation(line: 283, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2226, file: !1, line: 283, column: 7)
!2230 = !DILocation(line: 285, column: 9, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2229, file: !1, line: 284, column: 2)
!2232 = !DILocation(line: 285, column: 27, scope: !2231)
!2233 = !DILocation(line: 285, column: 4, scope: !2231)
!2234 = !DILocation(line: 285, column: 30, scope: !2231)
!2235 = !DILocation(line: 286, column: 32, scope: !2231)
!2236 = !DILocation(line: 286, column: 9, scope: !2231)
!2237 = !DILocation(line: 286, column: 4, scope: !2231)
!2238 = !DILocation(line: 286, column: 30, scope: !2231)
!2239 = !DILocation(line: 287, column: 5, scope: !2231)
!2240 = distinct !{!2240, !2225, !2241}
!2241 = !DILocation(line: 288, column: 2, scope: !2226)
!2242 = !DILocation(line: 289, column: 7, scope: !2215)
!2243 = !DILocation(line: 290, column: 12, scope: !2215)
!2244 = !DILocation(line: 290, column: 27, scope: !2215)
!2245 = !DILocation(line: 291, column: 5, scope: !2215)
!2246 = !DILocation(line: 293, column: 3, scope: !2187)
!2247 = !DILocation(line: 294, column: 1, scope: !2187)
!2248 = distinct !DISubprogram(name: "var_map_base_init", scope: !1, file: !1, line: 58, type: !2046, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2249)
!2249 = !{!2250, !2251, !2252, !2253, !2254, !2255}
!2250 = !DILocalVariable(name: "map", arg: 1, scope: !2248, file: !1, line: 58, type: !342)
!2251 = !DILocalVariable(name: "x", scope: !2248, file: !1, line: 60, type: !335)
!2252 = !DILocalVariable(name: "num_part", scope: !2248, file: !1, line: 60, type: !335)
!2253 = !DILocalVariable(name: "num", scope: !2248, file: !1, line: 60, type: !335)
!2254 = !DILocalVariable(name: "var", scope: !2248, file: !1, line: 61, type: !384)
!2255 = !DILocalVariable(name: "ann", scope: !2248, file: !1, line: 62, type: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_typedef, name: "var_ann_t", file: !580, line: 297, baseType: !578)
!2257 = !DILocation(line: 0, scope: !2248)
!2258 = !DILocation(line: 65, column: 14, scope: !2248)
!2259 = !DILocation(line: 68, column: 12, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 68, column: 7)
!2261 = !DILocation(line: 68, column: 36, scope: !2260)
!2262 = !DILocation(line: 68, column: 7, scope: !2248)
!2263 = !DILocation(line: 70, column: 7, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2260, file: !1, line: 69, column: 5)
!2265 = !DILocation(line: 71, column: 7, scope: !2264)
!2266 = !DILocation(line: 72, column: 5, scope: !2264)
!2267 = !DILocation(line: 74, column: 21, scope: !2260)
!2268 = !DILocation(line: 74, column: 10, scope: !2260)
!2269 = !DILocation(line: 74, column: 19, scope: !2260)
!2270 = !DILocation(line: 76, column: 32, scope: !2248)
!2271 = !DILocation(line: 76, column: 66, scope: !2248)
!2272 = !DILocation(line: 76, column: 64, scope: !2248)
!2273 = !DILocation(line: 76, column: 42, scope: !2248)
!2274 = !DILocation(line: 0, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !1, line: 87, column: 9)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 86, column: 11)
!2277 = distinct !DILexicalBlock(scope: !2278, file: !1, line: 80, column: 5)
!2278 = distinct !DILexicalBlock(scope: !2279, file: !1, line: 79, column: 3)
!2279 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 79, column: 3)
!2280 = !DILocation(line: 79, column: 8, scope: !2279)
!2281 = !DILocation(line: 64, column: 7, scope: !2248)
!2282 = !DILocation(line: 79, column: 17, scope: !2278)
!2283 = !DILocation(line: 79, column: 3, scope: !2279)
!2284 = !DILocation(line: 81, column: 13, scope: !2277)
!2285 = !DILocation(line: 82, column: 11, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2277, file: !1, line: 82, column: 11)
!2287 = !DILocation(line: 82, column: 27, scope: !2286)
!2288 = !DILocation(line: 82, column: 11, scope: !2277)
!2289 = !DILocation(line: 83, column: 9, scope: !2286)
!2290 = !DILocation(line: 83, column: 3, scope: !2286)
!2291 = !DILocation(line: 0, scope: !2277)
!2292 = !DILocation(line: 84, column: 13, scope: !2277)
!2293 = !DILocation(line: 86, column: 17, scope: !2276)
!2294 = !DILocation(line: 86, column: 12, scope: !2276)
!2295 = !DILocation(line: 86, column: 11, scope: !2277)
!2296 = !DILocation(line: 88, column: 28, scope: !2275)
!2297 = !DILocation(line: 89, column: 34, scope: !2275)
!2298 = !DILocation(line: 89, column: 4, scope: !2275)
!2299 = !DILocation(line: 89, column: 29, scope: !2275)
!2300 = !DILocation(line: 90, column: 4, scope: !2275)
!2301 = !DILocation(line: 91, column: 2, scope: !2275)
!2302 = !DILocation(line: 92, column: 41, scope: !2277)
!2303 = !DILocation(line: 92, column: 12, scope: !2277)
!2304 = !DILocation(line: 92, column: 7, scope: !2277)
!2305 = !DILocation(line: 92, column: 39, scope: !2277)
!2306 = !DILocation(line: 79, column: 30, scope: !2278)
!2307 = !DILocation(line: 79, column: 3, scope: !2278)
!2308 = distinct !{!2308, !2283, !2309}
!2309 = !DILocation(line: 93, column: 5, scope: !2279)
!2310 = !DILocation(line: 95, column: 8, scope: !2248)
!2311 = !DILocation(line: 95, column: 21, scope: !2248)
!2312 = !DILocation(line: 98, column: 8, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2248, file: !1, line: 98, column: 3)
!2314 = !DILocation(line: 0, scope: !2313)
!2315 = !DILocation(line: 98, column: 17, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2313, file: !1, line: 98, column: 3)
!2317 = !DILocation(line: 98, column: 3, scope: !2313)
!2318 = !DILocation(line: 100, column: 14, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !1, line: 99, column: 5)
!2320 = !DILocation(line: 101, column: 8, scope: !2319)
!2321 = !DILocation(line: 101, column: 23, scope: !2319)
!2322 = !DILocation(line: 101, column: 42, scope: !2319)
!2323 = !DILocation(line: 98, column: 25, scope: !2316)
!2324 = !DILocation(line: 98, column: 3, scope: !2316)
!2325 = distinct !{!2325, !2317, !2326}
!2326 = !DILocation(line: 102, column: 5, scope: !2313)
!2327 = !DILocation(line: 113, column: 1, scope: !2248)
!2328 = distinct !DISubprogram(name: "partition_view_bitmap", scope: !1, file: !1, line: 320, type: !2329, scopeLine: 321, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2331)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{null, !342, !1036, !334}
!2331 = !{!2332, !2333, !2334, !2335, !2336, !2337, !2338, !2339}
!2332 = !DILocalVariable(name: "map", arg: 1, scope: !2328, file: !1, line: 320, type: !342)
!2333 = !DILocalVariable(name: "only", arg: 2, scope: !2328, file: !1, line: 320, type: !1036)
!2334 = !DILocalVariable(name: "want_bases", arg: 3, scope: !2328, file: !1, line: 320, type: !334)
!2335 = !DILocalVariable(name: "used", scope: !2328, file: !1, line: 322, type: !1036)
!2336 = !DILocalVariable(name: "new_partitions", scope: !2328, file: !1, line: 323, type: !1036)
!2337 = !DILocalVariable(name: "x", scope: !2328, file: !1, line: 324, type: !5)
!2338 = !DILocalVariable(name: "p", scope: !2328, file: !1, line: 324, type: !5)
!2339 = !DILocalVariable(name: "bi", scope: !2328, file: !1, line: 325, type: !2194)
!2340 = !DILocation(line: 0, scope: !2328)
!2341 = !DILocation(line: 323, column: 27, scope: !2328)
!2342 = !DILocation(line: 324, column: 3, scope: !2328)
!2343 = !DILocation(line: 325, column: 3, scope: !2328)
!2344 = !DILocation(line: 327, column: 10, scope: !2328)
!2345 = !DILocation(line: 328, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 328, column: 3)
!2347 = !DILocation(line: 0, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2349, file: !1, line: 329, column: 5)
!2349 = distinct !DILexicalBlock(scope: !2346, file: !1, line: 328, column: 3)
!2350 = !DILocation(line: 328, column: 3, scope: !2349)
!2351 = !DILocation(line: 330, column: 11, scope: !2348)
!2352 = !DILocation(line: 331, column: 7, scope: !2348)
!2353 = !DILocation(line: 332, column: 7, scope: !2348)
!2354 = distinct !{!2354, !2345, !2355}
!2355 = !DILocation(line: 333, column: 5, scope: !2346)
!2356 = !DILocation(line: 334, column: 3, scope: !2328)
!2357 = !DILocation(line: 336, column: 3, scope: !2328)
!2358 = !DILocation(line: 337, column: 7, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2328, file: !1, line: 337, column: 7)
!2360 = !DILocation(line: 337, column: 7, scope: !2328)
!2361 = !DILocation(line: 338, column: 5, scope: !2359)
!2362 = !DILocation(line: 340, column: 5, scope: !2359)
!2363 = !DILocation(line: 341, column: 1, scope: !2328)
!2364 = distinct !DISubprogram(name: "bmp_iter_set_init", scope: !1039, file: !1039, line: 224, type: !2365, scopeLine: 226, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2372)
!2365 = !DISubroutineType(types: !2366)
!2366 = !{null, !2367, !2368, !5, !2371}
!2367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2368 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_bitmap", file: !385, line: 48, baseType: !2369)
!2369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2370, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1038)
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2372 = !{!2373, !2374, !2375, !2376}
!2373 = !DILocalVariable(name: "bi", arg: 1, scope: !2364, file: !1039, line: 224, type: !2367)
!2374 = !DILocalVariable(name: "map", arg: 2, scope: !2364, file: !1039, line: 224, type: !2368)
!2375 = !DILocalVariable(name: "start_bit", arg: 3, scope: !2364, file: !1039, line: 225, type: !5)
!2376 = !DILocalVariable(name: "bit_no", arg: 4, scope: !2364, file: !1039, line: 225, type: !2371)
!2377 = !DILocation(line: 0, scope: !2364)
!2378 = !DILocation(line: 227, column: 19, scope: !2364)
!2379 = !DILocation(line: 227, column: 12, scope: !2364)
!2380 = !DILocation(line: 228, column: 7, scope: !2364)
!2381 = !DILocation(line: 228, column: 12, scope: !2364)
!2382 = !DILocation(line: 0, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !1039, line: 233, column: 11)
!2384 = distinct !DILexicalBlock(scope: !2364, file: !1039, line: 232, column: 5)
!2385 = !DILocation(line: 231, column: 3, scope: !2364)
!2386 = !DILocation(line: 233, column: 12, scope: !2383)
!2387 = !DILocation(line: 233, column: 11, scope: !2384)
!2388 = !DILocation(line: 235, column: 13, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2383, file: !1039, line: 234, column: 2)
!2390 = !DILocation(line: 236, column: 4, scope: !2389)
!2391 = !DILocation(line: 239, column: 11, scope: !2384)
!2392 = distinct !{!2392, !2385, !2393}
!2393 = !DILocation(line: 242, column: 5, scope: !2364)
!2394 = !DILocation(line: 245, column: 11, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2364, file: !1039, line: 245, column: 7)
!2396 = !DILocation(line: 245, column: 17, scope: !2395)
!2397 = !DILocation(line: 245, column: 22, scope: !2395)
!2398 = !DILocation(line: 245, column: 7, scope: !2364)
!2399 = !DILocation(line: 246, column: 27, scope: !2395)
!2400 = !DILocation(line: 246, column: 32, scope: !2395)
!2401 = !DILocation(line: 246, column: 5, scope: !2395)
!2402 = !DILocation(line: 249, column: 7, scope: !2364)
!2403 = !DILocation(line: 249, column: 15, scope: !2364)
!2404 = !DILocation(line: 250, column: 14, scope: !2364)
!2405 = !DILocation(line: 251, column: 7, scope: !2364)
!2406 = !DILocation(line: 251, column: 12, scope: !2364)
!2407 = !DILocation(line: 257, column: 16, scope: !2364)
!2408 = !DILocation(line: 257, column: 13, scope: !2364)
!2409 = !DILocation(line: 259, column: 11, scope: !2364)
!2410 = !DILocation(line: 260, column: 1, scope: !2364)
!2411 = distinct !DISubprogram(name: "bmp_iter_set", scope: !1039, file: !1039, line: 393, type: !2412, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2414)
!2412 = !DISubroutineType(types: !2413)
!2413 = !{!334, !2367, !2371}
!2414 = !{!2415, !2416, !2417}
!2415 = !DILocalVariable(name: "bi", arg: 1, scope: !2411, file: !1039, line: 393, type: !2367)
!2416 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2411, file: !1039, line: 393, type: !2371)
!2417 = !DILabel(scope: !2418, name: "next_bit", file: !1039, line: 398)
!2418 = distinct !DILexicalBlock(scope: !2419, file: !1039, line: 397, column: 5)
!2419 = distinct !DILexicalBlock(scope: !2411, file: !1039, line: 396, column: 7)
!2420 = !DILocation(line: 0, scope: !2411)
!2421 = !DILocation(line: 396, column: 11, scope: !2419)
!2422 = !DILocation(line: 396, column: 7, scope: !2419)
!2423 = !DILocation(line: 396, column: 7, scope: !2411)
!2424 = !DILocation(line: 419, column: 15, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2426, file: !1039, line: 418, column: 2)
!2426 = distinct !DILexicalBlock(scope: !2411, file: !1039, line: 415, column: 5)
!2427 = !DILocation(line: 399, column: 7, scope: !2418)
!2428 = !DILocation(line: 398, column: 5, scope: !2418)
!2429 = !DILocation(line: 399, column: 20, scope: !2418)
!2430 = !DILocation(line: 399, column: 25, scope: !2418)
!2431 = !DILocation(line: 399, column: 14, scope: !2418)
!2432 = !DILocation(line: 401, column: 13, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2418, file: !1039, line: 400, column: 2)
!2434 = !DILocation(line: 402, column: 12, scope: !2433)
!2435 = distinct !{!2435, !2427, !2436}
!2436 = !DILocation(line: 403, column: 2, scope: !2418)
!2437 = !DILocation(line: 410, column: 15, scope: !2411)
!2438 = !DILocation(line: 410, column: 42, scope: !2411)
!2439 = !DILocation(line: 411, column: 26, scope: !2411)
!2440 = !DILocation(line: 410, column: 11, scope: !2411)
!2441 = !DILocation(line: 412, column: 7, scope: !2411)
!2442 = !DILocation(line: 412, column: 14, scope: !2411)
!2443 = !DILocation(line: 0, scope: !2426)
!2444 = !DILocation(line: 414, column: 3, scope: !2411)
!2445 = !DILocation(line: 417, column: 7, scope: !2426)
!2446 = !DILocation(line: 417, column: 18, scope: !2426)
!2447 = !DILocation(line: 417, column: 26, scope: !2426)
!2448 = !DILocation(line: 419, column: 13, scope: !2425)
!2449 = !DILocation(line: 420, column: 8, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2425, file: !1039, line: 420, column: 8)
!2451 = !DILocation(line: 420, column: 8, scope: !2425)
!2452 = !DILocation(line: 422, column: 12, scope: !2425)
!2453 = !DILocation(line: 423, column: 15, scope: !2425)
!2454 = distinct !{!2454, !2445, !2455}
!2455 = !DILocation(line: 424, column: 2, scope: !2426)
!2456 = !DILocation(line: 427, column: 28, scope: !2426)
!2457 = !DILocation(line: 427, column: 16, scope: !2426)
!2458 = !DILocation(line: 428, column: 12, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2426, file: !1039, line: 428, column: 11)
!2460 = !DILocation(line: 428, column: 11, scope: !2426)
!2461 = !DILocation(line: 430, column: 27, scope: !2426)
!2462 = !DILocation(line: 430, column: 32, scope: !2426)
!2463 = !DILocation(line: 430, column: 15, scope: !2426)
!2464 = !DILocation(line: 431, column: 19, scope: !2426)
!2465 = distinct !{!2465, !2444, !2466}
!2466 = !DILocation(line: 432, column: 5, scope: !2411)
!2467 = !DILocation(line: 433, column: 1, scope: !2411)
!2468 = distinct !DISubprogram(name: "bmp_iter_next", scope: !1039, file: !1039, line: 382, type: !2469, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2471)
!2469 = !DISubroutineType(types: !2470)
!2470 = !{null, !2367, !2371}
!2471 = !{!2472, !2473}
!2472 = !DILocalVariable(name: "bi", arg: 1, scope: !2468, file: !1039, line: 382, type: !2367)
!2473 = !DILocalVariable(name: "bit_no", arg: 2, scope: !2468, file: !1039, line: 382, type: !2371)
!2474 = !DILocation(line: 0, scope: !2468)
!2475 = !DILocation(line: 384, column: 7, scope: !2468)
!2476 = !DILocation(line: 384, column: 12, scope: !2468)
!2477 = !DILocation(line: 385, column: 11, scope: !2468)
!2478 = !DILocation(line: 386, column: 1, scope: !2468)
!2479 = distinct !DISubprogram(name: "debug_scope_block", scope: !1, file: !1, line: 634, type: !2480, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2482)
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !384, !335}
!2482 = !{!2483, !2484}
!2483 = !DILocalVariable(name: "scope", arg: 1, scope: !2479, file: !1, line: 634, type: !384)
!2484 = !DILocalVariable(name: "flags", arg: 2, scope: !2479, file: !1, line: 634, type: !335)
!2485 = !DILocation(line: 0, scope: !2479)
!2486 = !DILocation(line: 636, column: 21, scope: !2479)
!2487 = !DILocation(line: 636, column: 3, scope: !2479)
!2488 = !DILocation(line: 637, column: 1, scope: !2479)
!2489 = distinct !DISubprogram(name: "dump_scope_block", scope: !1, file: !1, line: 579, type: !2490, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2492)
!2490 = !DISubroutineType(types: !2491)
!2491 = !{null, !1599, !335, !384, !335}
!2492 = !{!2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2510, !2513, !2517}
!2493 = !DILocalVariable(name: "file", arg: 1, scope: !2489, file: !1, line: 579, type: !1599)
!2494 = !DILocalVariable(name: "indent", arg: 2, scope: !2489, file: !1, line: 579, type: !335)
!2495 = !DILocalVariable(name: "scope", arg: 3, scope: !2489, file: !1, line: 579, type: !384)
!2496 = !DILocalVariable(name: "flags", arg: 4, scope: !2489, file: !1, line: 579, type: !335)
!2497 = !DILocalVariable(name: "var", scope: !2489, file: !1, line: 581, type: !384)
!2498 = !DILocalVariable(name: "t", scope: !2489, file: !1, line: 581, type: !384)
!2499 = !DILocalVariable(name: "i", scope: !2489, file: !1, line: 582, type: !5)
!2500 = !DILocalVariable(name: "s", scope: !2501, file: !1, line: 589, type: !2503)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !1, line: 588, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 587, column: 7)
!2503 = !DIDerivedType(tag: DW_TAG_typedef, name: "expanded_location", file: !492, line: 52, baseType: !2504)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 40, size: 192, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !2504, file: !492, line: 43, baseType: !340, size: 64)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !2504, file: !492, line: 46, baseType: !335, size: 32, offset: 64)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "column", scope: !2504, file: !492, line: 48, baseType: !335, size: 32, offset: 96)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "sysp", scope: !2504, file: !492, line: 51, baseType: !334, size: 8, offset: 128)
!2510 = !DILocalVariable(name: "origin", scope: !2511, file: !1, line: 594, type: !384)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !1, line: 593, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 592, column: 7)
!2513 = !DILocalVariable(name: "used", scope: !2514, file: !1, line: 607, type: !334)
!2514 = distinct !DILexicalBlock(scope: !2515, file: !1, line: 606, column: 5)
!2515 = distinct !DILexicalBlock(scope: !2516, file: !1, line: 605, column: 3)
!2516 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 605, column: 3)
!2517 = !DILocalVariable(name: "ann", scope: !2514, file: !1, line: 608, type: !2256)
!2518 = !DILocation(line: 0, scope: !2489)
!2519 = !DILocation(line: 584, column: 60, scope: !2489)
!2520 = !DILocation(line: 585, column: 7, scope: !2489)
!2521 = !DILocation(line: 586, column: 5, scope: !2489)
!2522 = !DILocation(line: 584, column: 3, scope: !2489)
!2523 = !DILocation(line: 587, column: 7, scope: !2502)
!2524 = !DILocation(line: 587, column: 37, scope: !2502)
!2525 = !DILocation(line: 587, column: 7, scope: !2489)
!2526 = !DILocation(line: 589, column: 7, scope: !2501)
!2527 = !DILocation(line: 0, scope: !2501)
!2528 = !DILocation(line: 589, column: 29, scope: !2501)
!2529 = !DILocation(line: 590, column: 34, scope: !2501)
!2530 = !DILocation(line: 590, column: 42, scope: !2501)
!2531 = !DILocation(line: 590, column: 7, scope: !2501)
!2532 = !DILocation(line: 591, column: 5, scope: !2502)
!2533 = !DILocation(line: 591, column: 5, scope: !2501)
!2534 = !DILocation(line: 592, column: 7, scope: !2512)
!2535 = !DILocation(line: 592, column: 7, scope: !2489)
!2536 = !DILocation(line: 594, column: 21, scope: !2511)
!2537 = !DILocation(line: 0, scope: !2511)
!2538 = !DILocation(line: 595, column: 11, scope: !2539)
!2539 = distinct !DILexicalBlock(scope: !2511, file: !1, line: 595, column: 11)
!2540 = !DILocation(line: 595, column: 11, scope: !2511)
!2541 = !DILocation(line: 597, column: 4, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2539, file: !1, line: 596, column: 2)
!2543 = !DILocation(line: 598, column: 8, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2542, file: !1, line: 598, column: 8)
!2545 = !DILocation(line: 598, column: 8, scope: !2542)
!2546 = !DILocation(line: 599, column: 6, scope: !2544)
!2547 = !DILocation(line: 601, column: 28, scope: !2544)
!2548 = !DILocation(line: 601, column: 6, scope: !2544)
!2549 = !DILocation(line: 604, column: 3, scope: !2489)
!2550 = !DILocation(line: 605, column: 14, scope: !2516)
!2551 = !DILocation(line: 605, column: 8, scope: !2516)
!2552 = !DILocation(line: 0, scope: !2516)
!2553 = !DILocation(line: 605, column: 3, scope: !2516)
!2554 = !DILocation(line: 0, scope: !2555)
!2555 = distinct !DILexicalBlock(scope: !2556, file: !1, line: 618, column: 3)
!2556 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 618, column: 3)
!2557 = !DILocation(line: 618, column: 3, scope: !2556)
!2558 = !DILocation(line: 0, scope: !2514)
!2559 = !DILocation(line: 610, column: 18, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2514, file: !1, line: 610, column: 11)
!2561 = !DILocation(line: 610, column: 16, scope: !2560)
!2562 = !DILocation(line: 611, column: 4, scope: !2560)
!2563 = !DILocation(line: 611, column: 12, scope: !2560)
!2564 = !DILocation(line: 610, column: 11, scope: !2514)
!2565 = !DILocation(line: 614, column: 7, scope: !2514)
!2566 = !DILocation(line: 615, column: 7, scope: !2514)
!2567 = !DILocation(line: 616, column: 30, scope: !2514)
!2568 = !DILocation(line: 616, column: 7, scope: !2514)
!2569 = !DILocation(line: 605, column: 45, scope: !2515)
!2570 = !DILocation(line: 605, column: 3, scope: !2515)
!2571 = distinct !{!2571, !2553, !2572}
!2572 = !DILocation(line: 617, column: 5, scope: !2516)
!2573 = !DILocation(line: 0, scope: !2556)
!2574 = !DILocation(line: 618, column: 19, scope: !2555)
!2575 = !DILocation(line: 618, column: 17, scope: !2555)
!2576 = !DILocation(line: 620, column: 7, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2555, file: !1, line: 619, column: 5)
!2578 = !DILocation(line: 621, column: 33, scope: !2577)
!2579 = !DILocation(line: 621, column: 7, scope: !2577)
!2580 = !DILocation(line: 623, column: 7, scope: !2577)
!2581 = !DILocation(line: 618, column: 57, scope: !2555)
!2582 = !DILocation(line: 618, column: 3, scope: !2555)
!2583 = distinct !{!2583, !2557, !2584}
!2584 = !DILocation(line: 624, column: 5, scope: !2556)
!2585 = !DILocation(line: 625, column: 12, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2489, file: !1, line: 625, column: 3)
!2587 = !DILocation(line: 0, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2586, file: !1, line: 625, column: 3)
!2589 = !DILocation(line: 625, column: 8, scope: !2586)
!2590 = !DILocation(line: 0, scope: !2586)
!2591 = !DILocation(line: 625, column: 3, scope: !2586)
!2592 = !DILocation(line: 626, column: 5, scope: !2588)
!2593 = !DILocation(line: 625, column: 45, scope: !2588)
!2594 = !DILocation(line: 625, column: 3, scope: !2588)
!2595 = distinct !{!2595, !2591, !2596}
!2596 = !DILocation(line: 626, column: 49, scope: !2586)
!2597 = !DILocation(line: 627, column: 3, scope: !2489)
!2598 = !DILocation(line: 628, column: 1, scope: !2489)
!2599 = distinct !DISubprogram(name: "dump_scope_blocks", scope: !1, file: !1, line: 644, type: !2600, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2602)
!2600 = !DISubroutineType(types: !2601)
!2601 = !{null, !1599, !335}
!2602 = !{!2603, !2604}
!2603 = !DILocalVariable(name: "file", arg: 1, scope: !2599, file: !1, line: 644, type: !1599)
!2604 = !DILocalVariable(name: "flags", arg: 2, scope: !2599, file: !1, line: 644, type: !335)
!2605 = !DILocation(line: 0, scope: !2599)
!2606 = !DILocation(line: 646, column: 30, scope: !2599)
!2607 = !DILocation(line: 646, column: 3, scope: !2599)
!2608 = !DILocation(line: 647, column: 1, scope: !2599)
!2609 = distinct !DISubprogram(name: "debug_scope_blocks", scope: !1, file: !1, line: 654, type: !2610, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2612)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !335}
!2612 = !{!2613}
!2613 = !DILocalVariable(name: "flags", arg: 1, scope: !2609, file: !1, line: 654, type: !335)
!2614 = !DILocation(line: 0, scope: !2609)
!2615 = !DILocation(line: 656, column: 22, scope: !2609)
!2616 = !DILocation(line: 656, column: 3, scope: !2609)
!2617 = !DILocation(line: 657, column: 1, scope: !2609)
!2618 = distinct !DISubprogram(name: "remove_unused_locals", scope: !1, file: !1, line: 662, type: !2619, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2621)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null}
!2621 = !{!2622, !2623, !2624, !2625, !2636, !2637, !2638, !2648, !2649, !2656, !2657, !2661, !2662, !2666, !2679, !2680, !2681, !2685, !2689, !2695}
!2622 = !DILocalVariable(name: "bb", scope: !2618, file: !1, line: 664, type: !640)
!2623 = !DILocalVariable(name: "t", scope: !2618, file: !1, line: 665, type: !384)
!2624 = !DILocalVariable(name: "cell", scope: !2618, file: !1, line: 665, type: !711)
!2625 = !DILocalVariable(name: "rvi", scope: !2618, file: !1, line: 666, type: !2626)
!2626 = !DIDerivedType(tag: DW_TAG_typedef, name: "referenced_var_iterator", file: !580, line: 336, baseType: !2627)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 333, size: 192, elements: !2628)
!2628 = !{!2629}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "hti", scope: !2627, file: !580, line: 335, baseType: !2630, size: 192)
!2630 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_iterator", file: !580, line: 98, baseType: !2631)
!2631 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !580, line: 93, size: 192, elements: !2632)
!2632 = !{!2633, !2634, !2635}
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "htab", scope: !2631, file: !580, line: 95, baseType: !956, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2631, file: !580, line: 96, baseType: !980, size: 64, offset: 64)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !2631, file: !580, line: 97, baseType: !980, size: 64, offset: 128)
!2636 = !DILocalVariable(name: "ann", scope: !2618, file: !1, line: 667, type: !2256)
!2637 = !DILocalVariable(name: "global_unused_vars", scope: !2618, file: !1, line: 668, type: !1036)
!2638 = !DILocalVariable(name: "gsi", scope: !2639, file: !1, line: 685, type: !2642)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 684, column: 5)
!2640 = distinct !DILexicalBlock(scope: !2641, file: !1, line: 683, column: 3)
!2641 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 683, column: 3)
!2642 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !255, line: 265, baseType: !2643)
!2643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !255, line: 254, size: 192, elements: !2644)
!2644 = !{!2645, !2646, !2647}
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2643, file: !255, line: 257, baseType: !672, size: 64)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2643, file: !255, line: 263, baseType: !667, size: 64, offset: 64)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2643, file: !255, line: 264, baseType: !640, size: 64, offset: 128)
!2648 = !DILocalVariable(name: "i", scope: !2639, file: !1, line: 686, type: !821)
!2649 = !DILocalVariable(name: "ei", scope: !2639, file: !1, line: 687, type: !2650)
!2650 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !200, line: 682, baseType: !2651)
!2651 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 679, size: 128, elements: !2652)
!2652 = !{!2653, !2654}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2651, file: !200, line: 680, baseType: !5, size: 32)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2651, file: !200, line: 681, baseType: !2655, size: 64, offset: 64)
!2655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!2656 = !DILocalVariable(name: "e", scope: !2639, file: !1, line: 688, type: !657)
!2657 = !DILocalVariable(name: "stmt", scope: !2658, file: !1, line: 693, type: !677)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !1, line: 692, column: 2)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !1, line: 691, column: 7)
!2660 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 691, column: 7)
!2661 = !DILocalVariable(name: "b", scope: !2658, file: !1, line: 694, type: !384)
!2662 = !DILocalVariable(name: "arg_p", scope: !2663, file: !1, line: 708, type: !1550)
!2663 = distinct !DILexicalBlock(scope: !2664, file: !1, line: 707, column: 9)
!2664 = distinct !DILexicalBlock(scope: !2665, file: !1, line: 706, column: 7)
!2665 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 706, column: 7)
!2666 = !DILocalVariable(name: "i", scope: !2663, file: !1, line: 709, type: !2667)
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !248, line: 140, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !248, line: 131, size: 320, elements: !2669)
!2669 = !{!2670, !2671, !2672, !2674, !2676, !2677, !2678}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2668, file: !248, line: 133, baseType: !334, size: 8)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2668, file: !248, line: 134, baseType: !247, size: 32, offset: 32)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2668, file: !248, line: 135, baseType: !2673, size: 64, offset: 64)
!2673 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !248, line: 42, baseType: !706)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2668, file: !248, line: 136, baseType: !2675, size: 64, offset: 128)
!2675 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !248, line: 50, baseType: !713)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2668, file: !248, line: 137, baseType: !335, size: 32, offset: 192)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2668, file: !248, line: 138, baseType: !335, size: 32, offset: 224)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2668, file: !248, line: 139, baseType: !677, size: 64, offset: 256)
!2679 = !DILocalVariable(name: "def", scope: !2663, file: !1, line: 710, type: !384)
!2680 = !DILocalVariable(name: "phi", scope: !2663, file: !1, line: 711, type: !677)
!2681 = !DILocalVariable(name: "arg", scope: !2682, file: !1, line: 722, type: !384)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !1, line: 721, column: 13)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !1, line: 720, column: 11)
!2684 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 720, column: 11)
!2685 = !DILocalVariable(name: "var", scope: !2686, file: !1, line: 737, type: !384)
!2686 = distinct !DILexicalBlock(scope: !2687, file: !1, line: 736, column: 5)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !1, line: 735, column: 3)
!2688 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 735, column: 3)
!2689 = !DILocalVariable(name: "var", scope: !2690, file: !1, line: 767, type: !384)
!2690 = distinct !DILexicalBlock(scope: !2691, file: !1, line: 766, column: 2)
!2691 = distinct !DILexicalBlock(scope: !2692, file: !1, line: 765, column: 7)
!2692 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 765, column: 7)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !1, line: 764, column: 5)
!2694 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 763, column: 7)
!2695 = !DILocalVariable(name: "var", scope: !2696, file: !1, line: 778, type: !384)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !1, line: 777, column: 2)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !1, line: 776, column: 7)
!2698 = distinct !DILexicalBlock(scope: !2693, file: !1, line: 776, column: 7)
!2699 = !DILocation(line: 666, column: 3, scope: !2618)
!2700 = !DILocation(line: 0, scope: !2618)
!2701 = !DILocation(line: 673, column: 8, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 673, column: 7)
!2703 = !DILocation(line: 673, column: 7, scope: !2618)
!2704 = !DILocation(line: 676, column: 28, scope: !2618)
!2705 = !DILocation(line: 676, column: 3, scope: !2618)
!2706 = !DILocation(line: 679, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 679, column: 3)
!2708 = !DILocation(line: 0, scope: !2707)
!2709 = !DILocation(line: 679, column: 3, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2707, file: !1, line: 679, column: 3)
!2711 = !DILocation(line: 680, column: 5, scope: !2710)
!2712 = !DILocation(line: 680, column: 18, scope: !2710)
!2713 = !DILocation(line: 680, column: 23, scope: !2710)
!2714 = distinct !{!2714, !2706, !2715}
!2715 = !DILocation(line: 680, column: 25, scope: !2707)
!2716 = !DILocation(line: 683, column: 3, scope: !2641)
!2717 = !DILocation(line: 0, scope: !2639)
!2718 = !DILocation(line: 0, scope: !2660)
!2719 = !DILocation(line: 0, scope: !2665)
!2720 = !DILocation(line: 0, scope: !2663)
!2721 = !DILocation(line: 0, scope: !2682)
!2722 = !DILocation(line: 0, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2639, file: !1, line: 727, column: 7)
!2724 = !DILocation(line: 0, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2723, file: !1, line: 727, column: 7)
!2726 = !DILocation(line: 683, column: 3, scope: !2640)
!2727 = !DILocation(line: 0, scope: !2641)
!2728 = !DILocation(line: 685, column: 7, scope: !2639)
!2729 = !DILocation(line: 687, column: 7, scope: !2639)
!2730 = !DILocation(line: 688, column: 7, scope: !2639)
!2731 = !DILocation(line: 691, column: 18, scope: !2660)
!2732 = !DILocation(line: 691, column: 12, scope: !2660)
!2733 = !DILocation(line: 691, column: 38, scope: !2659)
!2734 = !DILocation(line: 691, column: 37, scope: !2659)
!2735 = !DILocation(line: 691, column: 7, scope: !2660)
!2736 = !DILocation(line: 693, column: 18, scope: !2658)
!2737 = !DILocation(line: 0, scope: !2658)
!2738 = !DILocation(line: 694, column: 13, scope: !2658)
!2739 = !DILocation(line: 696, column: 8, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 696, column: 8)
!2741 = !DILocation(line: 696, column: 8, scope: !2658)
!2742 = !DILocation(line: 699, column: 8, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 699, column: 8)
!2744 = !DILocation(line: 699, column: 8, scope: !2658)
!2745 = !DILocation(line: 700, column: 6, scope: !2743)
!2746 = !DILocation(line: 700, column: 20, scope: !2743)
!2747 = !DILocation(line: 702, column: 9, scope: !2748)
!2748 = distinct !DILexicalBlock(scope: !2658, file: !1, line: 702, column: 4)
!2749 = !DILocation(line: 0, scope: !2748)
!2750 = !DILocation(line: 702, column: 20, scope: !2751)
!2751 = distinct !DILexicalBlock(scope: !2748, file: !1, line: 702, column: 4)
!2752 = !DILocation(line: 702, column: 18, scope: !2751)
!2753 = !DILocation(line: 702, column: 4, scope: !2748)
!2754 = !DILocation(line: 703, column: 41, scope: !2751)
!2755 = !DILocation(line: 703, column: 57, scope: !2751)
!2756 = !DILocation(line: 703, column: 26, scope: !2751)
!2757 = !DILocation(line: 703, column: 6, scope: !2751)
!2758 = !DILocation(line: 702, column: 44, scope: !2751)
!2759 = !DILocation(line: 702, column: 4, scope: !2751)
!2760 = distinct !{!2760, !2753, !2761}
!2761 = !DILocation(line: 703, column: 65, scope: !2748)
!2762 = !DILocation(line: 691, column: 55, scope: !2659)
!2763 = !DILocation(line: 691, column: 7, scope: !2659)
!2764 = distinct !{!2764, !2735, !2765}
!2765 = !DILocation(line: 704, column: 2, scope: !2660)
!2766 = !DILocation(line: 706, column: 18, scope: !2665)
!2767 = !DILocation(line: 706, column: 12, scope: !2665)
!2768 = !DILocation(line: 706, column: 40, scope: !2664)
!2769 = !DILocation(line: 706, column: 39, scope: !2664)
!2770 = !DILocation(line: 706, column: 7, scope: !2665)
!2771 = !DILocation(line: 709, column: 11, scope: !2663)
!2772 = !DILocation(line: 710, column: 4, scope: !2663)
!2773 = !DILocation(line: 711, column: 17, scope: !2663)
!2774 = !DILocation(line: 714, column: 23, scope: !2775)
!2775 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 714, column: 8)
!2776 = !DILocation(line: 714, column: 8, scope: !2775)
!2777 = !DILocation(line: 714, column: 8, scope: !2663)
!2778 = !DILocation(line: 717, column: 10, scope: !2663)
!2779 = !DILocation(line: 717, column: 8, scope: !2663)
!2780 = !DILocation(line: 718, column: 4, scope: !2663)
!2781 = !DILocation(line: 720, column: 11, scope: !2684)
!2782 = !DILocation(line: 0, scope: !2684)
!2783 = !DILocation(line: 720, column: 11, scope: !2683)
!2784 = !DILocation(line: 722, column: 8, scope: !2682)
!2785 = !DILocation(line: 722, column: 19, scope: !2682)
!2786 = !DILocation(line: 722, column: 13, scope: !2682)
!2787 = !DILocation(line: 723, column: 8, scope: !2682)
!2788 = !DILocation(line: 724, column: 13, scope: !2683)
!2789 = distinct !{!2789, !2781, !2790}
!2790 = !DILocation(line: 724, column: 13, scope: !2684)
!2791 = !DILocation(line: 725, column: 9, scope: !2664)
!2792 = !DILocation(line: 706, column: 57, scope: !2664)
!2793 = !DILocation(line: 706, column: 7, scope: !2664)
!2794 = distinct !{!2794, !2770, !2795}
!2795 = !DILocation(line: 725, column: 9, scope: !2665)
!2796 = !DILocation(line: 727, column: 7, scope: !2723)
!2797 = !DILocation(line: 727, column: 7, scope: !2725)
!2798 = !DILocation(line: 728, column: 6, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2725, file: !1, line: 728, column: 6)
!2800 = !DILocation(line: 728, column: 9, scope: !2799)
!2801 = !DILocation(line: 728, column: 6, scope: !2725)
!2802 = !DILocation(line: 729, column: 4, scope: !2799)
!2803 = !DILocation(line: 729, column: 30, scope: !2799)
!2804 = distinct !{!2804, !2796, !2805}
!2805 = !DILocation(line: 729, column: 32, scope: !2723)
!2806 = !DILocation(line: 730, column: 5, scope: !2640)
!2807 = !DILocation(line: 0, scope: !2640)
!2808 = distinct !{!2808, !2716, !2809}
!2809 = !DILocation(line: 730, column: 5, scope: !2641)
!2810 = !DILocation(line: 732, column: 9, scope: !2618)
!2811 = !DILocation(line: 732, column: 37, scope: !2618)
!2812 = !DILocation(line: 735, column: 22, scope: !2688)
!2813 = !DILocation(line: 735, column: 8, scope: !2688)
!2814 = !DILocation(line: 668, column: 10, scope: !2618)
!2815 = !DILocation(line: 0, scope: !2688)
!2816 = !DILocation(line: 735, column: 35, scope: !2687)
!2817 = !DILocation(line: 735, column: 3, scope: !2688)
!2818 = !DILocation(line: 737, column: 18, scope: !2686)
!2819 = !DILocation(line: 0, scope: !2686)
!2820 = !DILocation(line: 739, column: 11, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2686, file: !1, line: 739, column: 11)
!2822 = !DILocation(line: 739, column: 27, scope: !2821)
!2823 = !DILocation(line: 740, column: 4, scope: !2821)
!2824 = !DILocation(line: 740, column: 16, scope: !2821)
!2825 = !DILocation(line: 740, column: 14, scope: !2821)
!2826 = !DILocation(line: 741, column: 8, scope: !2821)
!2827 = !DILocation(line: 741, column: 17, scope: !2821)
!2828 = !DILocation(line: 741, column: 12, scope: !2821)
!2829 = !DILocation(line: 739, column: 11, scope: !2686)
!2830 = !DILocation(line: 755, column: 16, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 755, column: 16)
!2832 = !DILocation(line: 743, column: 8, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2834, file: !1, line: 743, column: 8)
!2834 = distinct !DILexicalBlock(scope: !2821, file: !1, line: 742, column: 2)
!2835 = !DILocation(line: 743, column: 8, scope: !2834)
!2836 = !DILocation(line: 745, column: 31, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2838, file: !1, line: 745, column: 12)
!2838 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 744, column: 6)
!2839 = !DILocation(line: 745, column: 12, scope: !2838)
!2840 = !DILocation(line: 746, column: 24, scope: !2837)
!2841 = !DILocation(line: 746, column: 3, scope: !2837)
!2842 = !DILocation(line: 747, column: 44, scope: !2838)
!2843 = !DILocation(line: 747, column: 8, scope: !2838)
!2844 = !DILocation(line: 754, column: 2, scope: !2834)
!2845 = !DILocation(line: 751, column: 16, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2833, file: !1, line: 750, column: 6)
!2847 = !DILocation(line: 751, column: 14, scope: !2846)
!2848 = !DILocation(line: 752, column: 8, scope: !2846)
!2849 = distinct !{!2849, !2817, !2850}
!2850 = !DILocation(line: 760, column: 5, scope: !2688)
!2851 = !DILocation(line: 755, column: 32, scope: !2831)
!2852 = !DILocation(line: 756, column: 9, scope: !2831)
!2853 = !DILocation(line: 756, column: 12, scope: !2831)
!2854 = !DILocation(line: 757, column: 9, scope: !2831)
!2855 = !DILocation(line: 757, column: 13, scope: !2831)
!2856 = !DILocation(line: 755, column: 16, scope: !2821)
!2857 = !DILocation(line: 758, column: 2, scope: !2831)
!2858 = !DILocation(line: 758, column: 8, scope: !2831)
!2859 = !DILocation(line: 758, column: 36, scope: !2831)
!2860 = !DILocation(line: 759, column: 15, scope: !2686)
!2861 = !DILocation(line: 760, column: 5, scope: !2687)
!2862 = !DILocation(line: 763, column: 26, scope: !2694)
!2863 = !DILocation(line: 763, column: 7, scope: !2618)
!2864 = !DILocation(line: 765, column: 16, scope: !2692)
!2865 = !DILocation(line: 765, column: 22, scope: !2692)
!2866 = !DILocation(line: 0, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2690, file: !1, line: 769, column: 8)
!2868 = !DILocation(line: 765, column: 12, scope: !2692)
!2869 = !DILocation(line: 0, scope: !2692)
!2870 = !DILocation(line: 765, column: 7, scope: !2692)
!2871 = !DILocation(line: 767, column: 15, scope: !2690)
!2872 = !DILocation(line: 0, scope: !2690)
!2873 = !DILocation(line: 769, column: 8, scope: !2867)
!2874 = !DILocation(line: 769, column: 24, scope: !2867)
!2875 = !DILocation(line: 770, column: 8, scope: !2867)
!2876 = !DILocation(line: 770, column: 11, scope: !2867)
!2877 = !DILocation(line: 771, column: 8, scope: !2867)
!2878 = !DILocation(line: 771, column: 18, scope: !2867)
!2879 = !DILocation(line: 771, column: 33, scope: !2867)
!2880 = !DILocation(line: 772, column: 8, scope: !2867)
!2881 = !DILocation(line: 772, column: 16, scope: !2867)
!2882 = !DILocation(line: 772, column: 11, scope: !2867)
!2883 = !DILocation(line: 769, column: 8, scope: !2690)
!2884 = !DILocation(line: 773, column: 27, scope: !2867)
!2885 = !DILocation(line: 773, column: 6, scope: !2867)
!2886 = !DILocation(line: 765, column: 42, scope: !2691)
!2887 = !DILocation(line: 765, column: 7, scope: !2691)
!2888 = distinct !{!2888, !2870, !2889}
!2889 = !DILocation(line: 774, column: 2, scope: !2692)
!2890 = !DILocation(line: 776, column: 20, scope: !2698)
!2891 = !DILocation(line: 776, column: 26, scope: !2698)
!2892 = !DILocation(line: 776, column: 12, scope: !2698)
!2893 = !DILocation(line: 776, column: 17, scope: !2698)
!2894 = !DILocation(line: 776, column: 39, scope: !2697)
!2895 = !DILocation(line: 776, column: 7, scope: !2698)
!2896 = !DILocation(line: 778, column: 15, scope: !2696)
!2897 = !DILocation(line: 0, scope: !2696)
!2898 = !DILocation(line: 780, column: 8, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2696, file: !1, line: 780, column: 8)
!2900 = !DILocation(line: 780, column: 24, scope: !2899)
!2901 = !DILocation(line: 781, column: 8, scope: !2899)
!2902 = !DILocation(line: 781, column: 11, scope: !2899)
!2903 = !DILocation(line: 782, column: 8, scope: !2899)
!2904 = !DILocation(line: 782, column: 45, scope: !2899)
!2905 = !DILocation(line: 782, column: 11, scope: !2899)
!2906 = !DILocation(line: 780, column: 8, scope: !2696)
!2907 = !DILocation(line: 783, column: 14, scope: !2899)
!2908 = !DILocation(line: 783, column: 12, scope: !2899)
!2909 = !DILocation(line: 783, column: 6, scope: !2899)
!2910 = !DILocation(line: 785, column: 14, scope: !2899)
!2911 = !DILocation(line: 0, scope: !2698)
!2912 = !DILocation(line: 776, column: 7, scope: !2697)
!2913 = distinct !{!2913, !2895, !2914}
!2914 = !DILocation(line: 786, column: 2, scope: !2698)
!2915 = !DILocation(line: 787, column: 7, scope: !2693)
!2916 = !DILocation(line: 788, column: 5, scope: !2693)
!2917 = !DILocation(line: 795, column: 3, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 795, column: 3)
!2919 = !DILocation(line: 0, scope: !2918)
!2920 = !DILocation(line: 795, column: 3, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2918, file: !1, line: 795, column: 3)
!2922 = !DILocation(line: 796, column: 10, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2921, file: !1, line: 796, column: 9)
!2924 = !DILocation(line: 797, column: 2, scope: !2923)
!2925 = !DILocation(line: 797, column: 5, scope: !2923)
!2926 = !DILocation(line: 797, column: 19, scope: !2923)
!2927 = !DILocation(line: 798, column: 2, scope: !2923)
!2928 = !DILocation(line: 798, column: 19, scope: !2923)
!2929 = !DILocation(line: 799, column: 2, scope: !2923)
!2930 = !DILocation(line: 799, column: 13, scope: !2923)
!2931 = !DILocation(line: 799, column: 27, scope: !2923)
!2932 = !DILocation(line: 799, column: 6, scope: !2923)
!2933 = !DILocation(line: 800, column: 2, scope: !2923)
!2934 = !DILocation(line: 800, column: 11, scope: !2923)
!2935 = !DILocation(line: 800, column: 6, scope: !2923)
!2936 = !DILocation(line: 801, column: 2, scope: !2923)
!2937 = !DILocation(line: 801, column: 6, scope: !2923)
!2938 = !DILocation(line: 796, column: 9, scope: !2921)
!2939 = !DILocation(line: 802, column: 7, scope: !2923)
!2940 = distinct !{!2940, !2917, !2941}
!2941 = !DILocation(line: 802, column: 31, scope: !2918)
!2942 = !DILocation(line: 803, column: 32, scope: !2618)
!2943 = !DILocation(line: 803, column: 3, scope: !2618)
!2944 = !DILocation(line: 804, column: 7, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2618, file: !1, line: 804, column: 7)
!2946 = !DILocation(line: 804, column: 17, scope: !2945)
!2947 = !DILocation(line: 804, column: 21, scope: !2945)
!2948 = !DILocation(line: 804, column: 32, scope: !2945)
!2949 = !DILocation(line: 804, column: 7, scope: !2618)
!2950 = !DILocation(line: 806, column: 7, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2945, file: !1, line: 805, column: 5)
!2952 = !DILocation(line: 807, column: 26, scope: !2951)
!2953 = !DILocation(line: 807, column: 37, scope: !2951)
!2954 = !DILocation(line: 807, column: 7, scope: !2951)
!2955 = !DILocation(line: 808, column: 5, scope: !2951)
!2956 = !DILocation(line: 809, column: 1, scope: !2618)
!2957 = distinct !DISubprogram(name: "mark_scope_block_unused", scope: !1, file: !1, line: 395, type: !2958, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2960)
!2958 = !DISubroutineType(types: !2959)
!2959 = !{null, !384}
!2960 = !{!2961, !2962}
!2961 = !DILocalVariable(name: "scope", arg: 1, scope: !2957, file: !1, line: 395, type: !384)
!2962 = !DILocalVariable(name: "t", scope: !2957, file: !1, line: 397, type: !384)
!2963 = !DILocation(line: 0, scope: !2957)
!2964 = !DILocation(line: 398, column: 3, scope: !2957)
!2965 = !DILocation(line: 398, column: 21, scope: !2957)
!2966 = !DILocation(line: 399, column: 10, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 399, column: 7)
!2968 = !DILocation(line: 399, column: 23, scope: !2967)
!2969 = !DILocation(line: 399, column: 8, scope: !2967)
!2970 = !DILocation(line: 399, column: 7, scope: !2957)
!2971 = !DILocation(line: 400, column: 23, scope: !2967)
!2972 = !DILocation(line: 400, column: 5, scope: !2967)
!2973 = !DILocation(line: 401, column: 12, scope: !2974)
!2974 = distinct !DILexicalBlock(scope: !2957, file: !1, line: 401, column: 3)
!2975 = !DILocation(line: 401, column: 8, scope: !2974)
!2976 = !DILocation(line: 0, scope: !2974)
!2977 = !DILocation(line: 401, column: 3, scope: !2974)
!2978 = !DILocation(line: 402, column: 5, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 401, column: 3)
!2980 = !DILocation(line: 401, column: 45, scope: !2979)
!2981 = !DILocation(line: 401, column: 3, scope: !2979)
!2982 = distinct !{!2982, !2977, !2983}
!2983 = !DILocation(line: 402, column: 31, scope: !2974)
!2984 = !DILocation(line: 403, column: 1, scope: !2957)
!2985 = distinct !DISubprogram(name: "first_referenced_var", scope: !2986, file: !2986, line: 105, type: !2987, scopeLine: 106, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2990)
!2986 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!384, !2989}
!2989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2990 = !{!2991}
!2991 = !DILocalVariable(name: "iter", arg: 1, scope: !2985, file: !2986, line: 105, type: !2989)
!2992 = !DILocation(line: 0, scope: !2985)
!2993 = !DILocation(line: 107, column: 44, scope: !2985)
!2994 = !DILocation(line: 108, column: 33, scope: !2985)
!2995 = !DILocation(line: 108, column: 9, scope: !2985)
!2996 = !DILocation(line: 107, column: 17, scope: !2985)
!2997 = !DILocation(line: 107, column: 10, scope: !2985)
!2998 = !DILocation(line: 107, column: 3, scope: !2985)
!2999 = distinct !DISubprogram(name: "end_referenced_vars_p", scope: !2986, file: !2986, line: 115, type: !3000, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3004)
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!334, !3002}
!3002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3003, size: 64)
!3003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2626)
!3004 = !{!3005}
!3005 = !DILocalVariable(name: "iter", arg: 1, scope: !2999, file: !2986, line: 115, type: !3002)
!3006 = !DILocation(line: 0, scope: !2999)
!3007 = !DILocation(line: 117, column: 29, scope: !2999)
!3008 = !DILocation(line: 117, column: 10, scope: !2999)
!3009 = !DILocation(line: 117, column: 3, scope: !2999)
!3010 = distinct !DISubprogram(name: "var_ann", scope: !2986, file: !2986, line: 132, type: !3011, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3016)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{!2256, !3013}
!3013 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !385, line: 59, baseType: !3014)
!3014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3015, size: 64)
!3015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!3016 = !{!3017, !3018}
!3017 = !DILocalVariable(name: "t", arg: 1, scope: !3010, file: !2986, line: 132, type: !3013)
!3018 = !DILocalVariable(name: "p", scope: !3010, file: !2986, line: 134, type: !3019)
!3019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3020, size: 64)
!3020 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!3021 = !DILocation(line: 0, scope: !3010)
!3022 = !DILocation(line: 134, column: 24, scope: !3010)
!3023 = !DILocation(line: 135, column: 10, scope: !3010)
!3024 = !DILocation(line: 135, column: 14, scope: !3010)
!3025 = !DILocation(line: 135, column: 3, scope: !3010)
!3026 = distinct !DISubprogram(name: "next_referenced_var", scope: !2986, file: !2986, line: 124, type: !2987, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3027)
!3027 = !{!3028}
!3028 = !DILocalVariable(name: "iter", arg: 1, scope: !3026, file: !2986, line: 124, type: !2989)
!3029 = !DILocation(line: 0, scope: !3026)
!3030 = !DILocation(line: 126, column: 43, scope: !3026)
!3031 = !DILocation(line: 126, column: 17, scope: !3026)
!3032 = !DILocation(line: 126, column: 10, scope: !3026)
!3033 = !DILocation(line: 126, column: 3, scope: !3026)
!3034 = distinct !DISubprogram(name: "gsi_start_bb", scope: !255, file: !255, line: 4418, type: !3035, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3037)
!3035 = !DISubroutineType(types: !3036)
!3036 = !{!2642, !640}
!3037 = !{!3038, !3039, !3040}
!3038 = !DILocalVariable(name: "bb", arg: 1, scope: !3034, file: !255, line: 4418, type: !640)
!3039 = !DILocalVariable(name: "i", scope: !3034, file: !255, line: 4420, type: !2642)
!3040 = !DILocalVariable(name: "seq", scope: !3034, file: !255, line: 4421, type: !667)
!3041 = !DILocation(line: 0, scope: !3034)
!3042 = !DILocation(line: 4420, column: 24, scope: !3034)
!3043 = !DILocation(line: 4423, column: 9, scope: !3034)
!3044 = !DILocation(line: 4424, column: 11, scope: !3034)
!3045 = !DILocation(line: 4424, column: 5, scope: !3034)
!3046 = !DILocation(line: 4424, column: 9, scope: !3034)
!3047 = !DILocation(line: 4425, column: 5, scope: !3034)
!3048 = !DILocation(line: 4425, column: 9, scope: !3034)
!3049 = !DILocation(line: 4426, column: 5, scope: !3034)
!3050 = !DILocation(line: 4426, column: 8, scope: !3034)
!3051 = !DILocation(line: 4429, column: 1, scope: !3034)
!3052 = distinct !DISubprogram(name: "gsi_end_p", scope: !255, file: !255, line: 4467, type: !3053, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3055)
!3053 = !DISubroutineType(types: !3054)
!3054 = !{!334, !2642}
!3055 = !{!3056}
!3056 = !DILocalVariable(name: "i", arg: 1, scope: !3052, file: !255, line: 4467, type: !2642)
!3057 = !DILocation(line: 4467, column: 33, scope: !3052)
!3058 = !DILocation(line: 4469, column: 12, scope: !3052)
!3059 = !DILocation(line: 4469, column: 16, scope: !3052)
!3060 = !DILocation(line: 4469, column: 10, scope: !3052)
!3061 = !DILocation(line: 4469, column: 3, scope: !3052)
!3062 = distinct !DISubprogram(name: "gsi_stmt", scope: !255, file: !255, line: 4501, type: !3063, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3065)
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!677, !2642}
!3065 = !{!3066}
!3066 = !DILocalVariable(name: "i", arg: 1, scope: !3062, file: !255, line: 4501, type: !2642)
!3067 = !DILocation(line: 4501, column: 32, scope: !3062)
!3068 = !DILocation(line: 4503, column: 12, scope: !3062)
!3069 = !DILocation(line: 4503, column: 17, scope: !3062)
!3070 = !DILocation(line: 4503, column: 3, scope: !3062)
!3071 = distinct !DISubprogram(name: "gimple_block", scope: !255, file: !255, line: 1121, type: !3072, scopeLine: 1122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3075)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{!384, !3074}
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !385, line: 60, baseType: !1548)
!3075 = !{!3076}
!3076 = !DILocalVariable(name: "g", arg: 1, scope: !3071, file: !255, line: 1121, type: !3074)
!3077 = !DILocation(line: 0, scope: !3071)
!3078 = !DILocation(line: 1123, column: 20, scope: !3071)
!3079 = !DILocation(line: 1123, column: 3, scope: !3071)
!3080 = distinct !DISubprogram(name: "is_gimple_debug", scope: !255, file: !255, line: 3249, type: !3081, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3083)
!3081 = !DISubroutineType(types: !3082)
!3082 = !{!334, !3074}
!3083 = !{!3084}
!3084 = !DILocalVariable(name: "gs", arg: 1, scope: !3080, file: !255, line: 3249, type: !3074)
!3085 = !DILocation(line: 0, scope: !3080)
!3086 = !DILocation(line: 3251, column: 10, scope: !3080)
!3087 = !DILocation(line: 3251, column: 27, scope: !3080)
!3088 = !DILocation(line: 3251, column: 3, scope: !3080)
!3089 = distinct !DISubprogram(name: "gimple_num_ops", scope: !255, file: !255, line: 1596, type: !3090, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3092)
!3090 = !DISubroutineType(types: !3091)
!3091 = !{!5, !3074}
!3092 = !{!3093}
!3093 = !DILocalVariable(name: "gs", arg: 1, scope: !3089, file: !255, line: 1596, type: !3074)
!3094 = !DILocation(line: 0, scope: !3089)
!3095 = !DILocation(line: 1598, column: 21, scope: !3089)
!3096 = !DILocation(line: 1598, column: 3, scope: !3089)
!3097 = distinct !DISubprogram(name: "mark_all_vars_used", scope: !1, file: !1, line: 569, type: !3098, scopeLine: 570, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3100)
!3098 = !DISubroutineType(types: !3099)
!3099 = !{null, !711, !339}
!3100 = !{!3101, !3102}
!3101 = !DILocalVariable(name: "expr_p", arg: 1, scope: !3097, file: !1, line: 569, type: !711)
!3102 = !DILocalVariable(name: "data", arg: 2, scope: !3097, file: !1, line: 569, type: !339)
!3103 = !DILocation(line: 0, scope: !3097)
!3104 = !DILocation(line: 571, column: 3, scope: !3097)
!3105 = !DILocation(line: 572, column: 1, scope: !3097)
!3106 = distinct !DISubprogram(name: "gimple_op_ptr", scope: !255, file: !255, line: 1647, type: !3107, scopeLine: 1648, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3109)
!3107 = !DISubroutineType(types: !3108)
!3108 = !{!711, !3074, !5}
!3109 = !{!3110, !3111}
!3110 = !DILocalVariable(name: "gs", arg: 1, scope: !3106, file: !255, line: 1647, type: !3074)
!3111 = !DILocalVariable(name: "i", arg: 2, scope: !3106, file: !255, line: 1647, type: !5)
!3112 = !DILocation(line: 0, scope: !3106)
!3113 = !DILocation(line: 1649, column: 7, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3106, file: !255, line: 1649, column: 7)
!3115 = !DILocation(line: 1649, column: 7, scope: !3106)
!3116 = !DILocation(line: 1654, column: 14, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3114, file: !255, line: 1650, column: 5)
!3118 = !DILocation(line: 1654, column: 50, scope: !3117)
!3119 = !DILocation(line: 1654, column: 7, scope: !3117)
!3120 = !DILocation(line: 0, scope: !3114)
!3121 = !DILocation(line: 1658, column: 1, scope: !3106)
!3122 = distinct !DISubprogram(name: "gsi_next", scope: !255, file: !255, line: 4485, type: !3123, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3126)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{null, !3125}
!3125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!3126 = !{!3127}
!3127 = !DILocalVariable(name: "i", arg: 1, scope: !3122, file: !255, line: 4485, type: !3125)
!3128 = !DILocation(line: 0, scope: !3122)
!3129 = !DILocation(line: 4487, column: 15, scope: !3122)
!3130 = !DILocation(line: 4487, column: 20, scope: !3122)
!3131 = !DILocation(line: 4487, column: 10, scope: !3122)
!3132 = !DILocation(line: 4488, column: 1, scope: !3122)
!3133 = distinct !DISubprogram(name: "is_global_var", scope: !2986, file: !2986, line: 575, type: !3134, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3136)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!334, !3013}
!3136 = !{!3137}
!3137 = !DILocalVariable(name: "t", arg: 1, scope: !3133, file: !2986, line: 575, type: !3013)
!3138 = !DILocation(line: 0, scope: !3133)
!3139 = !DILocation(line: 577, column: 11, scope: !3133)
!3140 = !DILocation(line: 577, column: 27, scope: !3133)
!3141 = !DILocation(line: 577, column: 30, scope: !3133)
!3142 = !DILocation(line: 577, column: 3, scope: !3133)
!3143 = distinct !DISubprogram(name: "gimple_phi_result", scope: !255, file: !255, line: 3071, type: !3072, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3144)
!3144 = !{!3145}
!3145 = !DILocalVariable(name: "gs", arg: 1, scope: !3143, file: !255, line: 3071, type: !3074)
!3146 = !DILocation(line: 0, scope: !3143)
!3147 = !DILocation(line: 3074, column: 25, scope: !3143)
!3148 = !DILocation(line: 3074, column: 3, scope: !3143)
!3149 = distinct !DISubprogram(name: "op_iter_init_phiuse", scope: !2986, file: !2986, line: 910, type: !3150, scopeLine: 911, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3153)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{!1550, !3152, !677, !335}
!3152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!3153 = !{!3154, !3155, !3156, !3157, !3158}
!3154 = !DILocalVariable(name: "ptr", arg: 1, scope: !3149, file: !2986, line: 910, type: !3152)
!3155 = !DILocalVariable(name: "phi", arg: 2, scope: !3149, file: !2986, line: 910, type: !677)
!3156 = !DILocalVariable(name: "flags", arg: 3, scope: !3149, file: !2986, line: 910, type: !335)
!3157 = !DILocalVariable(name: "phi_def", scope: !3149, file: !2986, line: 912, type: !384)
!3158 = !DILocalVariable(name: "comp", scope: !3149, file: !2986, line: 913, type: !335)
!3159 = !DILocation(line: 0, scope: !3149)
!3160 = !DILocation(line: 912, column: 18, scope: !3149)
!3161 = !DILocation(line: 915, column: 3, scope: !3149)
!3162 = !DILocation(line: 916, column: 8, scope: !3149)
!3163 = !DILocation(line: 916, column: 13, scope: !3149)
!3164 = !DILocation(line: 920, column: 11, scope: !3149)
!3165 = !DILocation(line: 923, column: 7, scope: !3149)
!3166 = !DILocation(line: 926, column: 7, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !2986, line: 924, column: 5)
!3168 = distinct !DILexicalBlock(scope: !3149, file: !2986, line: 923, column: 7)
!3169 = !DILocation(line: 929, column: 8, scope: !3149)
!3170 = !DILocation(line: 929, column: 17, scope: !3149)
!3171 = !DILocation(line: 930, column: 18, scope: !3149)
!3172 = !DILocation(line: 930, column: 8, scope: !3149)
!3173 = !DILocation(line: 930, column: 16, scope: !3149)
!3174 = !DILocation(line: 931, column: 8, scope: !3149)
!3175 = !DILocation(line: 931, column: 18, scope: !3149)
!3176 = !DILocation(line: 932, column: 10, scope: !3149)
!3177 = !DILocation(line: 932, column: 3, scope: !3149)
!3178 = !DILocation(line: 933, column: 1, scope: !3149)
!3179 = distinct !DISubprogram(name: "op_iter_done", scope: !2986, file: !2986, line: 652, type: !3180, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3184)
!3180 = !DISubroutineType(types: !3181)
!3181 = !{!334, !3182}
!3182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3183, size: 64)
!3183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2667)
!3184 = !{!3185}
!3185 = !DILocalVariable(name: "ptr", arg: 1, scope: !3179, file: !2986, line: 652, type: !3182)
!3186 = !DILocation(line: 0, scope: !3179)
!3187 = !DILocation(line: 654, column: 15, scope: !3179)
!3188 = !DILocation(line: 654, column: 3, scope: !3179)
!3189 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2986, file: !2986, line: 427, type: !3190, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3192)
!3190 = !DISubroutineType(types: !3191)
!3191 = !{!384, !1550}
!3192 = !{!3193}
!3193 = !DILocalVariable(name: "use", arg: 1, scope: !3189, file: !2986, line: 427, type: !1550)
!3194 = !DILocation(line: 0, scope: !3189)
!3195 = !DILocation(line: 429, column: 17, scope: !3189)
!3196 = !DILocation(line: 429, column: 10, scope: !3189)
!3197 = !DILocation(line: 429, column: 3, scope: !3189)
!3198 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2986, file: !2986, line: 659, type: !3199, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3201)
!3199 = !DISubroutineType(types: !3200)
!3200 = !{!1550, !3152}
!3201 = !{!3202, !3203}
!3202 = !DILocalVariable(name: "ptr", arg: 1, scope: !3198, file: !2986, line: 659, type: !3152)
!3203 = !DILocalVariable(name: "use_p", scope: !3198, file: !2986, line: 661, type: !1550)
!3204 = !DILocation(line: 0, scope: !3198)
!3205 = !DILocation(line: 665, column: 12, scope: !3206)
!3206 = distinct !DILexicalBlock(scope: !3198, file: !2986, line: 665, column: 7)
!3207 = !DILocation(line: 665, column: 7, scope: !3206)
!3208 = !DILocation(line: 665, column: 7, scope: !3198)
!3209 = !DILocation(line: 667, column: 15, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3206, file: !2986, line: 666, column: 5)
!3211 = !DILocation(line: 668, column: 30, scope: !3210)
!3212 = !DILocation(line: 668, column: 17, scope: !3210)
!3213 = !DILocation(line: 669, column: 7, scope: !3210)
!3214 = !DILocation(line: 671, column: 12, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3198, file: !2986, line: 671, column: 7)
!3216 = !DILocation(line: 671, column: 25, scope: !3215)
!3217 = !DILocation(line: 671, column: 18, scope: !3215)
!3218 = !DILocation(line: 671, column: 7, scope: !3198)
!3219 = !DILocation(line: 673, column: 14, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !2986, line: 672, column: 5)
!3221 = !DILocation(line: 673, column: 7, scope: !3220)
!3222 = !DILocation(line: 675, column: 8, scope: !3198)
!3223 = !DILocation(line: 675, column: 13, scope: !3198)
!3224 = !DILocation(line: 676, column: 3, scope: !3198)
!3225 = !DILocation(line: 677, column: 1, scope: !3198)
!3226 = distinct !DISubprogram(name: "ei_start_1", scope: !200, file: !200, line: 696, type: !3227, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3229)
!3227 = !DISubroutineType(types: !3228)
!3228 = !{!2650, !2655}
!3229 = !{!3230, !3231}
!3230 = !DILocalVariable(name: "ev", arg: 1, scope: !3226, file: !200, line: 696, type: !2655)
!3231 = !DILocalVariable(name: "i", scope: !3226, file: !200, line: 698, type: !2650)
!3232 = !DILocation(line: 0, scope: !3226)
!3233 = !DILocation(line: 700, column: 5, scope: !3226)
!3234 = !DILocation(line: 700, column: 11, scope: !3226)
!3235 = !DILocation(line: 701, column: 5, scope: !3226)
!3236 = !DILocation(line: 701, column: 15, scope: !3226)
!3237 = !DILocation(line: 703, column: 3, scope: !3226)
!3238 = distinct !DISubprogram(name: "ei_cond", scope: !200, file: !200, line: 771, type: !3239, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3242)
!3239 = !DISubroutineType(types: !3240)
!3240 = !{!334, !2650, !3241}
!3241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "ei", arg: 1, scope: !3238, file: !200, line: 771, type: !2650)
!3244 = !DILocalVariable(name: "p", arg: 2, scope: !3238, file: !200, line: 771, type: !3241)
!3245 = !DILocation(line: 0, scope: !3238)
!3246 = !DILocation(line: 773, column: 8, scope: !3247)
!3247 = distinct !DILexicalBlock(scope: !3238, file: !200, line: 773, column: 7)
!3248 = !DILocation(line: 773, column: 7, scope: !3238)
!3249 = !DILocation(line: 775, column: 12, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3247, file: !200, line: 774, column: 5)
!3251 = !DILocation(line: 776, column: 7, scope: !3250)
!3252 = !DILocation(line: 781, column: 7, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3247, file: !200, line: 779, column: 5)
!3254 = !DILocation(line: 0, scope: !3247)
!3255 = !DILocation(line: 783, column: 1, scope: !3238)
!3256 = distinct !DISubprogram(name: "ei_next", scope: !200, file: !200, line: 736, type: !3257, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3260)
!3257 = !DISubroutineType(types: !3258)
!3258 = !{null, !3259}
!3259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!3260 = !{!3261}
!3261 = !DILocalVariable(name: "i", arg: 1, scope: !3256, file: !200, line: 736, type: !3259)
!3262 = !DILocation(line: 0, scope: !3256)
!3263 = !DILocation(line: 738, column: 3, scope: !3256)
!3264 = !DILocation(line: 739, column: 11, scope: !3256)
!3265 = !DILocation(line: 740, column: 1, scope: !3256)
!3266 = distinct !DISubprogram(name: "remove_unused_scope_block_p", scope: !1, file: !1, line: 419, type: !3267, scopeLine: 420, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3269)
!3267 = !DISubroutineType(types: !3268)
!3268 = !{!334, !384}
!3269 = !{!3270, !3271, !3272, !3273, !3274, !3275, !3276, !3283, !3284}
!3270 = !DILocalVariable(name: "scope", arg: 1, scope: !3266, file: !1, line: 419, type: !384)
!3271 = !DILocalVariable(name: "t", scope: !3266, file: !1, line: 421, type: !711)
!3272 = !DILocalVariable(name: "next", scope: !3266, file: !1, line: 421, type: !711)
!3273 = !DILocalVariable(name: "unused", scope: !3266, file: !1, line: 422, type: !334)
!3274 = !DILocalVariable(name: "ann", scope: !3266, file: !1, line: 423, type: !2256)
!3275 = !DILocalVariable(name: "nsubblocks", scope: !3266, file: !1, line: 424, type: !335)
!3276 = !DILocalVariable(name: "next", scope: !3277, file: !1, line: 492, type: !384)
!3277 = distinct !DILexicalBlock(scope: !3278, file: !1, line: 491, column: 4)
!3278 = distinct !DILexicalBlock(scope: !3279, file: !1, line: 490, column: 6)
!3279 = distinct !DILexicalBlock(scope: !3280, file: !1, line: 489, column: 7)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !1, line: 488, column: 9)
!3281 = distinct !DILexicalBlock(scope: !3282, file: !1, line: 487, column: 3)
!3282 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 487, column: 3)
!3283 = !DILocalVariable(name: "supercontext", scope: !3277, file: !1, line: 493, type: !384)
!3284 = !DILocalVariable(name: "ao", scope: !3285, file: !1, line: 535, type: !384)
!3285 = distinct !DILexicalBlock(scope: !3286, file: !1, line: 534, column: 3)
!3286 = distinct !DILexicalBlock(scope: !3287, file: !1, line: 533, column: 12)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !1, line: 529, column: 6)
!3288 = distinct !DILexicalBlock(scope: !3289, file: !1, line: 527, column: 13)
!3289 = distinct !DILexicalBlock(scope: !3290, file: !1, line: 524, column: 13)
!3290 = distinct !DILexicalBlock(scope: !3291, file: !1, line: 519, column: 13)
!3291 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 516, column: 8)
!3292 = !DILocation(line: 0, scope: !3266)
!3293 = !DILocation(line: 422, column: 18, scope: !3266)
!3294 = !DILocation(line: 422, column: 17, scope: !3266)
!3295 = !DILocation(line: 426, column: 13, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3266, file: !1, line: 426, column: 3)
!3297 = !DILocation(line: 426, column: 8, scope: !3296)
!3298 = !DILocation(line: 0, scope: !3296)
!3299 = !DILocation(line: 426, column: 33, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3296, file: !1, line: 426, column: 3)
!3301 = !DILocation(line: 426, column: 3, scope: !3296)
!3302 = !DILocation(line: 428, column: 15, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3300, file: !1, line: 427, column: 5)
!3304 = !DILocation(line: 436, column: 11, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3303, file: !1, line: 436, column: 11)
!3306 = !DILocation(line: 436, column: 26, scope: !3305)
!3307 = !DILocation(line: 436, column: 11, scope: !3303)
!3308 = !DILocation(line: 446, column: 31, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !1, line: 446, column: 16)
!3310 = !DILocation(line: 446, column: 43, scope: !3309)
!3311 = !DILocation(line: 0, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3309, file: !1, line: 450, column: 16)
!3313 = !DILocation(line: 450, column: 16, scope: !3312)
!3314 = !DILocation(line: 446, column: 46, scope: !3309)
!3315 = !DILocation(line: 446, column: 16, scope: !3305)
!3316 = !DILocation(line: 450, column: 16, scope: !3309)
!3317 = !DILocation(line: 452, column: 9, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3312, file: !1, line: 451, column: 2)
!3319 = !DILocation(line: 452, column: 7, scope: !3318)
!3320 = !DILocation(line: 454, column: 2, scope: !3318)
!3321 = !DILocation(line: 460, column: 23, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3312, file: !1, line: 460, column: 16)
!3323 = !DILocation(line: 460, column: 37, scope: !3322)
!3324 = !DILocation(line: 461, column: 3, scope: !3322)
!3325 = !DILocation(line: 461, column: 11, scope: !3322)
!3326 = !DILocation(line: 461, column: 6, scope: !3322)
!3327 = !DILocation(line: 460, column: 16, scope: !3312)
!3328 = !DILocation(line: 477, column: 16, scope: !3329)
!3329 = distinct !DILexicalBlock(scope: !3322, file: !1, line: 477, column: 16)
!3330 = !DILocation(line: 478, column: 9, scope: !3329)
!3331 = !DILocation(line: 482, column: 9, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3329, file: !1, line: 481, column: 2)
!3333 = !DILocation(line: 482, column: 7, scope: !3332)
!3334 = !DILocation(line: 0, scope: !3305)
!3335 = !DILocation(line: 428, column: 12, scope: !3303)
!3336 = !DILocation(line: 426, column: 3, scope: !3300)
!3337 = distinct !{!3337, !3301, !3338}
!3338 = !DILocation(line: 485, column: 5, scope: !3296)
!3339 = !DILocation(line: 487, column: 13, scope: !3282)
!3340 = !DILocation(line: 487, column: 8, scope: !3282)
!3341 = !DILocation(line: 0, scope: !3282)
!3342 = !DILocation(line: 487, column: 38, scope: !3281)
!3343 = !DILocation(line: 487, column: 3, scope: !3282)
!3344 = !DILocation(line: 488, column: 9, scope: !3280)
!3345 = !DILocation(line: 0, scope: !3280)
!3346 = !DILocation(line: 488, column: 9, scope: !3281)
!3347 = !DILocation(line: 490, column: 6, scope: !3278)
!3348 = !DILocation(line: 0, scope: !3278)
!3349 = !DILocation(line: 490, column: 6, scope: !3279)
!3350 = !DILocation(line: 493, column: 26, scope: !3277)
!3351 = !DILocation(line: 495, column: 9, scope: !3277)
!3352 = !DILocation(line: 496, column: 6, scope: !3277)
!3353 = !DILocation(line: 496, column: 13, scope: !3277)
!3354 = !DILocation(line: 498, column: 10, scope: !3355)
!3355 = distinct !DILexicalBlock(scope: !3277, file: !1, line: 497, column: 8)
!3356 = !DILocation(line: 498, column: 34, scope: !3355)
!3357 = !DILocation(line: 499, column: 15, scope: !3355)
!3358 = !DILocation(line: 0, scope: !3277)
!3359 = distinct !{!3359, !3352, !3360}
!3360 = !DILocation(line: 500, column: 8, scope: !3277)
!3361 = !DILocation(line: 501, column: 23, scope: !3277)
!3362 = !DILocation(line: 502, column: 6, scope: !3277)
!3363 = !DILocation(line: 502, column: 30, scope: !3277)
!3364 = !DILocation(line: 503, column: 11, scope: !3277)
!3365 = !DILocation(line: 504, column: 17, scope: !3277)
!3366 = !DILocation(line: 505, column: 4, scope: !3277)
!3367 = !DILocation(line: 507, column: 7, scope: !3278)
!3368 = !DILocation(line: 511, column: 14, scope: !3369)
!3369 = distinct !DILexicalBlock(scope: !3280, file: !1, line: 510, column: 7)
!3370 = !DILocation(line: 512, column: 13, scope: !3369)
!3371 = !DILocation(line: 487, column: 3, scope: !3281)
!3372 = distinct !{!3372, !3343, !3373}
!3373 = !DILocation(line: 513, column: 7, scope: !3282)
!3374 = !DILocation(line: 516, column: 9, scope: !3291)
!3375 = !DILocation(line: 516, column: 8, scope: !3266)
!3376 = !DILocation(line: 519, column: 14, scope: !3290)
!3377 = !DILocation(line: 520, column: 13, scope: !3290)
!3378 = !DILocation(line: 520, column: 16, scope: !3290)
!3379 = !DILocation(line: 520, column: 55, scope: !3290)
!3380 = !DILocation(line: 519, column: 13, scope: !3291)
!3381 = !DILocation(line: 524, column: 14, scope: !3289)
!3382 = !DILocation(line: 524, column: 13, scope: !3290)
!3383 = !DILocation(line: 527, column: 13, scope: !3288)
!3384 = !DILocation(line: 528, column: 6, scope: !3288)
!3385 = !DILocation(line: 533, column: 12, scope: !3286)
!3386 = !DILocation(line: 533, column: 12, scope: !3287)
!3387 = !DILocation(line: 537, column: 5, scope: !3285)
!3388 = !DILocation(line: 0, scope: !3285)
!3389 = !DILocation(line: 538, column: 5, scope: !3285)
!3390 = !DILocation(line: 538, column: 8, scope: !3285)
!3391 = !DILocation(line: 538, column: 23, scope: !3285)
!3392 = !DILocation(line: 539, column: 5, scope: !3285)
!3393 = !DILocation(line: 539, column: 8, scope: !3285)
!3394 = !DILocation(line: 539, column: 35, scope: !3285)
!3395 = distinct !{!3395, !3387, !3396}
!3396 = !DILocation(line: 540, column: 12, scope: !3285)
!3397 = !DILocation(line: 542, column: 27, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3285, file: !1, line: 541, column: 9)
!3399 = !DILocation(line: 543, column: 9, scope: !3398)
!3400 = !DILocation(line: 543, column: 12, scope: !3398)
!3401 = !DILocation(line: 544, column: 9, scope: !3398)
!3402 = !DILocation(line: 544, column: 44, scope: !3398)
!3403 = !DILocation(line: 544, column: 12, scope: !3398)
!3404 = !DILocation(line: 541, column: 9, scope: !3285)
!3405 = !DILocation(line: 548, column: 13, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3288, file: !1, line: 548, column: 13)
!3407 = !DILocation(line: 548, column: 32, scope: !3406)
!3408 = !DILocation(line: 548, column: 35, scope: !3406)
!3409 = !DILocation(line: 548, column: 13, scope: !3288)
!3410 = !DILocation(line: 554, column: 13, scope: !3411)
!3411 = distinct !DILexicalBlock(scope: !3406, file: !1, line: 554, column: 13)
!3412 = !DILocation(line: 554, column: 13, scope: !3406)
!3413 = !DILocation(line: 559, column: 6, scope: !3411)
!3414 = !DILocation(line: 561, column: 24, scope: !3266)
!3415 = !DILocation(line: 561, column: 22, scope: !3266)
!3416 = !DILocation(line: 562, column: 4, scope: !3266)
!3417 = distinct !DISubprogram(name: "delete_tree_live_info", scope: !1, file: !1, line: 843, type: !3418, scopeLine: 844, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3420)
!3418 = !DISubroutineType(types: !3419)
!3419 = !{null, !1553}
!3420 = !{!3421, !3422}
!3421 = !DILocalVariable(name: "live", arg: 1, scope: !3417, file: !1, line: 843, type: !1553)
!3422 = !DILocalVariable(name: "x", scope: !3417, file: !1, line: 845, type: !335)
!3423 = !DILocation(line: 0, scope: !3417)
!3424 = !DILocation(line: 847, column: 3, scope: !3417)
!3425 = !DILocation(line: 848, column: 15, scope: !3417)
!3426 = !DILocation(line: 848, column: 3, scope: !3417)
!3427 = !DILocation(line: 850, column: 18, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3417, file: !1, line: 850, column: 3)
!3429 = !DILocation(line: 850, column: 8, scope: !3428)
!3430 = !DILocation(line: 0, scope: !3428)
!3431 = !DILocation(line: 850, column: 36, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3428, file: !1, line: 850, column: 3)
!3433 = !DILocation(line: 850, column: 3, scope: !3428)
!3434 = !DILocation(line: 851, column: 5, scope: !3432)
!3435 = !DILocation(line: 850, column: 3, scope: !3432)
!3436 = distinct !{!3436, !3433, !3437}
!3437 = !DILocation(line: 851, column: 5, scope: !3428)
!3438 = !DILocation(line: 852, column: 9, scope: !3417)
!3439 = !DILocation(line: 852, column: 3, scope: !3417)
!3440 = !DILocation(line: 854, column: 18, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3417, file: !1, line: 854, column: 3)
!3442 = !DILocation(line: 854, column: 8, scope: !3441)
!3443 = !DILocation(line: 0, scope: !3441)
!3444 = !DILocation(line: 854, column: 36, scope: !3445)
!3445 = distinct !DILexicalBlock(scope: !3441, file: !1, line: 854, column: 3)
!3446 = !DILocation(line: 854, column: 3, scope: !3441)
!3447 = !DILocation(line: 855, column: 5, scope: !3445)
!3448 = !DILocation(line: 854, column: 3, scope: !3445)
!3449 = distinct !{!3449, !3446, !3450}
!3450 = !DILocation(line: 855, column: 5, scope: !3441)
!3451 = !DILocation(line: 856, column: 9, scope: !3417)
!3452 = !DILocation(line: 856, column: 3, scope: !3417)
!3453 = !DILocation(line: 858, column: 9, scope: !3417)
!3454 = !DILocation(line: 858, column: 3, scope: !3417)
!3455 = !DILocation(line: 859, column: 1, scope: !3417)
!3456 = distinct !DISubprogram(name: "calculate_live_on_exit", scope: !1, file: !1, line: 1012, type: !3418, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3457)
!3457 = !{!3458, !3459, !3460, !3461, !3462, !3466, !3467, !3471, !3475}
!3458 = !DILocalVariable(name: "liveinfo", arg: 1, scope: !3456, file: !1, line: 1012, type: !1553)
!3459 = !DILocalVariable(name: "bb", scope: !3456, file: !1, line: 1014, type: !640)
!3460 = !DILocalVariable(name: "e", scope: !3456, file: !1, line: 1015, type: !657)
!3461 = !DILocalVariable(name: "ei", scope: !3456, file: !1, line: 1016, type: !2650)
!3462 = !DILocalVariable(name: "gsi", scope: !3463, file: !1, line: 1025, type: !2642)
!3463 = distinct !DILexicalBlock(scope: !3464, file: !1, line: 1024, column: 5)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !1, line: 1023, column: 3)
!3465 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 1023, column: 3)
!3466 = !DILocalVariable(name: "i", scope: !3463, file: !1, line: 1026, type: !821)
!3467 = !DILocalVariable(name: "phi", scope: !3468, file: !1, line: 1031, type: !677)
!3468 = distinct !DILexicalBlock(scope: !3469, file: !1, line: 1030, column: 2)
!3469 = distinct !DILexicalBlock(scope: !3470, file: !1, line: 1029, column: 7)
!3470 = distinct !DILexicalBlock(scope: !3463, file: !1, line: 1029, column: 7)
!3471 = !DILocalVariable(name: "t", scope: !3472, file: !1, line: 1034, type: !384)
!3472 = distinct !DILexicalBlock(scope: !3473, file: !1, line: 1033, column: 6)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !1, line: 1032, column: 4)
!3474 = distinct !DILexicalBlock(scope: !3468, file: !1, line: 1032, column: 4)
!3475 = !DILocalVariable(name: "p", scope: !3472, file: !1, line: 1035, type: !335)
!3476 = !DILocation(line: 0, scope: !3456)
!3477 = !DILocation(line: 1015, column: 3, scope: !3456)
!3478 = !DILocation(line: 1016, column: 3, scope: !3456)
!3479 = !DILocation(line: 1019, column: 3, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3456, file: !1, line: 1019, column: 3)
!3481 = !DILocation(line: 0, scope: !3482)
!3482 = distinct !DILexicalBlock(scope: !3480, file: !1, line: 1019, column: 3)
!3483 = !DILocation(line: 1019, column: 3, scope: !3482)
!3484 = !DILocation(line: 0, scope: !3480)
!3485 = !DILocation(line: 1020, column: 29, scope: !3482)
!3486 = !DILocation(line: 1020, column: 41, scope: !3482)
!3487 = !DILocation(line: 1020, column: 19, scope: !3482)
!3488 = !DILocation(line: 1020, column: 5, scope: !3482)
!3489 = distinct !{!3489, !3479, !3490}
!3490 = !DILocation(line: 1020, column: 47, scope: !3480)
!3491 = !DILocation(line: 1023, column: 3, scope: !3465)
!3492 = !DILocation(line: 0, scope: !3463)
!3493 = !DILocation(line: 0, scope: !3470)
!3494 = !DILocation(line: 0, scope: !3472)
!3495 = !DILocation(line: 0, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3463, file: !1, line: 1050, column: 7)
!3497 = !DILocation(line: 0, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3496, file: !1, line: 1050, column: 7)
!3499 = !DILocation(line: 1023, column: 3, scope: !3464)
!3500 = !DILocation(line: 0, scope: !3465)
!3501 = !DILocation(line: 1025, column: 7, scope: !3463)
!3502 = !DILocation(line: 1029, column: 18, scope: !3470)
!3503 = !DILocation(line: 1029, column: 12, scope: !3470)
!3504 = !DILocation(line: 1029, column: 40, scope: !3469)
!3505 = !DILocation(line: 1029, column: 39, scope: !3469)
!3506 = !DILocation(line: 1029, column: 7, scope: !3470)
!3507 = !DILocation(line: 1031, column: 17, scope: !3468)
!3508 = !DILocation(line: 0, scope: !3468)
!3509 = !DILocation(line: 1032, column: 9, scope: !3474)
!3510 = !DILocation(line: 0, scope: !3474)
!3511 = !DILocation(line: 1032, column: 20, scope: !3473)
!3512 = !DILocation(line: 1032, column: 18, scope: !3473)
!3513 = !DILocation(line: 1032, column: 4, scope: !3474)
!3514 = !DILocation(line: 1034, column: 17, scope: !3472)
!3515 = !DILocation(line: 1037, column: 12, scope: !3516)
!3516 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1037, column: 12)
!3517 = !DILocation(line: 1037, column: 26, scope: !3516)
!3518 = !DILocation(line: 1037, column: 12, scope: !3472)
!3519 = !DILocation(line: 1040, column: 40, scope: !3472)
!3520 = !DILocation(line: 1040, column: 12, scope: !3472)
!3521 = !DILocation(line: 1041, column: 14, scope: !3522)
!3522 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1041, column: 12)
!3523 = !DILocation(line: 1041, column: 12, scope: !3472)
!3524 = !DILocation(line: 1043, column: 12, scope: !3472)
!3525 = !DILocation(line: 1043, column: 10, scope: !3472)
!3526 = !DILocation(line: 1044, column: 15, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3472, file: !1, line: 1044, column: 12)
!3528 = !DILocation(line: 1044, column: 22, scope: !3527)
!3529 = !DILocation(line: 1044, column: 19, scope: !3527)
!3530 = !DILocation(line: 1044, column: 12, scope: !3472)
!3531 = !DILocation(line: 1045, column: 29, scope: !3527)
!3532 = !DILocation(line: 1045, column: 45, scope: !3527)
!3533 = !DILocation(line: 1045, column: 19, scope: !3527)
!3534 = !DILocation(line: 1045, column: 3, scope: !3527)
!3535 = !DILocation(line: 1032, column: 48, scope: !3473)
!3536 = !DILocation(line: 1032, column: 4, scope: !3473)
!3537 = distinct !{!3537, !3513, !3538}
!3538 = !DILocation(line: 1046, column: 6, scope: !3474)
!3539 = !DILocation(line: 1029, column: 57, scope: !3469)
!3540 = !DILocation(line: 1029, column: 7, scope: !3469)
!3541 = distinct !{!3541, !3506, !3542}
!3542 = !DILocation(line: 1047, column: 2, scope: !3470)
!3543 = !DILocation(line: 1050, column: 7, scope: !3496)
!3544 = !DILocation(line: 0, scope: !3545)
!3545 = distinct !DILexicalBlock(scope: !3498, file: !1, line: 1051, column: 13)
!3546 = !DILocation(line: 1050, column: 7, scope: !3498)
!3547 = !DILocation(line: 1051, column: 13, scope: !3545)
!3548 = !DILocation(line: 1051, column: 16, scope: !3545)
!3549 = !DILocation(line: 1051, column: 24, scope: !3545)
!3550 = !DILocation(line: 1051, column: 21, scope: !3545)
!3551 = !DILocation(line: 1051, column: 13, scope: !3498)
!3552 = !DILocation(line: 1052, column: 31, scope: !3545)
!3553 = !DILocation(line: 1052, column: 43, scope: !3545)
!3554 = !DILocation(line: 1052, column: 21, scope: !3545)
!3555 = !DILocation(line: 1053, column: 7, scope: !3545)
!3556 = !DILocation(line: 1052, column: 4, scope: !3545)
!3557 = distinct !{!3557, !3543, !3558}
!3558 = !DILocation(line: 1053, column: 40, scope: !3496)
!3559 = !DILocation(line: 1054, column: 5, scope: !3464)
!3560 = !DILocation(line: 0, scope: !3464)
!3561 = distinct !{!3561, !3491, !3562}
!3562 = !DILocation(line: 1054, column: 5, scope: !3465)
!3563 = !DILocation(line: 1055, column: 1, scope: !3456)
!3564 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !255, file: !255, line: 3061, type: !3090, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3565)
!3565 = !{!3566}
!3566 = !DILocalVariable(name: "gs", arg: 1, scope: !3564, file: !255, line: 3061, type: !3074)
!3567 = !DILocation(line: 0, scope: !3564)
!3568 = !DILocation(line: 3064, column: 25, scope: !3564)
!3569 = !DILocation(line: 3064, column: 3, scope: !3564)
!3570 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2986, file: !2986, line: 442, type: !3571, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3573)
!3571 = !DISubroutineType(types: !3572)
!3572 = !{!1550, !677, !335}
!3573 = !{!3574, !3575}
!3574 = !DILocalVariable(name: "gs", arg: 1, scope: !3570, file: !2986, line: 442, type: !677)
!3575 = !DILocalVariable(name: "i", arg: 2, scope: !3570, file: !2986, line: 442, type: !335)
!3576 = !DILocation(line: 0, scope: !3570)
!3577 = !DILocation(line: 444, column: 11, scope: !3570)
!3578 = !DILocation(line: 444, column: 35, scope: !3570)
!3579 = !DILocation(line: 444, column: 3, scope: !3570)
!3580 = distinct !DISubprogram(name: "var_to_partition", scope: !343, file: !343, line: 143, type: !3581, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3583)
!3581 = !DISubroutineType(types: !3582)
!3582 = !{!335, !342, !384}
!3583 = !{!3584, !3585, !3586}
!3584 = !DILocalVariable(name: "map", arg: 1, scope: !3580, file: !343, line: 143, type: !342)
!3585 = !DILocalVariable(name: "var", arg: 2, scope: !3580, file: !343, line: 143, type: !384)
!3586 = !DILocalVariable(name: "part", scope: !3580, file: !343, line: 145, type: !335)
!3587 = !DILocation(line: 0, scope: !3580)
!3588 = !DILocation(line: 147, column: 3, scope: !3580)
!3589 = !DILocation(line: 148, column: 10, scope: !3580)
!3590 = !DILocation(line: 149, column: 12, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3580, file: !343, line: 149, column: 7)
!3592 = !DILocation(line: 149, column: 7, scope: !3591)
!3593 = !DILocation(line: 149, column: 7, scope: !3580)
!3594 = !DILocation(line: 150, column: 12, scope: !3591)
!3595 = !DILocation(line: 150, column: 5, scope: !3591)
!3596 = !DILocation(line: 151, column: 3, scope: !3580)
!3597 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2986, file: !2986, line: 467, type: !3598, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3600)
!3598 = !DISubroutineType(types: !3599)
!3599 = !{!657, !677, !821}
!3600 = !{!3601, !3602}
!3601 = !DILocalVariable(name: "gs", arg: 1, scope: !3597, file: !2986, line: 467, type: !677)
!3602 = !DILocalVariable(name: "i", arg: 2, scope: !3597, file: !2986, line: 467, type: !821)
!3603 = !DILocation(line: 0, scope: !3597)
!3604 = !DILocation(line: 469, column: 10, scope: !3597)
!3605 = !DILocation(line: 469, column: 3, scope: !3597)
!3606 = distinct !DISubprogram(name: "live_on_entry", scope: !343, file: !343, line: 283, type: !3607, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3609)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{!1036, !1553, !640}
!3609 = !{!3610, !3611}
!3610 = !DILocalVariable(name: "live", arg: 1, scope: !3606, file: !343, line: 283, type: !1553)
!3611 = !DILocalVariable(name: "bb", arg: 2, scope: !3606, file: !343, line: 283, type: !640)
!3612 = !DILocation(line: 0, scope: !3606)
!3613 = !DILocation(line: 285, column: 3, scope: !3606)
!3614 = !DILocation(line: 286, column: 3, scope: !3606)
!3615 = !DILocation(line: 287, column: 3, scope: !3606)
!3616 = !DILocation(line: 289, column: 16, scope: !3606)
!3617 = !DILocation(line: 289, column: 27, scope: !3606)
!3618 = !DILocation(line: 289, column: 10, scope: !3606)
!3619 = !DILocation(line: 289, column: 3, scope: !3606)
!3620 = distinct !DISubprogram(name: "calculate_live_ranges", scope: !1, file: !1, line: 1062, type: !3621, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3623)
!3621 = !DISubroutineType(types: !3622)
!3622 = !{!1553, !342}
!3623 = !{!3624, !3625, !3626, !3627}
!3624 = !DILocalVariable(name: "map", arg: 1, scope: !3620, file: !1, line: 1062, type: !342)
!3625 = !DILocalVariable(name: "var", scope: !3620, file: !1, line: 1064, type: !384)
!3626 = !DILocalVariable(name: "i", scope: !3620, file: !1, line: 1065, type: !5)
!3627 = !DILocalVariable(name: "live", scope: !3620, file: !1, line: 1066, type: !1553)
!3628 = !DILocation(line: 0, scope: !3620)
!3629 = !DILocation(line: 1068, column: 10, scope: !3620)
!3630 = !DILocation(line: 1069, column: 8, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3620, file: !1, line: 1069, column: 3)
!3632 = !DILocation(line: 0, scope: !3631)
!3633 = !DILocation(line: 1069, column: 19, scope: !3634)
!3634 = distinct !DILexicalBlock(scope: !3631, file: !1, line: 1069, column: 3)
!3635 = !DILocation(line: 1069, column: 17, scope: !3634)
!3636 = !DILocation(line: 1069, column: 3, scope: !3631)
!3637 = !DILocation(line: 1071, column: 13, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3634, file: !1, line: 1070, column: 5)
!3639 = !DILocation(line: 1072, column: 15, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3638, file: !1, line: 1072, column: 11)
!3641 = !DILocation(line: 1072, column: 11, scope: !3638)
!3642 = !DILocation(line: 1073, column: 2, scope: !3640)
!3643 = !DILocation(line: 1069, column: 46, scope: !3634)
!3644 = !DILocation(line: 1069, column: 3, scope: !3634)
!3645 = distinct !{!3645, !3636, !3646}
!3646 = !DILocation(line: 1074, column: 5, scope: !3631)
!3647 = !DILocation(line: 1076, column: 3, scope: !3620)
!3648 = !DILocation(line: 1082, column: 3, scope: !3620)
!3649 = !DILocation(line: 1083, column: 3, scope: !3620)
!3650 = distinct !DISubprogram(name: "new_tree_live_info", scope: !1, file: !1, line: 815, type: !3621, scopeLine: 816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3651)
!3651 = !{!3652, !3653, !3654}
!3652 = !DILocalVariable(name: "map", arg: 1, scope: !3650, file: !1, line: 815, type: !342)
!3653 = !DILocalVariable(name: "live", scope: !3650, file: !1, line: 817, type: !1553)
!3654 = !DILocalVariable(name: "x", scope: !3650, file: !1, line: 818, type: !5)
!3655 = !DILocation(line: 0, scope: !3650)
!3656 = !DILocation(line: 820, column: 29, scope: !3650)
!3657 = !DILocation(line: 821, column: 9, scope: !3650)
!3658 = !DILocation(line: 821, column: 13, scope: !3650)
!3659 = !DILocation(line: 822, column: 22, scope: !3650)
!3660 = !DILocation(line: 822, column: 9, scope: !3650)
!3661 = !DILocation(line: 822, column: 20, scope: !3650)
!3662 = !DILocation(line: 824, column: 37, scope: !3650)
!3663 = !DILocation(line: 824, column: 54, scope: !3650)
!3664 = !DILocation(line: 824, column: 28, scope: !3650)
!3665 = !DILocation(line: 824, column: 9, scope: !3650)
!3666 = !DILocation(line: 824, column: 16, scope: !3650)
!3667 = !DILocation(line: 0, scope: !3668)
!3668 = distinct !DILexicalBlock(scope: !3669, file: !1, line: 825, column: 3)
!3669 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 825, column: 3)
!3670 = !DILocation(line: 825, column: 8, scope: !3669)
!3671 = !DILocation(line: 0, scope: !3669)
!3672 = !DILocation(line: 825, column: 29, scope: !3668)
!3673 = !DILocation(line: 825, column: 17, scope: !3668)
!3674 = !DILocation(line: 825, column: 3, scope: !3669)
!3675 = !DILocation(line: 826, column: 23, scope: !3668)
!3676 = !DILocation(line: 826, column: 11, scope: !3668)
!3677 = !DILocation(line: 826, column: 5, scope: !3668)
!3678 = !DILocation(line: 826, column: 21, scope: !3668)
!3679 = !DILocation(line: 825, column: 48, scope: !3668)
!3680 = !DILocation(line: 825, column: 3, scope: !3668)
!3681 = distinct !{!3681, !3674, !3682}
!3682 = !DILocation(line: 826, column: 23, scope: !3669)
!3683 = !DILocation(line: 828, column: 38, scope: !3650)
!3684 = !DILocation(line: 828, column: 55, scope: !3650)
!3685 = !DILocation(line: 828, column: 29, scope: !3650)
!3686 = !DILocation(line: 828, column: 9, scope: !3650)
!3687 = !DILocation(line: 828, column: 17, scope: !3650)
!3688 = !DILocation(line: 0, scope: !3689)
!3689 = distinct !DILexicalBlock(scope: !3690, file: !1, line: 829, column: 3)
!3690 = distinct !DILexicalBlock(scope: !3650, file: !1, line: 829, column: 3)
!3691 = !DILocation(line: 829, column: 8, scope: !3690)
!3692 = !DILocation(line: 0, scope: !3690)
!3693 = !DILocation(line: 829, column: 29, scope: !3689)
!3694 = !DILocation(line: 829, column: 17, scope: !3689)
!3695 = !DILocation(line: 829, column: 3, scope: !3690)
!3696 = !DILocation(line: 830, column: 24, scope: !3689)
!3697 = !DILocation(line: 830, column: 11, scope: !3689)
!3698 = !DILocation(line: 830, column: 5, scope: !3689)
!3699 = !DILocation(line: 830, column: 22, scope: !3689)
!3700 = !DILocation(line: 829, column: 48, scope: !3689)
!3701 = !DILocation(line: 829, column: 3, scope: !3689)
!3702 = distinct !{!3702, !3695, !3703}
!3703 = !DILocation(line: 830, column: 24, scope: !3690)
!3704 = !DILocation(line: 820, column: 10, scope: !3650)
!3705 = !DILocation(line: 832, column: 22, scope: !3650)
!3706 = !DILocation(line: 832, column: 9, scope: !3650)
!3707 = !DILocation(line: 832, column: 20, scope: !3650)
!3708 = !DILocation(line: 833, column: 27, scope: !3650)
!3709 = !DILocation(line: 833, column: 9, scope: !3650)
!3710 = !DILocation(line: 833, column: 19, scope: !3650)
!3711 = !DILocation(line: 835, column: 18, scope: !3650)
!3712 = !DILocation(line: 835, column: 9, scope: !3650)
!3713 = !DILocation(line: 835, column: 16, scope: !3650)
!3714 = !DILocation(line: 836, column: 3, scope: !3650)
!3715 = distinct !DISubprogram(name: "num_var_partitions", scope: !343, file: !343, line: 101, type: !3716, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3718)
!3716 = !DISubroutineType(types: !3717)
!3717 = !{!5, !342}
!3718 = !{!3719}
!3719 = !DILocalVariable(name: "map", arg: 1, scope: !3715, file: !343, line: 101, type: !342)
!3720 = !DILocation(line: 0, scope: !3715)
!3721 = !DILocation(line: 103, column: 15, scope: !3715)
!3722 = !DILocation(line: 103, column: 3, scope: !3715)
!3723 = distinct !DISubprogram(name: "partition_to_var", scope: !343, file: !343, line: 111, type: !3724, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3726)
!3724 = !DISubroutineType(types: !3725)
!3725 = !{!384, !342, !335}
!3726 = !{!3727, !3728, !3729}
!3727 = !DILocalVariable(name: "map", arg: 1, scope: !3723, file: !343, line: 111, type: !342)
!3728 = !DILocalVariable(name: "i", arg: 2, scope: !3723, file: !343, line: 111, type: !335)
!3729 = !DILocalVariable(name: "name", scope: !3723, file: !343, line: 113, type: !384)
!3730 = !DILocation(line: 0, scope: !3723)
!3731 = !DILocation(line: 114, column: 12, scope: !3732)
!3732 = distinct !DILexicalBlock(scope: !3723, file: !343, line: 114, column: 7)
!3733 = !DILocation(line: 114, column: 7, scope: !3732)
!3734 = !DILocation(line: 114, column: 7, scope: !3723)
!3735 = !DILocation(line: 115, column: 9, scope: !3732)
!3736 = !DILocation(line: 115, column: 5, scope: !3732)
!3737 = !DILocation(line: 116, column: 7, scope: !3723)
!3738 = !DILocation(line: 117, column: 10, scope: !3723)
!3739 = !DILocation(line: 118, column: 3, scope: !3723)
!3740 = distinct !DISubprogram(name: "set_var_live_on_entry", scope: !1, file: !1, line: 940, type: !3741, scopeLine: 941, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3743)
!3741 = !DISubroutineType(types: !3742)
!3742 = !{null, !384, !1553}
!3743 = !{!3744, !3745, !3746, !3747, !3748, !3749, !3750, !3758, !3759, !3763, !3764, !3767, !3768}
!3744 = !DILocalVariable(name: "ssa_name", arg: 1, scope: !3740, file: !1, line: 940, type: !384)
!3745 = !DILocalVariable(name: "live", arg: 2, scope: !3740, file: !1, line: 940, type: !1553)
!3746 = !DILocalVariable(name: "p", scope: !3740, file: !1, line: 942, type: !335)
!3747 = !DILocalVariable(name: "stmt", scope: !3740, file: !1, line: 943, type: !677)
!3748 = !DILocalVariable(name: "use", scope: !3740, file: !1, line: 944, type: !1550)
!3749 = !DILocalVariable(name: "def_bb", scope: !3740, file: !1, line: 945, type: !640)
!3750 = !DILocalVariable(name: "imm_iter", scope: !3740, file: !1, line: 946, type: !3751)
!3751 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !580, line: 249, baseType: !3752)
!3752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !580, line: 238, size: 448, elements: !3753)
!3753 = !{!3754, !3755, !3756, !3757}
!3754 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !3752, file: !580, line: 241, baseType: !1551, size: 64)
!3755 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !3752, file: !580, line: 243, baseType: !1551, size: 64, offset: 64)
!3756 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !3752, file: !580, line: 245, baseType: !1552, size: 256, offset: 128)
!3757 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !3752, file: !580, line: 248, baseType: !1551, size: 64, offset: 384)
!3758 = !DILocalVariable(name: "global", scope: !3740, file: !1, line: 947, type: !334)
!3759 = !DILocalVariable(name: "use_stmt", scope: !3760, file: !1, line: 968, type: !677)
!3760 = distinct !DILexicalBlock(scope: !3761, file: !1, line: 967, column: 5)
!3761 = distinct !DILexicalBlock(scope: !3762, file: !1, line: 966, column: 3)
!3762 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 966, column: 3)
!3763 = !DILocalVariable(name: "add_block", scope: !3760, file: !1, line: 969, type: !640)
!3764 = !DILocalVariable(name: "index", scope: !3765, file: !1, line: 976, type: !335)
!3765 = distinct !DILexicalBlock(scope: !3766, file: !1, line: 972, column: 9)
!3766 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 971, column: 11)
!3767 = !DILocalVariable(name: "e", scope: !3765, file: !1, line: 977, type: !657)
!3768 = !DILocalVariable(name: "use_bb", scope: !3769, file: !1, line: 989, type: !640)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !1, line: 987, column: 9)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !1, line: 984, column: 16)
!3771 = !DILocation(line: 0, scope: !3740)
!3772 = !DILocation(line: 946, column: 3, scope: !3740)
!3773 = !DILocation(line: 949, column: 31, scope: !3740)
!3774 = !DILocation(line: 949, column: 7, scope: !3740)
!3775 = !DILocation(line: 950, column: 9, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 950, column: 7)
!3777 = !DILocation(line: 950, column: 7, scope: !3740)
!3778 = !DILocation(line: 953, column: 10, scope: !3740)
!3779 = !DILocation(line: 954, column: 7, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 954, column: 7)
!3781 = !DILocation(line: 954, column: 7, scope: !3740)
!3782 = !DILocation(line: 956, column: 16, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3780, file: !1, line: 955, column: 5)
!3784 = !DILocation(line: 958, column: 11, scope: !3785)
!3785 = distinct !DILexicalBlock(scope: !3783, file: !1, line: 958, column: 11)
!3786 = !DILocation(line: 958, column: 11, scope: !3783)
!3787 = !DILocation(line: 959, column: 24, scope: !3785)
!3788 = !DILocation(line: 959, column: 40, scope: !3785)
!3789 = !DILocation(line: 959, column: 18, scope: !3785)
!3790 = !DILocation(line: 959, column: 2, scope: !3785)
!3791 = !DILocation(line: 962, column: 14, scope: !3780)
!3792 = !DILocation(line: 0, scope: !3780)
!3793 = !DILocation(line: 966, column: 3, scope: !3762)
!3794 = !DILocation(line: 0, scope: !3795)
!3795 = distinct !DILexicalBlock(scope: !3796, file: !1, line: 996, column: 9)
!3796 = distinct !DILexicalBlock(scope: !3760, file: !1, line: 995, column: 11)
!3797 = !DILocation(line: 0, scope: !3762)
!3798 = !DILocation(line: 966, column: 3, scope: !3761)
!3799 = !DILocation(line: 968, column: 25, scope: !3760)
!3800 = !DILocation(line: 0, scope: !3760)
!3801 = !DILocation(line: 971, column: 11, scope: !3766)
!3802 = !DILocation(line: 971, column: 34, scope: !3766)
!3803 = !DILocation(line: 971, column: 11, scope: !3760)
!3804 = !DILocation(line: 976, column: 16, scope: !3765)
!3805 = !DILocation(line: 0, scope: !3765)
!3806 = !DILocation(line: 977, column: 44, scope: !3765)
!3807 = !DILocation(line: 977, column: 13, scope: !3765)
!3808 = !DILocation(line: 978, column: 11, scope: !3809)
!3809 = distinct !DILexicalBlock(scope: !3765, file: !1, line: 978, column: 8)
!3810 = !DILocation(line: 978, column: 18, scope: !3809)
!3811 = !DILocation(line: 978, column: 15, scope: !3809)
!3812 = !DILocation(line: 978, column: 8, scope: !3765)
!3813 = !DILocation(line: 980, column: 19, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3815, file: !1, line: 980, column: 12)
!3815 = distinct !DILexicalBlock(scope: !3809, file: !1, line: 979, column: 6)
!3816 = !DILocation(line: 980, column: 12, scope: !3815)
!3817 = !DILocation(line: 981, column: 3, scope: !3814)
!3818 = !DILocation(line: 984, column: 16, scope: !3770)
!3819 = !DILocation(line: 984, column: 16, scope: !3766)
!3820 = !DILocation(line: 989, column: 25, scope: !3769)
!3821 = !DILocation(line: 0, scope: !3769)
!3822 = !DILocation(line: 990, column: 15, scope: !3823)
!3823 = distinct !DILexicalBlock(scope: !3769, file: !1, line: 990, column: 8)
!3824 = !DILocation(line: 990, column: 8, scope: !3769)
!3825 = !DILocation(line: 0, scope: !3766)
!3826 = !DILocation(line: 995, column: 11, scope: !3796)
!3827 = !DILocation(line: 995, column: 11, scope: !3760)
!3828 = !DILocation(line: 998, column: 26, scope: !3795)
!3829 = !DILocation(line: 998, column: 44, scope: !3795)
!3830 = !DILocation(line: 998, column: 20, scope: !3795)
!3831 = !DILocation(line: 998, column: 4, scope: !3795)
!3832 = !DILocation(line: 999, column: 2, scope: !3795)
!3833 = distinct !{!3833, !3793, !3834}
!3834 = !DILocation(line: 1000, column: 5, scope: !3762)
!3835 = !DILocation(line: 1004, column: 7, scope: !3836)
!3836 = distinct !DILexicalBlock(scope: !3740, file: !1, line: 1004, column: 7)
!3837 = !DILocation(line: 1004, column: 7, scope: !3740)
!3838 = !DILocation(line: 1005, column: 27, scope: !3836)
!3839 = !DILocation(line: 1005, column: 5, scope: !3836)
!3840 = !DILocation(line: 1006, column: 1, scope: !3740)
!3841 = distinct !DISubprogram(name: "live_worklist", scope: !1, file: !1, line: 909, type: !3418, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3842)
!3842 = !{!3843, !3844, !3845, !3846, !3857}
!3843 = !DILocalVariable(name: "live", arg: 1, scope: !3841, file: !1, line: 909, type: !1553)
!3844 = !DILocalVariable(name: "b", scope: !3841, file: !1, line: 911, type: !5)
!3845 = !DILocalVariable(name: "bb", scope: !3841, file: !1, line: 912, type: !640)
!3846 = !DILocalVariable(name: "visited", scope: !3841, file: !1, line: 913, type: !3847)
!3847 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !3848, line: 45, baseType: !3849)
!3848 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!3849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3850, size: 64)
!3850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !3848, line: 39, size: 192, elements: !3851)
!3851 = !{!3852, !3853, !3854, !3855}
!3852 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !3850, file: !3848, line: 41, baseType: !333, size: 64)
!3853 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !3850, file: !3848, line: 42, baseType: !5, size: 32, offset: 64)
!3854 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !3850, file: !3848, line: 43, baseType: !5, size: 32, offset: 96)
!3855 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !3850, file: !3848, line: 44, baseType: !3856, size: 64, offset: 128)
!3856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 64, elements: !362)
!3857 = !DILocalVariable(name: "tmp", scope: !3841, file: !1, line: 914, type: !1036)
!3858 = !DILocation(line: 0, scope: !3841)
!3859 = !DILocation(line: 913, column: 36, scope: !3841)
!3860 = !DILocation(line: 913, column: 53, scope: !3841)
!3861 = !DILocation(line: 913, column: 21, scope: !3841)
!3862 = !DILocation(line: 914, column: 16, scope: !3841)
!3863 = !DILocation(line: 916, column: 3, scope: !3841)
!3864 = !DILocation(line: 920, column: 3, scope: !3865)
!3865 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 920, column: 3)
!3866 = !DILocation(line: 920, column: 3, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3865, file: !1, line: 920, column: 3)
!3868 = !DILocation(line: 0, scope: !3865)
!3869 = !DILocation(line: 924, column: 3, scope: !3841)
!3870 = !DILocation(line: 921, column: 5, scope: !3867)
!3871 = !DILocation(line: 0, scope: !3867)
!3872 = distinct !{!3872, !3864, !3873}
!3873 = !DILocation(line: 921, column: 44, scope: !3865)
!3874 = !DILocation(line: 924, column: 16, scope: !3841)
!3875 = !DILocation(line: 924, column: 35, scope: !3841)
!3876 = !DILocation(line: 924, column: 26, scope: !3841)
!3877 = !DILocation(line: 926, column: 12, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3841, file: !1, line: 925, column: 5)
!3879 = !DILocation(line: 926, column: 11, scope: !3878)
!3880 = !DILocation(line: 927, column: 30, scope: !3878)
!3881 = !DILocation(line: 927, column: 7, scope: !3878)
!3882 = distinct !{!3882, !3869, !3883}
!3883 = !DILocation(line: 928, column: 5, scope: !3841)
!3884 = !DILocation(line: 930, column: 3, scope: !3841)
!3885 = !DILocation(line: 931, column: 3, scope: !3841)
!3886 = !DILocation(line: 932, column: 1, scope: !3841)
!3887 = distinct !DISubprogram(name: "dump_var_map", scope: !1, file: !1, line: 1090, type: !3888, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3890)
!3888 = !DISubroutineType(types: !3889)
!3889 = !{null, !1599, !342}
!3890 = !{!3891, !3892, !3893, !3894, !3895, !3896}
!3891 = !DILocalVariable(name: "f", arg: 1, scope: !3887, file: !1, line: 1090, type: !1599)
!3892 = !DILocalVariable(name: "map", arg: 2, scope: !3887, file: !1, line: 1090, type: !342)
!3893 = !DILocalVariable(name: "t", scope: !3887, file: !1, line: 1092, type: !335)
!3894 = !DILocalVariable(name: "x", scope: !3887, file: !1, line: 1093, type: !5)
!3895 = !DILocalVariable(name: "y", scope: !3887, file: !1, line: 1093, type: !5)
!3896 = !DILocalVariable(name: "p", scope: !3887, file: !1, line: 1094, type: !335)
!3897 = !DILocation(line: 0, scope: !3887)
!3898 = !DILocation(line: 1096, column: 3, scope: !3887)
!3899 = !DILocation(line: 0, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3901, file: !1, line: 1098, column: 3)
!3901 = distinct !DILexicalBlock(scope: !3887, file: !1, line: 1098, column: 3)
!3902 = !DILocation(line: 0, scope: !3903)
!3903 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 1100, column: 11)
!3904 = distinct !DILexicalBlock(scope: !3900, file: !1, line: 1099, column: 5)
!3905 = !DILocation(line: 0, scope: !3906)
!3906 = distinct !DILexicalBlock(scope: !3907, file: !1, line: 1110, column: 9)
!3907 = distinct !DILexicalBlock(scope: !3908, file: !1, line: 1109, column: 7)
!3908 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 1109, column: 7)
!3909 = !DILocation(line: 0, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3906, file: !1, line: 1112, column: 8)
!3911 = !DILocation(line: 1098, column: 8, scope: !3901)
!3912 = !DILocation(line: 0, scope: !3901)
!3913 = !DILocation(line: 1098, column: 24, scope: !3900)
!3914 = !DILocation(line: 1098, column: 17, scope: !3900)
!3915 = !DILocation(line: 1098, column: 3, scope: !3901)
!3916 = !DILocation(line: 1100, column: 16, scope: !3903)
!3917 = !DILocation(line: 1100, column: 34, scope: !3903)
!3918 = !DILocation(line: 1100, column: 11, scope: !3904)
!3919 = !DILocation(line: 1101, column: 6, scope: !3903)
!3920 = !DILocation(line: 1101, column: 2, scope: !3903)
!3921 = !DILocation(line: 1105, column: 11, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 1105, column: 11)
!3923 = !DILocation(line: 1105, column: 24, scope: !3922)
!3924 = !DILocation(line: 1105, column: 11, scope: !3904)
!3925 = !DILocation(line: 1109, column: 7, scope: !3908)
!3926 = !DILocation(line: 0, scope: !3904)
!3927 = !DILocation(line: 1109, column: 23, scope: !3907)
!3928 = !DILocation(line: 1109, column: 21, scope: !3907)
!3929 = !DILocation(line: 1111, column: 8, scope: !3906)
!3930 = !DILocation(line: 1112, column: 13, scope: !3910)
!3931 = !DILocation(line: 1112, column: 8, scope: !3910)
!3932 = !DILocation(line: 1112, column: 8, scope: !3906)
!3933 = !DILocation(line: 1113, column: 10, scope: !3910)
!3934 = !DILocation(line: 1113, column: 6, scope: !3910)
!3935 = !DILocation(line: 1114, column: 10, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3906, file: !1, line: 1114, column: 8)
!3937 = !DILocation(line: 1114, column: 8, scope: !3906)
!3938 = !DILocation(line: 1116, column: 13, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !1, line: 1116, column: 12)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !1, line: 1115, column: 6)
!3941 = !DILocation(line: 1116, column: 16, scope: !3939)
!3942 = !DILocation(line: 1116, column: 12, scope: !3940)
!3943 = !DILocation(line: 1118, column: 5, scope: !3944)
!3944 = distinct !DILexicalBlock(scope: !3939, file: !1, line: 1117, column: 10)
!3945 = !DILocation(line: 1119, column: 28, scope: !3944)
!3946 = !DILocation(line: 1119, column: 5, scope: !3944)
!3947 = !DILocation(line: 1120, column: 5, scope: !3944)
!3948 = !DILocation(line: 1121, column: 3, scope: !3944)
!3949 = !DILocation(line: 1122, column: 8, scope: !3940)
!3950 = !DILocation(line: 1123, column: 6, scope: !3940)
!3951 = !DILocation(line: 1109, column: 39, scope: !3907)
!3952 = !DILocation(line: 1109, column: 7, scope: !3907)
!3953 = distinct !{!3953, !3925, !3954}
!3954 = !DILocation(line: 1124, column: 2, scope: !3908)
!3955 = !DILocation(line: 1125, column: 13, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3904, file: !1, line: 1125, column: 11)
!3957 = !DILocation(line: 1125, column: 11, scope: !3904)
!3958 = !DILocation(line: 1126, column: 2, scope: !3956)
!3959 = !DILocation(line: 1098, column: 41, scope: !3900)
!3960 = !DILocation(line: 1098, column: 3, scope: !3900)
!3961 = distinct !{!3961, !3915, !3962}
!3962 = !DILocation(line: 1127, column: 5, scope: !3901)
!3963 = !DILocation(line: 1128, column: 3, scope: !3887)
!3964 = !DILocation(line: 1129, column: 1, scope: !3887)
!3965 = distinct !DISubprogram(name: "VEC_tree_base_index", scope: !4, file: !4, line: 182, type: !3966, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3970)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!384, !3968, !5}
!3968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3969, size: 64)
!3969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!3970 = !{!3971, !3972}
!3971 = !DILocalVariable(name: "vec_", arg: 1, scope: !3965, file: !4, line: 182, type: !3968)
!3972 = !DILocalVariable(name: "ix_", arg: 2, scope: !3965, file: !4, line: 182, type: !5)
!3973 = !DILocation(line: 0, scope: !3965)
!3974 = !DILocation(line: 182, column: 1, scope: !3965)
!3975 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !4, file: !4, line: 182, type: !3976, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3978)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!5, !3968}
!3978 = !{!3979}
!3979 = !DILocalVariable(name: "vec_", arg: 1, scope: !3975, file: !4, line: 182, type: !3968)
!3980 = !DILocation(line: 0, scope: !3975)
!3981 = !DILocation(line: 182, column: 1, scope: !3975)
!3982 = distinct !DISubprogram(name: "dump_live_info", scope: !1, file: !1, line: 1135, type: !3983, scopeLine: 1136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !3985)
!3983 = !DISubroutineType(types: !3984)
!3984 = !{null, !1599, !1553, !335}
!3985 = !{!3986, !3987, !3988, !3989, !3990, !3991, !3992}
!3986 = !DILocalVariable(name: "f", arg: 1, scope: !3982, file: !1, line: 1135, type: !1599)
!3987 = !DILocalVariable(name: "live", arg: 2, scope: !3982, file: !1, line: 1135, type: !1553)
!3988 = !DILocalVariable(name: "flag", arg: 3, scope: !3982, file: !1, line: 1135, type: !335)
!3989 = !DILocalVariable(name: "bb", scope: !3982, file: !1, line: 1137, type: !640)
!3990 = !DILocalVariable(name: "i", scope: !3982, file: !1, line: 1138, type: !5)
!3991 = !DILocalVariable(name: "map", scope: !3982, file: !1, line: 1139, type: !342)
!3992 = !DILocalVariable(name: "bi", scope: !3982, file: !1, line: 1140, type: !2194)
!3993 = !DILocation(line: 0, scope: !3982)
!3994 = !DILocation(line: 1138, column: 3, scope: !3982)
!3995 = !DILocation(line: 1139, column: 23, scope: !3982)
!3996 = !DILocation(line: 1140, column: 3, scope: !3982)
!3997 = !DILocation(line: 1142, column: 13, scope: !3998)
!3998 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1142, column: 7)
!3999 = !DILocation(line: 1142, column: 31, scope: !3998)
!4000 = !DILocation(line: 1142, column: 40, scope: !3998)
!4001 = !DILocation(line: 1142, column: 34, scope: !3998)
!4002 = !DILocation(line: 1142, column: 7, scope: !3982)
!4003 = !DILocation(line: 1144, column: 7, scope: !4004)
!4004 = distinct !DILexicalBlock(scope: !4005, file: !1, line: 1144, column: 7)
!4005 = distinct !DILexicalBlock(scope: !3998, file: !1, line: 1143, column: 5)
!4006 = !DILocation(line: 1144, column: 7, scope: !4007)
!4007 = distinct !DILexicalBlock(scope: !4004, file: !1, line: 1144, column: 7)
!4008 = !DILocation(line: 0, scope: !4004)
!4009 = !DILocation(line: 1146, column: 50, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4007, file: !1, line: 1145, column: 2)
!4011 = !DILocation(line: 1146, column: 4, scope: !4010)
!4012 = !DILocation(line: 1147, column: 4, scope: !4013)
!4013 = distinct !DILexicalBlock(scope: !4010, file: !1, line: 1147, column: 4)
!4014 = !DILocation(line: 1147, column: 4, scope: !4015)
!4015 = distinct !DILexicalBlock(scope: !4013, file: !1, line: 1147, column: 4)
!4016 = !DILocation(line: 1149, column: 54, scope: !4017)
!4017 = distinct !DILexicalBlock(scope: !4015, file: !1, line: 1148, column: 6)
!4018 = !DILocation(line: 1149, column: 31, scope: !4017)
!4019 = !DILocation(line: 1149, column: 8, scope: !4017)
!4020 = !DILocation(line: 1150, column: 8, scope: !4017)
!4021 = distinct !{!4021, !4012, !4022}
!4022 = !DILocation(line: 1151, column: 6, scope: !4013)
!4023 = !DILocation(line: 1152, column: 4, scope: !4010)
!4024 = !DILocation(line: 0, scope: !4007)
!4025 = distinct !{!4025, !4003, !4026}
!4026 = !DILocation(line: 1153, column: 2, scope: !4004)
!4027 = !DILocation(line: 1156, column: 13, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !3982, file: !1, line: 1156, column: 7)
!4029 = !DILocation(line: 1156, column: 30, scope: !4028)
!4030 = !DILocation(line: 1156, column: 39, scope: !4028)
!4031 = !DILocation(line: 1156, column: 33, scope: !4028)
!4032 = !DILocation(line: 1156, column: 7, scope: !3982)
!4033 = !DILocation(line: 1158, column: 7, scope: !4034)
!4034 = distinct !DILexicalBlock(scope: !4035, file: !1, line: 1158, column: 7)
!4035 = distinct !DILexicalBlock(scope: !4028, file: !1, line: 1157, column: 5)
!4036 = !DILocation(line: 1158, column: 7, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4034, file: !1, line: 1158, column: 7)
!4038 = !DILocation(line: 0, scope: !4034)
!4039 = !DILocation(line: 1160, column: 51, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4037, file: !1, line: 1159, column: 2)
!4041 = !DILocation(line: 1160, column: 4, scope: !4040)
!4042 = !DILocation(line: 1161, column: 4, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4040, file: !1, line: 1161, column: 4)
!4044 = !DILocation(line: 1161, column: 4, scope: !4045)
!4045 = distinct !DILexicalBlock(scope: !4043, file: !1, line: 1161, column: 4)
!4046 = !DILocation(line: 1163, column: 54, scope: !4047)
!4047 = distinct !DILexicalBlock(scope: !4045, file: !1, line: 1162, column: 6)
!4048 = !DILocation(line: 1163, column: 31, scope: !4047)
!4049 = !DILocation(line: 1163, column: 8, scope: !4047)
!4050 = !DILocation(line: 1164, column: 8, scope: !4047)
!4051 = distinct !{!4051, !4042, !4052}
!4052 = !DILocation(line: 1165, column: 6, scope: !4043)
!4053 = !DILocation(line: 1166, column: 4, scope: !4040)
!4054 = !DILocation(line: 0, scope: !4037)
!4055 = distinct !{!4055, !4033, !4056}
!4056 = !DILocation(line: 1167, column: 2, scope: !4034)
!4057 = !DILocation(line: 1169, column: 1, scope: !3982)
!4058 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !4, file: !4, line: 184, type: !4059, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4062)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{null, !4061}
!4061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!4062 = !{!4063}
!4063 = !DILocalVariable(name: "vec_", arg: 1, scope: !4058, file: !4, line: 184, type: !4061)
!4064 = !DILocation(line: 0, scope: !4058)
!4065 = !DILocation(line: 184, column: 1, scope: !4066)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !4, line: 184, column: 1)
!4067 = !DILocation(line: 184, column: 1, scope: !4058)
!4068 = distinct !DISubprogram(name: "has_zero_uses", scope: !2986, file: !2986, line: 332, type: !3134, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4069)
!4069 = !{!4070, !4071}
!4070 = !DILocalVariable(name: "var", arg: 1, scope: !4068, file: !2986, line: 332, type: !3013)
!4071 = !DILocalVariable(name: "ptr", scope: !4068, file: !2986, line: 334, type: !4072)
!4072 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4073)
!4073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4074, size: 64)
!4074 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1552)
!4075 = !DILocation(line: 0, scope: !4068)
!4076 = !DILocation(line: 334, column: 42, scope: !4068)
!4077 = !DILocation(line: 337, column: 19, scope: !4078)
!4078 = distinct !DILexicalBlock(scope: !4068, file: !2986, line: 337, column: 7)
!4079 = !DILocation(line: 337, column: 11, scope: !4078)
!4080 = !DILocation(line: 337, column: 7, scope: !4068)
!4081 = !DILocation(line: 342, column: 8, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4068, file: !2986, line: 342, column: 7)
!4083 = !DILocation(line: 342, column: 7, scope: !4068)
!4084 = !DILocation(line: 345, column: 10, scope: !4068)
!4085 = !DILocation(line: 345, column: 3, scope: !4068)
!4086 = !DILocation(line: 346, column: 1, scope: !4068)
!4087 = distinct !DISubprogram(name: "VEC_tree_base_truncate", scope: !4, file: !4, line: 182, type: !4088, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4091)
!4088 = !DISubroutineType(types: !4089)
!4089 = !{null, !4090, !5}
!4090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!4091 = !{!4092, !4093}
!4092 = !DILocalVariable(name: "vec_", arg: 1, scope: !4087, file: !4, line: 182, type: !4090)
!4093 = !DILocalVariable(name: "size_", arg: 2, scope: !4087, file: !4, line: 182, type: !5)
!4094 = !DILocation(line: 0, scope: !4087)
!4095 = !DILocation(line: 182, column: 1, scope: !4087)
!4096 = !DILocation(line: 182, column: 1, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4087, file: !4, line: 182, column: 1)
!4098 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !4, file: !4, line: 184, type: !4099, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4101)
!4099 = !DISubroutineType(types: !4100)
!4100 = !{!372, !335}
!4101 = !{!4102}
!4102 = !DILocalVariable(name: "alloc_", arg: 1, scope: !4098, file: !4, line: 184, type: !335)
!4103 = !DILocation(line: 0, scope: !4098)
!4104 = !DILocation(line: 184, column: 1, scope: !4098)
!4105 = distinct !DISubprogram(name: "VEC_tree_heap_safe_push", scope: !4, file: !4, line: 184, type: !4106, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4108)
!4106 = !DISubroutineType(types: !4107)
!4107 = !{!711, !4061, !384}
!4108 = !{!4109, !4110}
!4109 = !DILocalVariable(name: "vec_", arg: 1, scope: !4105, file: !4, line: 184, type: !4061)
!4110 = !DILocalVariable(name: "obj_", arg: 2, scope: !4105, file: !4, line: 184, type: !384)
!4111 = !DILocation(line: 0, scope: !4105)
!4112 = !DILocation(line: 184, column: 1, scope: !4105)
!4113 = distinct !DISubprogram(name: "VEC_tree_heap_reserve", scope: !4, file: !4, line: 184, type: !4114, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4116)
!4114 = !DISubroutineType(types: !4115)
!4115 = !{!335, !4061, !335}
!4116 = !{!4117, !4118, !4119}
!4117 = !DILocalVariable(name: "vec_", arg: 1, scope: !4113, file: !4, line: 184, type: !4061)
!4118 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4113, file: !4, line: 184, type: !335)
!4119 = !DILocalVariable(name: "extend", scope: !4113, file: !4, line: 184, type: !335)
!4120 = !DILocation(line: 0, scope: !4113)
!4121 = !DILocation(line: 184, column: 1, scope: !4113)
!4122 = !DILocation(line: 184, column: 1, scope: !4123)
!4123 = distinct !DILexicalBlock(scope: !4113, file: !4, line: 184, column: 1)
!4124 = distinct !DISubprogram(name: "VEC_tree_base_quick_push", scope: !4, file: !4, line: 182, type: !4125, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4127)
!4125 = !DISubroutineType(types: !4126)
!4126 = !{!711, !4090, !384}
!4127 = !{!4128, !4129, !4130}
!4128 = !DILocalVariable(name: "vec_", arg: 1, scope: !4124, file: !4, line: 182, type: !4090)
!4129 = !DILocalVariable(name: "obj_", arg: 2, scope: !4124, file: !4, line: 182, type: !384)
!4130 = !DILocalVariable(name: "slot_", scope: !4124, file: !4, line: 182, type: !711)
!4131 = !DILocation(line: 0, scope: !4124)
!4132 = !DILocation(line: 182, column: 1, scope: !4124)
!4133 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !4, file: !4, line: 182, type: !4134, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4136)
!4134 = !DISubroutineType(types: !4135)
!4135 = !{!335, !4090, !335}
!4136 = !{!4137, !4138}
!4137 = !DILocalVariable(name: "vec_", arg: 1, scope: !4133, file: !4, line: 182, type: !4090)
!4138 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4133, file: !4, line: 182, type: !335)
!4139 = !DILocation(line: 0, scope: !4133)
!4140 = !DILocation(line: 182, column: 1, scope: !4133)
!4141 = distinct !DISubprogram(name: "first_htab_element", scope: !2986, file: !2986, line: 58, type: !4142, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4145)
!4142 = !DISubroutineType(types: !4143)
!4143 = !{!339, !4144, !956}
!4144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!4145 = !{!4146, !4147, !4148}
!4146 = !DILocalVariable(name: "hti", arg: 1, scope: !4141, file: !2986, line: 58, type: !4144)
!4147 = !DILocalVariable(name: "table", arg: 2, scope: !4141, file: !2986, line: 58, type: !956)
!4148 = !DILocalVariable(name: "x", scope: !4149, file: !2986, line: 65, type: !339)
!4149 = distinct !DILexicalBlock(scope: !4141, file: !2986, line: 64, column: 5)
!4150 = !DILocation(line: 0, scope: !4141)
!4151 = !DILocation(line: 60, column: 8, scope: !4141)
!4152 = !DILocation(line: 60, column: 13, scope: !4141)
!4153 = !DILocation(line: 61, column: 22, scope: !4141)
!4154 = !DILocation(line: 61, column: 8, scope: !4141)
!4155 = !DILocation(line: 61, column: 13, scope: !4141)
!4156 = !DILocation(line: 62, column: 21, scope: !4141)
!4157 = !DILocation(line: 62, column: 28, scope: !4141)
!4158 = !DILocation(line: 62, column: 26, scope: !4141)
!4159 = !DILocation(line: 62, column: 8, scope: !4141)
!4160 = !DILocation(line: 62, column: 14, scope: !4141)
!4161 = !DILocation(line: 65, column: 22, scope: !4149)
!4162 = !DILocation(line: 63, column: 3, scope: !4141)
!4163 = !DILocation(line: 65, column: 15, scope: !4149)
!4164 = !DILocation(line: 66, column: 33, scope: !4165)
!4165 = distinct !DILexicalBlock(scope: !4149, file: !2986, line: 66, column: 11)
!4166 = !DILocation(line: 68, column: 14, scope: !4141)
!4167 = !DILocation(line: 68, column: 28, scope: !4141)
!4168 = !DILocation(line: 68, column: 5, scope: !4149)
!4169 = distinct !{!4169, !4162, !4170}
!4170 = !DILocation(line: 68, column: 40, scope: !4141)
!4171 = !DILocation(line: 70, column: 12, scope: !4172)
!4172 = distinct !DILexicalBlock(scope: !4141, file: !2986, line: 70, column: 7)
!4173 = !DILocation(line: 70, column: 17, scope: !4172)
!4174 = !DILocation(line: 70, column: 7, scope: !4141)
!4175 = !DILocation(line: 71, column: 12, scope: !4172)
!4176 = !DILocation(line: 71, column: 5, scope: !4172)
!4177 = !DILocation(line: 73, column: 1, scope: !4141)
!4178 = distinct !DISubprogram(name: "gimple_referenced_vars", scope: !2986, file: !2986, line: 40, type: !4179, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4183)
!4179 = !DISubroutineType(types: !4180)
!4180 = !{!956, !4181}
!4181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4182, size: 64)
!4182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!4183 = !{!4184}
!4184 = !DILocalVariable(name: "fun", arg: 1, scope: !4178, file: !2986, line: 40, type: !4181)
!4185 = !DILocation(line: 0, scope: !4178)
!4186 = !DILocation(line: 42, column: 13, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4178, file: !2986, line: 42, column: 7)
!4188 = !DILocation(line: 42, column: 8, scope: !4187)
!4189 = !DILocation(line: 42, column: 7, scope: !4178)
!4190 = !DILocation(line: 44, column: 26, scope: !4178)
!4191 = !DILocation(line: 44, column: 3, scope: !4178)
!4192 = !DILocation(line: 45, column: 1, scope: !4178)
!4193 = distinct !DISubprogram(name: "end_htab_p", scope: !2986, file: !2986, line: 79, type: !4194, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4198)
!4194 = !DISubroutineType(types: !4195)
!4195 = !{!334, !4196}
!4196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4197, size: 64)
!4197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2630)
!4198 = !{!4199}
!4199 = !DILocalVariable(name: "hti", arg: 1, scope: !4193, file: !2986, line: 79, type: !4196)
!4200 = !DILocation(line: 0, scope: !4193)
!4201 = !DILocation(line: 81, column: 12, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4193, file: !2986, line: 81, column: 7)
!4203 = !DILocation(line: 81, column: 25, scope: !4202)
!4204 = !DILocation(line: 81, column: 17, scope: !4202)
!4205 = !DILocation(line: 84, column: 1, scope: !4193)
!4206 = distinct !DISubprogram(name: "next_htab_element", scope: !2986, file: !2986, line: 90, type: !4207, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4209)
!4207 = !DISubroutineType(types: !4208)
!4208 = !{!339, !4144}
!4209 = !{!4210, !4211}
!4210 = !DILocalVariable(name: "hti", arg: 1, scope: !4206, file: !2986, line: 90, type: !4144)
!4211 = !DILocalVariable(name: "x", scope: !4212, file: !2986, line: 94, type: !339)
!4212 = distinct !DILexicalBlock(scope: !4206, file: !2986, line: 93, column: 5)
!4213 = !DILocation(line: 0, scope: !4206)
!4214 = !DILocation(line: 94, column: 22, scope: !4212)
!4215 = !DILocation(line: 92, column: 10, scope: !4206)
!4216 = !DILocation(line: 92, column: 31, scope: !4206)
!4217 = !DILocation(line: 92, column: 3, scope: !4206)
!4218 = !DILocation(line: 92, column: 24, scope: !4206)
!4219 = !DILocation(line: 94, column: 15, scope: !4212)
!4220 = !DILocation(line: 0, scope: !4212)
!4221 = !DILocation(line: 95, column: 33, scope: !4222)
!4222 = distinct !DILexicalBlock(scope: !4212, file: !2986, line: 95, column: 11)
!4223 = distinct !{!4223, !4217, !4224}
!4224 = !DILocation(line: 97, column: 5, scope: !4206)
!4225 = !DILocation(line: 99, column: 1, scope: !4206)
!4226 = distinct !DISubprogram(name: "bb_seq", scope: !255, file: !255, line: 237, type: !4227, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4232)
!4227 = !DISubroutineType(types: !4228)
!4228 = !{!667, !4229}
!4229 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !385, line: 112, baseType: !4230)
!4230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4231, size: 64)
!4231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !642)
!4232 = !{!4233}
!4233 = !DILocalVariable(name: "bb", arg: 1, scope: !4226, file: !255, line: 237, type: !4229)
!4234 = !DILocation(line: 0, scope: !4226)
!4235 = !DILocation(line: 239, column: 17, scope: !4226)
!4236 = !DILocation(line: 239, column: 23, scope: !4226)
!4237 = !DILocation(line: 239, column: 33, scope: !4226)
!4238 = !DILocation(line: 239, column: 43, scope: !4226)
!4239 = !DILocation(line: 239, column: 36, scope: !4226)
!4240 = !DILocation(line: 239, column: 10, scope: !4226)
!4241 = !DILocation(line: 239, column: 68, scope: !4226)
!4242 = !DILocation(line: 239, column: 3, scope: !4226)
!4243 = distinct !DISubprogram(name: "gimple_seq_first", scope: !255, file: !255, line: 159, type: !4244, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4249)
!4244 = !DISubroutineType(types: !4245)
!4245 = !{!672, !4246}
!4246 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !385, line: 67, baseType: !4247)
!4247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4248, size: 64)
!4248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !669)
!4249 = !{!4250}
!4250 = !DILocalVariable(name: "s", arg: 1, scope: !4243, file: !255, line: 159, type: !4246)
!4251 = !DILocation(line: 0, scope: !4243)
!4252 = !DILocation(line: 161, column: 10, scope: !4243)
!4253 = !DILocation(line: 161, column: 17, scope: !4243)
!4254 = !DILocation(line: 161, column: 3, scope: !4243)
!4255 = distinct !DISubprogram(name: "gimple_code", scope: !255, file: !255, line: 1052, type: !4256, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4258)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!254, !3074}
!4258 = !{!4259}
!4259 = !DILocalVariable(name: "g", arg: 1, scope: !4255, file: !255, line: 1052, type: !3074)
!4260 = !DILocation(line: 0, scope: !4255)
!4261 = !DILocation(line: 1054, column: 20, scope: !4255)
!4262 = !DILocation(line: 1054, column: 3, scope: !4255)
!4263 = distinct !DISubprogram(name: "mark_all_vars_used_1", scope: !1, file: !1, line: 349, type: !4264, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4266)
!4264 = !DISubroutineType(types: !4265)
!4265 = !{!384, !711, !365, !339}
!4266 = !{!4267, !4268, !4269, !4270, !4271, !4272}
!4267 = !DILocalVariable(name: "tp", arg: 1, scope: !4263, file: !1, line: 349, type: !711)
!4268 = !DILocalVariable(name: "walk_subtrees", arg: 2, scope: !4263, file: !1, line: 349, type: !365)
!4269 = !DILocalVariable(name: "data", arg: 3, scope: !4263, file: !1, line: 349, type: !339)
!4270 = !DILocalVariable(name: "t", scope: !4263, file: !1, line: 351, type: !384)
!4271 = !DILocalVariable(name: "c", scope: !4263, file: !1, line: 352, type: !293)
!4272 = !DILocalVariable(name: "b", scope: !4263, file: !1, line: 353, type: !384)
!4273 = !DILocation(line: 0, scope: !4263)
!4274 = !DILocation(line: 351, column: 12, scope: !4263)
!4275 = !DILocation(line: 352, column: 28, scope: !4263)
!4276 = !DILocation(line: 355, column: 21, scope: !4277)
!4277 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 355, column: 7)
!4278 = !DILocation(line: 355, column: 7, scope: !4263)
!4279 = !DILocation(line: 356, column: 9, scope: !4277)
!4280 = !DILocation(line: 356, column: 5, scope: !4277)
!4281 = !DILocation(line: 358, column: 7, scope: !4282)
!4282 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 358, column: 7)
!4283 = !DILocation(line: 359, column: 15, scope: !4282)
!4284 = !DILocation(line: 359, column: 31, scope: !4282)
!4285 = !DILocation(line: 358, column: 7, scope: !4263)
!4286 = !DILocation(line: 360, column: 5, scope: !4282)
!4287 = !DILocation(line: 360, column: 19, scope: !4282)
!4288 = !DILocation(line: 364, column: 7, scope: !4289)
!4289 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 364, column: 7)
!4290 = !DILocation(line: 364, column: 21, scope: !4289)
!4291 = !DILocation(line: 364, column: 7, scope: !4263)
!4292 = !DILocation(line: 366, column: 28, scope: !4293)
!4293 = distinct !DILexicalBlock(scope: !4289, file: !1, line: 365, column: 5)
!4294 = !DILocation(line: 366, column: 7, scope: !4293)
!4295 = !DILocation(line: 367, column: 28, scope: !4293)
!4296 = !DILocation(line: 367, column: 7, scope: !4293)
!4297 = !DILocation(line: 368, column: 28, scope: !4293)
!4298 = !DILocation(line: 368, column: 7, scope: !4293)
!4299 = !DILocation(line: 369, column: 22, scope: !4293)
!4300 = !DILocation(line: 370, column: 7, scope: !4293)
!4301 = !DILocation(line: 375, column: 21, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 375, column: 7)
!4303 = !DILocation(line: 375, column: 7, scope: !4263)
!4304 = !DILocation(line: 377, column: 16, scope: !4305)
!4305 = distinct !DILexicalBlock(scope: !4306, file: !1, line: 377, column: 11)
!4306 = distinct !DILexicalBlock(scope: !4302, file: !1, line: 376, column: 5)
!4307 = !DILocation(line: 377, column: 24, scope: !4305)
!4308 = !DILocation(line: 377, column: 41, scope: !4305)
!4309 = !DILocation(line: 377, column: 56, scope: !4305)
!4310 = !DILocation(line: 377, column: 27, scope: !4305)
!4311 = !DILocation(line: 377, column: 11, scope: !4306)
!4312 = !DILocation(line: 379, column: 37, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4305, file: !1, line: 378, column: 2)
!4314 = !DILocation(line: 379, column: 4, scope: !4313)
!4315 = !DILocation(line: 380, column: 25, scope: !4313)
!4316 = !DILocation(line: 380, column: 4, scope: !4313)
!4317 = !DILocation(line: 381, column: 2, scope: !4313)
!4318 = !DILocation(line: 382, column: 7, scope: !4306)
!4319 = !DILocation(line: 385, column: 7, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4263, file: !1, line: 385, column: 7)
!4321 = !DILocation(line: 383, column: 5, scope: !4306)
!4322 = !DILocation(line: 385, column: 7, scope: !4263)
!4323 = !DILocation(line: 386, column: 20, scope: !4320)
!4324 = !DILocation(line: 386, column: 5, scope: !4320)
!4325 = !DILocation(line: 389, column: 1, scope: !4263)
!4326 = distinct !DISubprogram(name: "set_is_used", scope: !2986, file: !2986, line: 564, type: !2958, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4327)
!4327 = !{!4328, !4329}
!4328 = !DILocalVariable(name: "var", arg: 1, scope: !4326, file: !2986, line: 564, type: !384)
!4329 = !DILocalVariable(name: "ann", scope: !4326, file: !2986, line: 566, type: !2256)
!4330 = !DILocation(line: 0, scope: !4326)
!4331 = !DILocation(line: 566, column: 19, scope: !4326)
!4332 = !DILocation(line: 567, column: 8, scope: !4326)
!4333 = !DILocation(line: 567, column: 13, scope: !4326)
!4334 = !DILocation(line: 568, column: 1, scope: !4326)
!4335 = distinct !DISubprogram(name: "get_var_ann", scope: !2986, file: !2986, line: 141, type: !4336, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4338)
!4336 = !DISubroutineType(types: !4337)
!4337 = !{!2256, !384}
!4338 = !{!4339, !4340}
!4339 = !DILocalVariable(name: "var", arg: 1, scope: !4335, file: !2986, line: 141, type: !384)
!4340 = !DILocalVariable(name: "p", scope: !4335, file: !2986, line: 143, type: !4341)
!4341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!4342 = !DILocation(line: 0, scope: !4335)
!4343 = !DILocation(line: 143, column: 18, scope: !4335)
!4344 = !DILocation(line: 144, column: 3, scope: !4335)
!4345 = !DILocation(line: 145, column: 10, scope: !4335)
!4346 = !DILocation(line: 145, column: 20, scope: !4335)
!4347 = !DILocation(line: 145, column: 3, scope: !4335)
!4348 = distinct !DISubprogram(name: "gimple_has_ops", scope: !255, file: !255, line: 1274, type: !3081, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4349)
!4349 = !{!4350}
!4350 = !DILocalVariable(name: "g", arg: 1, scope: !4348, file: !255, line: 1274, type: !3074)
!4351 = !DILocation(line: 0, scope: !4348)
!4352 = !DILocation(line: 1276, column: 10, scope: !4348)
!4353 = !DILocation(line: 1276, column: 26, scope: !4348)
!4354 = !DILocation(line: 1276, column: 41, scope: !4348)
!4355 = !DILocation(line: 1276, column: 44, scope: !4348)
!4356 = !DILocation(line: 1276, column: 60, scope: !4348)
!4357 = !DILocation(line: 1276, column: 3, scope: !4348)
!4358 = distinct !DISubprogram(name: "gimple_ops", scope: !255, file: !255, line: 1614, type: !4359, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4361)
!4359 = !DISubroutineType(types: !4360)
!4360 = !{!711, !677}
!4361 = !{!4362, !4363}
!4362 = !DILocalVariable(name: "gs", arg: 1, scope: !4358, file: !255, line: 1614, type: !677)
!4363 = !DILocalVariable(name: "off", scope: !4358, file: !255, line: 1616, type: !821)
!4364 = !DILocation(line: 0, scope: !4358)
!4365 = !DILocation(line: 1621, column: 28, scope: !4358)
!4366 = !DILocation(line: 1621, column: 9, scope: !4358)
!4367 = !DILocation(line: 1622, column: 3, scope: !4358)
!4368 = !DILocation(line: 1624, column: 20, scope: !4358)
!4369 = !DILocation(line: 1624, column: 32, scope: !4358)
!4370 = !DILocation(line: 1624, column: 10, scope: !4358)
!4371 = !DILocation(line: 1624, column: 3, scope: !4358)
!4372 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !255, file: !255, line: 1073, type: !4373, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4375)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!306, !677}
!4375 = !{!4376}
!4376 = !DILocalVariable(name: "gs", arg: 1, scope: !4372, file: !255, line: 1073, type: !677)
!4377 = !DILocation(line: 0, scope: !4372)
!4378 = !DILocation(line: 1075, column: 24, scope: !4372)
!4379 = !DILocation(line: 1075, column: 10, scope: !4372)
!4380 = !DILocation(line: 1075, column: 3, scope: !4372)
!4381 = distinct !DISubprogram(name: "gss_for_code", scope: !255, file: !255, line: 1061, type: !4382, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4384)
!4382 = !DISubroutineType(types: !4383)
!4383 = !{!306, !254}
!4384 = !{!4385}
!4385 = !DILocalVariable(name: "code", arg: 1, scope: !4381, file: !255, line: 1061, type: !254)
!4386 = !DILocation(line: 0, scope: !4381)
!4387 = !DILocation(line: 1066, column: 10, scope: !4381)
!4388 = !DILocation(line: 1066, column: 3, scope: !4381)
!4389 = distinct !DISubprogram(name: "clear_and_done_ssa_iter", scope: !2986, file: !2986, line: 729, type: !4390, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4392)
!4390 = !DISubroutineType(types: !4391)
!4391 = !{null, !3152}
!4392 = !{!4393}
!4393 = !DILocalVariable(name: "ptr", arg: 1, scope: !4389, file: !2986, line: 729, type: !3152)
!4394 = !DILocation(line: 0, scope: !4389)
!4395 = !DILocation(line: 731, column: 8, scope: !4389)
!4396 = !DILocation(line: 731, column: 13, scope: !4389)
!4397 = !DILocation(line: 732, column: 8, scope: !4389)
!4398 = !DILocation(line: 732, column: 13, scope: !4389)
!4399 = !DILocation(line: 733, column: 8, scope: !4389)
!4400 = !DILocation(line: 733, column: 18, scope: !4389)
!4401 = !DILocation(line: 734, column: 8, scope: !4389)
!4402 = !DILocation(line: 734, column: 14, scope: !4389)
!4403 = !DILocation(line: 735, column: 8, scope: !4389)
!4404 = !DILocation(line: 735, column: 16, scope: !4389)
!4405 = !DILocation(line: 736, column: 8, scope: !4389)
!4406 = !DILocation(line: 736, column: 17, scope: !4389)
!4407 = !DILocation(line: 737, column: 8, scope: !4389)
!4408 = !DILocation(line: 737, column: 13, scope: !4389)
!4409 = !DILocation(line: 738, column: 1, scope: !4389)
!4410 = distinct !DISubprogram(name: "ei_end_p", scope: !200, file: !200, line: 721, type: !4411, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!334, !2650}
!4413 = !{!4414}
!4414 = !DILocalVariable(name: "i", arg: 1, scope: !4410, file: !200, line: 721, type: !2650)
!4415 = !DILocation(line: 723, column: 22, scope: !4410)
!4416 = !DILocation(line: 723, column: 19, scope: !4410)
!4417 = !DILocation(line: 723, column: 10, scope: !4410)
!4418 = !DILocation(line: 723, column: 3, scope: !4410)
!4419 = distinct !DISubprogram(name: "ei_edge", scope: !200, file: !200, line: 752, type: !4420, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4422)
!4420 = !DISubroutineType(types: !4421)
!4421 = !{!657, !2650}
!4422 = !{!4423}
!4423 = !DILocalVariable(name: "i", arg: 1, scope: !4419, file: !200, line: 752, type: !2650)
!4424 = !DILocation(line: 754, column: 10, scope: !4419)
!4425 = !DILocation(line: 754, column: 3, scope: !4419)
!4426 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !200, file: !200, line: 150, type: !4427, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4431)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!5, !4429}
!4429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4430, size: 64)
!4430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !650)
!4431 = !{!4432}
!4432 = !DILocalVariable(name: "vec_", arg: 1, scope: !4426, file: !200, line: 150, type: !4429)
!4433 = !DILocation(line: 0, scope: !4426)
!4434 = !DILocation(line: 150, column: 1, scope: !4426)
!4435 = distinct !DISubprogram(name: "ei_container", scope: !200, file: !200, line: 685, type: !4436, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4438)
!4436 = !DISubroutineType(types: !4437)
!4437 = !{!645, !2650}
!4438 = !{!4439}
!4439 = !DILocalVariable(name: "i", arg: 1, scope: !4435, file: !200, line: 685, type: !2650)
!4440 = !DILocation(line: 687, column: 3, scope: !4435)
!4441 = !DILocation(line: 688, column: 10, scope: !4435)
!4442 = !DILocation(line: 688, column: 3, scope: !4435)
!4443 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !200, file: !200, line: 150, type: !4444, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4446)
!4444 = !DISubroutineType(types: !4445)
!4445 = !{!657, !4429, !5}
!4446 = !{!4447, !4448}
!4447 = !DILocalVariable(name: "vec_", arg: 1, scope: !4443, file: !200, line: 150, type: !4429)
!4448 = !DILocalVariable(name: "ix_", arg: 2, scope: !4443, file: !200, line: 150, type: !5)
!4449 = !DILocation(line: 0, scope: !4443)
!4450 = !DILocation(line: 150, column: 1, scope: !4443)
!4451 = distinct !DISubprogram(name: "inlined_function_outer_scope_p", scope: !4, file: !4, line: 4677, type: !3134, scopeLine: 4678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4452)
!4452 = !{!4453}
!4453 = !DILocalVariable(name: "block", arg: 1, scope: !4451, file: !4, line: 4677, type: !3013)
!4454 = !DILocation(line: 0, scope: !4451)
!4455 = !DILocation(line: 4679, column: 9, scope: !4451)
!4456 = !DILocation(line: 4679, column: 39, scope: !4451)
!4457 = !DILocation(line: 4679, column: 2, scope: !4451)
!4458 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !255, file: !255, line: 3100, type: !4459, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4461)
!4459 = !DISubroutineType(types: !4460)
!4460 = !{!1565, !677, !5}
!4461 = !{!4462, !4463}
!4462 = !DILocalVariable(name: "gs", arg: 1, scope: !4458, file: !255, line: 3100, type: !677)
!4463 = !DILocalVariable(name: "index", arg: 2, scope: !4458, file: !255, line: 3100, type: !5)
!4464 = !DILocation(line: 0, scope: !4458)
!4465 = !DILocation(line: 3103, column: 3, scope: !4458)
!4466 = !DILocation(line: 3104, column: 12, scope: !4458)
!4467 = !DILocation(line: 3104, column: 3, scope: !4458)
!4468 = distinct !DISubprogram(name: "gimple_bb", scope: !255, file: !255, line: 1112, type: !4469, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4471)
!4469 = !DISubroutineType(types: !4470)
!4470 = !{!641, !3074}
!4471 = !{!4472}
!4472 = !DILocalVariable(name: "g", arg: 1, scope: !4468, file: !255, line: 1112, type: !3074)
!4473 = !DILocation(line: 0, scope: !4468)
!4474 = !DILocation(line: 1114, column: 20, scope: !4468)
!4475 = !DILocation(line: 1114, column: 3, scope: !4468)
!4476 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2986, file: !2986, line: 292, type: !4477, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4480)
!4477 = !DISubroutineType(types: !4478)
!4478 = !{!1550, !4479, !384}
!4479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3751, size: 64)
!4480 = !{!4481, !4482}
!4481 = !DILocalVariable(name: "imm", arg: 1, scope: !4476, file: !2986, line: 292, type: !4479)
!4482 = !DILocalVariable(name: "var", arg: 2, scope: !4476, file: !2986, line: 292, type: !384)
!4483 = !DILocation(line: 0, scope: !4476)
!4484 = !DILocation(line: 294, column: 18, scope: !4476)
!4485 = !DILocation(line: 294, column: 8, scope: !4476)
!4486 = !DILocation(line: 294, column: 14, scope: !4476)
!4487 = !DILocation(line: 295, column: 30, scope: !4476)
!4488 = !DILocation(line: 295, column: 16, scope: !4476)
!4489 = !DILocation(line: 299, column: 7, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4476, file: !2986, line: 299, column: 7)
!4491 = !DILocation(line: 299, column: 7, scope: !4476)
!4492 = !DILocation(line: 301, column: 15, scope: !4476)
!4493 = !DILocation(line: 301, column: 3, scope: !4476)
!4494 = !DILocation(line: 302, column: 1, scope: !4476)
!4495 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2986, file: !2986, line: 285, type: !4496, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4500)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!334, !4498}
!4498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4499, size: 64)
!4499 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3751)
!4500 = !{!4501}
!4501 = !DILocalVariable(name: "imm", arg: 1, scope: !4495, file: !2986, line: 285, type: !4498)
!4502 = !DILocation(line: 0, scope: !4495)
!4503 = !DILocation(line: 287, column: 16, scope: !4495)
!4504 = !DILocation(line: 287, column: 32, scope: !4495)
!4505 = !DILocation(line: 287, column: 24, scope: !4495)
!4506 = !DILocation(line: 287, column: 10, scope: !4495)
!4507 = !DILocation(line: 287, column: 3, scope: !4495)
!4508 = distinct !DISubprogram(name: "phi_arg_index_from_use", scope: !2986, file: !2986, line: 533, type: !4509, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4511)
!4509 = !DISubroutineType(types: !4510)
!4510 = !{!335, !1550}
!4511 = !{!4512, !4513, !4514, !4515, !4516}
!4512 = !DILocalVariable(name: "use", arg: 1, scope: !4508, file: !2986, line: 533, type: !1550)
!4513 = !DILocalVariable(name: "element", scope: !4508, file: !2986, line: 535, type: !1565)
!4514 = !DILocalVariable(name: "root", scope: !4508, file: !2986, line: 535, type: !1565)
!4515 = !DILocalVariable(name: "index", scope: !4508, file: !2986, line: 536, type: !821)
!4516 = !DILocalVariable(name: "phi", scope: !4508, file: !2986, line: 537, type: !677)
!4517 = !DILocation(line: 0, scope: !4508)
!4518 = !DILocation(line: 543, column: 9, scope: !4508)
!4519 = !DILocation(line: 544, column: 3, scope: !4508)
!4520 = !DILocation(line: 547, column: 10, scope: !4508)
!4521 = !DILocation(line: 548, column: 19, scope: !4508)
!4522 = !DILocation(line: 558, column: 9, scope: !4508)
!4523 = !DILocation(line: 558, column: 2, scope: !4508)
!4524 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2986, file: !2986, line: 306, type: !4525, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4527)
!4525 = !DISubroutineType(types: !4526)
!4526 = !{!1550, !4479}
!4527 = !{!4528, !4529}
!4528 = !DILocalVariable(name: "imm", arg: 1, scope: !4524, file: !2986, line: 306, type: !4479)
!4529 = !DILocalVariable(name: "old", scope: !4524, file: !2986, line: 308, type: !1550)
!4530 = !DILocation(line: 0, scope: !4524)
!4531 = !DILocation(line: 308, column: 28, scope: !4524)
!4532 = !DILocation(line: 319, column: 23, scope: !4524)
!4533 = !DILocation(line: 319, column: 16, scope: !4524)
!4534 = !DILocation(line: 320, column: 7, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4524, file: !2986, line: 320, column: 7)
!4536 = !DILocation(line: 320, column: 7, scope: !4524)
!4537 = !DILocation(line: 322, column: 15, scope: !4524)
!4538 = !DILocation(line: 322, column: 3, scope: !4524)
!4539 = !DILocation(line: 323, column: 1, scope: !4524)
!4540 = distinct !DISubprogram(name: "loe_visit_block", scope: !1, file: !1, line: 868, type: !4541, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4543)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{null, !1553, !640, !3847, !1036}
!4543 = !{!4544, !4545, !4546, !4547, !4548, !4549, !4550, !4551, !4552}
!4544 = !DILocalVariable(name: "live", arg: 1, scope: !4540, file: !1, line: 868, type: !1553)
!4545 = !DILocalVariable(name: "bb", arg: 2, scope: !4540, file: !1, line: 868, type: !640)
!4546 = !DILocalVariable(name: "visited", arg: 3, scope: !4540, file: !1, line: 868, type: !3847)
!4547 = !DILocalVariable(name: "tmp", arg: 4, scope: !4540, file: !1, line: 869, type: !1036)
!4548 = !DILocalVariable(name: "e", scope: !4540, file: !1, line: 871, type: !657)
!4549 = !DILocalVariable(name: "change", scope: !4540, file: !1, line: 872, type: !334)
!4550 = !DILocalVariable(name: "ei", scope: !4540, file: !1, line: 873, type: !2650)
!4551 = !DILocalVariable(name: "pred_bb", scope: !4540, file: !1, line: 874, type: !640)
!4552 = !DILocalVariable(name: "loe", scope: !4540, file: !1, line: 875, type: !1036)
!4553 = !DILocation(line: 0, scope: !4540)
!4554 = !DILocation(line: 871, column: 3, scope: !4540)
!4555 = !DILocation(line: 873, column: 3, scope: !4540)
!4556 = !DILocation(line: 876, column: 3, scope: !4540)
!4557 = !DILocation(line: 878, column: 25, scope: !4540)
!4558 = !DILocation(line: 878, column: 3, scope: !4540)
!4559 = !DILocation(line: 879, column: 9, scope: !4540)
!4560 = !DILocation(line: 881, column: 3, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4540, file: !1, line: 881, column: 3)
!4562 = !DILocation(line: 0, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4561, file: !1, line: 881, column: 3)
!4564 = !DILocation(line: 0, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4563, file: !1, line: 882, column: 5)
!4566 = !DILocation(line: 0, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4568, file: !1, line: 897, column: 2)
!4568 = distinct !DILexicalBlock(scope: !4565, file: !1, line: 896, column: 11)
!4569 = !DILocation(line: 881, column: 3, scope: !4563)
!4570 = !DILocation(line: 883, column: 17, scope: !4565)
!4571 = !DILocation(line: 883, column: 20, scope: !4565)
!4572 = !DILocation(line: 884, column: 22, scope: !4573)
!4573 = distinct !DILexicalBlock(scope: !4565, file: !1, line: 884, column: 11)
!4574 = !DILocation(line: 884, column: 19, scope: !4573)
!4575 = !DILocation(line: 884, column: 11, scope: !4565)
!4576 = !DILocation(line: 890, column: 41, scope: !4565)
!4577 = !DILocation(line: 890, column: 58, scope: !4565)
!4578 = !DILocation(line: 890, column: 35, scope: !4565)
!4579 = !DILocation(line: 890, column: 7, scope: !4565)
!4580 = !DILocation(line: 895, column: 33, scope: !4565)
!4581 = !DILocation(line: 895, column: 16, scope: !4565)
!4582 = !DILocation(line: 896, column: 11, scope: !4568)
!4583 = !DILocation(line: 896, column: 49, scope: !4568)
!4584 = !DILocation(line: 896, column: 46, scope: !4568)
!4585 = !DILocation(line: 898, column: 4, scope: !4567)
!4586 = !DILocation(line: 899, column: 36, scope: !4567)
!4587 = !DILocation(line: 899, column: 22, scope: !4567)
!4588 = !DILocation(line: 899, column: 25, scope: !4567)
!4589 = !DILocation(line: 900, column: 2, scope: !4567)
!4590 = distinct !{!4590, !4560, !4591}
!4591 = !DILocation(line: 901, column: 5, scope: !4561)
!4592 = !DILocation(line: 902, column: 1, scope: !4540)
!4593 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !200, file: !200, line: 281, type: !4594, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4598)
!4594 = !DISubroutineType(types: !4595)
!4595 = !{!640, !4596, !5}
!4596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4597, size: 64)
!4597 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !932)
!4598 = !{!4599, !4600}
!4599 = !DILocalVariable(name: "vec_", arg: 1, scope: !4593, file: !200, line: 281, type: !4596)
!4600 = !DILocalVariable(name: "ix_", arg: 2, scope: !4593, file: !200, line: 281, type: !5)
!4601 = !DILocation(line: 0, scope: !4593)
!4602 = !DILocation(line: 281, column: 1, scope: !4593)
!4603 = distinct !DISubprogram(name: "SET_BIT", scope: !3848, file: !3848, line: 63, type: !4604, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4606)
!4604 = !DISubroutineType(types: !4605)
!4605 = !{null, !3847, !5}
!4606 = !{!4607, !4608, !4609}
!4607 = !DILocalVariable(name: "map", arg: 1, scope: !4603, file: !3848, line: 63, type: !3847)
!4608 = !DILocalVariable(name: "bitno", arg: 2, scope: !4603, file: !3848, line: 63, type: !5)
!4609 = !DILocalVariable(name: "oldbit", scope: !4610, file: !3848, line: 67, type: !334)
!4610 = distinct !DILexicalBlock(scope: !4611, file: !3848, line: 66, column: 5)
!4611 = distinct !DILexicalBlock(scope: !4603, file: !3848, line: 65, column: 7)
!4612 = !DILocation(line: 0, scope: !4603)
!4613 = !DILocation(line: 65, column: 12, scope: !4611)
!4614 = !DILocation(line: 65, column: 7, scope: !4611)
!4615 = !DILocation(line: 65, column: 7, scope: !4603)
!4616 = !DILocation(line: 73, column: 40, scope: !4603)
!4617 = !DILocation(line: 73, column: 29, scope: !4603)
!4618 = !DILocation(line: 72, column: 19, scope: !4603)
!4619 = !DILocation(line: 72, column: 3, scope: !4603)
!4620 = !DILocation(line: 68, column: 16, scope: !4610)
!4621 = !DILocation(line: 69, column: 12, scope: !4622)
!4622 = distinct !DILexicalBlock(scope: !4610, file: !3848, line: 69, column: 11)
!4623 = !DILocation(line: 69, column: 11, scope: !4610)
!4624 = !DILocation(line: 70, column: 2, scope: !4622)
!4625 = !DILocation(line: 70, column: 41, scope: !4622)
!4626 = !DILocation(line: 73, column: 5, scope: !4603)
!4627 = !DILocation(line: 74, column: 1, scope: !4603)
!4628 = distinct !DISubprogram(name: "RESET_BIT", scope: !3848, file: !3848, line: 82, type: !4604, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !4629)
!4629 = !{!4630, !4631, !4632}
!4630 = !DILocalVariable(name: "map", arg: 1, scope: !4628, file: !3848, line: 82, type: !3847)
!4631 = !DILocalVariable(name: "bitno", arg: 2, scope: !4628, file: !3848, line: 82, type: !5)
!4632 = !DILocalVariable(name: "oldbit", scope: !4633, file: !3848, line: 86, type: !334)
!4633 = distinct !DILexicalBlock(scope: !4634, file: !3848, line: 85, column: 5)
!4634 = distinct !DILexicalBlock(scope: !4628, file: !3848, line: 84, column: 7)
!4635 = !DILocation(line: 0, scope: !4628)
!4636 = !DILocation(line: 84, column: 12, scope: !4634)
!4637 = !DILocation(line: 84, column: 7, scope: !4634)
!4638 = !DILocation(line: 84, column: 7, scope: !4628)
!4639 = !DILocation(line: 92, column: 42, scope: !4628)
!4640 = !DILocation(line: 92, column: 31, scope: !4628)
!4641 = !DILocation(line: 91, column: 19, scope: !4628)
!4642 = !DILocation(line: 91, column: 3, scope: !4628)
!4643 = !DILocation(line: 87, column: 16, scope: !4633)
!4644 = !DILocation(line: 88, column: 11, scope: !4645)
!4645 = distinct !DILexicalBlock(scope: !4633, file: !3848, line: 88, column: 11)
!4646 = !DILocation(line: 88, column: 11, scope: !4633)
!4647 = !DILocation(line: 89, column: 2, scope: !4645)
!4648 = !DILocation(line: 89, column: 41, scope: !4645)
!4649 = !DILocation(line: 92, column: 8, scope: !4628)
!4650 = !DILocation(line: 92, column: 5, scope: !4628)
!4651 = !DILocation(line: 93, column: 1, scope: !4628)
