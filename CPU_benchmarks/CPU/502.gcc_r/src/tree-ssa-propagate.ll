; ModuleID = 'tree-ssa-propagate.bc'
source_filename = "tree-ssa-propagate.c"
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
%struct.rtx_def = type { i32, %union.u }
%union.u = type { %struct.block_symbol }
%struct.block_symbol = type { [3 x %union.rtunion_def], %struct.object_block*, i64 }
%union.rtunion_def = type { i8* }
%struct.object_block = type { %union.section*, i32, i64, %struct.VEC_rtx_gc*, %struct.VEC_rtx_gc* }
%union.section = type { %struct.unnamed_section }
%struct.unnamed_section = type { %struct.section_common, void (i8*)*, i8*, %union.section* }
%struct.section_common = type { i32 }
%struct.VEC_rtx_gc = type { %struct.VEC_rtx_base }
%struct.VEC_rtx_base = type { i32, i32, [1 x %struct.rtx_def*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.prop_stats_d = type { i64, i64, i64, i64 }
%struct.ggc_root_tab = type { i8*, i64, i64, void (i8*)*, void (i8*)* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.tree_int_cst = type { %struct.tree_common, %struct.double_int }
%struct.double_int = type { i64, i64 }
%struct.ssa_operand_iterator_d = type { i8, i32, %struct.def_optype_d*, %struct.use_optype_d*, i32, i32, %union.gimple_statement_d* }
%struct.gimple_stmt_iterator = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_d*, %struct.basic_block_def* }
%struct.VEC_tree_heap = type { %struct.VEC_tree_base }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.prop_value_d = type { i32, %union.tree_node* }
%struct.immediate_use_iterator_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@tree_code_type = external dso_local local_unnamed_addr constant [0 x i32], align 4
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str = private unnamed_addr constant [21 x i8] c"tree-ssa-propagate.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@ssa_prop_visit_stmt = internal unnamed_addr global i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* null, align 8, !dbg !0
@ssa_prop_visit_phi = internal unnamed_addr global i32 (%union.gimple_statement_d*)* null, align 8, !dbg !1831
@interesting_ssa_edges = internal global %struct.VEC_gimple_gc* null, align 8, !dbg !1837
@varying_ssa_edges = internal global %struct.VEC_gimple_gc* null, align 8, !dbg !1839
@dump_file = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@dump_flags = external dso_local local_unnamed_addr global i32, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"\0ASubstituting values and folding statements\0A\0A\00", align 1
@prop_stats = internal global %struct.prop_stats_d zeroinitializer, align 8, !dbg !1841
@.str.3 = private unnamed_addr constant [20 x i8] c"Removing dead stmt \00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"Folding statement: \00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Folded into: \00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"Not folded\0A\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"Constants propagated\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Copies propagated\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Statements folded\00", align 1
@.str.11 = private unnamed_addr constant [19 x i8] c"Statements deleted\00", align 1
@gt_ggc_r_gt_tree_ssa_propagate_h = dso_local local_unnamed_addr constant [3 x %struct.ggc_root_tab] [%struct.ggc_root_tab { i8* bitcast (%struct.VEC_gimple_gc** @varying_ssa_edges to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_gimple_gc, void (i8*)* @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab { i8* bitcast (%struct.VEC_gimple_gc** @interesting_ssa_edges to i8*), i64 1, i64 8, void (i8*)* @gt_ggc_mx_VEC_gimple_gc, void (i8*)* @gt_pch_nx_VEC_gimple_gc }, %struct.ggc_root_tab zeroinitializer], align 16, !dbg !1817
@.str.12 = private unnamed_addr constant [21 x i8] c"./tree-flow-inline.h\00", align 1
@gimple_ops_offset_ = external dso_local local_unnamed_addr constant [0 x i64], align 8
@.str.13 = private unnamed_addr constant [11 x i8] c"./gimple.h\00", align 1
@gss_for_code_ = external dso_local local_unnamed_addr constant [0 x i32], align 4
@executable_blocks = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !1849
@bb_in_list = internal unnamed_addr global %struct.simple_bitmap_def* null, align 8, !dbg !1861
@cfg_blocks = internal global %struct.VEC_basic_block_heap* null, align 8, !dbg !1863
@.str.14 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"Adding Destination of edge (%d -> %d) to worklist\0A\0A\00", align 1
@cfg_blocks_head = internal unnamed_addr global i32 0, align 4, !dbg !1865
@cfg_blocks_tail = internal unnamed_addr global i32 0, align 4, !dbg !1867
@cfg_blocks_num = internal unnamed_addr global i32 0, align 4, !dbg !1869
@.str.16 = private unnamed_addr constant [22 x i8] c"\0ASimulating block %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"\0ASimulating statement (from ssa_edges): \00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"Folding PHI node: \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"No folding possible\0A\00", align 1
@flag_var_tracking_assignments = external dso_local local_unnamed_addr global i32, align 4
@gimple_rhs_class_table = external dso_local local_unnamed_addr constant [0 x i8], align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1880 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1893, metadata !DIExpression()), !dbg !1895
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1894, metadata !DIExpression()), !dbg !1895
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1896
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1897
  ret i32 %call, !dbg !1898
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1899 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1903
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1904
  ret i32 %call, !dbg !1905
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1906 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1961, metadata !DIExpression()), !dbg !1962
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1963
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1963
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1963
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1963
  %cmp = icmp uge i8* %0, %1, !dbg !1963
  %conv1 = zext i1 %cmp to i64, !dbg !1963
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1963
  %tobool = icmp eq i64 %expval, 0, !dbg !1963
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1963

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1963
  br label %cond.end, !dbg !1963

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1963
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1963
  %2 = load i8, i8* %0, align 1, !dbg !1963
  %conv3 = zext i8 %2 to i32, !dbg !1963
  br label %cond.end, !dbg !1963

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1963
  ret i32 %cond, !dbg !1964
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !1965 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !1967, metadata !DIExpression()), !dbg !1968
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !1969
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1969
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !1969
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !1969
  %cmp = icmp uge i8* %0, %1, !dbg !1969
  %conv1 = zext i1 %cmp to i64, !dbg !1969
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1969
  %tobool = icmp eq i64 %expval, 0, !dbg !1969
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1969

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !1969
  br label %cond.end, !dbg !1969

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1969
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1969
  %2 = load i8, i8* %0, align 1, !dbg !1969
  %conv3 = zext i8 %2 to i32, !dbg !1969
  br label %cond.end, !dbg !1969

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1969
  ret i32 %cond, !dbg !1970
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !1971 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1972
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !1972
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !1972
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !1972
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !1972
  %cmp = icmp uge i8* %1, %2, !dbg !1972
  %conv1 = zext i1 %cmp to i64, !dbg !1972
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1972
  %tobool = icmp eq i64 %expval, 0, !dbg !1972
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1972

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !1972
  br label %cond.end, !dbg !1972

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !1972
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !1972
  %3 = load i8, i8* %1, align 1, !dbg !1972
  %conv3 = zext i8 %3 to i32, !dbg !1972
  br label %cond.end, !dbg !1972

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !1972
  ret i32 %cond, !dbg !1973
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !1974 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1978, metadata !DIExpression()), !dbg !1979
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1980
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !1981
  ret i32 %call, !dbg !1982
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1983 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1987, metadata !DIExpression()), !dbg !1989
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1988, metadata !DIExpression()), !dbg !1989
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1990
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1990
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1990
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1990
  %cmp = icmp uge i8* %0, %1, !dbg !1990
  %conv1 = zext i1 %cmp to i64, !dbg !1990
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1990
  %tobool = icmp eq i64 %expval, 0, !dbg !1990
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1990

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1990
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1990
  br label %cond.end, !dbg !1990

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1990
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1990
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1990
  store i8 %conv2, i8* %0, align 1, !dbg !1990
  %conv6 = and i32 %__c, 255, !dbg !1990
  br label %cond.end, !dbg !1990

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1990
  ret i32 %cond, !dbg !1991
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !1992 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !1994, metadata !DIExpression()), !dbg !1996
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !1995, metadata !DIExpression()), !dbg !1996
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !1997
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !1997
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !1997
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !1997
  %cmp = icmp uge i8* %0, %1, !dbg !1997
  %conv1 = zext i1 %cmp to i64, !dbg !1997
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !1997
  %tobool = icmp eq i64 %expval, 0, !dbg !1997
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !1997

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !1997
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !1997
  br label %cond.end, !dbg !1997

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !1997
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1997
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !1997
  store i8 %conv2, i8* %0, align 1, !dbg !1997
  %conv6 = and i32 %__c, 255, !dbg !1997
  br label %cond.end, !dbg !1997

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !1997
  ret i32 %cond, !dbg !1998
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !1999 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2001, metadata !DIExpression()), !dbg !2002
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2003
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2003
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2003
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2003
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2003
  %cmp = icmp uge i8* %1, %2, !dbg !2003
  %conv1 = zext i1 %cmp to i64, !dbg !2003
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2003
  %tobool = icmp eq i64 %expval, 0, !dbg !2003
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2003

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2003
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2003
  br label %cond.end, !dbg !2003

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2003
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2003
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2003
  store i8 %conv4, i8* %1, align 1, !dbg !2003
  %conv6 = and i32 %__c, 255, !dbg !2003
  br label %cond.end, !dbg !2003

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2003
  ret i32 %cond, !dbg !2004
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2005 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2011, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2012, metadata !DIExpression()), !dbg !2014
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2013, metadata !DIExpression()), !dbg !2014
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2015
  ret i64 %call, !dbg !2016
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2019, metadata !DIExpression()), !dbg !2020
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2021
  %0 = load i32, i32* %_flags, align 8, !dbg !2021
  %and = lshr i32 %0, 4, !dbg !2021
  %and.lobit = and i32 %and, 1, !dbg !2021
  ret i32 %and.lobit, !dbg !2022
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2023 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2025, metadata !DIExpression()), !dbg !2026
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2027
  %0 = load i32, i32* %_flags, align 8, !dbg !2027
  %and = lshr i32 %0, 5, !dbg !2027
  %and.lobit = and i32 %and, 1, !dbg !2027
  ret i32 %and.lobit, !dbg !2028
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2029 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2032, metadata !DIExpression()), !dbg !2033
  %__c.off = add i32 %__c, 128, !dbg !2034
  %0 = icmp ult i32 %__c.off, 384, !dbg !2034
  br i1 %0, label %cond.true, label %cond.end, !dbg !2034

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2035
  %1 = load i32*, i32** %call, align 8, !dbg !2036
  %idxprom = sext i32 %__c to i64, !dbg !2037
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2037
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2037
  br label %cond.end, !dbg !2038

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2038
  ret i32 %cond, !dbg !2039
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2040 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2042, metadata !DIExpression()), !dbg !2043
  %__c.off = add i32 %__c, 128, !dbg !2044
  %0 = icmp ult i32 %__c.off, 384, !dbg !2044
  br i1 %0, label %cond.true, label %cond.end, !dbg !2044

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2045
  %1 = load i32*, i32** %call, align 8, !dbg !2046
  %idxprom = sext i32 %__c to i64, !dbg !2047
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2047
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2047
  br label %cond.end, !dbg !2048

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2048
  ret i32 %cond, !dbg !2049
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2050 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2055, metadata !DIExpression()), !dbg !2056
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2057
  %conv = trunc i64 %call to i32, !dbg !2058
  ret i32 %conv, !dbg !2059
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2060 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2064, metadata !DIExpression()), !dbg !2065
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2066
  ret i64 %call, !dbg !2067
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2068 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2073, metadata !DIExpression()), !dbg !2074
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2075
  ret i64 %call, !dbg !2076
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2077 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2083, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2084, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2085, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2086, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2087, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 0, metadata !2088, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2089, metadata !DIExpression()), !dbg !2093
  br label %while.cond, !dbg !2094

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2095
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2089, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2088, metadata !DIExpression()), !dbg !2093
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2096
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2094

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2097
  %div = lshr i64 %add, 1, !dbg !2099
  call void @llvm.dbg.value(metadata i64 %div, metadata !2090, metadata !DIExpression()), !dbg !2093
  %mul = mul i64 %div, %__size, !dbg !2100
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2101
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2091, metadata !DIExpression()), !dbg !2093
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2102
  call void @llvm.dbg.value(metadata i32 %call, metadata !2092, metadata !DIExpression()), !dbg !2093
  %cmp1 = icmp slt i32 %call, 0, !dbg !2103
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2105

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2106
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2108

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2109
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2088, metadata !DIExpression()), !dbg !2093
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2093
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2089, metadata !DIExpression()), !dbg !2093
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2088, metadata !DIExpression()), !dbg !2093
  br label %while.cond, !dbg !2094, !llvm.loop !2110

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2093
  ret i8* %retval.0, !dbg !2112
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2113 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2119, metadata !DIExpression()), !dbg !2120
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2121
  ret double %call, !dbg !2122
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2123 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2132, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2133, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 %base, metadata !2134, metadata !DIExpression()), !dbg !2135
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2136
  ret i64 %call, !dbg !2137
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2138 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2144, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2145, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.value(metadata i32 %base, metadata !2146, metadata !DIExpression()), !dbg !2147
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2148
  ret i64 %call, !dbg !2149
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2150 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2161, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2162, metadata !DIExpression()), !dbg !2164
  call void @llvm.dbg.value(metadata i32 %base, metadata !2163, metadata !DIExpression()), !dbg !2164
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2165
  ret i64 %call, !dbg !2166
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2167 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2171, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2172, metadata !DIExpression()), !dbg !2174
  call void @llvm.dbg.value(metadata i32 %base, metadata !2173, metadata !DIExpression()), !dbg !2174
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2175
  ret i64 %call, !dbg !2176
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2177 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2217, metadata !DIExpression()), !dbg !2219
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2218, metadata !DIExpression()), !dbg !2219
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2220
  ret i32 %call, !dbg !2221
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2222 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2224, metadata !DIExpression()), !dbg !2226
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2225, metadata !DIExpression()), !dbg !2226
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2227
  ret i32 %call, !dbg !2228
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2229 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2233, metadata !DIExpression()), !dbg !2235
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2234, metadata !DIExpression()), !dbg !2235
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2236
  ret i32 %call, !dbg !2237
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2238 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2242, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2243, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2244, metadata !DIExpression()), !dbg !2246
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2245, metadata !DIExpression()), !dbg !2246
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2247
  ret i32 %call, !dbg !2248
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2249 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2253, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2255, metadata !DIExpression()), !dbg !2256
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2255, metadata !DIExpression(DW_OP_deref)), !dbg !2256
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2257
  ret i32 %call, !dbg !2258
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2259 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2263, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2264, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2265, metadata !DIExpression()), !dbg !2267
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2266, metadata !DIExpression()), !dbg !2267
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2266, metadata !DIExpression(DW_OP_deref)), !dbg !2267
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2268
  ret i32 %call, !dbg !2269
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2270 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2294, metadata !DIExpression()), !dbg !2296
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2295, metadata !DIExpression()), !dbg !2296
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2297
  ret i32 %call, !dbg !2298
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2299 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2301, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2302, metadata !DIExpression()), !dbg !2303
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2304
  ret i32 %call, !dbg !2305
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2306 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2310, metadata !DIExpression()), !dbg !2312
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2311, metadata !DIExpression()), !dbg !2312
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2313
  ret i32 %call, !dbg !2314
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2315 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2319, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2320, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2321, metadata !DIExpression()), !dbg !2323
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2322, metadata !DIExpression()), !dbg !2323
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2324
  ret i32 %call, !dbg !2325
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @valid_gimple_rhs_p(%union.tree_node* %expr) local_unnamed_addr #5 !dbg !2326 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2330, metadata !DIExpression()), !dbg !2336
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2337
  %bf.load = load i64, i64* %0, align 8, !dbg !2337
  %1 = trunc i64 %bf.load to i32, !dbg !2337
  %bf.cast = and i32 %1, 65535, !dbg !2337
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !2331, metadata !DIExpression()), !dbg !2336
  %idxprom = zext i32 %bf.cast to i64, !dbg !2338
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %idxprom, !dbg !2338
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2338
  switch i32 %2, label %cleanup84 [
    i32 3, label %sw.bb
    i32 1, label %sw.epilog83
    i32 7, label %sw.bb1
    i32 5, label %sw.bb1
    i32 6, label %sw.bb12
    i32 10, label %sw.bb20
    i32 0, label %sw.bb78
  ], !dbg !2339

sw.bb:                                            ; preds = %entry
  %call = tail call zeroext i8 @is_gimple_variable(%union.tree_node* %expr) #6, !dbg !2340
  %tobool = icmp eq i8 %call, 0, !dbg !2340
  br i1 %tobool, label %cleanup84, label %sw.epilog83, !dbg !2342

sw.bb1:                                           ; preds = %entry, %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2343
  %3 = load %union.tree_node*, %union.tree_node** %operands, align 8, !dbg !2343
  %call3 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %3) #6, !dbg !2345
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2345
  br i1 %tobool4, label %cleanup84, label %lor.lhs.false, !dbg !2346

lor.lhs.false:                                    ; preds = %sw.bb1
  %arrayidx7 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2347
  %4 = load %union.tree_node*, %union.tree_node** %arrayidx7, align 8, !dbg !2347
  %call8 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %4) #6, !dbg !2348
  %tobool9 = icmp eq i8 %call8, 0, !dbg !2348
  br i1 %tobool9, label %cleanup84, label %sw.epilog83, !dbg !2349

sw.bb12:                                          ; preds = %entry
  %operands14 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2350
  %5 = load %union.tree_node*, %union.tree_node** %operands14, align 8, !dbg !2350
  %call16 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %5) #6, !dbg !2352
  %tobool17 = icmp eq i8 %call16, 0, !dbg !2352
  br i1 %tobool17, label %cleanup84, label %sw.epilog83, !dbg !2353

sw.bb20:                                          ; preds = %entry
  %trunc = trunc i64 %bf.load to i16, !dbg !2354
  switch i16 %trunc, label %cleanup84 [
    i16 121, label %sw.bb21
    i16 96, label %sw.bb55
    i16 93, label %sw.bb63
    i16 95, label %sw.bb63
    i16 94, label %sw.bb63
  ], !dbg !2354

sw.bb21:                                          ; preds = %sw.bb20
  %call22 = tail call zeroext i8 @is_gimple_min_invariant(%union.tree_node* %expr) #6, !dbg !2355
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2355
  br i1 %tobool23, label %if.end25, label %cleanup, !dbg !2357

if.end25:                                         ; preds = %sw.bb21
  br label %while.cond, !dbg !2358

while.cond:                                       ; preds = %if.end47, %if.end25
  %expr.pn = phi %union.tree_node* [ %expr, %if.end25 ], [ %t.0, %if.end47 ]
  %t.0.in = getelementptr inbounds %union.tree_node, %union.tree_node* %expr.pn, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2359
  %t.0 = load %union.tree_node*, %union.tree_node** %t.0.in, align 8, !dbg !2359
  call void @llvm.dbg.value(metadata %union.tree_node* %t.0, metadata !2332, metadata !DIExpression()), !dbg !2359
  %call29 = tail call fastcc zeroext i8 @handled_component_p(%union.tree_node* %t.0) #7, !dbg !2360
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2358
  br i1 %tobool30, label %while.end, label %while.body, !dbg !2358

while.body:                                       ; preds = %while.cond
  %6 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2361
  %bf.load32 = load i64, i64* %6, align 8, !dbg !2361
  %bf.cast342 = and i64 %bf.load32, 65535, !dbg !2364
  %cmp = icmp eq i64 %bf.cast342, 45, !dbg !2364
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false35, !dbg !2365

lor.lhs.false35:                                  ; preds = %while.body
  %cmp40 = icmp eq i64 %bf.cast342, 46, !dbg !2366
  br i1 %cmp40, label %land.lhs.true, label %if.end47, !dbg !2367

land.lhs.true:                                    ; preds = %lor.lhs.false35, %while.body
  %operands42 = getelementptr inbounds %union.tree_node, %union.tree_node* %t.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2368
  %arrayidx43 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands42, i64 1, !dbg !2368
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx43, align 8, !dbg !2368
  %call44 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %7) #6, !dbg !2369
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2369
  br i1 %tobool45, label %cleanup.loopexit, label %if.end47, !dbg !2370

if.end47:                                         ; preds = %land.lhs.true, %lor.lhs.false35
  br label %while.cond, !dbg !2358, !llvm.loop !2371

while.end:                                        ; preds = %while.cond
  %t.0.lcssa = phi %union.tree_node* [ %t.0, %while.cond ], !dbg !2359
  %call51 = tail call zeroext i8 @is_gimple_id(%union.tree_node* %t.0.lcssa) #6, !dbg !2373
  %tobool52 = icmp ne i8 %call51, 0, !dbg !2373
  br label %cleanup, !dbg !2375

cleanup.loopexit:                                 ; preds = %land.lhs.true
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %sw.bb21, %while.end
  %cleanup.dest.slot.0 = phi i1 [ false, %sw.bb21 ], [ %tobool52, %while.end ], [ false, %cleanup.loopexit ]
  %retval.0 = phi i8 [ 1, %sw.bb21 ], [ 0, %while.end ], [ 0, %cleanup.loopexit ]
  br i1 %cleanup.dest.slot.0, label %sw.epilog83, label %cleanup84

sw.bb55:                                          ; preds = %sw.bb20
  %operands57 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2376
  %8 = load %union.tree_node*, %union.tree_node** %operands57, align 8, !dbg !2376
  %call59 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %8) #6, !dbg !2378
  %tobool60 = icmp eq i8 %call59, 0, !dbg !2378
  br i1 %tobool60, label %cleanup84, label %sw.epilog83, !dbg !2379

sw.bb63:                                          ; preds = %sw.bb20, %sw.bb20, %sw.bb20
  %operands65 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2380
  %9 = load %union.tree_node*, %union.tree_node** %operands65, align 8, !dbg !2380
  %call67 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %9) #6, !dbg !2382
  %tobool68 = icmp eq i8 %call67, 0, !dbg !2382
  br i1 %tobool68, label %cleanup84, label %lor.lhs.false69, !dbg !2383

lor.lhs.false69:                                  ; preds = %sw.bb63
  %arrayidx72 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands65, i64 1, !dbg !2384
  %10 = load %union.tree_node*, %union.tree_node** %arrayidx72, align 8, !dbg !2384
  %call73 = tail call zeroext i8 @is_gimple_val(%union.tree_node* %10) #6, !dbg !2385
  %tobool74 = icmp eq i8 %call73, 0, !dbg !2385
  br i1 %tobool74, label %cleanup84, label %sw.epilog83, !dbg !2386

sw.bb78:                                          ; preds = %entry
  %cmp79 = icmp eq i32 %bf.cast, 141, !dbg !2387
  br i1 %cmp79, label %sw.epilog83, label %cleanup84, !dbg !2389

sw.epilog83:                                      ; preds = %sw.bb, %lor.lhs.false, %sw.bb12, %sw.bb55, %lor.lhs.false69, %sw.bb78, %cleanup, %entry
  br label %cleanup84, !dbg !2390

cleanup84:                                        ; preds = %sw.bb, %lor.lhs.false, %sw.bb1, %sw.bb12, %sw.bb55, %lor.lhs.false69, %sw.bb63, %sw.bb78, %entry, %sw.bb20, %cleanup, %sw.epilog83
  %retval.1 = phi i8 [ 1, %sw.epilog83 ], [ %retval.0, %cleanup ], [ 0, %sw.bb ], [ 0, %lor.lhs.false ], [ 0, %sw.bb1 ], [ 0, %sw.bb12 ], [ 0, %sw.bb55 ], [ 0, %lor.lhs.false69 ], [ 0, %sw.bb63 ], [ 0, %sw.bb20 ], [ 0, %sw.bb78 ], [ 0, %entry ], !dbg !2336
  ret i8 %retval.1, !dbg !2391
}

declare dso_local zeroext i8 @is_gimple_variable(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_val(%union.tree_node*) local_unnamed_addr #2

declare dso_local zeroext i8 @is_gimple_min_invariant(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @handled_component_p(%union.tree_node* %t) unnamed_addr #0 !dbg !2392 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %t, metadata !2399, metadata !DIExpression()), !dbg !2400
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %t, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2401
  %bf.load = load i64, i64* %0, align 8, !dbg !2401
  %1 = trunc i64 %bf.load to i16, !dbg !2401
  switch i16 %1, label %sw.default [
    i16 42, label %return
    i16 41, label %return
    i16 45, label %return
    i16 46, label %return
    i16 118, label %return
    i16 43, label %return
    i16 44, label %return
  ], !dbg !2402

sw.default:                                       ; preds = %entry
  br label %return, !dbg !2403

return:                                           ; preds = %entry, %entry, %entry, %entry, %entry, %entry, %entry, %sw.default
  %retval.0 = phi i8 [ 0, %sw.default ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], [ 1, %entry ], !dbg !2405
  ret i8 %retval.0, !dbg !2406
}

declare dso_local zeroext i8 @is_gimple_id(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @valid_gimple_call_p(%union.tree_node* %expr) local_unnamed_addr #5 !dbg !2407 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2409, metadata !DIExpression()), !dbg !2412
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2413
  %bf.load = load i64, i64* %0, align 8, !dbg !2413
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2415
  %cmp = icmp eq i64 %bf.cast1, 59, !dbg !2415
  br i1 %cmp, label %if.end, label %cleanup, !dbg !2416

if.end:                                           ; preds = %entry
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2417
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2417
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !2417
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !2417
  %3 = load i64, i64* %low, align 8, !dbg !2417
  call void @llvm.dbg.value(metadata i32 0, metadata !2410, metadata !DIExpression()), !dbg !2412
  %4 = add i64 %3, 4294967293, !dbg !2418
  %wide.trip.count = and i64 %4, 4294967295, !dbg !2420
  br label %for.cond, !dbg !2418

for.cond:                                         ; preds = %for.inc, %if.end
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ 0, %if.end ], !dbg !2422
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2410, metadata !DIExpression()), !dbg !2412
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2420
  br i1 %exitcond, label %cleanup.loopexit, label %for.body, !dbg !2423

for.body:                                         ; preds = %for.cond
  %add = add nuw nsw i64 %indvars.iv, 3, !dbg !2424
  %idxprom = and i64 %add, 4294967295, !dbg !2424
  %arrayidx6 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 %idxprom, !dbg !2424
  %5 = load %union.tree_node*, %union.tree_node** %arrayidx6, align 8, !dbg !2424
  %call = tail call zeroext i8 @is_gimple_operand(%union.tree_node* %5) #6, !dbg !2426
  %tobool = icmp eq i8 %call, 0, !dbg !2426
  br i1 %tobool, label %cleanup.loopexit, label %for.inc, !dbg !2427

for.inc:                                          ; preds = %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2428
  br label %for.cond, !dbg !2429, !llvm.loop !2430

cleanup.loopexit:                                 ; preds = %for.cond, %for.body
  %retval.0.ph = phi i8 [ 1, %for.cond ], [ 0, %for.body ]
  br label %cleanup, !dbg !2432

cleanup:                                          ; preds = %cleanup.loopexit, %entry
  %retval.0 = phi i8 [ 0, %entry ], [ %retval.0.ph, %cleanup.loopexit ], !dbg !2412
  ret i8 %retval.0, !dbg !2432
}

declare dso_local zeroext i8 @is_gimple_operand(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d* %new_stmt, %union.gimple_statement_d* %old_stmt) local_unnamed_addr #5 !dbg !2433 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt, metadata !2437, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %old_stmt, metadata !2438, metadata !DIExpression()), !dbg !2453
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !2454
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2454
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2455
  %call = tail call fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %1) #7, !dbg !2457
  %tobool = icmp eq i8 %call, 0, !dbg !2457
  br i1 %tobool, label %if.end6, label %if.then, !dbg !2458

if.then:                                          ; preds = %entry
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2440, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call1 = call fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %old_stmt, i32 10) #7, !dbg !2459
  call void @llvm.dbg.value(metadata %union.tree_node* %call1, metadata !2439, metadata !DIExpression()), !dbg !2453
  br label %for.cond, !dbg !2459

for.cond:                                         ; preds = %for.inc, %if.then
  %var.0 = phi %union.tree_node* [ %call1, %if.then ], [ %call5, %for.inc ], !dbg !2462
  call void @llvm.dbg.value(metadata %union.tree_node* %var.0, metadata !2439, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2440, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call2 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2463
  %tobool3 = icmp eq i8 %call2, 0, !dbg !2463
  br i1 %tobool3, label %for.body, label %if.end6.loopexit, !dbg !2459

for.body:                                         ; preds = %for.cond
  %2 = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2465
  %bf.load = load i64, i64* %2, align 8, !dbg !2465
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2468
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2468
  br i1 %cmp, label %if.then4, label %for.inc, !dbg !2469

if.then4:                                         ; preds = %for.body
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %var.0, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2470
  %3 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2470
  store %union.gimple_statement_d* %new_stmt, %union.gimple_statement_d** %3, align 8, !dbg !2471
  br label %for.inc, !dbg !2470

for.inc:                                          ; preds = %for.body, %if.then4
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !2440, metadata !DIExpression(DW_OP_deref)), !dbg !2453
  %call5 = call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !2463
  call void @llvm.dbg.value(metadata %union.tree_node* %call5, metadata !2439, metadata !DIExpression()), !dbg !2453
  br label %for.cond, !dbg !2463, !llvm.loop !2472

if.end6.loopexit:                                 ; preds = %for.cond
  br label %if.end6, !dbg !2474

if.end6:                                          ; preds = %if.end6.loopexit, %entry
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !2474
  ret void, !dbg !2474
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_in_ssa_p(%struct.function* %fun) unnamed_addr #0 !dbg !2475 {
entry:
  call void @llvm.dbg.value(metadata %struct.function* %fun, metadata !2482, metadata !DIExpression()), !dbg !2483
  %tobool = icmp eq %struct.function* %fun, null, !dbg !2484
  br i1 %tobool, label %land.end, label %land.lhs.true, !dbg !2485

land.lhs.true:                                    ; preds = %entry
  %gimple_df = getelementptr inbounds %struct.function, %struct.function* %fun, i64 0, i32 3, !dbg !2486
  %0 = load %struct.gimple_df*, %struct.gimple_df** %gimple_df, align 8, !dbg !2486
  %tobool1 = icmp eq %struct.gimple_df* %0, null, !dbg !2487
  br i1 %tobool1, label %land.end, label %land.rhs, !dbg !2488

land.rhs:                                         ; preds = %land.lhs.true
  %in_ssa_p = getelementptr inbounds %struct.gimple_df, %struct.gimple_df* %0, i64 0, i32 10, !dbg !2489
  %bf.load = load i8, i8* %in_ssa_p, align 8, !dbg !2489
  %bf.clear = and i8 %bf.load, 1, !dbg !2489
  br label %land.end

land.end:                                         ; preds = %land.lhs.true, %entry, %land.rhs
  %1 = phi i8 [ 0, %land.lhs.true ], [ 0, %entry ], [ %bf.clear, %land.rhs ]
  ret i8 %1, !dbg !2490
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_init_tree(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !2491 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2496, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2497, metadata !DIExpression()), !dbg !2499
  call void @llvm.dbg.value(metadata i32 10, metadata !2498, metadata !DIExpression()), !dbg !2499
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 10) #7, !dbg !2500
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !2501
  store i32 1, i32* %iter_type, align 4, !dbg !2502
  %call = tail call fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !2503
  ret %union.tree_node* %call, !dbg !2504
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2505 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2511, metadata !DIExpression()), !dbg !2512
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2513
  %0 = load i8, i8* %done, align 8, !dbg !2513
  ret i8 %0, !dbg !2514
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @op_iter_next_tree(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !2515 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !2519, metadata !DIExpression()), !dbg !2521
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !2522
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !2522
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !2524
  br i1 %tobool, label %if.end, label %if.then, !dbg !2525

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !2526
  %call = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* nonnull %use_ptr) #7, !dbg !2526
  call void @llvm.dbg.value(metadata %union.tree_node* %call, metadata !2520, metadata !DIExpression()), !dbg !2521
  %1 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !2528
  %2 = load i64*, i64** %1, align 8, !dbg !2528
  %3 = load i64, i64* %2, align 8, !dbg !2529
  %4 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !2530
  store i64 %3, i64* %4, align 8, !dbg !2530
  br label %cleanup, !dbg !2531

if.end:                                           ; preds = %entry
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !2532
  %5 = load %struct.def_optype_d*, %struct.def_optype_d** %defs, align 8, !dbg !2532
  %tobool4 = icmp eq %struct.def_optype_d* %5, null, !dbg !2534
  br i1 %tobool4, label %if.end11, label %if.then5, !dbg !2535

if.then5:                                         ; preds = %if.end
  %def_ptr = getelementptr inbounds %struct.def_optype_d, %struct.def_optype_d* %5, i64 0, i32 1, !dbg !2536
  %6 = load %union.tree_node**, %union.tree_node*** %def_ptr, align 8, !dbg !2536
  %call7 = tail call fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %6) #7, !dbg !2536
  call void @llvm.dbg.value(metadata %union.tree_node* %call7, metadata !2520, metadata !DIExpression()), !dbg !2521
  %7 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !2538
  %8 = load i64*, i64** %7, align 8, !dbg !2538
  %9 = load i64, i64* %8, align 8, !dbg !2539
  %10 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !2540
  store i64 %9, i64* %10, align 8, !dbg !2540
  br label %cleanup, !dbg !2541

if.end11:                                         ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !2542
  store i8 1, i8* %done, align 8, !dbg !2543
  br label %cleanup, !dbg !2544

cleanup:                                          ; preds = %if.end11, %if.then5, %if.then
  %retval.0 = phi %union.tree_node* [ %call, %if.then ], [ %call7, %if.then5 ], [ null, %if.end11 ], !dbg !2521
  ret %union.tree_node* %retval.0, !dbg !2545
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @update_call_from_tree(%struct.gimple_stmt_iterator* %si_p, %union.tree_node* %expr) local_unnamed_addr #5 !dbg !2546 {
entry:
  %args = alloca %struct.VEC_tree_heap*, align 8
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si_p, metadata !2557, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.value(metadata %union.tree_node* %expr, metadata !2558, metadata !DIExpression()), !dbg !2571
  %call = tail call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %si_p) #7, !dbg !2572
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call, metadata !2560, metadata !DIExpression()), !dbg !2571
  %call1 = tail call fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %call) #7, !dbg !2573
  %tobool = icmp eq i8 %call1, 0, !dbg !2573
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2573

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 703, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2573
  br label %cond.end, !dbg !2573

cond.end:                                         ; preds = %entry, %cond.true
  %call2 = tail call fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %call) #7, !dbg !2574
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !2559, metadata !DIExpression()), !dbg !2571
  %call3 = tail call zeroext i8 @valid_gimple_call_p(%union.tree_node* %expr) #7, !dbg !2575
  %tobool4 = icmp eq i8 %call3, 0, !dbg !2575
  br i1 %tobool4, label %if.else, label %if.then, !dbg !2576

if.then:                                          ; preds = %cond.end
  %operands = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !2577
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 1, !dbg !2577
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2577
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2561, metadata !DIExpression()), !dbg !2578
  %1 = bitcast %union.tree_node** %operands to %struct.tree_int_cst**, !dbg !2579
  %2 = load %struct.tree_int_cst*, %struct.tree_int_cst** %1, align 8, !dbg !2579
  %low = getelementptr inbounds %struct.tree_int_cst, %struct.tree_int_cst* %2, i64 0, i32 1, i32 0, !dbg !2579
  %3 = load i64, i64* %low, align 8, !dbg !2579
  %conv = trunc i64 %3 to i32, !dbg !2579
  %sub = add nsw i32 %conv, -3, !dbg !2579
  call void @llvm.dbg.value(metadata i32 %sub, metadata !2565, metadata !DIExpression()), !dbg !2578
  %4 = bitcast %struct.VEC_tree_heap** %args to i8*, !dbg !2580
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2580
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* null, metadata !2566, metadata !DIExpression()), !dbg !2578
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %args, align 8, !dbg !2581
  %cmp = icmp eq i32 %sub, 0, !dbg !2582
  br i1 %cmp, label %if.end, label %if.then10, !dbg !2584

if.then10:                                        ; preds = %if.then
  %call11 = tail call fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %sub) #7, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %call11, metadata !2566, metadata !DIExpression()), !dbg !2578
  store %struct.VEC_tree_heap* %call11, %struct.VEC_tree_heap** %args, align 8, !dbg !2587
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %args, metadata !2566, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** nonnull %args, i32 %sub) #7, !dbg !2588
  call void @llvm.dbg.value(metadata i32 0, metadata !2564, metadata !DIExpression()), !dbg !2578
  %5 = add i64 %3, 4294967293, !dbg !2589
  %wide.trip.count = and i64 %5, 4294967295, !dbg !2591
  br label %for.cond, !dbg !2589

for.cond:                                         ; preds = %for.body, %if.then10
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %if.then10 ], !dbg !2593
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !2564, metadata !DIExpression()), !dbg !2578
  %exitcond = icmp eq i64 %indvars.iv, %wide.trip.count, !dbg !2591
  br i1 %exitcond, label %if.end.loopexit, label %for.body, !dbg !2594

for.body:                                         ; preds = %for.cond
  %6 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %args, align 8, !dbg !2595
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %6, metadata !2566, metadata !DIExpression()), !dbg !2578
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %6, metadata !2566, metadata !DIExpression()), !dbg !2578
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %6, i64 0, i32 0, !dbg !2595
  %add = add nuw nsw i64 %indvars.iv, 3, !dbg !2595
  %idxprom = and i64 %add, 4294967295, !dbg !2595
  %arrayidx21 = getelementptr inbounds %union.tree_node*, %union.tree_node** %operands, i64 %idxprom, !dbg !2595
  %7 = load %union.tree_node*, %union.tree_node** %arrayidx21, align 8, !dbg !2595
  %8 = trunc i64 %indvars.iv to i32, !dbg !2595
  %call22 = call fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %base, i32 %8, %union.tree_node* %7) #7, !dbg !2595
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !2596
  br label %for.cond, !dbg !2597, !llvm.loop !2598

if.end.loopexit:                                  ; preds = %for.cond
  %.pre = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %args, align 8, !dbg !2600
  br label %if.end, !dbg !2600

if.end:                                           ; preds = %if.end.loopexit, %if.then
  %9 = phi %struct.VEC_tree_heap* [ %.pre, %if.end.loopexit ], [ null, %if.then ], !dbg !2600
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap* %9, metadata !2566, metadata !DIExpression()), !dbg !2578
  %call23 = call %union.gimple_statement_d* @gimple_build_call_vec(%union.tree_node* %0, %struct.VEC_tree_heap* %9) #6, !dbg !2601
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call23, metadata !2567, metadata !DIExpression()), !dbg !2578
  call fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %call23, %union.tree_node* %call2) #7, !dbg !2602
  call void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d* %call23, %union.gimple_statement_d* %call) #7, !dbg !2603
  %call24 = call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call) #7, !dbg !2604
  call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %call23, %union.tree_node* %call24) #7, !dbg !2605
  %call25 = call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call) #7, !dbg !2606
  call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %call23, %union.tree_node* %call25) #7, !dbg !2607
  %call26 = call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !2608
  call fastcc void @gimple_set_location(%union.gimple_statement_d* %call23, i32 %call26) #7, !dbg !2609
  call void @gsi_replace(%struct.gimple_stmt_iterator* %si_p, %union.gimple_statement_d* %call23, i8 zeroext 0) #6, !dbg !2610
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %args, metadata !2566, metadata !DIExpression(DW_OP_deref)), !dbg !2578
  call fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** nonnull %args) #7, !dbg !2611
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !2612
  br label %cleanup

if.else:                                          ; preds = %cond.end
  %call27 = tail call zeroext i8 @valid_gimple_rhs_p(%union.tree_node* %expr) #7, !dbg !2613
  %tobool28 = icmp eq i8 %call27, 0, !dbg !2613
  br i1 %tobool28, label %cleanup, label %if.then29, !dbg !2614

if.then29:                                        ; preds = %if.else
  %tobool31 = icmp eq %union.tree_node* %call2, null, !dbg !2615
  br i1 %tobool31, label %if.else37, label %if.then32, !dbg !2617

if.then32:                                        ; preds = %if.then29
  %call33 = tail call %union.tree_node* @tree_ssa_strip_useless_type_conversions(%union.tree_node* %expr) #6, !dbg !2618
  call void @llvm.dbg.value(metadata %union.tree_node* %call33, metadata !2558, metadata !DIExpression()), !dbg !2571
  %call34 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* nonnull %call2, %union.tree_node* %call33) #6, !dbg !2620
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call34, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d* %call34, %union.gimple_statement_d* %call) #7, !dbg !2622
  %call35 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call) #7, !dbg !2623
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %call34, %union.tree_node* %call35) #7, !dbg !2624
  %call36 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call) #7, !dbg !2625
  tail call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %call34, %union.tree_node* %call36) #7, !dbg !2626
  br label %if.end51, !dbg !2627

if.else37:                                        ; preds = %if.then29
  %10 = getelementptr inbounds %union.tree_node, %union.tree_node* %expr, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2628
  %bf.load = load i64, i64* %10, align 8, !dbg !2628
  %bf.cast1 = and i64 %bf.load, 65536, !dbg !2628
  %tobool39 = icmp eq i64 %bf.cast1, 0, !dbg !2628
  br i1 %tobool39, label %if.then40, label %if.else42, !dbg !2630

if.then40:                                        ; preds = %if.else37
  %call41 = tail call %union.gimple_statement_d* @gimple_build_nop() #6, !dbg !2631
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call41, metadata !2568, metadata !DIExpression()), !dbg !2621
  tail call void @unlink_stmt_vdef(%union.gimple_statement_d* %call) #6, !dbg !2633
  tail call void @release_defs(%union.gimple_statement_d* %call) #6, !dbg !2634
  br label %if.end51, !dbg !2635

if.else42:                                        ; preds = %if.else37
  %call43 = tail call %union.tree_node* @tree_ssa_strip_useless_type_conversions(%union.tree_node* %expr) #6, !dbg !2636
  call void @llvm.dbg.value(metadata %union.tree_node* %call43, metadata !2558, metadata !DIExpression()), !dbg !2571
  %type = getelementptr inbounds %union.tree_node, %union.tree_node* %call43, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !2638
  %11 = load %union.tree_node*, %union.tree_node** %type, align 8, !dbg !2638
  %call44 = tail call %union.tree_node* @create_tmp_var(%union.tree_node* %11, i8* null) #6, !dbg !2639
  call void @llvm.dbg.value(metadata %union.tree_node* %call44, metadata !2559, metadata !DIExpression()), !dbg !2571
  %call45 = tail call %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node* %call44, %union.tree_node* %call43) #6, !dbg !2640
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call45, metadata !2568, metadata !DIExpression()), !dbg !2621
  %call46 = tail call zeroext i8 @add_referenced_var(%union.tree_node* %call44) #6, !dbg !2641
  %call47 = tail call fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %call44, %union.gimple_statement_d* %call45) #7, !dbg !2642
  call void @llvm.dbg.value(metadata %union.tree_node* %call47, metadata !2559, metadata !DIExpression()), !dbg !2571
  tail call fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %call45, %union.tree_node* %call47) #7, !dbg !2643
  %call48 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %call) #7, !dbg !2644
  tail call fastcc void @gimple_set_vuse(%union.gimple_statement_d* %call45, %union.tree_node* %call48) #7, !dbg !2645
  %call49 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %call) #7, !dbg !2646
  tail call fastcc void @gimple_set_vdef(%union.gimple_statement_d* %call45, %union.tree_node* %call49) #7, !dbg !2647
  tail call void @move_ssa_defining_stmt_for_defs(%union.gimple_statement_d* %call45, %union.gimple_statement_d* %call) #7, !dbg !2648
  br label %if.end51

if.end51:                                         ; preds = %if.then40, %if.else42, %if.then32
  %new_stmt30.1 = phi %union.gimple_statement_d* [ %call34, %if.then32 ], [ %call45, %if.else42 ], [ %call41, %if.then40 ], !dbg !2649
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %new_stmt30.1, metadata !2568, metadata !DIExpression()), !dbg !2621
  %call52 = tail call fastcc i32 @gimple_location(%union.gimple_statement_d* %call) #7, !dbg !2650
  tail call fastcc void @gimple_set_location(%union.gimple_statement_d* %new_stmt30.1, i32 %call52) #7, !dbg !2651
  tail call void @gsi_replace(%struct.gimple_stmt_iterator* %si_p, %union.gimple_statement_d* %new_stmt30.1, i8 zeroext 0) #6, !dbg !2652
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.end51, %if.end
  %retval.0 = phi i8 [ 1, %if.end ], [ 1, %if.end51 ], [ 0, %if.else ], !dbg !2653
  ret i8 %retval.0, !dbg !2654
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !2655 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !2659, metadata !DIExpression()), !dbg !2660
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !2661
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !2661
  %stmt = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 0, !dbg !2662
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !2662
  ret %union.gimple_statement_d* %1, !dbg !2663
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_call(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2664 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2669, metadata !DIExpression()), !dbg !2670
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !2671
  %cmp = icmp eq i32 %call, 8, !dbg !2672
  %conv1 = zext i1 %cmp to i8, !dbg !2671
  ret i8 %conv1, !dbg !2673
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_call_lhs(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !2674 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2678, metadata !DIExpression()), !dbg !2679
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 0) #7, !dbg !2680
  ret %union.tree_node* %call, !dbg !2681
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_tree_heap* @VEC_tree_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !2682 {
entry:
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !2686, metadata !DIExpression()), !dbg !2687
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 %alloc_) #6, !dbg !2688
  %0 = bitcast i8* %call to %struct.VEC_tree_heap*, !dbg !2688
  ret %struct.VEC_tree_heap* %0, !dbg !2688
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_safe_grow(%struct.VEC_tree_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !2689 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2694, metadata !DIExpression()), !dbg !2696
  call void @llvm.dbg.value(metadata i32 %size_, metadata !2695, metadata !DIExpression()), !dbg !2696
  %cmp = icmp sgt i32 %size_, -1, !dbg !2697
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !2697

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2697
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2697
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2697

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !2697
  br label %cond.end, !dbg !2697

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !2697
  %call = tail call fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %cond) #7, !dbg !2697
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2697
  %tobool2 = icmp eq %struct.VEC_tree_heap* %1, null, !dbg !2697
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !2697

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %1, i64 0, i32 0, i32 0, !dbg !2697
  %2 = load i32, i32* %num, align 8, !dbg !2697
  br label %cond.end11, !dbg !2697

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !2697
  %sub = sub nsw i32 %size_, %cond12, !dbg !2697
  %call13 = tail call fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** %vec_, i32 %sub) #7, !dbg !2697
  %3 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2697
  %num20 = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %3, i64 0, i32 0, i32 0, !dbg !2697
  store i32 %size_, i32* %num20, align 8, !dbg !2697
  ret void, !dbg !2697
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @VEC_tree_base_replace(%struct.VEC_tree_base* %vec_, i32 %ix_, %union.tree_node* %obj_) unnamed_addr #0 !dbg !2698 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !2703, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2704, metadata !DIExpression()), !dbg !2707
  call void @llvm.dbg.value(metadata %union.tree_node* %obj_, metadata !2705, metadata !DIExpression()), !dbg !2707
  %idxprom = zext i32 %ix_ to i64, !dbg !2708
  %arrayidx = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2708
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !2708
  call void @llvm.dbg.value(metadata %union.tree_node* %0, metadata !2706, metadata !DIExpression()), !dbg !2707
  store %union.tree_node* %obj_, %union.tree_node** %arrayidx, align 8, !dbg !2708
  ret %union.tree_node* %0, !dbg !2708
}

declare dso_local %union.gimple_statement_d* @gimple_build_call_vec(%union.tree_node*, %struct.VEC_tree_heap*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_call_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !2709 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2713, metadata !DIExpression()), !dbg !2715
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !2714, metadata !DIExpression()), !dbg !2715
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !2716
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !2717
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2719

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2720
  %bf.load = load i64, i64* %0, align 8, !dbg !2720
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2721
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2721
  br i1 %cmp, label %if.then, label %if.end, !dbg !2722

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2723
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2723
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !2724
  br label %if.end, !dbg !2723

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !2725
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_vuse(%union.gimple_statement_d* %g, %union.tree_node* %vuse) unnamed_addr #0 !dbg !2726 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2728, metadata !DIExpression()), !dbg !2730
  call void @llvm.dbg.value(metadata %union.tree_node* %vuse, metadata !2729, metadata !DIExpression()), !dbg !2730
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2731
  %tobool = icmp eq i8 %call, 0, !dbg !2731
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2731

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 1407, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2731
  br label %cond.end, !dbg !2731

cond.end:                                         ; preds = %entry, %cond.true
  %vuse1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2732
  %0 = bitcast %struct.ssa_use_operand_d** %vuse1 to %union.tree_node**, !dbg !2732
  store %union.tree_node* %vuse, %union.tree_node** %0, align 8, !dbg !2733
  ret void, !dbg !2734
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2735 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2737, metadata !DIExpression()), !dbg !2738
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2739
  %tobool = icmp eq i8 %call, 0, !dbg !2739
  br i1 %tobool, label %return, label %if.end, !dbg !2741

if.end:                                           ; preds = %entry
  %vuse = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, i64 0, i32 0, i32 1, !dbg !2742
  %0 = bitcast %struct.ssa_use_operand_d** %vuse to %union.tree_node**, !dbg !2742
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2742
  br label %return, !dbg !2743

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2738
  ret %union.tree_node* %retval.0, !dbg !2744
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_vdef(%union.gimple_statement_d* %g, %union.tree_node* %vdef) unnamed_addr #0 !dbg !2745 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2747, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.value(metadata %union.tree_node* %vdef, metadata !2748, metadata !DIExpression()), !dbg !2749
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2750
  %tobool = icmp eq i8 %call, 0, !dbg !2750
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !2750

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 1416, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2750
  br label %cond.end, !dbg !2750

cond.end:                                         ; preds = %entry, %cond.true
  %vdef1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2751
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef1 to %union.tree_node**, !dbg !2751
  store %union.tree_node* %vdef, %union.tree_node** %0, align 8, !dbg !2752
  ret void, !dbg !2753
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2754 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2756, metadata !DIExpression()), !dbg !2757
  %call = tail call fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) #7, !dbg !2758
  %tobool = icmp eq i8 %call, 0, !dbg !2758
  br i1 %tobool, label %return, label %if.end, !dbg !2760

if.end:                                           ; preds = %entry
  %vdef = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 4, !dbg !2761
  %0 = bitcast [1 x %struct.phi_arg_d]* %vdef to %union.tree_node**, !dbg !2761
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !2761
  br label %return, !dbg !2762

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %union.tree_node* [ %1, %if.end ], [ null, %entry ], !dbg !2757
  ret %union.tree_node* %retval.0, !dbg !2763
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_location(%union.gimple_statement_d* %g, i32 %location) unnamed_addr #0 !dbg !2764 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2768, metadata !DIExpression()), !dbg !2770
  call void @llvm.dbg.value(metadata i32 %location, metadata !2769, metadata !DIExpression()), !dbg !2770
  %location1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2771
  store i32 %location, i32* %location1, align 8, !dbg !2772
  ret void, !dbg !2773
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_location(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !2778, metadata !DIExpression()), !dbg !2779
  %location = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 2, !dbg !2780
  %0 = load i32, i32* %location, align 8, !dbg !2780
  ret i32 %0, !dbg !2781
}

declare dso_local void @gsi_replace(%struct.gimple_stmt_iterator*, %union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_tree_heap_free(%struct.VEC_tree_heap** %vec_) unnamed_addr #0 !dbg !2782 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !2786, metadata !DIExpression()), !dbg !2787
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2788
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !2788
  br i1 %tobool, label %if.end, label %if.then, !dbg !2790

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_tree_heap* %0 to i8*, !dbg !2790
  tail call void @free(i8* nonnull %1) #6, !dbg !2788
  br label %if.end, !dbg !2788

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_tree_heap* null, %struct.VEC_tree_heap** %vec_, align 8, !dbg !2790
  ret void, !dbg !2790
}

declare dso_local %union.tree_node* @tree_ssa_strip_useless_type_conversions(%union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_assign_stat(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local %union.gimple_statement_d* @gimple_build_nop() local_unnamed_addr #2

declare dso_local void @unlink_stmt_vdef(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @release_defs(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local %union.tree_node* @create_tmp_var(%union.tree_node*, i8*) local_unnamed_addr #2

declare dso_local zeroext i8 @add_referenced_var(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @make_ssa_name(%union.tree_node* %var, %union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !2791 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !2795, metadata !DIExpression()), !dbg !2797
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2798
  %call = tail call %union.tree_node* @make_ssa_name_fn(%struct.function* %0, %union.tree_node* %var, %union.gimple_statement_d* %stmt) #6, !dbg !2799
  ret %union.tree_node* %call, !dbg !2800
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_assign_set_lhs(%union.gimple_statement_d* %gs, %union.tree_node* %lhs) unnamed_addr #0 !dbg !2801 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !2803, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.value(metadata %union.tree_node* %lhs, metadata !2804, metadata !DIExpression()), !dbg !2805
  tail call fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 0, %union.tree_node* %lhs) #7, !dbg !2806
  %tobool = icmp eq %union.tree_node* %lhs, null, !dbg !2807
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2809

land.lhs.true:                                    ; preds = %entry
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !2810
  %bf.load = load i64, i64* %0, align 8, !dbg !2810
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !2811
  %cmp = icmp eq i64 %bf.cast1, 141, !dbg !2811
  br i1 %cmp, label %if.then, label %if.end, !dbg !2812

if.then:                                          ; preds = %land.lhs.true
  %def_stmt = getelementptr inbounds %union.tree_node, %union.tree_node* %lhs, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 3, !dbg !2813
  %1 = bitcast %union.tree_node** %def_stmt to %union.gimple_statement_d**, !dbg !2813
  store %union.gimple_statement_d* %gs, %union.gimple_statement_d** %1, align 8, !dbg !2814
  br label %if.end, !dbg !2813

if.end:                                           ; preds = %entry, %if.then, %land.lhs.true
  ret void, !dbg !2815
}

; Function Attrs: nounwind uwtable
define dso_local void @ssa_propagate(i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* %visit_stmt, i32 (%union.gimple_statement_d*)* %visit_phi) local_unnamed_addr #5 !dbg !2816 {
entry:
  call void @llvm.dbg.value(metadata i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* %visit_stmt, metadata !2820, metadata !DIExpression()), !dbg !2826
  call void @llvm.dbg.value(metadata i32 (%union.gimple_statement_d*)* %visit_phi, metadata !2821, metadata !DIExpression()), !dbg !2826
  store i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)* %visit_stmt, i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)** @ssa_prop_visit_stmt, align 8, !dbg !2827
  store i32 (%union.gimple_statement_d*)* %visit_phi, i32 (%union.gimple_statement_d*)** @ssa_prop_visit_phi, align 8, !dbg !2828
  tail call fastcc void @ssa_prop_init() #7, !dbg !2829
  br label %while.cond, !dbg !2830

while.cond:                                       ; preds = %if.end, %entry
  %call = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #7, !dbg !2831
  %tobool = icmp eq i8 %call, 0, !dbg !2831
  br i1 %tobool, label %while.body, label %lor.lhs.false, !dbg !2832

lor.lhs.false:                                    ; preds = %while.cond
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** @interesting_ssa_edges, align 8, !dbg !2833
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !2833
  %call2 = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base) #7, !dbg !2833
  %cmp = icmp eq i32 %call2, 0, !dbg !2834
  br i1 %cmp, label %lor.rhs, label %while.body, !dbg !2835

lor.rhs:                                          ; preds = %lor.lhs.false
  %1 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** @varying_ssa_edges, align 8, !dbg !2836
  %base5 = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %1, i64 0, i32 0, !dbg !2836
  %call9 = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %base5) #7, !dbg !2836
  %cmp10 = icmp eq i32 %call9, 0, !dbg !2837
  br i1 %cmp10, label %while.end, label %while.body, !dbg !2830

while.body:                                       ; preds = %lor.rhs, %lor.lhs.false, %while.cond
  %call11 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #7, !dbg !2838
  %tobool12 = icmp eq i8 %call11, 0, !dbg !2838
  br i1 %tobool12, label %if.then, label %if.end, !dbg !2839

if.then:                                          ; preds = %while.body
  %call13 = tail call fastcc %struct.basic_block_def* @cfg_blocks_get() #7, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call13, metadata !2822, metadata !DIExpression()), !dbg !2841
  tail call fastcc void @simulate_block(%struct.basic_block_def* %call13) #7, !dbg !2842
  br label %if.end, !dbg !2843

if.end:                                           ; preds = %while.body, %if.then
  tail call fastcc void @process_ssa_edge_worklist(%struct.VEC_gimple_gc** nonnull @varying_ssa_edges) #7, !dbg !2844
  tail call fastcc void @process_ssa_edge_worklist(%struct.VEC_gimple_gc** nonnull @interesting_ssa_edges) #7, !dbg !2845
  br label %while.cond, !dbg !2830, !llvm.loop !2846

while.end:                                        ; preds = %lor.rhs
  tail call fastcc void @ssa_prop_fini() #7, !dbg !2848
  ret void, !dbg !2849
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ssa_prop_init() unnamed_addr #5 !dbg !2850 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %si = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp17 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp26 = alloca %struct.edge_iterator, align 8
  %tmp37 = alloca %struct.edge_iterator, align 8
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2867
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2867
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2868
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2868
  %call = tail call fastcc %struct.VEC_gimple_gc* @VEC_gimple_gc_alloc(i32 20) #7, !dbg !2869
  store %struct.VEC_gimple_gc* %call, %struct.VEC_gimple_gc** @interesting_ssa_edges, align 8, !dbg !2870
  %call1 = tail call fastcc %struct.VEC_gimple_gc* @VEC_gimple_gc_alloc(i32 20) #7, !dbg !2871
  store %struct.VEC_gimple_gc* %call1, %struct.VEC_gimple_gc** @varying_ssa_edges, align 8, !dbg !2872
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2873
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !2873
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2873
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 5, !dbg !2873
  %4 = load i32, i32* %x_last_basic_block, align 8, !dbg !2873
  %call2 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %4) #6, !dbg !2874
  store %struct.simple_bitmap_def* %call2, %struct.simple_bitmap_def** @executable_blocks, align 8, !dbg !2875
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call2) #6, !dbg !2876
  %5 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2877
  %cfg4 = getelementptr inbounds %struct.function, %struct.function* %5, i64 0, i32 1, !dbg !2877
  %6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg4, align 8, !dbg !2877
  %x_last_basic_block5 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %6, i64 0, i32 5, !dbg !2877
  %7 = load i32, i32* %x_last_basic_block5, align 8, !dbg !2877
  %call6 = tail call %struct.simple_bitmap_def* @sbitmap_alloc(i32 %7) #6, !dbg !2878
  store %struct.simple_bitmap_def* %call6, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !2879
  tail call void @sbitmap_zero(%struct.simple_bitmap_def* %call6) #6, !dbg !2880
  %8 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !2881
  %tobool = icmp eq %struct._IO_FILE* %8, null, !dbg !2881
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2883

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* @dump_flags, align 4, !dbg !2884
  %and = and i32 %9, 8, !dbg !2885
  %tobool7 = icmp eq i32 %and, 0, !dbg !2885
  br i1 %tobool7, label %if.end, label %if.then, !dbg !2886

if.then:                                          ; preds = %land.lhs.true
  tail call void @dump_immediate_uses(%struct._IO_FILE* nonnull %8) #6, !dbg !2887
  br label %if.end, !dbg !2887

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  %call8 = tail call fastcc %struct.VEC_basic_block_heap* @VEC_basic_block_heap_alloc(i32 20) #7, !dbg !2888
  store %struct.VEC_basic_block_heap* %call8, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !2889
  tail call fastcc void @VEC_basic_block_heap_safe_grow(%struct.VEC_basic_block_heap** nonnull @cfg_blocks, i32 20) #7, !dbg !2890
  %10 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2891
  %cfg10 = getelementptr inbounds %struct.function, %struct.function* %10, i64 0, i32 1, !dbg !2891
  %11 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10, align 8, !dbg !2891
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 0, !dbg !2891
  %12 = bitcast %struct.gimple_stmt_iterator* %si to i8*, !dbg !2892
  %13 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !2893
  %14 = bitcast %struct.gimple_stmt_iterator* %tmp17 to i8*, !dbg !2895
  %15 = bitcast %struct.edge_iterator* %tmp26 to i8*, !dbg !2897
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 0, !dbg !2897
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 1, !dbg !2897
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2899
  %19 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2899
  br label %for.cond, !dbg !2891

for.cond:                                         ; preds = %for.end34, %if.end
  %bb.0.in = phi %struct.basic_block_def** [ %x_entry_block_ptr, %if.end ], [ %next_bb, %for.end34 ]
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2901
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2862, metadata !DIExpression()), !dbg !2902
  %tobool11 = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2891
  br i1 %tobool11, label %for.end36, label %for.body, !dbg !2891

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2903
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2904
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* nonnull %bb.0) #7, !dbg !2904
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %13, i64 24, i1 false), !dbg !2904
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8, !dbg !2904
  br label %for.cond12, !dbg !2905

for.cond12:                                       ; preds = %for.body15, %for.body
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %call13 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !2906
  %tobool14 = icmp eq i8 %call13, 0, !dbg !2908
  br i1 %tobool14, label %for.body15, label %for.end, !dbg !2909

for.body15:                                       ; preds = %for.cond12
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %call16 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !2910
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call16, i32 1, i8 zeroext 0) #7, !dbg !2911
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #7, !dbg !2912
  br label %for.cond12, !dbg !2913, !llvm.loop !2914

for.end:                                          ; preds = %for.cond12
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2916
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp17, %struct.basic_block_def* nonnull %bb.0) #6, !dbg !2916
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %12, i8* nonnull align 8 %14, i64 24, i1 false), !dbg !2916
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %14) #8, !dbg !2916
  br label %for.cond18, !dbg !2917

for.cond18:                                       ; preds = %for.body22, %for.end
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %call19 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !2918
  %tobool20 = icmp eq i8 %call19, 0, !dbg !2920
  br i1 %tobool20, label %for.body22, label %for.end25, !dbg !2921

for.body22:                                       ; preds = %for.cond18
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  %call23 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %si) #7, !dbg !2922
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call23, i32 1, i8 zeroext 0) #7, !dbg !2923
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %si, metadata !2863, metadata !DIExpression(DW_OP_deref)), !dbg !2892
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %si) #7, !dbg !2924
  br label %for.cond18, !dbg !2925, !llvm.loop !2926

for.end25:                                        ; preds = %for.cond18
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2928
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 1, !dbg !2928
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2928
  %20 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !2928
  store i32 %20, i32* %16, align 8, !dbg !2928
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !2928
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %17, align 8, !dbg !2928
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %15, i64 16, i1 false), !dbg !2928
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !2928
  br label %for.cond28, !dbg !2928

for.cond28:                                       ; preds = %for.body31, %for.end25
  %22 = load i32, i32* %18, align 8, !dbg !2929
  %23 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2929
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2854, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %22, %struct.VEC_edge_gc** %23, %struct.edge_def** nonnull %e) #7, !dbg !2929
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2928
  br i1 %tobool30, label %for.end34, label %for.body31, !dbg !2928

for.body31:                                       ; preds = %for.cond28
  %24 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2930
  call void @llvm.dbg.value(metadata %struct.edge_def* %24, metadata !2854, metadata !DIExpression()), !dbg !2902
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %24, i64 0, i32 7, !dbg !2931
  %25 = load i32, i32* %flags, align 8, !dbg !2932
  %and32 = and i32 %25, -4097, !dbg !2932
  store i32 %and32, i32* %flags, align 8, !dbg !2932
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2855, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2929
  br label %for.cond28, !dbg !2929, !llvm.loop !2933

for.end34:                                        ; preds = %for.cond28
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %12) #8, !dbg !2935
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 6, !dbg !2936
  br label %for.cond, !dbg !2936, !llvm.loop !2937

for.end36:                                        ; preds = %for.cond
  %26 = bitcast %struct.edge_iterator* %tmp37 to i8*, !dbg !2939
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2939
  %27 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2939
  %cfg39 = getelementptr inbounds %struct.function, %struct.function* %27, i64 0, i32 1, !dbg !2939
  %28 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg39, align 8, !dbg !2939
  %x_entry_block_ptr40 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %28, i64 0, i32 0, !dbg !2939
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr40, align 8, !dbg !2939
  %succs41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %29, i64 0, i32 1, !dbg !2939
  %call42 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs41) #7, !dbg !2939
  %30 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp37, i64 0, i32 0, !dbg !2939
  %31 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 0, !dbg !2939
  store i32 %31, i32* %30, align 8, !dbg !2939
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp37, i64 0, i32 1, !dbg !2939
  %33 = extractvalue { i32, %struct.VEC_edge_gc** } %call42, 1, !dbg !2939
  store %struct.VEC_edge_gc** %33, %struct.VEC_edge_gc*** %32, align 8, !dbg !2939
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %26, i64 16, i1 false), !dbg !2939
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %26) #8, !dbg !2939
  br label %for.cond43, !dbg !2939

for.cond43:                                       ; preds = %for.body46, %for.end36
  %34 = load i32, i32* %18, align 8, !dbg !2941
  %35 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %19, align 8, !dbg !2941
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2854, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  %call44 = call fastcc zeroext i8 @ei_cond(i32 %34, %struct.VEC_edge_gc** %35, %struct.edge_def** nonnull %e) #7, !dbg !2941
  %tobool45 = icmp eq i8 %call44, 0, !dbg !2939
  br i1 %tobool45, label %for.end48, label %for.body46, !dbg !2939

for.body46:                                       ; preds = %for.cond43
  %36 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2943
  call void @llvm.dbg.value(metadata %struct.edge_def* %36, metadata !2854, metadata !DIExpression()), !dbg !2902
  call fastcc void @add_control_edge(%struct.edge_def* %36) #7, !dbg !2944
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2855, metadata !DIExpression(DW_OP_deref)), !dbg !2902
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2941
  br label %for.cond43, !dbg !2941, !llvm.loop !2945

for.end48:                                        ; preds = %for.cond43
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2947
  ret void, !dbg !2947
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @cfg_blocks_empty_p() unnamed_addr #0 !dbg !2948 {
entry:
  %0 = load i32, i32* @cfg_blocks_num, align 4, !dbg !2951
  %cmp = icmp eq i32 %0, 0, !dbg !2952
  %conv1 = zext i1 %cmp to i8, !dbg !2953
  ret i8 %conv1, !dbg !2954
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !2955 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !2961, metadata !DIExpression()), !dbg !2962
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !2963
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2963

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !2963
  %0 = load i32, i32* %num, align 8, !dbg !2963
  br label %cond.end, !dbg !2963

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2963
  ret i32 %cond, !dbg !2963
}

; Function Attrs: nounwind uwtable
define internal fastcc %struct.basic_block_def* @cfg_blocks_get() unnamed_addr #5 !dbg !2964 {
entry:
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !2969
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !2969
  %1 = load i32, i32* @cfg_blocks_head, align 4, !dbg !2969
  %call = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base, i32 %1) #7, !dbg !2969
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2968, metadata !DIExpression()), !dbg !2970
  %call1 = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #7, !dbg !2971
  %tobool2 = icmp eq i8 %call1, 0, !dbg !2971
  br i1 %tobool2, label %cond.end5, label %cond.true3, !dbg !2971

cond.true3:                                       ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2971
  br label %cond.end5, !dbg !2971

cond.end5:                                        ; preds = %entry, %cond.true3
  %tobool7 = icmp eq %struct.basic_block_def* %call, null, !dbg !2972
  br i1 %tobool7, label %cond.true8, label %cond.end10, !dbg !2972

cond.true8:                                       ; preds = %cond.end5
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 241, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2972
  br label %cond.end10, !dbg !2972

cond.end10:                                       ; preds = %cond.end5, %cond.true8
  %2 = load i32, i32* @cfg_blocks_head, align 4, !dbg !2973
  %add = add nsw i32 %2, 1, !dbg !2974
  %3 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !2975
  %base14 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %3, i64 0, i32 0, !dbg !2975
  %call18 = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base14) #7, !dbg !2975
  %rem = urem i32 %add, %call18, !dbg !2976
  store i32 %rem, i32* @cfg_blocks_head, align 4, !dbg !2977
  %4 = load i32, i32* @cfg_blocks_num, align 4, !dbg !2978
  %dec = add i32 %4, -1, !dbg !2978
  store i32 %dec, i32* @cfg_blocks_num, align 4, !dbg !2978
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !2979
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 9, !dbg !2980
  %6 = load i32, i32* %index, align 8, !dbg !2980
  tail call fastcc void @RESET_BIT(%struct.simple_bitmap_def* %5, i32 %6) #7, !dbg !2981
  ret %struct.basic_block_def* %call, !dbg !2982
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simulate_block(%struct.basic_block_def* %block) unnamed_addr #5 !dbg !2983 {
entry:
  %gsi = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %j = alloca %struct.gimple_stmt_iterator, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp13 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp26 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %block, metadata !2987, metadata !DIExpression()), !dbg !3000
  %0 = bitcast %struct.gimple_stmt_iterator* %gsi to i8*, !dbg !3001
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3001
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3002
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3002
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3002
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !3002
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3002
  %cmp = icmp eq %struct.basic_block_def* %3, %block, !dbg !3004
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3005

if.end:                                           ; preds = %entry
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3006
  %tobool = icmp eq %struct._IO_FILE* %4, null, !dbg !3006
  br i1 %tobool, label %if.end3, label %land.lhs.true, !dbg !3008

land.lhs.true:                                    ; preds = %if.end
  %5 = load i32, i32* @dump_flags, align 4, !dbg !3009
  %and = and i32 %5, 8, !dbg !3010
  %tobool1 = icmp eq i32 %and, 0, !dbg !3010
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !3011

if.then2:                                         ; preds = %land.lhs.true
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %block, i64 0, i32 9, !dbg !3012
  %6 = load i32, i32* %index, align 8, !dbg !3012
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %4, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i32 %6) #6, !dbg !3013
  br label %if.end3, !dbg !3013

if.end3:                                          ; preds = %land.lhs.true, %if.end, %if.then2
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3014
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !3014
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %block) #6, !dbg !3014
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %0, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !3014
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !3014
  br label %for.cond, !dbg !3016

for.cond:                                         ; preds = %for.body, %if.end3
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2988, metadata !DIExpression(DW_OP_deref)), !dbg !3000
  %call4 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3017
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3019
  br i1 %tobool5, label %for.body, label %for.end, !dbg !3020

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2988, metadata !DIExpression(DW_OP_deref)), !dbg !3000
  %call6 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %gsi) #7, !dbg !3021
  call fastcc void @simulate_stmt(%union.gimple_statement_d* %call6) #7, !dbg !3022
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %gsi, metadata !2988, metadata !DIExpression(DW_OP_deref)), !dbg !3000
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %gsi) #7, !dbg !3023
  br label %for.cond, !dbg !3024, !llvm.loop !3025

for.end:                                          ; preds = %for.cond
  %8 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8, !dbg !3027
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %block, i64 0, i32 9, !dbg !3027
  %9 = load i32, i32* %index7, align 8, !dbg !3027
  %div = lshr i32 %9, 6, !dbg !3027
  %idxprom = zext i32 %div to i64, !dbg !3027
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %8, i64 0, i32 3, i64 %idxprom, !dbg !3027
  %10 = load i64, i64* %arrayidx, align 8, !dbg !3027
  %rem = and i32 %9, 63, !dbg !3027
  %sh_prom = zext i32 %rem to i64, !dbg !3027
  %11 = shl i64 1, %sh_prom, !dbg !3027
  %12 = and i64 %10, %11, !dbg !3027
  %tobool10 = icmp eq i64 %12, 0, !dbg !3027
  br i1 %tobool10, label %if.then11, label %cleanup, !dbg !3028

if.then11:                                        ; preds = %for.end
  %13 = bitcast %struct.gimple_stmt_iterator* %j to i8*, !dbg !3029
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #8, !dbg !3029
  %14 = bitcast %struct.edge_def** %e to i8*, !dbg !3030
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #8, !dbg !3030
  %15 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3031
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3031
  call fastcc void @SET_BIT(%struct.simple_bitmap_def* %8, i32 %9) #7, !dbg !3032
  %16 = bitcast %struct.gimple_stmt_iterator* %tmp13 to i8*, !dbg !3033
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %16) #8, !dbg !3033
  call fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp13, %struct.basic_block_def* %block) #7, !dbg !3033
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %13, i8* nonnull align 8 %16, i64 24, i1 false), !dbg !3033
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %16) #8, !dbg !3033
  br label %for.cond14, !dbg !3034

for.cond14:                                       ; preds = %if.end23, %if.then11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %j, metadata !2989, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  %call15 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %j) #7, !dbg !3036
  %tobool16 = icmp eq i8 %call15, 0, !dbg !3037
  br i1 %tobool16, label %for.body18, label %for.end25, !dbg !3038

for.body18:                                       ; preds = %for.cond14
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %j, metadata !2989, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  %call19 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %j) #7, !dbg !3039
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call19, metadata !2996, metadata !DIExpression()), !dbg !3040
  %call20 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %call19, i32 1) #7, !dbg !3041
  %tobool21 = icmp eq i32 %call20, 0, !dbg !3041
  br i1 %tobool21, label %if.end23, label %if.then22, !dbg !3043

if.then22:                                        ; preds = %for.body18
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call19, i32 1, i8 zeroext 0) #7, !dbg !3044
  br label %if.end23, !dbg !3044

if.end23:                                         ; preds = %for.body18, %if.then22
  call fastcc void @simulate_stmt(%union.gimple_statement_d* %call19) #7, !dbg !3045
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %j, metadata !2989, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %j) #7, !dbg !3046
  br label %for.cond14, !dbg !3047, !llvm.loop !3048

for.end25:                                        ; preds = %for.cond14
  call void @llvm.dbg.value(metadata i32 0, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !2994, metadata !DIExpression()), !dbg !3035
  %17 = bitcast %struct.edge_iterator* %tmp26 to i8*, !dbg !3050
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #8, !dbg !3050
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %block, i64 0, i32 1, !dbg !3050
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3050
  %18 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 0, !dbg !3050
  %19 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !3050
  store i32 %19, i32* %18, align 8, !dbg !3050
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 1, !dbg !3050
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !3050
  store %struct.VEC_edge_gc** %21, %struct.VEC_edge_gc*** %20, align 8, !dbg !3050
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %15, i8* nonnull align 8 %17, i64 16, i1 false), !dbg !3050
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #8, !dbg !3050
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3052
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3052
  br label %for.cond28, !dbg !3050

for.cond28:                                       ; preds = %for.inc36, %for.end25
  %normal_edge_count.0 = phi i32 [ 0, %for.end25 ], [ %normal_edge_count.1, %for.inc36 ], !dbg !3054
  %normal_edge.0 = phi %struct.edge_def* [ null, %for.end25 ], [ %normal_edge.1, %for.inc36 ], !dbg !3055
  call void @llvm.dbg.value(metadata %struct.edge_def* %normal_edge.0, metadata !2994, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %normal_edge_count.0, metadata !2992, metadata !DIExpression()), !dbg !3035
  %24 = load i32, i32* %22, align 8, !dbg !3056
  %25 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %23, align 8, !dbg !3056
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2993, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %24, %struct.VEC_edge_gc** %25, %struct.edge_def** nonnull %e) #7, !dbg !3056
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3050
  br i1 %tobool30, label %for.end37, label %for.body31, !dbg !3050

for.body31:                                       ; preds = %for.cond28
  %26 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3057
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2993, metadata !DIExpression()), !dbg !3035
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %26, i64 0, i32 7, !dbg !3060
  %27 = load i32, i32* %flags, align 8, !dbg !3060
  %and32 = and i32 %27, 10, !dbg !3061
  %tobool33 = icmp eq i32 %and32, 0, !dbg !3061
  br i1 %tobool33, label %if.else, label %if.then34, !dbg !3062

if.then34:                                        ; preds = %for.body31
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2993, metadata !DIExpression()), !dbg !3035
  call fastcc void @add_control_edge(%struct.edge_def* %26) #7, !dbg !3063
  br label %for.inc36, !dbg !3063

if.else:                                          ; preds = %for.body31
  %inc = add i32 %normal_edge_count.0, 1, !dbg !3064
  call void @llvm.dbg.value(metadata i32 %inc, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2993, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %26, metadata !2994, metadata !DIExpression()), !dbg !3035
  br label %for.inc36

for.inc36:                                        ; preds = %if.then34, %if.else
  %normal_edge_count.1 = phi i32 [ %normal_edge_count.0, %if.then34 ], [ %inc, %if.else ], !dbg !3035
  %normal_edge.1 = phi %struct.edge_def* [ %normal_edge.0, %if.then34 ], [ %26, %if.else ], !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %normal_edge.1, metadata !2994, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %normal_edge_count.1, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2995, metadata !DIExpression(DW_OP_deref)), !dbg !3035
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3056
  br label %for.cond28, !dbg !3056, !llvm.loop !3066

for.end37:                                        ; preds = %for.cond28
  %normal_edge_count.0.lcssa = phi i32 [ %normal_edge_count.0, %for.cond28 ], !dbg !3054
  %normal_edge.0.lcssa = phi %struct.edge_def* [ %normal_edge.0, %for.cond28 ], !dbg !3055
  call void @llvm.dbg.value(metadata i32 %normal_edge_count.0.lcssa, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %normal_edge.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %normal_edge_count.0.lcssa, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %normal_edge.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata i32 %normal_edge_count.0.lcssa, metadata !2992, metadata !DIExpression()), !dbg !3035
  call void @llvm.dbg.value(metadata %struct.edge_def* %normal_edge.0.lcssa, metadata !2994, metadata !DIExpression()), !dbg !3035
  %cmp38 = icmp eq i32 %normal_edge_count.0.lcssa, 1, !dbg !3068
  br i1 %cmp38, label %if.then39, label %if.end40, !dbg !3070

if.then39:                                        ; preds = %for.end37
  call fastcc void @add_control_edge(%struct.edge_def* %normal_edge.0.lcssa) #7, !dbg !3071
  br label %if.end40, !dbg !3071

if.end40:                                         ; preds = %if.then39, %for.end37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #8, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #8, !dbg !3072
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #8, !dbg !3072
  br label %cleanup, !dbg !3073

cleanup:                                          ; preds = %for.end, %if.end40, %entry
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %0) #8, !dbg !3074
  ret void, !dbg !3074
}

; Function Attrs: nounwind uwtable
define internal fastcc void @process_ssa_edge_worklist(%struct.VEC_gimple_gc** %worklist) unnamed_addr #5 !dbg !3075 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %worklist, metadata !3080, metadata !DIExpression()), !dbg !3084
  br label %while.cond, !dbg !3085

while.cond:                                       ; preds = %cleanup, %entry
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %worklist, align 8, !dbg !3086
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !3086
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3086

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !3086
  br label %cond.end, !dbg !3086

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3086
  %call = tail call fastcc i32 @VEC_gimple_base_length(%struct.VEC_gimple_base* %cond) #7, !dbg !3086
  %cmp = icmp eq i32 %call, 0, !dbg !3087
  br i1 %cmp, label %while.end, label %while.body, !dbg !3085

while.body:                                       ; preds = %cond.end
  %1 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %worklist, align 8, !dbg !3088
  %tobool1 = icmp eq %struct.VEC_gimple_gc* %1, null, !dbg !3088
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3088

cond.true2:                                       ; preds = %while.body
  %base3 = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %1, i64 0, i32 0, !dbg !3088
  br label %cond.end5, !dbg !3088

cond.end5:                                        ; preds = %while.body, %cond.true2
  %cond6 = phi %struct.VEC_gimple_base* [ %base3, %cond.true2 ], [ null, %while.body ], !dbg !3088
  %call7 = tail call fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %cond6) #7, !dbg !3088
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call7, metadata !3083, metadata !DIExpression()), !dbg !3089
  %call8 = tail call fastcc i32 @gimple_plf(%union.gimple_statement_d* %call7, i32 1) #7, !dbg !3090
  %tobool9 = icmp eq i32 %call8, 0, !dbg !3090
  br i1 %tobool9, label %cleanup, label %if.end, !dbg !3092, !llvm.loop !3093

if.end:                                           ; preds = %cond.end5
  tail call fastcc void @gimple_set_plf(%union.gimple_statement_d* %call7, i32 1, i8 zeroext 0) #7, !dbg !3095
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3096
  %tobool10 = icmp eq %struct._IO_FILE* %2, null, !dbg !3096
  br i1 %tobool10, label %if.end14, label %land.lhs.true, !dbg !3098

land.lhs.true:                                    ; preds = %if.end
  %3 = load i32, i32* @dump_flags, align 4, !dbg !3099
  %and = and i32 %3, 8, !dbg !3100
  %tobool11 = icmp eq i32 %and, 0, !dbg !3100
  br i1 %tobool11, label %if.end14, label %if.then12, !dbg !3101

if.then12:                                        ; preds = %land.lhs.true
  %call13 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i64 0, i64 0)) #6, !dbg !3102
  %4 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3104
  %5 = load i32, i32* @dump_flags, align 4, !dbg !3105
  tail call void @print_gimple_stmt(%struct._IO_FILE* %4, %union.gimple_statement_d* %call7, i32 0, i32 %5) #6, !dbg !3106
  br label %if.end14, !dbg !3107

if.end14:                                         ; preds = %land.lhs.true, %if.end, %if.then12
  %call15 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %call7) #7, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15, metadata !3081, metadata !DIExpression()), !dbg !3089
  %call16 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %call7) #7, !dbg !3109
  %cmp17 = icmp eq i32 %call16, 16, !dbg !3111
  br i1 %cmp17, label %if.then21, label %lor.lhs.false, !dbg !3112

lor.lhs.false:                                    ; preds = %if.end14
  %6 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8, !dbg !3113
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call15, i64 0, i32 9, !dbg !3113
  %7 = load i32, i32* %index, align 8, !dbg !3113
  %div = lshr i32 %7, 6, !dbg !3113
  %idxprom = zext i32 %div to i64, !dbg !3113
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %6, i64 0, i32 3, i64 %idxprom, !dbg !3113
  %8 = load i64, i64* %arrayidx, align 8, !dbg !3113
  %rem = and i32 %7, 63, !dbg !3113
  %sh_prom = zext i32 %rem to i64, !dbg !3113
  %9 = shl i64 1, %sh_prom, !dbg !3113
  %10 = and i64 %8, %9, !dbg !3113
  %tobool20 = icmp eq i64 %10, 0, !dbg !3113
  br i1 %tobool20, label %cleanup, label %if.then21, !dbg !3114

if.then21:                                        ; preds = %lor.lhs.false, %if.end14
  tail call fastcc void @simulate_stmt(%union.gimple_statement_d* %call7) #7, !dbg !3115
  br label %cleanup, !dbg !3115

cleanup:                                          ; preds = %lor.lhs.false, %cond.end5, %if.then21
  br label %while.cond

while.end:                                        ; preds = %cond.end
  ret void, !dbg !3116
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ssa_prop_fini() unnamed_addr #5 !dbg !3117 {
entry:
  tail call fastcc void @VEC_gimple_gc_free(%struct.VEC_gimple_gc** nonnull @interesting_ssa_edges) #7, !dbg !3118
  tail call fastcc void @VEC_gimple_gc_free(%struct.VEC_gimple_gc** nonnull @varying_ssa_edges) #7, !dbg !3119
  tail call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull @cfg_blocks) #7, !dbg !3120
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !3121
  %0 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !3122
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %0, i64 0, i32 0, !dbg !3122
  %1 = load i8*, i8** %popcount, align 8, !dbg !3122
  tail call void @free(i8* %1) #6, !dbg !3122
  %2 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @bb_in_list to i8**), align 8, !dbg !3122
  tail call void @free(i8* %2) #6, !dbg !3122
  %3 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @executable_blocks, align 8, !dbg !3123
  %popcount1 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %3, i64 0, i32 0, !dbg !3123
  %4 = load i8*, i8** %popcount1, align 8, !dbg !3123
  tail call void @free(i8* %4) #6, !dbg !3123
  %5 = load i8*, i8** bitcast (%struct.simple_bitmap_def** @executable_blocks to i8**), align 8, !dbg !3123
  tail call void @free(i8* %5) #6, !dbg !3123
  ret void, !dbg !3124
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @stmt_makes_single_store(%union.gimple_statement_d* %stmt) local_unnamed_addr #5 !dbg !3125 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3129, metadata !DIExpression()), !dbg !3131
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3132
  %cmp = icmp eq i32 %call, 6, !dbg !3134
  br i1 %cmp, label %if.end, label %land.lhs.true, !dbg !3135

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3136
  %cmp2 = icmp eq i32 %call1, 8, !dbg !3137
  br i1 %cmp2, label %if.end, label %cleanup, !dbg !3138

if.end:                                           ; preds = %land.lhs.true, %entry
  %call3 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3139
  %tobool = icmp eq %union.tree_node* %call3, null, !dbg !3139
  br i1 %tobool, label %cleanup, label %if.end5, !dbg !3141

if.end5:                                          ; preds = %if.end
  %call6 = tail call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %stmt) #6, !dbg !3142
  call void @llvm.dbg.value(metadata %union.tree_node* %call6, metadata !3130, metadata !DIExpression()), !dbg !3131
  %tobool7 = icmp eq %union.tree_node* %call6, null, !dbg !3143
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3145

if.end9:                                          ; preds = %if.end5
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3146
  %bf.load = load i64, i64* %0, align 8, !dbg !3146
  %bf.cast1 = and i64 %bf.load, 524288, !dbg !3146
  %tobool10 = icmp eq i64 %bf.cast1, 0, !dbg !3146
  br i1 %tobool10, label %land.rhs, label %land.end, !dbg !3147

land.rhs:                                         ; preds = %if.end9
  %bf.cast14 = and i64 %bf.load, 65535, !dbg !3148
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @tree_code_type, i64 0, i64 %bf.cast14, !dbg !3148
  %1 = load i32, i32* %arrayidx, align 4, !dbg !3148
  %cmp15 = icmp eq i32 %1, 3, !dbg !3148
  br i1 %cmp15, label %land.end, label %lor.rhs, !dbg !3149

lor.rhs:                                          ; preds = %land.rhs
  %cmp22 = icmp eq i32 %1, 4, !dbg !3150
  %phitmp = zext i1 %cmp22 to i8, !dbg !3149
  br label %land.end, !dbg !3149

land.end:                                         ; preds = %if.end9, %land.rhs, %lor.rhs
  %2 = phi i8 [ 0, %if.end9 ], [ 1, %land.rhs ], [ %phitmp, %lor.rhs ]
  br label %cleanup, !dbg !3151

cleanup:                                          ; preds = %land.lhs.true, %if.end5, %if.end, %land.end
  %retval.0 = phi i8 [ %2, %land.end ], [ 0, %land.lhs.true ], [ 0, %if.end ], [ 0, %if.end5 ], !dbg !3131
  ret i8 %retval.0, !dbg !3152
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_code(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3153 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3157, metadata !DIExpression()), !dbg !3158
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 0, !dbg !3159
  %bf.load = load i32, i32* %0, align 8, !dbg !3159
  %bf.clear = and i32 %bf.load, 255, !dbg !3159
  ret i32 %bf.clear, !dbg !3160
}

declare dso_local %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @substitute_and_fold(%struct.prop_value_d* %prop_value, i8 (%struct.gimple_stmt_iterator*)* %fold_fn) local_unnamed_addr #5 !dbg !3161 {
entry:
  %i = alloca %struct.gimple_stmt_iterator, align 8
  %tmp = alloca %struct.gimple_stmt_iterator, align 8
  %tmp18 = alloca %struct.gimple_stmt_iterator, align 8
  %oldi = alloca %struct.gimple_stmt_iterator, align 8
  %i2 = alloca %struct.gimple_stmt_iterator, align 8
  %tmp60 = alloca %struct.gimple_stmt_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %prop_value, metadata !3175, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 (%struct.gimple_stmt_iterator*)* %fold_fn, metadata !3176, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 0, metadata !3178, metadata !DIExpression()), !dbg !3199
  %cmp = icmp ne %struct.prop_value_d* %prop_value, null, !dbg !3200
  %tobool = icmp ne i8 (%struct.gimple_stmt_iterator*)* %fold_fn, null, !dbg !3202
  %or.cond = or i1 %cmp, %tobool, !dbg !3203
  br i1 %or.cond, label %if.end, label %cleanup150, !dbg !3203

if.end:                                           ; preds = %entry
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3204
  %tobool1 = icmp eq %struct._IO_FILE* %0, null, !dbg !3204
  br i1 %tobool1, label %if.end5, label %land.lhs.true2, !dbg !3206

land.lhs.true2:                                   ; preds = %if.end
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3207
  %and = and i32 %1, 8, !dbg !3208
  %tobool3 = icmp eq i32 %and, 0, !dbg !3208
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3209

if.then4:                                         ; preds = %land.lhs.true2
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !3210
  br label %if.end5, !dbg !3210

if.end5:                                          ; preds = %land.lhs.true2, %if.end, %if.then4
  %call6 = tail call i8* @memset(i8* bitcast (%struct.prop_stats_d* @prop_stats to i8*), i32 0, i64 32) #6, !dbg !3211
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3212
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3212
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3212
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3212
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3212
  %5 = bitcast %struct.gimple_stmt_iterator* %i to i8*, !dbg !3213
  %tobool10 = icmp eq %struct.prop_value_d* %prop_value, null, !dbg !3214
  %6 = bitcast %struct.gimple_stmt_iterator* %tmp to i8*, !dbg !3216
  %7 = bitcast %struct.gimple_stmt_iterator* %tmp18 to i8*, !dbg !3218
  %8 = bitcast %struct.gimple_stmt_iterator* %oldi to i8*, !dbg !3219
  %9 = bitcast %struct.gimple_stmt_iterator* %i2 to i8*, !dbg !3220
  %10 = bitcast %struct.gimple_stmt_iterator* %tmp60 to i8*, !dbg !3220
  %tobool69 = icmp eq i8 (%struct.gimple_stmt_iterator*)* %fold_fn, null, !dbg !3221
  br label %for.cond, !dbg !3212

for.cond:                                         ; preds = %for.end138, %if.end5
  %11 = phi %struct.control_flow_graph* [ %3, %if.end5 ], [ %.pre6, %for.end138 ], !dbg !3223
  %12 = phi %struct.function* [ %2, %if.end5 ], [ %.pre, %for.end138 ], !dbg !3223
  %something_changed.0 = phi i8 [ 0, %if.end5 ], [ %something_changed.1.lcssa, %for.end138 ], !dbg !3224
  %.pn = phi %struct.basic_block_def* [ %4, %if.end5 ], [ %bb.0, %for.end138 ]
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !3225
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !3177, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %something_changed.0, metadata !3178, metadata !DIExpression()), !dbg !3199
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %11, i64 0, i32 1, !dbg !3223
  %13 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3223
  %cmp9 = icmp eq %struct.basic_block_def* %bb.0, %13, !dbg !3223
  br i1 %cmp9, label %for.end141, label %for.body, !dbg !3212

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %5) #8, !dbg !3226
  br i1 %tobool10, label %if.end17, label %if.then11, !dbg !3227

if.then11:                                        ; preds = %for.body
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3228
  call void @gsi_start_phis(%struct.gimple_stmt_iterator* nonnull sret %tmp, %struct.basic_block_def* %bb.0) #6, !dbg !3228
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %6, i64 24, i1 false), !dbg !3228
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #8, !dbg !3228
  br label %for.cond12, !dbg !3229

for.cond12:                                       ; preds = %for.body15, %if.then11
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  %call13 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3230
  %tobool14 = icmp eq i8 %call13, 0, !dbg !3232
  br i1 %tobool14, label %for.body15, label %if.end17.loopexit, !dbg !3233

for.body15:                                       ; preds = %for.cond12
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  %call16 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3234
  call fastcc void @replace_phi_args_in(%union.gimple_statement_d* %call16, %struct.prop_value_d* nonnull %prop_value) #7, !dbg !3235
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  call fastcc void @gsi_next(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !3236
  br label %for.cond12, !dbg !3237, !llvm.loop !3238

if.end17.loopexit:                                ; preds = %for.cond12
  br label %if.end17, !dbg !3240

if.end17:                                         ; preds = %if.end17.loopexit, %for.body
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #8, !dbg !3240
  call fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* nonnull sret %tmp18, %struct.basic_block_def* %bb.0) #7, !dbg !3240
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %5, i8* nonnull align 8 %7, i64 24, i1 false), !dbg !3240
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #8, !dbg !3240
  br label %for.cond19, !dbg !3241

for.cond19:                                       ; preds = %cleanup, %if.end17
  %something_changed.1 = phi i8 [ %something_changed.0, %if.end17 ], [ %something_changed.4, %cleanup ], !dbg !3224
  call void @llvm.dbg.value(metadata i8 %something_changed.1, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  %call20 = call fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3242
  %tobool21 = icmp eq i8 %call20, 0, !dbg !3243
  br i1 %tobool21, label %for.body23, label %for.end138, !dbg !3244

for.body23:                                       ; preds = %for.cond19
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  %call24 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %i) #7, !dbg !3245
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call24, metadata !3187, metadata !DIExpression()), !dbg !3219
  %call25 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %call24) #7, !dbg !3246
  call void @llvm.dbg.value(metadata i32 %call25, metadata !3189, metadata !DIExpression()), !dbg !3219
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #8, !dbg !3247
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* nonnull align 8 %5, i64 24, i1 false), !dbg !3248
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3179, metadata !DIExpression(DW_OP_deref)), !dbg !3213
  call fastcc void @gsi_prev(%struct.gimple_stmt_iterator* nonnull %i) #7, !dbg !3249
  %cmp26 = icmp eq i32 %call25, 6, !dbg !3250
  br i1 %cmp26, label %land.lhs.true27, label %if.end31, !dbg !3252

land.lhs.true27:                                  ; preds = %for.body23
  %call28 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call24) #7, !dbg !3253
  %14 = getelementptr inbounds %union.tree_node, %union.tree_node* %call28, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3253
  %bf.load = load i64, i64* %14, align 8, !dbg !3253
  %bf.cast5 = and i64 %bf.load, 65535, !dbg !3254
  %cmp29 = icmp eq i64 %bf.cast5, 148, !dbg !3254
  br i1 %cmp29, label %cleanup, label %if.end31, !dbg !3255, !llvm.loop !3256

if.end31:                                         ; preds = %land.lhs.true27, %for.body23
  %call32 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call24) #6, !dbg !3258
  %tobool33 = icmp eq %union.tree_node* %call32, null, !dbg !3258
  br i1 %tobool33, label %if.end61, label %land.lhs.true34, !dbg !3259

land.lhs.true34:                                  ; preds = %if.end31
  %call35 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call24) #6, !dbg !3260
  %15 = getelementptr inbounds %union.tree_node, %union.tree_node* %call35, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3260
  %bf.load37 = load i64, i64* %15, align 8, !dbg !3260
  %bf.cast394 = and i64 %bf.load37, 65535, !dbg !3261
  %cmp40 = icmp eq i64 %bf.cast394, 141, !dbg !3261
  br i1 %cmp40, label %land.lhs.true41, label %if.end61, !dbg !3262

land.lhs.true41:                                  ; preds = %land.lhs.true34
  %call42 = call %union.tree_node* @gimple_get_lhs(%union.gimple_statement_d* %call24) #6, !dbg !3263
  %call43 = call fastcc zeroext i8 @has_zero_uses(%union.tree_node* %call42) #7, !dbg !3264
  %tobool44 = icmp eq i8 %call43, 0, !dbg !3264
  br i1 %tobool44, label %if.end61, label %land.lhs.true45, !dbg !3265

land.lhs.true45:                                  ; preds = %land.lhs.true41
  %call46 = call zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d* %call24) #6, !dbg !3266
  %tobool47 = icmp eq i8 %call46, 0, !dbg !3266
  br i1 %tobool47, label %land.lhs.true48, label %if.end61, !dbg !3267

land.lhs.true48:                                  ; preds = %land.lhs.true45
  %call49 = call zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d* %call24) #6, !dbg !3268
  %tobool50 = icmp eq i8 %call49, 0, !dbg !3268
  br i1 %tobool50, label %if.then51, label %if.end61, !dbg !3269

if.then51:                                        ; preds = %land.lhs.true48
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3270
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3271
  %tobool52 = icmp eq %struct._IO_FILE* %16, null, !dbg !3271
  br i1 %tobool52, label %if.end59, label %land.lhs.true53, !dbg !3273

land.lhs.true53:                                  ; preds = %if.then51
  %17 = load i32, i32* @dump_flags, align 4, !dbg !3274
  %and54 = and i32 %17, 8, !dbg !3275
  %tobool55 = icmp eq i32 %and54, 0, !dbg !3275
  br i1 %tobool55, label %if.end59, label %if.then56, !dbg !3276

if.then56:                                        ; preds = %land.lhs.true53
  %call57 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !3277
  %18 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3279
  call void @print_gimple_stmt(%struct._IO_FILE* %18, %union.gimple_statement_d* %call24, i32 0, i32 0) #6, !dbg !3280
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3281
  %call58 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3282
  br label %if.end59, !dbg !3283

if.end59:                                         ; preds = %land.lhs.true53, %if.then51, %if.then56
  %20 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 3), align 8, !dbg !3284
  %inc = add nsw i64 %20, 1, !dbg !3284
  store i64 %inc, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 3), align 8, !dbg !3284
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #8, !dbg !3285
  call void @gsi_for_stmt(%struct.gimple_stmt_iterator* nonnull sret %tmp60, %union.gimple_statement_d* %call24) #6, !dbg !3285
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %9, i8* nonnull align 8 %10, i64 24, i1 false), !dbg !3285
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #8, !dbg !3285
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i2, metadata !3191, metadata !DIExpression(DW_OP_deref)), !dbg !3220
  call void @gsi_remove(%struct.gimple_stmt_iterator* nonnull %i2, i8 zeroext 1) #6, !dbg !3286
  call void @release_defs(%union.gimple_statement_d* %call24) #6, !dbg !3287
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %9) #8, !dbg !3288
  br label %cleanup

if.end61:                                         ; preds = %land.lhs.true48, %land.lhs.true45, %land.lhs.true41, %if.end31, %land.lhs.true34
  call void @llvm.dbg.value(metadata i8 0, metadata !3183, metadata !DIExpression()), !dbg !3219
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3289
  %tobool62 = icmp eq %struct._IO_FILE* %21, null, !dbg !3289
  br i1 %tobool62, label %if.end68, label %land.lhs.true63, !dbg !3291

land.lhs.true63:                                  ; preds = %if.end61
  %22 = load i32, i32* @dump_flags, align 4, !dbg !3292
  %and64 = and i32 %22, 8, !dbg !3293
  %tobool65 = icmp eq i32 %and64, 0, !dbg !3293
  br i1 %tobool65, label %if.end68, label %if.then66, !dbg !3294

if.then66:                                        ; preds = %land.lhs.true63
  %call67 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %21, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !3295
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3297
  call void @print_gimple_stmt(%struct._IO_FILE* %23, %union.gimple_statement_d* %call24, i32 0, i32 2) #6, !dbg !3298
  br label %if.end68, !dbg !3299

if.end68:                                         ; preds = %land.lhs.true63, %if.end61, %if.then66
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call24, metadata !3188, metadata !DIExpression()), !dbg !3219
  br i1 %tobool69, label %if.end76, label %land.lhs.true70, !dbg !3300

land.lhs.true70:                                  ; preds = %if.end68
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %oldi, metadata !3190, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %call71 = call zeroext i8 %fold_fn(%struct.gimple_stmt_iterator* nonnull %oldi) #6, !dbg !3301
  %tobool73 = icmp eq i8 %call71, 0, !dbg !3301
  br i1 %tobool73, label %if.end76, label %if.then74, !dbg !3302

if.then74:                                        ; preds = %land.lhs.true70
  call void @llvm.dbg.value(metadata i8 1, metadata !3183, metadata !DIExpression()), !dbg !3219
  %24 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 2), align 8, !dbg !3303
  %inc75 = add nsw i64 %24, 1, !dbg !3303
  store i64 %inc75, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 2), align 8, !dbg !3303
  br label %if.end76, !dbg !3305

if.end76:                                         ; preds = %land.lhs.true70, %if.end68, %if.then74
  %did_replace.0 = phi i8 [ 1, %if.then74 ], [ 0, %land.lhs.true70 ], [ 0, %if.end68 ], !dbg !3219
  call void @llvm.dbg.value(metadata i8 %did_replace.0, metadata !3183, metadata !DIExpression()), !dbg !3219
  %tobool79 = icmp ne i8 %did_replace.0, 0, !dbg !3306
  %or.cond1 = or i1 %tobool10, %tobool79, !dbg !3308
  br i1 %or.cond1, label %if.end85, label %if.then80, !dbg !3308

if.then80:                                        ; preds = %if.end76
  %call81 = call fastcc zeroext i8 @replace_uses_in(%union.gimple_statement_d* %call24, %struct.prop_value_d* %prop_value) #7, !dbg !3309
  call void @llvm.dbg.value(metadata i8 %call81, metadata !3183, metadata !DIExpression()), !dbg !3219
  br label %if.end85, !dbg !3310

if.end85:                                         ; preds = %if.end76, %if.then80
  %did_replace.1 = phi i8 [ %call81, %if.then80 ], [ %did_replace.0, %if.end76 ], !dbg !3219
  call void @llvm.dbg.value(metadata i8 %did_replace.1, metadata !3183, metadata !DIExpression()), !dbg !3219
  %cond = icmp eq i8 %did_replace.1, 0, !dbg !3311
  br i1 %cond, label %if.end121, label %if.then87, !dbg !3311

if.then87:                                        ; preds = %if.end85
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %oldi, metadata !3190, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %call88 = call zeroext i8 @fold_stmt(%struct.gimple_stmt_iterator* nonnull %oldi) #6, !dbg !3312
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %oldi, metadata !3190, metadata !DIExpression(DW_OP_deref)), !dbg !3219
  %call92 = call fastcc %union.gimple_statement_d* @gsi_stmt(%struct.gimple_stmt_iterator* nonnull byval(%struct.gimple_stmt_iterator) align 8 %oldi) #7, !dbg !3314
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %call92, metadata !3187, metadata !DIExpression()), !dbg !3219
  %call93 = call zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d* %call24, %union.gimple_statement_d* %call92) #6, !dbg !3315
  %tobool94 = icmp eq i8 %call93, 0, !dbg !3315
  br i1 %tobool94, label %if.end97, label %if.then95, !dbg !3317

if.then95:                                        ; preds = %if.then87
  %call96 = call zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def* %bb.0) #6, !dbg !3318
  br label %if.end97, !dbg !3318

if.end97:                                         ; preds = %if.then87, %if.then95
  %call98 = call fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %call92) #7, !dbg !3319
  %tobool100 = icmp eq i8 %call98, 0, !dbg !3319
  br i1 %tobool100, label %if.end116, label %land.lhs.true101, !dbg !3320

land.lhs.true101:                                 ; preds = %if.end97
  %call102 = call fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %call92) #7, !dbg !3321
  %call103 = call fastcc i32 @get_gimple_rhs_class(i32 %call102) #7, !dbg !3322
  %cmp104 = icmp eq i32 %call103, 3, !dbg !3323
  br i1 %cmp104, label %if.then106, label %if.end116, !dbg !3324

if.then106:                                       ; preds = %land.lhs.true101
  %call107 = call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %call92) #7, !dbg !3325
  call void @llvm.dbg.value(metadata %union.tree_node* %call107, metadata !3194, metadata !DIExpression()), !dbg !3326
  %25 = getelementptr inbounds %union.tree_node, %union.tree_node* %call107, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3327
  %bf.load109 = load i64, i64* %25, align 8, !dbg !3327
  %bf.cast1113 = and i64 %bf.load109, 65535, !dbg !3329
  %cmp112 = icmp eq i64 %bf.cast1113, 121, !dbg !3329
  br i1 %cmp112, label %if.then114, label %if.end116, !dbg !3330

if.then114:                                       ; preds = %if.then106
  call void @recompute_tree_invariant_for_addr_expr(%union.tree_node* %call107) #6, !dbg !3331
  br label %if.end116, !dbg !3331

if.end116:                                        ; preds = %if.end97, %if.then106, %if.then114, %land.lhs.true101
  call fastcc void @update_stmt(%union.gimple_statement_d* %call92) #7, !dbg !3332
  %call117 = call fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %call92) #7, !dbg !3333
  %tobool118 = icmp eq i8 %call117, 0, !dbg !3333
  %spec.select = select i1 %tobool118, i8 1, i8 %something_changed.1, !dbg !3335
  call void @llvm.dbg.value(metadata i8 %spec.select, metadata !3178, metadata !DIExpression()), !dbg !3199
  br label %if.end121, !dbg !3336

if.end121:                                        ; preds = %if.end85, %if.end116
  %something_changed.3 = phi i8 [ %spec.select, %if.end116 ], [ %something_changed.1, %if.end85 ], !dbg !3224
  %stmt.0 = phi %union.gimple_statement_d* [ %call92, %if.end116 ], [ %call24, %if.end85 ], !dbg !3219
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt.0, metadata !3187, metadata !DIExpression()), !dbg !3219
  call void @llvm.dbg.value(metadata i8 %something_changed.3, metadata !3178, metadata !DIExpression()), !dbg !3199
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3337
  %tobool122 = icmp eq %struct._IO_FILE* %26, null, !dbg !3337
  br i1 %tobool122, label %cleanup, label %land.lhs.true123, !dbg !3339

land.lhs.true123:                                 ; preds = %if.end121
  %27 = load i32, i32* @dump_flags, align 4, !dbg !3340
  %and124 = and i32 %27, 8, !dbg !3341
  %tobool125 = icmp eq i32 %and124, 0, !dbg !3341
  br i1 %tobool125, label %cleanup, label %if.then126, !dbg !3342

if.then126:                                       ; preds = %land.lhs.true123
  br i1 %cond, label %if.else, label %if.then128, !dbg !3343

if.then128:                                       ; preds = %if.then126
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3345
  %28 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3348
  call void @print_gimple_stmt(%struct._IO_FILE* %28, %union.gimple_statement_d* %stmt.0, i32 0, i32 2) #6, !dbg !3349
  %29 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3350
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3351
  br label %cleanup, !dbg !3352

if.else:                                          ; preds = %if.then126
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0)) #6, !dbg !3353
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true123, %if.end121, %if.else, %if.then128, %land.lhs.true27, %if.end59
  %something_changed.4 = phi i8 [ %something_changed.1, %if.end59 ], [ %something_changed.1, %land.lhs.true27 ], [ %something_changed.3, %if.then128 ], [ %something_changed.3, %if.else ], [ %something_changed.3, %land.lhs.true123 ], [ %something_changed.3, %if.end121 ], !dbg !3224
  call void @llvm.dbg.value(metadata i8 %something_changed.4, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #8, !dbg !3354
  br label %for.cond19

for.end138:                                       ; preds = %for.cond19
  %something_changed.1.lcssa = phi i8 [ %something_changed.1, %for.cond19 ], !dbg !3224
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %something_changed.1.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %5) #8, !dbg !3355
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3223
  %cfg8.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3356
  %.pre6 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg8.phi.trans.insert, align 8, !dbg !3223
  br label %for.cond, !dbg !3223, !llvm.loop !3357

for.end141:                                       ; preds = %for.cond
  %.lcssa = phi %struct.function* [ %12, %for.cond ], !dbg !3223
  %something_changed.0.lcssa = phi i8 [ %something_changed.0, %for.cond ], !dbg !3224
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  call void @llvm.dbg.value(metadata i8 %something_changed.0.lcssa, metadata !3178, metadata !DIExpression()), !dbg !3199
  %30 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 0), align 8, !dbg !3359
  %conv143 = trunc i64 %30 to i32, !dbg !3360
  call void @statistics_counter_event(%struct.function* %.lcssa, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i32 %conv143) #6, !dbg !3361
  %31 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3362
  %32 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 1), align 8, !dbg !3363
  %conv145 = trunc i64 %32 to i32, !dbg !3364
  call void @statistics_counter_event(%struct.function* %31, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0), i32 %conv145) #6, !dbg !3365
  %33 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3366
  %34 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 2), align 8, !dbg !3367
  %conv147 = trunc i64 %34 to i32, !dbg !3368
  call void @statistics_counter_event(%struct.function* %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0), i32 %conv147) #6, !dbg !3369
  %35 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3370
  %36 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 3), align 8, !dbg !3371
  %conv149 = trunc i64 %36 to i32, !dbg !3372
  call void @statistics_counter_event(%struct.function* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.11, i64 0, i64 0), i32 %conv149) #6, !dbg !3373
  br label %cleanup150, !dbg !3374

cleanup150:                                       ; preds = %entry, %for.end141
  %retval.0 = phi i8 [ %something_changed.0.lcssa, %for.end141 ], [ 0, %entry ], !dbg !3199
  ret i8 %retval.0, !dbg !3375
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

declare dso_local void @gsi_start_phis(%struct.gimple_stmt_iterator* sret, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gsi_end_p(%struct.gimple_stmt_iterator* byval(%struct.gimple_stmt_iterator) align 8 %i) unnamed_addr #0 !dbg !3376 {
entry:
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %i, metadata !3380, metadata !DIExpression()), !dbg !3381
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3382
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3382
  %cmp = icmp eq %struct.gimple_seq_node_d* %0, null, !dbg !3383
  %conv1 = zext i1 %cmp to i8, !dbg !3384
  ret i8 %conv1, !dbg !3385
}

; Function Attrs: nounwind uwtable
define internal fastcc void @replace_phi_args_in(%union.gimple_statement_d* %phi, %struct.prop_value_d* %prop_value) unnamed_addr #5 !dbg !3386 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %phi, metadata !3390, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %prop_value, metadata !3391, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 0, metadata !3393, metadata !DIExpression()), !dbg !3401
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3402
  %tobool = icmp eq %struct._IO_FILE* %0, null, !dbg !3402
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3404

land.lhs.true:                                    ; preds = %entry
  %1 = load i32, i32* @dump_flags, align 4, !dbg !3405
  %and = and i32 %1, 8, !dbg !3406
  %tobool1 = icmp eq i32 %and, 0, !dbg !3406
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3407

if.then:                                          ; preds = %land.lhs.true
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0)) #6, !dbg !3408
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3410
  tail call void @print_gimple_stmt(%struct._IO_FILE* %2, %union.gimple_statement_d* %phi, i32 0, i32 2) #6, !dbg !3411
  br label %if.end, !dbg !3412

if.end:                                           ; preds = %land.lhs.true, %entry, %if.then
  call void @llvm.dbg.value(metadata i64 0, metadata !3392, metadata !DIExpression()), !dbg !3401
  br label %for.cond, !dbg !3413

for.cond:                                         ; preds = %for.inc, %if.end
  %i.0 = phi i64 [ 0, %if.end ], [ %inc45, %for.inc ], !dbg !3414
  %replaced.0 = phi i8 [ 0, %if.end ], [ %replaced.2, %for.inc ], !dbg !3401
  call void @llvm.dbg.value(metadata i8 %replaced.0, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i64 %i.0, metadata !3392, metadata !DIExpression()), !dbg !3401
  %call2 = tail call fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %phi) #7, !dbg !3415
  %conv = zext i32 %call2 to i64, !dbg !3415
  %cmp = icmp ult i64 %i.0, %conv, !dbg !3416
  br i1 %cmp, label %for.body, label %for.end, !dbg !3417

for.body:                                         ; preds = %for.cond
  %call4 = tail call fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %phi, i64 %i.0) #7, !dbg !3418
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !3394, metadata !DIExpression()), !dbg !3419
  %3 = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3420
  %bf.load = load i64, i64* %3, align 8, !dbg !3420
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3421
  %cmp5 = icmp eq i64 %bf.cast1, 141, !dbg !3421
  br i1 %cmp5, label %if.then7, label %for.inc, !dbg !3422

if.then7:                                         ; preds = %for.body
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call4, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3423
  %4 = bitcast %union.tree_node** %version to i32*, !dbg !3423
  %5 = load i32, i32* %4, align 8, !dbg !3423
  %idxprom = zext i32 %5 to i64, !dbg !3424
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %prop_value, i64 %idxprom, i32 1, !dbg !3425
  %6 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3425
  call void @llvm.dbg.value(metadata %union.tree_node* %6, metadata !3398, metadata !DIExpression()), !dbg !3426
  %tobool8 = icmp ne %union.tree_node* %6, null, !dbg !3427
  %cmp10 = icmp ne %union.tree_node* %6, %call4, !dbg !3429
  %or.cond = and i1 %tobool8, %cmp10, !dbg !3430
  br i1 %or.cond, label %land.lhs.true12, label %for.inc, !dbg !3430

land.lhs.true12:                                  ; preds = %if.then7
  %call13 = tail call zeroext i8 @may_propagate_copy(%union.tree_node* %call4, %union.tree_node* nonnull %6) #6, !dbg !3431
  %tobool15 = icmp eq i8 %call13, 0, !dbg !3431
  br i1 %tobool15, label %for.inc, label %if.then16, !dbg !3432

if.then16:                                        ; preds = %land.lhs.true12
  %7 = getelementptr inbounds %union.tree_node, %union.tree_node* %6, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3433
  %bf.load18 = load i64, i64* %7, align 8, !dbg !3433
  %bf.cast202 = and i64 %bf.load18, 65535, !dbg !3436
  %cmp21 = icmp eq i64 %bf.cast202, 141, !dbg !3436
  br i1 %cmp21, label %if.else, label %if.then23, !dbg !3437

if.then23:                                        ; preds = %if.then16
  %8 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 0), align 8, !dbg !3438
  %inc = add nsw i64 %8, 1, !dbg !3438
  store i64 %inc, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 0), align 8, !dbg !3438
  br label %if.end25, !dbg !3439

if.else:                                          ; preds = %if.then16
  %9 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 1), align 8, !dbg !3440
  %inc24 = add nsw i64 %9, 1, !dbg !3440
  store i64 %inc24, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 1), align 8, !dbg !3440
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then23
  %conv26 = trunc i64 %i.0 to i32, !dbg !3441
  %call27 = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %phi, i32 %conv26) #7, !dbg !3441
  tail call void @propagate_value(%struct.ssa_use_operand_d* %call27, %union.tree_node* nonnull %6) #6, !dbg !3442
  call void @llvm.dbg.value(metadata i8 1, metadata !3393, metadata !DIExpression()), !dbg !3401
  %bf.load29 = load i64, i64* %7, align 8, !dbg !3443
  %bf.cast313 = and i64 %bf.load29, 65535, !dbg !3445
  %cmp32 = icmp eq i64 %bf.cast313, 141, !dbg !3445
  br i1 %cmp32, label %land.lhs.true34, label %for.inc, !dbg !3446

land.lhs.true34:                                  ; preds = %if.end25
  %call35 = tail call fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %phi, i64 %i.0) #7, !dbg !3447
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call35, i64 0, i32 7, !dbg !3448
  %10 = load i32, i32* %flags, align 8, !dbg !3448
  %and36 = and i32 %10, 2, !dbg !3449
  %tobool37 = icmp eq i32 %and36, 0, !dbg !3449
  br i1 %tobool37, label %for.inc, label %if.then38, !dbg !3450

if.then38:                                        ; preds = %land.lhs.true34
  %bf.load40 = load i64, i64* %7, align 8, !dbg !3451
  %bf.set = or i64 %bf.load40, 4194304, !dbg !3451
  store i64 %bf.set, i64* %7, align 8, !dbg !3451
  br label %for.inc, !dbg !3452

for.inc:                                          ; preds = %land.lhs.true34, %land.lhs.true12, %for.body, %if.end25, %if.then38, %if.then7
  %replaced.2 = phi i8 [ %replaced.0, %for.body ], [ %replaced.0, %land.lhs.true12 ], [ %replaced.0, %if.then7 ], [ 1, %if.then38 ], [ 1, %land.lhs.true34 ], [ 1, %if.end25 ], !dbg !3401
  call void @llvm.dbg.value(metadata i8 %replaced.2, metadata !3393, metadata !DIExpression()), !dbg !3401
  %inc45 = add nuw nsw i64 %i.0, 1, !dbg !3453
  call void @llvm.dbg.value(metadata i64 %inc45, metadata !3392, metadata !DIExpression()), !dbg !3401
  br label %for.cond, !dbg !3454, !llvm.loop !3455

for.end:                                          ; preds = %for.cond
  %replaced.0.lcssa = phi i8 [ %replaced.0, %for.cond ], !dbg !3401
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3401
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3393, metadata !DIExpression()), !dbg !3401
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3457
  %tobool46 = icmp eq %struct._IO_FILE* %11, null, !dbg !3457
  br i1 %tobool46, label %if.end58, label %land.lhs.true47, !dbg !3459

land.lhs.true47:                                  ; preds = %for.end
  %12 = load i32, i32* @dump_flags, align 4, !dbg !3460
  %and48 = and i32 %12, 8, !dbg !3461
  %tobool49 = icmp eq i32 %and48, 0, !dbg !3461
  br i1 %tobool49, label %if.end58, label %if.then50, !dbg !3462

if.then50:                                        ; preds = %land.lhs.true47
  %tobool51 = icmp eq i8 %replaced.0.lcssa, 0, !dbg !3463
  br i1 %tobool51, label %if.then52, label %if.else54, !dbg !3466

if.then52:                                        ; preds = %if.then50
  %call53 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !3467
  br label %if.end58, !dbg !3467

if.else54:                                        ; preds = %if.then50
  %call55 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !3468
  %13 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3470
  tail call void @print_gimple_stmt(%struct._IO_FILE* %13, %union.gimple_statement_d* %phi, i32 0, i32 2) #6, !dbg !3471
  %14 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3472
  %call56 = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !3473
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true47, %for.end, %if.then52, %if.else54
  ret void, !dbg !3474
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_next(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3475 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3479, metadata !DIExpression()), !dbg !3480
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3481
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3481
  %next = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 2, !dbg !3482
  %1 = bitcast %struct.gimple_seq_node_d** %next to i64*, !dbg !3482
  %2 = load i64, i64* %1, align 8, !dbg !3482
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3483
  store i64 %2, i64* %3, align 8, !dbg !3483
  ret void, !dbg !3484
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_last_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3485 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3489, metadata !DIExpression()), !dbg !3492
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3490, metadata !DIExpression()), !dbg !3493
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3494
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3491, metadata !DIExpression()), !dbg !3492
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %call) #7, !dbg !3495
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3496
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3497
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3498
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3499
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3500
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3501
  ret void, !dbg !3502
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_prev(%struct.gimple_stmt_iterator* %i) unnamed_addr #0 !dbg !3503 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_stmt_iterator* %i, metadata !3505, metadata !DIExpression()), !dbg !3506
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %i, i64 0, i32 0, !dbg !3507
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3507
  %prev = getelementptr inbounds %struct.gimple_seq_node_d, %struct.gimple_seq_node_d* %0, i64 0, i32 1, !dbg !3508
  %1 = bitcast %struct.gimple_seq_node_d** %prev to i64*, !dbg !3508
  %2 = load i64, i64* %1, align 8, !dbg !3508
  %3 = bitcast %struct.gimple_stmt_iterator* %i to i64*, !dbg !3509
  store i64 %2, i64* %3, align 8, !dbg !3509
  ret void, !dbg !3510
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3511 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3513, metadata !DIExpression()), !dbg !3514
  %call = tail call fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 1) #7, !dbg !3515
  ret %union.tree_node* %call, !dbg !3516
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @has_zero_uses(%union.tree_node* %var) unnamed_addr #0 !dbg !3517 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !3519, metadata !DIExpression()), !dbg !3524
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !3525
  %0 = bitcast i40* %imm_uses to %struct.ssa_use_operand_d*, !dbg !3525
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !3520, metadata !DIExpression()), !dbg !3524
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !3526
  %1 = bitcast i40* %next to %struct.ssa_use_operand_d**, !dbg !3526
  %2 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %1, align 8, !dbg !3526
  %cmp = icmp eq %struct.ssa_use_operand_d* %2, %0, !dbg !3528
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3529

if.end:                                           ; preds = %entry
  %3 = load i32, i32* @flag_var_tracking_assignments, align 4, !dbg !3530
  %tobool = icmp eq i32 %3, 0, !dbg !3530
  br i1 %tobool, label %cleanup, label %if.end2, !dbg !3532

if.end2:                                          ; preds = %if.end
  %call = tail call zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d* nonnull %0) #6, !dbg !3533
  br label %cleanup, !dbg !3534

cleanup:                                          ; preds = %if.end, %entry, %if.end2
  %retval.0 = phi i8 [ %call, %if.end2 ], [ 1, %entry ], [ 0, %if.end ], !dbg !3524
  ret i8 %retval.0, !dbg !3535
}

declare dso_local zeroext i8 @stmt_could_throw_p(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_has_side_effects(%union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @print_gimple_stmt(%struct._IO_FILE*, %union.gimple_statement_d*, i32, i32) local_unnamed_addr #2

declare dso_local void @gsi_for_stmt(%struct.gimple_stmt_iterator* sret, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local void @gsi_remove(%struct.gimple_stmt_iterator*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i8 @replace_uses_in(%union.gimple_statement_d* %stmt, %struct.prop_value_d* %prop_value) unnamed_addr #5 !dbg !3536 {
entry:
  %iter = alloca %struct.ssa_operand_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3540, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata %struct.prop_value_d* %prop_value, metadata !3541, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 0, metadata !3542, metadata !DIExpression()), !dbg !3550
  %0 = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %iter, i64 0, i32 0, !dbg !3551
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3544, metadata !DIExpression(DW_OP_deref)), !dbg !3550
  %call = call fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* nonnull %iter, %union.gimple_statement_d* %stmt, i32 1) #7, !dbg !3552
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call, metadata !3543, metadata !DIExpression()), !dbg !3550
  br label %for.cond, !dbg !3552

for.cond:                                         ; preds = %cleanup, %entry
  %replaced.0 = phi i8 [ 0, %entry ], [ %replaced.1, %cleanup ], !dbg !3553
  %use.0 = phi %struct.ssa_use_operand_d* [ %call, %entry ], [ %call19, %cleanup ], !dbg !3554
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use.0, metadata !3543, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 %replaced.0, metadata !3542, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3544, metadata !DIExpression(DW_OP_deref)), !dbg !3550
  %call1 = call fastcc zeroext i8 @op_iter_done(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3555
  %tobool = icmp eq i8 %call1, 0, !dbg !3555
  br i1 %tobool, label %for.body, label %for.end, !dbg !3552

for.body:                                         ; preds = %for.cond
  %call2 = call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use.0) #7, !dbg !3556
  call void @llvm.dbg.value(metadata %union.tree_node* %call2, metadata !3545, metadata !DIExpression()), !dbg !3557
  %version = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 4, !dbg !3558
  %1 = bitcast %union.tree_node** %version to i32*, !dbg !3558
  %2 = load i32, i32* %1, align 8, !dbg !3558
  %idxprom = zext i32 %2 to i64, !dbg !3559
  %value = getelementptr inbounds %struct.prop_value_d, %struct.prop_value_d* %prop_value, i64 %idxprom, i32 1, !dbg !3560
  %3 = load %union.tree_node*, %union.tree_node** %value, align 8, !dbg !3560
  call void @llvm.dbg.value(metadata %union.tree_node* %3, metadata !3549, metadata !DIExpression()), !dbg !3557
  %cmp = icmp eq %union.tree_node* %3, %call2, !dbg !3561
  %cmp3 = icmp eq %union.tree_node* %3, null, !dbg !3563
  %or.cond = or i1 %cmp, %cmp3, !dbg !3564
  br i1 %or.cond, label %cleanup, label %if.end, !dbg !3564

if.end:                                           ; preds = %for.body
  %call4 = call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !3565
  %cmp5 = icmp eq i32 %call4, 7, !dbg !3567
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !3568

land.lhs.true:                                    ; preds = %if.end
  %call6 = call zeroext i8 @may_propagate_copy_into_asm(%union.tree_node* %call2) #6, !dbg !3569
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3569
  br i1 %tobool7, label %cleanup, label %if.end9, !dbg !3570

if.end9:                                          ; preds = %land.lhs.true, %if.end
  %call10 = call zeroext i8 @may_propagate_copy(%union.tree_node* %call2, %union.tree_node* %3) #6, !dbg !3571
  %tobool11 = icmp eq i8 %call10, 0, !dbg !3571
  br i1 %tobool11, label %cleanup, label %if.end13, !dbg !3573

if.end13:                                         ; preds = %if.end9
  %4 = getelementptr inbounds %union.tree_node, %union.tree_node* %3, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3574
  %bf.load = load i64, i64* %4, align 8, !dbg !3574
  %bf.cast1 = and i64 %bf.load, 65535, !dbg !3576
  %cmp14 = icmp eq i64 %bf.cast1, 141, !dbg !3576
  br i1 %cmp14, label %if.else, label %if.then15, !dbg !3577

if.then15:                                        ; preds = %if.end13
  %5 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 0), align 8, !dbg !3578
  %inc = add nsw i64 %5, 1, !dbg !3578
  store i64 %inc, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 0), align 8, !dbg !3578
  br label %if.end17, !dbg !3579

if.else:                                          ; preds = %if.end13
  %6 = load i64, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 1), align 8, !dbg !3580
  %inc16 = add nsw i64 %6, 1, !dbg !3580
  store i64 %inc16, i64* getelementptr inbounds (%struct.prop_stats_d, %struct.prop_stats_d* @prop_stats, i64 0, i32 1), align 8, !dbg !3580
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  call void @propagate_value(%struct.ssa_use_operand_d* %use.0, %union.tree_node* %3) #6, !dbg !3581
  call void @llvm.dbg.value(metadata i8 1, metadata !3542, metadata !DIExpression()), !dbg !3550
  br label %cleanup, !dbg !3582

cleanup:                                          ; preds = %land.lhs.true, %if.end9, %for.body, %if.end17
  %replaced.1 = phi i8 [ 1, %if.end17 ], [ %replaced.0, %for.body ], [ %replaced.0, %land.lhs.true ], [ %replaced.0, %if.end9 ], !dbg !3550
  call void @llvm.dbg.value(metadata i8 %replaced.1, metadata !3542, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %iter, metadata !3544, metadata !DIExpression(DW_OP_deref)), !dbg !3550
  %call19 = call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* nonnull %iter) #7, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call19, metadata !3543, metadata !DIExpression()), !dbg !3550
  br label %for.cond, !dbg !3555, !llvm.loop !3583

for.end:                                          ; preds = %for.cond
  %replaced.0.lcssa = phi i8 [ %replaced.0, %for.cond ], !dbg !3553
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3542, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3542, metadata !DIExpression()), !dbg !3550
  call void @llvm.dbg.value(metadata i8 %replaced.0.lcssa, metadata !3542, metadata !DIExpression()), !dbg !3550
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #8, !dbg !3585
  ret i8 %replaced.0.lcssa, !dbg !3586
}

declare dso_local zeroext i8 @fold_stmt(%struct.gimple_stmt_iterator*) local_unnamed_addr #2

declare dso_local zeroext i8 @maybe_clean_or_replace_eh_stmt(%union.gimple_statement_d*, %union.gimple_statement_d*) local_unnamed_addr #2

declare dso_local zeroext i8 @gimple_purge_dead_eh_edges(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_assign(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3587 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3589, metadata !DIExpression()), !dbg !3590
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3591
  %cmp = icmp eq i32 %call, 6, !dbg !3592
  %conv1 = zext i1 %cmp to i8, !dbg !3591
  ret i8 %conv1, !dbg !3593
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @get_gimple_rhs_class(i32 %code) unnamed_addr #0 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3598, metadata !DIExpression()), !dbg !3599
  %idxprom = sext i32 %code to i64, !dbg !3600
  %arrayidx = getelementptr inbounds [0 x i8], [0 x i8]* @gimple_rhs_class_table, i64 0, i64 %idxprom, !dbg !3600
  %0 = load i8, i8* %arrayidx, align 1, !dbg !3600
  %conv = zext i8 %0 to i32, !dbg !3601
  ret i32 %conv, !dbg !3602
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_assign_rhs_code(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3603 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3607, metadata !DIExpression()), !dbg !3609
  %call = tail call fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %gs) #7, !dbg !3610
  call void @llvm.dbg.value(metadata i32 %call, metadata !3608, metadata !DIExpression()), !dbg !3609
  %call1 = tail call fastcc i32 @get_gimple_rhs_class(i32 %call) #7, !dbg !3611
  %cmp = icmp eq i32 %call1, 3, !dbg !3613
  br i1 %cmp, label %if.then, label %if.end, !dbg !3614

if.then:                                          ; preds = %entry
  %call2 = tail call fastcc %union.tree_node* @gimple_assign_rhs1(%union.gimple_statement_d* %gs) #7, !dbg !3615
  %0 = getelementptr inbounds %union.tree_node, %union.tree_node* %call2, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, !dbg !3615
  %bf.load = load i64, i64* %0, align 8, !dbg !3615
  %1 = trunc i64 %bf.load to i32, !dbg !3615
  %bf.cast = and i32 %1, 65535, !dbg !3615
  call void @llvm.dbg.value(metadata i32 %bf.cast, metadata !3608, metadata !DIExpression()), !dbg !3609
  br label %if.end, !dbg !3616

if.end:                                           ; preds = %if.then, %entry
  %code.0 = phi i32 [ %bf.cast, %if.then ], [ %call, %entry ], !dbg !3609
  call void @llvm.dbg.value(metadata i32 %code.0, metadata !3608, metadata !DIExpression()), !dbg !3609
  ret i32 %code.0, !dbg !3617
}

declare dso_local void @recompute_tree_invariant_for_addr_expr(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @update_stmt(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !3618 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !3622, metadata !DIExpression()), !dbg !3623
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %s) #7, !dbg !3624
  %tobool = icmp eq i8 %call, 0, !dbg !3624
  br i1 %tobool, label %if.end, label %if.then, !dbg !3626

if.then:                                          ; preds = %entry
  tail call void @gimple_set_modified(%union.gimple_statement_d* %s, i8 zeroext 1) #6, !dbg !3627
  tail call void @update_stmt_operands(%union.gimple_statement_d* %s) #6, !dbg !3629
  br label %if.end, !dbg !3630

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3631
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @is_gimple_debug(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3632 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3634, metadata !DIExpression()), !dbg !3635
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3636
  %cmp = icmp eq i32 %call, 2, !dbg !3637
  %conv1 = zext i1 %cmp to i8, !dbg !3636
  ret i8 %conv1, !dbg !3638
}

declare dso_local void @statistics_counter_event(%struct.function*, i8*, i32) local_unnamed_addr #2

declare dso_local void @gt_ggc_mx_VEC_gimple_gc(i8*) #2

declare dso_local void @gt_pch_nx_VEC_gimple_gc(i8*) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !3639 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !3643, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3644, metadata !DIExpression()), !dbg !3646
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3645, metadata !DIExpression()), !dbg !3646
  %0 = and i32 %flags, 10, !dbg !3647
  %1 = icmp eq i32 %0, 8, !dbg !3647
  br i1 %1, label %cond.true, label %land.lhs.true, !dbg !3647

land.lhs.true:                                    ; preds = %entry
  %2 = and i32 %flags, 5, !dbg !3647
  %3 = icmp eq i32 %2, 4, !dbg !3647
  br i1 %3, label %cond.true, label %cond.end, !dbg !3647

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0), i32 747, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3647
  br label %cond.end, !dbg !3647

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %tobool9 = icmp eq i32 %0, 0, !dbg !3648
  br i1 %tobool9, label %cond.end12, label %cond.true10, !dbg !3649

cond.true10:                                      ; preds = %cond.end
  %call = tail call fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3650
  br label %cond.end12, !dbg !3649

cond.end12:                                       ; preds = %cond.end, %cond.true10
  %4 = phi %struct.def_optype_d* [ %call, %cond.true10 ], [ null, %cond.end ], !dbg !3649
  %defs = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 2, !dbg !3651
  store %struct.def_optype_d* %4, %struct.def_optype_d** %defs, align 8, !dbg !3652
  %and14 = and i32 %flags, 8, !dbg !3653
  %tobool15 = icmp eq i32 %and14, 0, !dbg !3653
  br i1 %tobool15, label %land.lhs.true16, label %if.end, !dbg !3655

land.lhs.true16:                                  ; preds = %cond.end12
  %tobool18 = icmp eq %struct.def_optype_d* %4, null, !dbg !3656
  br i1 %tobool18, label %if.end, label %land.lhs.true19, !dbg !3657

land.lhs.true19:                                  ; preds = %land.lhs.true16
  %call20 = tail call fastcc %union.tree_node* @gimple_vdef(%union.gimple_statement_d* %stmt) #7, !dbg !3658
  %cmp = icmp eq %union.tree_node* %call20, null, !dbg !3659
  br i1 %cmp, label %if.end, label %if.then, !dbg !3660

if.then:                                          ; preds = %land.lhs.true19
  %5 = bitcast %struct.def_optype_d** %defs to i64**, !dbg !3661
  %6 = load i64*, i64** %5, align 8, !dbg !3661
  %7 = load i64, i64* %6, align 8, !dbg !3662
  %8 = bitcast %struct.def_optype_d** %defs to i64*, !dbg !3663
  store i64 %7, i64* %8, align 8, !dbg !3663
  br label %if.end, !dbg !3664

if.end:                                           ; preds = %land.lhs.true19, %land.lhs.true16, %cond.end12, %if.then
  %and23 = and i32 %flags, 5, !dbg !3665
  %tobool24 = icmp eq i32 %and23, 0, !dbg !3665
  br i1 %tobool24, label %cond.end28, label %cond.true25, !dbg !3666

cond.true25:                                      ; preds = %if.end
  %call26 = tail call fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %stmt) #7, !dbg !3667
  br label %cond.end28, !dbg !3666

cond.end28:                                       ; preds = %if.end, %cond.true25
  %9 = phi %struct.use_optype_d* [ %call26, %cond.true25 ], [ null, %if.end ], !dbg !3666
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !3668
  store %struct.use_optype_d* %9, %struct.use_optype_d** %uses, align 8, !dbg !3669
  %and30 = and i32 %flags, 4, !dbg !3670
  %tobool31 = icmp eq i32 %and30, 0, !dbg !3670
  br i1 %tobool31, label %land.lhs.true32, label %if.end42, !dbg !3672

land.lhs.true32:                                  ; preds = %cond.end28
  %tobool34 = icmp eq %struct.use_optype_d* %9, null, !dbg !3673
  br i1 %tobool34, label %if.end42, label %land.lhs.true35, !dbg !3674

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %call36 = tail call fastcc %union.tree_node* @gimple_vuse(%union.gimple_statement_d* %stmt) #7, !dbg !3675
  %cmp37 = icmp eq %union.tree_node* %call36, null, !dbg !3676
  br i1 %cmp37, label %if.end42, label %if.then38, !dbg !3677

if.then38:                                        ; preds = %land.lhs.true35
  %10 = bitcast %struct.use_optype_d** %uses to i64**, !dbg !3678
  %11 = load i64*, i64** %10, align 8, !dbg !3678
  %12 = load i64, i64* %11, align 8, !dbg !3679
  %13 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !3680
  store i64 %12, i64* %13, align 8, !dbg !3680
  br label %if.end42, !dbg !3681

if.end42:                                         ; preds = %land.lhs.true35, %land.lhs.true32, %cond.end28, %if.then38
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !3682
  store i8 0, i8* %done, align 8, !dbg !3683
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !3684
  store i32 0, i32* %phi_i, align 8, !dbg !3685
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !3686
  store i32 0, i32* %num_phi, align 4, !dbg !3687
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !3688
  store %union.gimple_statement_d* null, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !3689
  ret void, !dbg !3690
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.def_optype_d* @gimple_def_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3691 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3695, metadata !DIExpression()), !dbg !3696
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3697
  %tobool = icmp eq i8 %call, 0, !dbg !3697
  br i1 %tobool, label %return, label %if.end, !dbg !3699

if.end:                                           ; preds = %entry
  %def_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 1, !dbg !3700
  %0 = bitcast i32* %def_ops to %struct.def_optype_d**, !dbg !3700
  %1 = load %struct.def_optype_d*, %struct.def_optype_d** %0, align 8, !dbg !3700
  br label %return, !dbg !3701

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.def_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3696
  ret %struct.def_optype_d* %retval.0, !dbg !3702
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.use_optype_d* @gimple_use_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3703 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3707, metadata !DIExpression()), !dbg !3708
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) #7, !dbg !3709
  %tobool = icmp eq i8 %call, 0, !dbg !3709
  br i1 %tobool, label %return, label %if.end, !dbg !3711

if.end:                                           ; preds = %entry
  %use_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 3, !dbg !3712
  %0 = bitcast %union.tree_node** %use_ops to %struct.use_optype_d**, !dbg !3712
  %1 = load %struct.use_optype_d*, %struct.use_optype_d** %0, align 8, !dbg !3712
  br label %return, !dbg !3713

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.use_optype_d* [ %1, %if.end ], [ null, %entry ], !dbg !3708
  ret %struct.use_optype_d* %retval.0, !dbg !3714
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3715 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3717, metadata !DIExpression()), !dbg !3718
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3719
  %cmp = icmp eq i32 %call, 0, !dbg !3720
  br i1 %cmp, label %land.end, label %land.rhs, !dbg !3721

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3722
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3723
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3724
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %use) unnamed_addr #0 !dbg !3725 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use, metadata !3729, metadata !DIExpression()), !dbg !3730
  %use1 = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use, i64 0, i32 3, !dbg !3731
  %0 = load %union.tree_node**, %union.tree_node*** %use1, align 8, !dbg !3731
  %1 = load %union.tree_node*, %union.tree_node** %0, align 8, !dbg !3732
  ret %union.tree_node* %1, !dbg !3733
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @get_def_from_ptr(%union.tree_node** %def) unnamed_addr #0 !dbg !3734 {
entry:
  call void @llvm.dbg.value(metadata %union.tree_node** %def, metadata !3739, metadata !DIExpression()), !dbg !3740
  %0 = load %union.tree_node*, %union.tree_node** %def, align 8, !dbg !3741
  ret %union.tree_node* %0, !dbg !3742
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_op(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !3743 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3747, metadata !DIExpression()), !dbg !3749
  call void @llvm.dbg.value(metadata i32 %i, metadata !3748, metadata !DIExpression()), !dbg !3749
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3750
  %tobool = icmp eq i8 %call, 0, !dbg !3750
  br i1 %tobool, label %return, label %if.then, !dbg !3752

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3753
  %idxprom = zext i32 %i to i64, !dbg !3753
  %arrayidx = getelementptr inbounds %union.tree_node*, %union.tree_node** %call1, i64 %idxprom, !dbg !3753
  %0 = load %union.tree_node*, %union.tree_node** %arrayidx, align 8, !dbg !3753
  br label %return, !dbg !3755

return:                                           ; preds = %entry, %if.then
  %retval.0 = phi %union.tree_node* [ %0, %if.then ], [ null, %entry ], !dbg !3756
  ret %union.tree_node* %retval.0, !dbg !3757
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3758 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3762, metadata !DIExpression()), !dbg !3764
  %call = tail call fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) #7, !dbg !3765
  %idxprom = zext i32 %call to i64, !dbg !3766
  %arrayidx = getelementptr inbounds [0 x i64], [0 x i64]* @gimple_ops_offset_, i64 0, i64 %idxprom, !dbg !3766
  %0 = load i64, i64* %arrayidx, align 8, !dbg !3766
  call void @llvm.dbg.value(metadata i64 %0, metadata !3763, metadata !DIExpression()), !dbg !3764
  %cmp = icmp eq i64 %0, 0, !dbg !3767
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3767

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 1622, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3767
  br label %cond.end, !dbg !3767

cond.end:                                         ; preds = %entry, %cond.true
  %1 = bitcast %union.gimple_statement_d* %gs to i8*, !dbg !3768
  %add.ptr = getelementptr inbounds i8, i8* %1, i64 %0, !dbg !3769
  %2 = bitcast i8* %add.ptr to %union.tree_node**, !dbg !3770
  ret %union.tree_node** %2, !dbg !3771
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_statement_structure(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3772 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3776, metadata !DIExpression()), !dbg !3777
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %gs) #7, !dbg !3778
  %call1 = tail call fastcc i32 @gss_for_code(i32 %call) #7, !dbg !3779
  ret i32 %call1, !dbg !3780
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gss_for_code(i32 %code) unnamed_addr #0 !dbg !3781 {
entry:
  call void @llvm.dbg.value(metadata i32 %code, metadata !3785, metadata !DIExpression()), !dbg !3786
  %idxprom = zext i32 %code to i64, !dbg !3787
  %arrayidx = getelementptr inbounds [0 x i32], [0 x i32]* @gss_for_code_, i64 0, i64 %idxprom, !dbg !3787
  %0 = load i32, i32* %arrayidx, align 4, !dbg !3787
  ret i32 %0, !dbg !3788
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_length(%struct.VEC_tree_base* %vec_) unnamed_addr #0 !dbg !3789 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3795, metadata !DIExpression()), !dbg !3796
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3797
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3797

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3797
  %0 = load i32, i32* %num, align 8, !dbg !3797
  br label %cond.end, !dbg !3797

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3797
  ret i32 %cond, !dbg !3797
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_heap_reserve_exact(%struct.VEC_tree_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3798 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_heap** %vec_, metadata !3802, metadata !DIExpression()), !dbg !3805
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3803, metadata !DIExpression()), !dbg !3805
  %0 = load %struct.VEC_tree_heap*, %struct.VEC_tree_heap** %vec_, align 8, !dbg !3806
  %tobool = icmp eq %struct.VEC_tree_heap* %0, null, !dbg !3806
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3806

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_tree_heap, %struct.VEC_tree_heap* %0, i64 0, i32 0, !dbg !3806
  br label %cond.end, !dbg !3806

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_tree_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3806
  %call = tail call fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %cond, i32 %alloc_) #7, !dbg !3806
  %tobool1 = icmp eq i32 %call, 0, !dbg !3806
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3806
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3804, metadata !DIExpression()), !dbg !3805
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3806

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_tree_heap** %vec_ to i8**, !dbg !3807
  %2 = load i8*, i8** %1, align 8, !dbg !3807
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %2, i32 %alloc_) #6, !dbg !3807
  store i8* %call3, i8** %1, align 8, !dbg !3807
  br label %if.end, !dbg !3807

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3806
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_tree_base_space(%struct.VEC_tree_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3809 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_tree_base* %vec_, metadata !3813, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3814, metadata !DIExpression()), !dbg !3815
  %tobool = icmp eq %struct.VEC_tree_base* %vec_, null, !dbg !3816
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !3816

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 1, !dbg !3816
  %0 = load i32, i32* %alloc, align 4, !dbg !3816
  %num = getelementptr inbounds %struct.VEC_tree_base, %struct.VEC_tree_base* %vec_, i64 0, i32 0, !dbg !3816
  %1 = load i32, i32* %num, align 8, !dbg !3816
  %sub = sub i32 %0, %1, !dbg !3816
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !3816
  br label %cond.end, !dbg !3816

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !3816
  br label %cond.end, !dbg !3816

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !3816
  ret i32 %cond, !dbg !3816
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_op(%union.gimple_statement_d* %gs, i32 %i, %union.tree_node* %op) unnamed_addr #0 !dbg !3817 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3821, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata i32 0, metadata !3822, metadata !DIExpression()), !dbg !3824
  call void @llvm.dbg.value(metadata %union.tree_node* %op, metadata !3823, metadata !DIExpression()), !dbg !3824
  %call = tail call fastcc zeroext i8 @gimple_has_ops(%union.gimple_statement_d* %gs) #7, !dbg !3825
  %tobool = icmp eq i8 %call, 0, !dbg !3825
  br i1 %tobool, label %cond.true, label %land.lhs.true, !dbg !3825

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) #7, !dbg !3825
  %cmp = icmp eq i32 %call1, 0, !dbg !3825
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !3825

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 1665, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3825
  br label %cond.end, !dbg !3825

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %call3 = tail call fastcc %union.tree_node** @gimple_ops(%union.gimple_statement_d* %gs) #7, !dbg !3826
  store %union.tree_node* %op, %union.tree_node** %call3, align 8, !dbg !3827
  ret void, !dbg !3828
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_num_ops(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !3829 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !3833, metadata !DIExpression()), !dbg !3834
  %num_ops = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 0, i32 3, !dbg !3835
  %0 = load i32, i32* %num_ops, align 4, !dbg !3835
  ret i32 %0, !dbg !3836
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_has_mem_ops(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !3837 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !3839, metadata !DIExpression()), !dbg !3840
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3841
  %cmp = icmp ugt i32 %call, 5, !dbg !3842
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3843

land.rhs:                                         ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %g) #7, !dbg !3844
  %cmp2 = icmp ult i32 %call1, 10, !dbg !3845
  %phitmp = zext i1 %cmp2 to i8
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %0 = phi i8 [ 0, %entry ], [ %phitmp, %land.rhs ]
  ret i8 %0, !dbg !3846
}

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local %union.tree_node* @make_ssa_name_fn(%struct.function*, %union.tree_node*, %union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_gimple_gc* @VEC_gimple_gc_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3847 {
entry:
  call void @llvm.dbg.value(metadata i32 20, metadata !3851, metadata !DIExpression()), !dbg !3852
  %call = tail call i8* @vec_gc_p_reserve_exact(i8* null, i32 20) #6, !dbg !3853
  %0 = bitcast i8* %call to %struct.VEC_gimple_gc*, !dbg !3853
  ret %struct.VEC_gimple_gc* %0, !dbg !3853
}

declare dso_local %struct.simple_bitmap_def* @sbitmap_alloc(i32) local_unnamed_addr #2

declare dso_local void @sbitmap_zero(%struct.simple_bitmap_def*) local_unnamed_addr #2

declare dso_local void @dump_immediate_uses(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_basic_block_heap* @VEC_basic_block_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3854 {
entry:
  call void @llvm.dbg.value(metadata i32 20, metadata !3858, metadata !DIExpression()), !dbg !3859
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 20) #6, !dbg !3860
  %0 = bitcast i8* %call to %struct.VEC_basic_block_heap*, !dbg !3860
  ret %struct.VEC_basic_block_heap* %0, !dbg !3860
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_safe_grow(%struct.VEC_basic_block_heap** %vec_, i32 %size_) unnamed_addr #0 !dbg !3861 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** @cfg_blocks, metadata !3866, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.value(metadata i32 %size_, metadata !3867, metadata !DIExpression()), !dbg !3868
  %cmp = icmp sgt i32 %size_, -1, !dbg !3869
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3869

land.rhs:                                         ; preds = %entry
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !3869
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !3869
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3869

cond.true:                                        ; preds = %land.rhs
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !3869
  br label %cond.end, !dbg !3869

cond.end:                                         ; preds = %land.rhs, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %land.rhs ], !dbg !3869
  %call = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %cond) #7, !dbg !3869
  br label %land.end

land.end:                                         ; preds = %cond.end, %entry
  %1 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !3869
  %tobool2 = icmp eq %struct.VEC_basic_block_heap* %1, null, !dbg !3869
  br i1 %tobool2, label %cond.end11, label %cond.true3, !dbg !3869

cond.true3:                                       ; preds = %land.end
  %num = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %1, i64 0, i32 0, i32 0, !dbg !3869
  %2 = load i32, i32* %num, align 8, !dbg !3869
  br label %cond.end11, !dbg !3869

cond.end11:                                       ; preds = %land.end, %cond.true3
  %cond12 = phi i32 [ %2, %cond.true3 ], [ 0, %land.end ], !dbg !3869
  %sub = sub nsw i32 %size_, %cond12, !dbg !3869
  %call13 = tail call fastcc i32 @VEC_basic_block_heap_reserve_exact(%struct.VEC_basic_block_heap** nonnull @cfg_blocks, i32 %sub) #7, !dbg !3869
  %3 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !3869
  %num20 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %3, i64 0, i32 0, i32 0, !dbg !3869
  store i32 %size_, i32* %num20, align 8, !dbg !3869
  ret void, !dbg !3869
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gsi_start_bb(%struct.gimple_stmt_iterator* noalias sret %agg.result, %struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3870 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3872, metadata !DIExpression()), !dbg !3875
  call void @llvm.dbg.declare(metadata %struct.gimple_stmt_iterator* %agg.result, metadata !3873, metadata !DIExpression()), !dbg !3876
  %call = tail call fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) #7, !dbg !3877
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %call, metadata !3874, metadata !DIExpression()), !dbg !3875
  %call1 = tail call fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %call) #7, !dbg !3878
  %ptr = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 0, !dbg !3879
  store %struct.gimple_seq_node_d* %call1, %struct.gimple_seq_node_d** %ptr, align 8, !dbg !3880
  %seq2 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 1, !dbg !3881
  store %struct.gimple_seq_d* %call, %struct.gimple_seq_d** %seq2, align 8, !dbg !3882
  %bb3 = getelementptr inbounds %struct.gimple_stmt_iterator, %struct.gimple_stmt_iterator* %agg.result, i64 0, i32 2, !dbg !3883
  store %struct.basic_block_def* %bb, %struct.basic_block_def** %bb3, align 8, !dbg !3884
  ret void, !dbg !3885
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_plf(%union.gimple_statement_d* %stmt, i32 %plf, i8 zeroext %val_p) unnamed_addr #0 !dbg !3886 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !3890, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i32 1, metadata !3891, metadata !DIExpression()), !dbg !3893
  call void @llvm.dbg.value(metadata i8 %val_p, metadata !3892, metadata !DIExpression()), !dbg !3893
  %tobool = icmp eq i8 %val_p, 0, !dbg !3894
  br i1 %tobool, label %if.else, label %if.then, !dbg !3896

if.then:                                          ; preds = %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3897
  %bf.load = load i32, i32* %0, align 8, !dbg !3898
  %bf.set = or i32 %bf.load, 2048, !dbg !3898
  store i32 %bf.set, i32* %0, align 8, !dbg !3898
  br label %if.end, !dbg !3899

if.else:                                          ; preds = %entry
  %1 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !3900
  %bf.load4 = load i32, i32* %1, align 8, !dbg !3901
  %bf.set11 = and i32 %bf.load4, -2049, !dbg !3901
  store i32 %bf.set11, i32* %1, align 8, !dbg !3901
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !3902
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !3903 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !3907, metadata !DIExpression()), !dbg !3909
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !3910
  store i32 0, i32* %index, align 8, !dbg !3911
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !3912
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !3913
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !3914
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !3914
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !3914
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !3915 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !3920, metadata !DIExpression()), !dbg !3921
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3922
  %tobool = icmp eq i8 %call, 0, !dbg !3922
  br i1 %tobool, label %if.then, label %if.else, !dbg !3924

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !3925
  br label %return, !dbg !3927

if.else:                                          ; preds = %entry
  br label %return, !dbg !3928

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !3930
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !3930
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !3930
  ret i8 %retval.0, !dbg !3931
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !3932 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !3937, metadata !DIExpression()), !dbg !3938
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !3939
  %0 = load i32, i32* %index, align 8, !dbg !3939
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !3939
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3939
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !3939
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3939
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3939

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !3939
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !3939
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !3939
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3939
  br label %cond.end, !dbg !3939

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3939
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3939
  %cmp = icmp ult i32 %0, %call2, !dbg !3939
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !3939

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3939
  br label %cond.end5, !dbg !3939

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !3940
  %inc = add i32 %5, 1, !dbg !3940
  store i32 %inc, i32* %index, align 8, !dbg !3940
  ret void, !dbg !3941
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_control_edge(%struct.edge_def* %e) unnamed_addr #5 !dbg !3942 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3946, metadata !DIExpression()), !dbg !3948
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3949
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3949
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !3947, metadata !DIExpression()), !dbg !3948
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3950
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !3950
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3950
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 1, !dbg !3950
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3950
  %cmp = icmp eq %struct.basic_block_def* %0, %3, !dbg !3952
  br i1 %cmp, label %cleanup.cont, label %if.end, !dbg !3953

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3954
  %4 = load i32, i32* %flags, align 8, !dbg !3954
  %and = and i32 %4, 4096, !dbg !3956
  %tobool = icmp eq i32 %and, 0, !dbg !3956
  br i1 %tobool, label %if.end2, label %cleanup.cont, !dbg !3957

if.end2:                                          ; preds = %if.end
  %or = or i32 %4, 4096, !dbg !3958
  store i32 %or, i32* %flags, align 8, !dbg !3958
  %5 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !3959
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 9, !dbg !3959
  %6 = load i32, i32* %index, align 8, !dbg !3959
  %div = lshr i32 %6, 6, !dbg !3959
  %idxprom = zext i32 %div to i64, !dbg !3959
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %5, i64 0, i32 3, i64 %idxprom, !dbg !3959
  %7 = load i64, i64* %arrayidx, align 8, !dbg !3959
  %rem = and i32 %6, 63, !dbg !3959
  %sh_prom = zext i32 %rem to i64, !dbg !3959
  %8 = shl i64 1, %sh_prom, !dbg !3959
  %9 = and i64 %7, %8, !dbg !3959
  %tobool6 = icmp eq i64 %9, 0, !dbg !3959
  br i1 %tobool6, label %if.end8, label %cleanup.cont, !dbg !3961

if.end8:                                          ; preds = %if.end2
  tail call fastcc void @cfg_blocks_add(%struct.basic_block_def* %0) #7, !dbg !3962
  %10 = load %struct._IO_FILE*, %struct._IO_FILE** @dump_file, align 8, !dbg !3963
  %tobool9 = icmp eq %struct._IO_FILE* %10, null, !dbg !3963
  br i1 %tobool9, label %cleanup.cont, label %land.lhs.true, !dbg !3965

land.lhs.true:                                    ; preds = %if.end8
  %11 = load i32, i32* @dump_flags, align 4, !dbg !3966
  %and10 = and i32 %11, 8, !dbg !3967
  %tobool11 = icmp eq i32 %and10, 0, !dbg !3967
  br i1 %tobool11, label %cleanup.cont, label %if.then12, !dbg !3968

if.then12:                                        ; preds = %land.lhs.true
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3969
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3969
  %index13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %12, i64 0, i32 9, !dbg !3970
  %13 = load i32, i32* %index13, align 8, !dbg !3970
  %14 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3971
  %index15 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %14, i64 0, i32 9, !dbg !3972
  %15 = load i32, i32* %index15, align 8, !dbg !3972
  %call = tail call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* nonnull %10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i64 0, i64 0), i32 %13, i32 %15) #6, !dbg !3973
  br label %cleanup.cont, !dbg !3973

cleanup.cont:                                     ; preds = %land.lhs.true, %if.end8, %if.end2, %if.end, %entry, %if.then12
  ret void, !dbg !3974
}

declare dso_local i8* @vec_gc_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %vec_) unnamed_addr #0 !dbg !3975 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3981, metadata !DIExpression()), !dbg !3982
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !3983
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3983

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !3983
  %0 = load i32, i32* %num, align 8, !dbg !3983
  br label %cond.end, !dbg !3983

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !3983
  ret i32 %cond, !dbg !3983
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_heap_reserve_exact(%struct.VEC_basic_block_heap** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3984 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** @cfg_blocks, metadata !3988, metadata !DIExpression()), !dbg !3991
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !3989, metadata !DIExpression()), !dbg !3991
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !3992
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !3992
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3992

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %0, i64 0, i32 0, !dbg !3992
  br label %cond.end, !dbg !3992

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3992
  %call = tail call fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %cond, i32 %alloc_) #7, !dbg !3992
  %tobool1 = icmp eq i32 %call, 0, !dbg !3992
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !3992
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !3990, metadata !DIExpression()), !dbg !3991
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3992

if.then:                                          ; preds = %cond.end
  %1 = load i8*, i8** bitcast (%struct.VEC_basic_block_heap** @cfg_blocks to i8**), align 8, !dbg !3993
  %call3 = tail call i8* @vec_heap_p_reserve_exact(i8* %1, i32 %alloc_) #6, !dbg !3993
  store i8* %call3, i8** bitcast (%struct.VEC_basic_block_heap** @cfg_blocks to i8**), align 8, !dbg !3993
  br label %if.end, !dbg !3993

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !3992
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_basic_block_base_space(%struct.VEC_basic_block_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !3995 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4000, metadata !DIExpression()), !dbg !4002
  call void @llvm.dbg.value(metadata i32 %alloc_, metadata !4001, metadata !DIExpression()), !dbg !4002
  %tobool = icmp eq %struct.VEC_basic_block_base* %vec_, null, !dbg !4003
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4003

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 1, !dbg !4003
  %0 = load i32, i32* %alloc, align 4, !dbg !4003
  %num = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !4003
  %1 = load i32, i32* %num, align 8, !dbg !4003
  %sub = sub i32 %0, %1, !dbg !4003
  %cmp1 = icmp uge i32 %sub, %alloc_, !dbg !4003
  br label %cond.end, !dbg !4003

cond.false:                                       ; preds = %entry
  %tobool3 = icmp eq i32 %alloc_, 0, !dbg !4003
  br label %cond.end, !dbg !4003

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i1 [ %cmp1, %cond.true ], [ %tobool3, %cond.false ]
  %cond = zext i1 %cond.in to i32, !dbg !4003
  ret i32 %cond, !dbg !4003
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_d* @bb_seq(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !4004 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4011, metadata !DIExpression()), !dbg !4012
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !4013
  %0 = load i32, i32* %flags, align 8, !dbg !4013
  %and = and i32 %0, 512, !dbg !4014
  %tobool = icmp eq i32 %and, 0, !dbg !4014
  br i1 %tobool, label %land.lhs.true, label %cond.end, !dbg !4015

land.lhs.true:                                    ; preds = %entry
  %gimple = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 7, i32 0, !dbg !4016
  %1 = load %struct.gimple_bb_info*, %struct.gimple_bb_info** %gimple, align 8, !dbg !4016
  %tobool1 = icmp eq %struct.gimple_bb_info* %1, null, !dbg !4017
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !4018

cond.true:                                        ; preds = %land.lhs.true
  %seq = getelementptr inbounds %struct.gimple_bb_info, %struct.gimple_bb_info* %1, i64 0, i32 0, !dbg !4019
  %2 = load %struct.gimple_seq_d*, %struct.gimple_seq_d** %seq, align 8, !dbg !4019
  br label %cond.end, !dbg !4018

cond.end:                                         ; preds = %land.lhs.true, %entry, %cond.true
  %cond = phi %struct.gimple_seq_d* [ %2, %cond.true ], [ null, %land.lhs.true ], [ null, %entry ], !dbg !4018
  ret %struct.gimple_seq_d* %cond, !dbg !4020
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_first(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4021 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4028, metadata !DIExpression()), !dbg !4029
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4030
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4030

cond.true:                                        ; preds = %entry
  %first = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 0, !dbg !4031
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %first, align 8, !dbg !4031
  br label %cond.end, !dbg !4030

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4030
  ret %struct.gimple_seq_node_d* %cond, !dbg !4032
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4033 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4038
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4038
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4038

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4038
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4038
  br label %cond.end, !dbg !4038

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4038
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !4038
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !4039
  %conv3 = zext i1 %cmp to i8, !dbg !4040
  ret i8 %conv3, !dbg !4041
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4042 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4047
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !4047
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4047

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !4047
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !4047
  br label %cond.end, !dbg !4047

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4047
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !4047
  ret %struct.edge_def* %call2, !dbg !4048
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !4049 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4055, metadata !DIExpression()), !dbg !4056
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !4057
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4057

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !4057
  %0 = load i32, i32* %num, align 8, !dbg !4057
  br label %cond.end, !dbg !4057

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4057
  ret i32 %cond, !dbg !4057
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !4058 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !4063
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !4063

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.14, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4063
  br label %cond.end, !dbg !4063

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !4064
  ret %struct.VEC_edge_gc* %0, !dbg !4065
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4066 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !4070, metadata !DIExpression()), !dbg !4072
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4071, metadata !DIExpression()), !dbg !4072
  br label %land.end, !dbg !4073

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4073
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4073
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !4073
  ret %struct.edge_def* %0, !dbg !4073
}

; Function Attrs: nounwind uwtable
define internal fastcc void @cfg_blocks_add(%struct.basic_block_def* %bb) unnamed_addr #5 !dbg !4074 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !4076, metadata !DIExpression()), !dbg !4078
  call void @llvm.dbg.value(metadata i8 0, metadata !4077, metadata !DIExpression()), !dbg !4078
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !4079
  %cfg = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 1, !dbg !4079
  %1 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !4079
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 0, !dbg !4079
  %2 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !4079
  %cmp = icmp eq %struct.basic_block_def* %2, %bb, !dbg !4079
  br i1 %cmp, label %cond.true, label %land.lhs.true, !dbg !4079

land.lhs.true:                                    ; preds = %entry
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %1, i64 0, i32 1, !dbg !4079
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !4079
  %cmp3 = icmp eq %struct.basic_block_def* %3, %bb, !dbg !4079
  br i1 %cmp3, label %cond.true, label %cond.end, !dbg !4079

cond.true:                                        ; preds = %land.lhs.true, %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4079
  br label %cond.end, !dbg !4079

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %4 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !4080
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !4080
  %5 = load i32, i32* %index, align 8, !dbg !4080
  %div = lshr i32 %5, 6, !dbg !4080
  %idxprom = zext i32 %div to i64, !dbg !4080
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %4, i64 0, i32 3, i64 %idxprom, !dbg !4080
  %6 = load i64, i64* %arrayidx, align 8, !dbg !4080
  %rem = and i32 %5, 63, !dbg !4080
  %sh_prom = zext i32 %rem to i64, !dbg !4080
  %7 = shl i64 1, %sh_prom, !dbg !4080
  %8 = and i64 %6, %7, !dbg !4080
  %tobool = icmp eq i64 %8, 0, !dbg !4080
  br i1 %tobool, label %cond.end7, label %cond.true5, !dbg !4080

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 186, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4080
  br label %cond.end7, !dbg !4080

cond.end7:                                        ; preds = %cond.end, %cond.true5
  %call = tail call fastcc zeroext i8 @cfg_blocks_empty_p() #7, !dbg !4081
  %tobool9 = icmp eq i8 %call, 0, !dbg !4081
  br i1 %tobool9, label %if.else, label %if.then, !dbg !4083

if.then:                                          ; preds = %cond.end7
  store i32 0, i32* @cfg_blocks_head, align 4, !dbg !4084
  store i32 0, i32* @cfg_blocks_tail, align 4, !dbg !4086
  store i32 1, i32* @cfg_blocks_num, align 4, !dbg !4087
  br label %if.end79, !dbg !4088

if.else:                                          ; preds = %cond.end7
  %9 = load i32, i32* @cfg_blocks_num, align 4, !dbg !4089
  %inc = add i32 %9, 1, !dbg !4089
  store i32 %inc, i32* @cfg_blocks_num, align 4, !dbg !4089
  %10 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4091
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %10, i64 0, i32 0, !dbg !4091
  %call15 = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base) #7, !dbg !4091
  %cmp16 = icmp ugt i32 %inc, %call15, !dbg !4093
  br i1 %cmp16, label %if.then17, label %if.else25, !dbg !4094

if.then17:                                        ; preds = %if.else
  %11 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4095
  %base20 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %11, i64 0, i32 0, !dbg !4095
  %call24 = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base20) #7, !dbg !4095
  store i32 %call24, i32* @cfg_blocks_tail, align 4, !dbg !4097
  store i32 0, i32* @cfg_blocks_head, align 4, !dbg !4098
  %mul = shl nsw i32 %call24, 1, !dbg !4099
  tail call fastcc void @VEC_basic_block_heap_safe_grow(%struct.VEC_basic_block_heap** nonnull @cfg_blocks, i32 %mul) #7, !dbg !4099
  br label %if.end79, !dbg !4100

if.else25:                                        ; preds = %if.else
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !4101
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4101
  %tobool26 = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !4101
  br i1 %tobool26, label %cond.end31, label %cond.true27, !dbg !4101

cond.true27:                                      ; preds = %if.else25
  %base29 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !4101
  br label %cond.end31, !dbg !4101

cond.end31:                                       ; preds = %if.else25, %cond.true27
  %cond32 = phi %struct.VEC_edge_base* [ %base29, %cond.true27 ], [ null, %if.else25 ], !dbg !4101
  %call33 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond32) #7, !dbg !4101
  %13 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4103
  %base36 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %13, i64 0, i32 0, !dbg !4103
  %14 = load i32, i32* @cfg_blocks_head, align 4, !dbg !4103
  %call40 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base36, i32 %14) #7, !dbg !4103
  %preds41 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call40, i64 0, i32 0, !dbg !4103
  %15 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds41, align 8, !dbg !4103
  %tobool42 = icmp eq %struct.VEC_edge_gc* %15, null, !dbg !4103
  br i1 %tobool42, label %cond.end54, label %cond.true43, !dbg !4103

cond.true43:                                      ; preds = %cond.end31
  %16 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4103
  %base46 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %16, i64 0, i32 0, !dbg !4103
  %17 = load i32, i32* @cfg_blocks_head, align 4, !dbg !4103
  %call50 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %base46, i32 %17) #7, !dbg !4103
  %preds51 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call50, i64 0, i32 0, !dbg !4103
  %18 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds51, align 8, !dbg !4103
  %base52 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %18, i64 0, i32 0, !dbg !4103
  br label %cond.end54, !dbg !4103

cond.end54:                                       ; preds = %cond.end31, %cond.true43
  %cond55 = phi %struct.VEC_edge_base* [ %base52, %cond.true43 ], [ null, %cond.end31 ], !dbg !4103
  %call56 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond55) #7, !dbg !4103
  %cmp57 = icmp ult i32 %call33, %call56, !dbg !4104
  br i1 %cmp57, label %if.else67, label %if.then58, !dbg !4105

if.then58:                                        ; preds = %cond.end54
  %19 = load i32, i32* @cfg_blocks_tail, align 4, !dbg !4106
  %add = add nsw i32 %19, 1, !dbg !4107
  %20 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4108
  %base61 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %20, i64 0, i32 0, !dbg !4108
  %call65 = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base61) #7, !dbg !4108
  %rem66 = urem i32 %add, %call65, !dbg !4109
  store i32 %rem66, i32* @cfg_blocks_tail, align 4, !dbg !4110
  br label %if.end79, !dbg !4111

if.else67:                                        ; preds = %cond.end54
  %21 = load i32, i32* @cfg_blocks_head, align 4, !dbg !4112
  %cmp68 = icmp eq i32 %21, 0, !dbg !4115
  br i1 %cmp68, label %if.then69, label %if.end, !dbg !4116

if.then69:                                        ; preds = %if.else67
  %22 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4117
  %base72 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %22, i64 0, i32 0, !dbg !4117
  %call76 = tail call fastcc i32 @VEC_basic_block_base_length(%struct.VEC_basic_block_base* %base72) #7, !dbg !4117
  store i32 %call76, i32* @cfg_blocks_head, align 4, !dbg !4118
  br label %if.end, !dbg !4119

if.end:                                           ; preds = %if.then69, %if.else67
  %23 = phi i32 [ %call76, %if.then69 ], [ %21, %if.else67 ], !dbg !4120
  %dec = add nsw i32 %23, -1, !dbg !4120
  store i32 %dec, i32* @cfg_blocks_head, align 4, !dbg !4120
  call void @llvm.dbg.value(metadata i8 1, metadata !4077, metadata !DIExpression()), !dbg !4078
  br label %if.end79

if.end79:                                         ; preds = %if.then17, %if.end, %if.then58, %if.then
  %head.2 = phi i1 [ false, %if.then ], [ false, %if.then17 ], [ false, %if.then58 ], [ true, %if.end ]
  %24 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4121
  %base82 = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %24, i64 0, i32 0, !dbg !4121
  %25 = load i32, i32* @cfg_blocks_head, align 4, !dbg !4121
  %26 = load i32, i32* @cfg_blocks_tail, align 4, !dbg !4121
  %cond90 = select i1 %head.2, i32 %25, i32 %26, !dbg !4121
  %call91 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %base82, i32 %cond90, %struct.basic_block_def* %bb) #7, !dbg !4121
  %27 = load %struct.simple_bitmap_def*, %struct.simple_bitmap_def** @bb_in_list, align 8, !dbg !4122
  %28 = load i32, i32* %index, align 8, !dbg !4123
  tail call fastcc void @SET_BIT(%struct.simple_bitmap_def* %27, i32 %28) #7, !dbg !4124
  ret void, !dbg !4125
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4126 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4130, metadata !DIExpression()), !dbg !4132
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4131, metadata !DIExpression()), !dbg !4132
  br label %land.end, !dbg !4133

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4133
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4133
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4133
  ret %struct.basic_block_def* %0, !dbg !4133
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_replace(%struct.VEC_basic_block_base* %vec_, i32 %ix_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !4134 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !4138, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4139, metadata !DIExpression()), !dbg !4142
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !4140, metadata !DIExpression()), !dbg !4142
  %idxprom = zext i32 %ix_ to i64, !dbg !4143
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4143
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !4143
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !4141, metadata !DIExpression()), !dbg !4142
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !4143
  ret %struct.basic_block_def* %0, !dbg !4143
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @SET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4144 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4148, metadata !DIExpression()), !dbg !4153
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4149, metadata !DIExpression()), !dbg !4153
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4154
  %0 = load i8*, i8** %popcount, align 8, !dbg !4154
  %tobool = icmp eq i8* %0, null, !dbg !4155
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4156

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4157
  %.pre2 = zext i32 %.pre to i64, !dbg !4158
  %.pre3 = shl i64 1, %.pre2, !dbg !4158
  %.pre4 = lshr i32 %bitno, 6, !dbg !4159
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4160
  br label %if.end7, !dbg !4156

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4161
  %idxprom = zext i32 %div to i64, !dbg !4161
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4161
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4161
  %rem = and i32 %bitno, 63, !dbg !4161
  %sh_prom = zext i32 %rem to i64, !dbg !4161
  %2 = shl i64 1, %sh_prom, !dbg !4162
  %3 = and i64 %1, %2, !dbg !4162
  %tobool1 = icmp eq i64 %3, 0, !dbg !4162
  br i1 %tobool1, label %if.then2, label %if.end7, !dbg !4164

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4165
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4166
  %inc = add i8 %4, 1, !dbg !4166
  store i8 %inc, i8* %arrayidx6, align 1, !dbg !4166
  br label %if.end7, !dbg !4165

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4160
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4158
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4160
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4167
  %or = or i64 %5, %shl.pre-phi, !dbg !4167
  store i64 %or, i64* %arrayidx13, align 8, !dbg !4167
  ret void, !dbg !4168
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @RESET_BIT(%struct.simple_bitmap_def* %map, i32 %bitno) unnamed_addr #0 !dbg !4169 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %map, metadata !4171, metadata !DIExpression()), !dbg !4176
  call void @llvm.dbg.value(metadata i32 %bitno, metadata !4172, metadata !DIExpression()), !dbg !4176
  %popcount = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 0, !dbg !4177
  %0 = load i8*, i8** %popcount, align 8, !dbg !4177
  %tobool = icmp eq i8* %0, null, !dbg !4178
  br i1 %tobool, label %entry.if.end7_crit_edge, label %if.then, !dbg !4179

entry.if.end7_crit_edge:                          ; preds = %entry
  %.pre = and i32 %bitno, 63, !dbg !4180
  %.pre2 = zext i32 %.pre to i64, !dbg !4181
  %.pre3 = shl i64 1, %.pre2, !dbg !4181
  %.pre4 = lshr i32 %bitno, 6, !dbg !4182
  %.pre5 = zext i32 %.pre4 to i64, !dbg !4183
  br label %if.end7, !dbg !4179

if.then:                                          ; preds = %entry
  %div = lshr i32 %bitno, 6, !dbg !4184
  %idxprom = zext i32 %div to i64, !dbg !4184
  %arrayidx = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom, !dbg !4184
  %1 = load i64, i64* %arrayidx, align 8, !dbg !4184
  %rem = and i32 %bitno, 63, !dbg !4184
  %sh_prom = zext i32 %rem to i64, !dbg !4184
  %2 = shl i64 1, %sh_prom, !dbg !4185
  %3 = and i64 %1, %2, !dbg !4185
  %tobool1 = icmp eq i64 %3, 0, !dbg !4185
  br i1 %tobool1, label %if.end7, label %if.then2, !dbg !4187

if.then2:                                         ; preds = %if.then
  %arrayidx6 = getelementptr inbounds i8, i8* %0, i64 %idxprom, !dbg !4188
  %4 = load i8, i8* %arrayidx6, align 1, !dbg !4189
  %dec = add i8 %4, -1, !dbg !4189
  store i8 %dec, i8* %arrayidx6, align 1, !dbg !4189
  br label %if.end7, !dbg !4188

if.end7:                                          ; preds = %entry.if.end7_crit_edge, %if.then, %if.then2
  %idxprom12.pre-phi = phi i64 [ %.pre5, %entry.if.end7_crit_edge ], [ %idxprom, %if.then ], [ %idxprom, %if.then2 ], !dbg !4183
  %shl.pre-phi = phi i64 [ %.pre3, %entry.if.end7_crit_edge ], [ %2, %if.then ], [ %2, %if.then2 ], !dbg !4181
  %neg = xor i64 %shl.pre-phi, -1, !dbg !4190
  %arrayidx13 = getelementptr inbounds %struct.simple_bitmap_def, %struct.simple_bitmap_def* %map, i64 0, i32 3, i64 %idxprom12.pre-phi, !dbg !4183
  %5 = load i64, i64* %arrayidx13, align 8, !dbg !4191
  %and14 = and i64 %5, %neg, !dbg !4191
  store i64 %and14, i64* %arrayidx13, align 8, !dbg !4191
  ret void, !dbg !4192
}

; Function Attrs: nounwind uwtable
define internal fastcc void @simulate_stmt(%union.gimple_statement_d* %stmt) unnamed_addr #5 !dbg !4193 {
entry:
  %taken_edge = alloca %struct.edge_def*, align 8
  %output_name = alloca %union.tree_node*, align 8
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4195, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.value(metadata i32 0, metadata !4196, metadata !DIExpression()), !dbg !4206
  %0 = bitcast %struct.edge_def** %taken_edge to i8*, !dbg !4207
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4207
  call void @llvm.dbg.value(metadata %struct.edge_def* null, metadata !4197, metadata !DIExpression()), !dbg !4206
  store %struct.edge_def* null, %struct.edge_def** %taken_edge, align 8, !dbg !4208
  %1 = bitcast %union.tree_node** %output_name to i8*, !dbg !4209
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4209
  call void @llvm.dbg.value(metadata %union.tree_node* null, metadata !4198, metadata !DIExpression()), !dbg !4206
  store %union.tree_node* null, %union.tree_node** %output_name, align 8, !dbg !4210
  %call = tail call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %stmt) #7, !dbg !4211
  %tobool = icmp eq i8 %call, 0, !dbg !4211
  br i1 %tobool, label %cleanup, label %if.end, !dbg !4213

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4214
  %cmp = icmp eq i32 %call1, 16, !dbg !4216
  br i1 %cmp, label %if.then2, label %if.else, !dbg !4217

if.then2:                                         ; preds = %if.end
  %2 = load i32 (%union.gimple_statement_d*)*, i32 (%union.gimple_statement_d*)** @ssa_prop_visit_phi, align 8, !dbg !4218
  %call3 = tail call i32 %2(%union.gimple_statement_d* %stmt) #6, !dbg !4218
  call void @llvm.dbg.value(metadata i32 %call3, metadata !4196, metadata !DIExpression()), !dbg !4206
  %call4 = tail call fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %stmt) #7, !dbg !4220
  call void @llvm.dbg.value(metadata %union.tree_node* %call4, metadata !4198, metadata !DIExpression()), !dbg !4206
  store %union.tree_node* %call4, %union.tree_node** %output_name, align 8, !dbg !4221
  br label %if.end6, !dbg !4222

if.else:                                          ; preds = %if.end
  %3 = load i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)*, i32 (%union.gimple_statement_d*, %struct.edge_def**, %union.tree_node**)** @ssa_prop_visit_stmt, align 8, !dbg !4223
  call void @llvm.dbg.value(metadata %struct.edge_def** %taken_edge, metadata !4197, metadata !DIExpression(DW_OP_deref)), !dbg !4206
  call void @llvm.dbg.value(metadata %union.tree_node** %output_name, metadata !4198, metadata !DIExpression(DW_OP_deref)), !dbg !4206
  %call5 = call i32 %3(%union.gimple_statement_d* %stmt, %struct.edge_def** nonnull %taken_edge, %union.tree_node** nonnull %output_name) #6, !dbg !4223
  call void @llvm.dbg.value(metadata i32 %call5, metadata !4196, metadata !DIExpression()), !dbg !4206
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then2
  %val.0 = phi i32 [ %call3, %if.then2 ], [ %call5, %if.else ], !dbg !4224
  call void @llvm.dbg.value(metadata i32 %val.0, metadata !4196, metadata !DIExpression()), !dbg !4206
  switch i32 %val.0, label %cleanup [
    i32 2, label %if.then8
    i32 1, label %if.then22
  ], !dbg !4225

if.then8:                                         ; preds = %if.end6
  call fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %stmt, i8 zeroext 0) #7, !dbg !4226
  %4 = load %union.tree_node*, %union.tree_node** %output_name, align 8, !dbg !4227
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4198, metadata !DIExpression()), !dbg !4206
  %tobool9 = icmp eq %union.tree_node* %4, null, !dbg !4227
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !4229

if.then10:                                        ; preds = %if.then8
  call void @llvm.dbg.value(metadata %union.tree_node* %4, metadata !4198, metadata !DIExpression()), !dbg !4206
  call fastcc void @add_ssa_edge(%union.tree_node* nonnull %4, i8 zeroext 1) #7, !dbg !4230
  br label %if.end11, !dbg !4230

if.end11:                                         ; preds = %if.then8, %if.then10
  %call12 = call zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d* %stmt) #6, !dbg !4231
  %tobool13 = icmp eq i8 %call12, 0, !dbg !4231
  br i1 %tobool13, label %cleanup, label %if.then14, !dbg !4232

if.then14:                                        ; preds = %if.end11
  %5 = bitcast %struct.edge_def** %e to i8*, !dbg !4233
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #8, !dbg !4233
  %6 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !4234
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4234
  %call15 = call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %stmt) #7, !dbg !4235
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call15, metadata !4205, metadata !DIExpression()), !dbg !4236
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !4237
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !4237
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call15, i64 0, i32 1, !dbg !4237
  %call16 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !4237
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !4237
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 0, !dbg !4237
  store i32 %9, i32* %8, align 8, !dbg !4237
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !4237
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call16, 1, !dbg !4237
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !4237
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %6, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !4237
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !4237
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !4239
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !4239
  br label %for.cond, !dbg !4237

for.cond:                                         ; preds = %for.body, %if.then14
  %14 = load i32, i32* %12, align 8, !dbg !4241
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !4241
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !4199, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  %call17 = call fastcc zeroext i8 @ei_cond(i32 %14, %struct.VEC_edge_gc** %15, %struct.edge_def** nonnull %e) #7, !dbg !4241
  %tobool18 = icmp eq i8 %call17, 0, !dbg !4237
  br i1 %tobool18, label %for.end, label %for.body, !dbg !4237

for.body:                                         ; preds = %for.cond
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !4242
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !4199, metadata !DIExpression()), !dbg !4236
  call fastcc void @add_control_edge(%struct.edge_def* %16) #7, !dbg !4243
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !4204, metadata !DIExpression(DW_OP_deref)), !dbg !4236
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !4241
  br label %for.cond, !dbg !4241, !llvm.loop !4244

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #8, !dbg !4246
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #8, !dbg !4246
  br label %cleanup, !dbg !4247

if.then22:                                        ; preds = %if.end6
  %17 = load %union.tree_node*, %union.tree_node** %output_name, align 8, !dbg !4248
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !4198, metadata !DIExpression()), !dbg !4206
  %tobool23 = icmp eq %union.tree_node* %17, null, !dbg !4248
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !4252

if.then24:                                        ; preds = %if.then22
  call void @llvm.dbg.value(metadata %union.tree_node* %17, metadata !4198, metadata !DIExpression()), !dbg !4206
  call fastcc void @add_ssa_edge(%union.tree_node* nonnull %17, i8 zeroext 0) #7, !dbg !4253
  br label %if.end25, !dbg !4253

if.end25:                                         ; preds = %if.then22, %if.then24
  %18 = load %struct.edge_def*, %struct.edge_def** %taken_edge, align 8, !dbg !4254
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !4197, metadata !DIExpression()), !dbg !4206
  %tobool26 = icmp eq %struct.edge_def* %18, null, !dbg !4254
  br i1 %tobool26, label %cleanup, label %if.then27, !dbg !4256

if.then27:                                        ; preds = %if.end25
  call void @llvm.dbg.value(metadata %struct.edge_def* %18, metadata !4197, metadata !DIExpression()), !dbg !4206
  call fastcc void @add_control_edge(%struct.edge_def* nonnull %18) #7, !dbg !4257
  br label %cleanup, !dbg !4257

cleanup:                                          ; preds = %if.end11, %if.end25, %entry, %for.end, %if.then27, %if.end6
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #8, !dbg !4258
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !4258
  ret void, !dbg !4258
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_plf(%union.gimple_statement_d* %stmt, i32 %plf) unnamed_addr #0 !dbg !4259 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4263, metadata !DIExpression()), !dbg !4265
  call void @llvm.dbg.value(metadata i32 1, metadata !4264, metadata !DIExpression()), !dbg !4265
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4266
  %bf.load = load i32, i32* %0, align 8, !dbg !4266
  %bf.lshr = lshr i32 %bf.load, 11, !dbg !4266
  %and = and i32 %bf.lshr, 1, !dbg !4267
  ret i32 %and, !dbg !4268
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %s) unnamed_addr #0 !dbg !4269 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4271, metadata !DIExpression()), !dbg !4272
  %call = tail call fastcc zeroext i8 @gimple_visited_p(%union.gimple_statement_d* %s) #7, !dbg !4273
  ret i8 %call, !dbg !4274
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_result(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4275 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4277, metadata !DIExpression()), !dbg !4278
  %result = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 3, !dbg !4279
  %0 = load %union.tree_node*, %union.tree_node** %result, align 8, !dbg !4279
  ret %union.tree_node* %0, !dbg !4280
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @prop_set_simulate_again(%union.gimple_statement_d* %s, i8 zeroext %visit_p) unnamed_addr #0 !dbg !4281 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %s, metadata !4285, metadata !DIExpression()), !dbg !4287
  call void @llvm.dbg.value(metadata i8 0, metadata !4286, metadata !DIExpression()), !dbg !4287
  tail call fastcc void @gimple_set_visited(%union.gimple_statement_d* %s, i8 zeroext 0) #7, !dbg !4288
  ret void, !dbg !4289
}

; Function Attrs: nounwind uwtable
define internal fastcc void @add_ssa_edge(%union.tree_node* %var, i8 zeroext %is_varying) unnamed_addr #5 !dbg !4290 {
entry:
  %iter = alloca %struct.immediate_use_iterator_d, align 8
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4294, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata i8 %is_varying, metadata !4295, metadata !DIExpression()), !dbg !4309
  %0 = bitcast %struct.immediate_use_iterator_d* %iter to i8*, !dbg !4310
  call void @llvm.lifetime.start.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4310
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4296, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  %call = call fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter, %union.tree_node* %var) #7, !dbg !4311
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call, metadata !4304, metadata !DIExpression()), !dbg !4309
  %tobool6 = icmp eq i8 %is_varying, 0, !dbg !4312
  br i1 %tobool6, label %entry.split.us, label %entry.entry.split_crit_edge, !dbg !4311

entry.entry.split_crit_edge:                      ; preds = %entry
  br label %for.cond, !dbg !4311

entry.split.us:                                   ; preds = %entry
  br label %for.cond.us, !dbg !4311

for.cond.us:                                      ; preds = %for.inc.us, %entry.split.us
  %use_p.0.us = phi %struct.ssa_use_operand_d* [ %call, %entry.split.us ], [ %call11.us, %for.inc.us ], !dbg !4316
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0.us, metadata !4304, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4296, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  %call1.us = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4317
  %tobool.us = icmp eq i8 %call1.us, 0, !dbg !4317
  br i1 %tobool.us, label %for.body.us, label %for.end.us-lcssa.us, !dbg !4311

for.body.us:                                      ; preds = %for.cond.us
  %stmt.us = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0.us, i64 0, i32 2, i32 0, !dbg !4318
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt.us, align 8, !dbg !4318
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !4305, metadata !DIExpression()), !dbg !4319
  %call2.us = call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %1) #7, !dbg !4320
  %tobool3.us = icmp eq i8 %call2.us, 0, !dbg !4320
  br i1 %tobool3.us, label %for.inc.us, label %land.lhs.true.us, !dbg !4321

land.lhs.true.us:                                 ; preds = %for.body.us
  %call4.us = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %1, i32 1) #7, !dbg !4322
  %tobool5.us = icmp eq i32 %call4.us, 0, !dbg !4322
  br i1 %tobool5.us, label %if.then.us, label %for.inc.us, !dbg !4323

if.then.us:                                       ; preds = %land.lhs.true.us
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %1, i32 1, i8 zeroext 1) #7, !dbg !4324
  %call9.us = call fastcc %union.gimple_statement_d** @VEC_gimple_gc_safe_push(%struct.VEC_gimple_gc** nonnull @interesting_ssa_edges, %union.gimple_statement_d* %1) #7, !dbg !4325
  br label %for.inc.us

for.inc.us:                                       ; preds = %if.then.us, %land.lhs.true.us, %for.body.us
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4296, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  %call11.us = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4317
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11.us, metadata !4304, metadata !DIExpression()), !dbg !4309
  br label %for.cond.us, !dbg !4317, !llvm.loop !4326

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !4328

for.cond:                                         ; preds = %for.inc, %entry.entry.split_crit_edge
  %use_p.0 = phi %struct.ssa_use_operand_d* [ %call, %entry.entry.split_crit_edge ], [ %call11, %for.inc ], !dbg !4316
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_p.0, metadata !4304, metadata !DIExpression()), !dbg !4309
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4296, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  %call1 = call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4317
  %tobool = icmp eq i8 %call1, 0, !dbg !4317
  br i1 %tobool, label %for.body, label %for.end.us-lcssa, !dbg !4311

for.body:                                         ; preds = %for.cond
  %stmt = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %use_p.0, i64 0, i32 2, i32 0, !dbg !4318
  %2 = load %union.gimple_statement_d*, %union.gimple_statement_d** %stmt, align 8, !dbg !4318
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %2, metadata !4305, metadata !DIExpression()), !dbg !4319
  %call2 = call fastcc zeroext i8 @prop_simulate_again_p(%union.gimple_statement_d* %2) #7, !dbg !4320
  %tobool3 = icmp eq i8 %call2, 0, !dbg !4320
  br i1 %tobool3, label %for.inc, label %land.lhs.true, !dbg !4321

land.lhs.true:                                    ; preds = %for.body
  %call4 = call fastcc i32 @gimple_plf(%union.gimple_statement_d* %2, i32 1) #7, !dbg !4322
  %tobool5 = icmp eq i32 %call4, 0, !dbg !4322
  br i1 %tobool5, label %if.then, label %for.inc, !dbg !4323

if.then:                                          ; preds = %land.lhs.true
  call fastcc void @gimple_set_plf(%union.gimple_statement_d* %2, i32 1, i8 zeroext 1) #7, !dbg !4324
  %call8 = call fastcc %union.gimple_statement_d** @VEC_gimple_gc_safe_push(%struct.VEC_gimple_gc** nonnull @varying_ssa_edges, %union.gimple_statement_d* %2) #7, !dbg !4329
  br label %for.inc, !dbg !4329

for.inc:                                          ; preds = %land.lhs.true, %for.body, %if.then
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %iter, metadata !4296, metadata !DIExpression(DW_OP_deref)), !dbg !4309
  %call11 = call fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* nonnull %iter) #7, !dbg !4317
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %call11, metadata !4304, metadata !DIExpression()), !dbg !4309
  br label %for.cond, !dbg !4317, !llvm.loop !4326

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !4328

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  call void @llvm.lifetime.end.p0i8(i64 56, i8* nonnull %0) #8, !dbg !4328
  ret void, !dbg !4328
}

declare dso_local zeroext i8 @stmt_ends_bb_p(%union.gimple_statement_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %g) unnamed_addr #0 !dbg !4330 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %g, metadata !4334, metadata !DIExpression()), !dbg !4335
  %bb = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %g, i64 0, i32 0, i32 0, i32 4, !dbg !4336
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb, align 8, !dbg !4336
  ret %struct.basic_block_def* %0, !dbg !4337
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @gimple_visited_p(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4338 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4340, metadata !DIExpression()), !dbg !4341
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4342
  %bf.load = load i32, i32* %0, align 8, !dbg !4342
  %bf.lshr = lshr i32 %bf.load, 9, !dbg !4342
  %1 = trunc i32 %bf.lshr to i8, !dbg !4343
  %conv = and i8 %1, 1, !dbg !4343
  ret i8 %conv, !dbg !4344
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @gimple_set_visited(%union.gimple_statement_d* %stmt, i8 zeroext %visited_p) unnamed_addr #0 !dbg !4345 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4347, metadata !DIExpression()), !dbg !4349
  call void @llvm.dbg.value(metadata i8 0, metadata !4348, metadata !DIExpression()), !dbg !4349
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4350
  %bf.load = load i32, i32* %0, align 8, !dbg !4351
  %bf.clear = and i32 %bf.load, -513, !dbg !4351
  store i32 %bf.clear, i32* %0, align 8, !dbg !4351
  ret void, !dbg !4352
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @first_readonly_imm_use(%struct.immediate_use_iterator_d* %imm, %union.tree_node* %var) unnamed_addr #0 !dbg !4353 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4358, metadata !DIExpression()), !dbg !4360
  call void @llvm.dbg.value(metadata %union.tree_node* %var, metadata !4359, metadata !DIExpression()), !dbg !4360
  %imm_uses = getelementptr inbounds %union.tree_node, %union.tree_node* %var, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 2, !dbg !4361
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4362
  %0 = bitcast %struct.ssa_use_operand_d** %end_p to i40**, !dbg !4363
  store i40* %imm_uses, i40** %0, align 8, !dbg !4363
  %next = getelementptr inbounds i40, i40* %imm_uses, i64 1, !dbg !4364
  %1 = bitcast i40* %next to i64*, !dbg !4364
  %2 = load i64, i64* %1, align 8, !dbg !4364
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4365
  store i64 %2, i64* %3, align 8, !dbg !4365
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4366
  %tobool = icmp eq i8 %call, 0, !dbg !4366
  br i1 %tobool, label %if.end, label %return, !dbg !4368

if.end:                                           ; preds = %entry
  %imm_use2 = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4369
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use2, align 8, !dbg !4369
  br label %return, !dbg !4370

return:                                           ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4360
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4371
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4372 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4378, metadata !DIExpression()), !dbg !4379
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4380
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4380
  %end_p = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 1, !dbg !4381
  %1 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %end_p, align 8, !dbg !4381
  %cmp = icmp eq %struct.ssa_use_operand_d* %0, %1, !dbg !4382
  %conv1 = zext i1 %cmp to i8, !dbg !4383
  ret i8 %conv1, !dbg !4384
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_gc_safe_push(%struct.VEC_gimple_gc** %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4385 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !4390, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4391, metadata !DIExpression()), !dbg !4392
  %call = tail call fastcc i32 @VEC_gimple_gc_reserve(%struct.VEC_gimple_gc** %vec_, i32 1) #7, !dbg !4393
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !4393
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !4393
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4393

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !4393
  br label %cond.end, !dbg !4393

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4393
  %call1 = tail call fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %cond, %union.gimple_statement_d* %obj_) #7, !dbg !4393
  ret %union.gimple_statement_d** %call1, !dbg !4393
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @next_readonly_imm_use(%struct.immediate_use_iterator_d* %imm) unnamed_addr #0 !dbg !4394 {
entry:
  call void @llvm.dbg.value(metadata %struct.immediate_use_iterator_d* %imm, metadata !4398, metadata !DIExpression()), !dbg !4400
  %imm_use = getelementptr inbounds %struct.immediate_use_iterator_d, %struct.immediate_use_iterator_d* %imm, i64 0, i32 0, !dbg !4401
  %0 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4401
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %0, metadata !4399, metadata !DIExpression()), !dbg !4400
  %next = getelementptr inbounds %struct.ssa_use_operand_d, %struct.ssa_use_operand_d* %0, i64 0, i32 1, !dbg !4402
  %1 = bitcast %struct.ssa_use_operand_d** %next to i64*, !dbg !4402
  %2 = load i64, i64* %1, align 8, !dbg !4402
  %3 = bitcast %struct.immediate_use_iterator_d* %imm to i64*, !dbg !4403
  store i64 %2, i64* %3, align 8, !dbg !4403
  %call = tail call fastcc zeroext i8 @end_readonly_imm_use_p(%struct.immediate_use_iterator_d* %imm) #7, !dbg !4404
  %tobool = icmp eq i8 %call, 0, !dbg !4404
  br i1 %tobool, label %if.end, label %cleanup, !dbg !4406

if.end:                                           ; preds = %entry
  %4 = load %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d** %imm_use, align 8, !dbg !4407
  br label %cleanup, !dbg !4408

cleanup:                                          ; preds = %entry, %if.end
  %retval.0 = phi %struct.ssa_use_operand_d* [ %4, %if.end ], [ null, %entry ], !dbg !4400
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4409
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_gc_reserve(%struct.VEC_gimple_gc** %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4410 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !4414, metadata !DIExpression()), !dbg !4417
  call void @llvm.dbg.value(metadata i32 1, metadata !4415, metadata !DIExpression()), !dbg !4417
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !4418
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !4418
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4418

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_gimple_gc, %struct.VEC_gimple_gc* %0, i64 0, i32 0, !dbg !4418
  br label %cond.end, !dbg !4418

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_gimple_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4418
  %call = tail call fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %cond, i32 1) #7, !dbg !4418
  %tobool1 = icmp eq i32 %call, 0, !dbg !4418
  %lnot.ext = zext i1 %tobool1 to i32, !dbg !4418
  call void @llvm.dbg.value(metadata i32 %lnot.ext, metadata !4416, metadata !DIExpression()), !dbg !4417
  br i1 %tobool1, label %if.then, label %if.end, !dbg !4418

if.then:                                          ; preds = %cond.end
  %1 = bitcast %struct.VEC_gimple_gc** %vec_ to i8**, !dbg !4419
  %2 = load i8*, i8** %1, align 8, !dbg !4419
  %call3 = tail call i8* @vec_gc_p_reserve(i8* %2, i32 1) #6, !dbg !4419
  store i8* %call3, i8** %1, align 8, !dbg !4419
  br label %if.end, !dbg !4419

if.end:                                           ; preds = %if.then, %cond.end
  ret i32 %lnot.ext, !dbg !4418
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d** @VEC_gimple_base_quick_push(%struct.VEC_gimple_base* %vec_, %union.gimple_statement_d* %obj_) unnamed_addr #0 !dbg !4421 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4426, metadata !DIExpression()), !dbg !4429
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %obj_, metadata !4427, metadata !DIExpression()), !dbg !4429
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4430
  %0 = load i32, i32* %num1, align 8, !dbg !4430
  %inc = add i32 %0, 1, !dbg !4430
  store i32 %inc, i32* %num1, align 8, !dbg !4430
  %idxprom = zext i32 %0 to i64, !dbg !4430
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4430
  call void @llvm.dbg.value(metadata %union.gimple_statement_d** %arrayidx, metadata !4428, metadata !DIExpression()), !dbg !4429
  store %union.gimple_statement_d* %obj_, %union.gimple_statement_d** %arrayidx, align 8, !dbg !4430
  ret %union.gimple_statement_d** %arrayidx, !dbg !4430
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_gimple_base_space(%struct.VEC_gimple_base* %vec_, i32 %alloc_) unnamed_addr #0 !dbg !4431 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4435, metadata !DIExpression()), !dbg !4437
  call void @llvm.dbg.value(metadata i32 1, metadata !4436, metadata !DIExpression()), !dbg !4437
  %tobool = icmp eq %struct.VEC_gimple_base* %vec_, null, !dbg !4438
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !4438

cond.true:                                        ; preds = %entry
  %alloc = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 1, !dbg !4438
  %0 = load i32, i32* %alloc, align 4, !dbg !4438
  %num = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4438
  %1 = load i32, i32* %num, align 8, !dbg !4438
  %cmp1 = icmp ne i32 %0, %1, !dbg !4438
  %phitmp = zext i1 %cmp1 to i32, !dbg !4438
  br label %cond.end, !dbg !4438

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !4438

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond.in = phi i32 [ %phitmp, %cond.true ], [ 0, %cond.false ]
  ret i32 %cond.in, !dbg !4438
}

declare dso_local i8* @vec_gc_p_reserve(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.gimple_statement_d* @VEC_gimple_base_pop(%struct.VEC_gimple_base* %vec_) unnamed_addr #0 !dbg !4439 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_base* %vec_, metadata !4443, metadata !DIExpression()), !dbg !4445
  %num1 = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 0, !dbg !4446
  %0 = load i32, i32* %num1, align 8, !dbg !4446
  %dec = add i32 %0, -1, !dbg !4446
  store i32 %dec, i32* %num1, align 8, !dbg !4446
  %idxprom = zext i32 %dec to i64, !dbg !4446
  %arrayidx = getelementptr inbounds %struct.VEC_gimple_base, %struct.VEC_gimple_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4446
  %1 = load %union.gimple_statement_d*, %union.gimple_statement_d** %arrayidx, align 8, !dbg !4446
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %1, metadata !4444, metadata !DIExpression()), !dbg !4445
  ret %union.gimple_statement_d* %1, !dbg !4446
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_gimple_gc_free(%struct.VEC_gimple_gc** %vec_) unnamed_addr #0 !dbg !4447 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_gimple_gc** %vec_, metadata !4449, metadata !DIExpression()), !dbg !4450
  %0 = load %struct.VEC_gimple_gc*, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !4451
  %tobool = icmp eq %struct.VEC_gimple_gc* %0, null, !dbg !4451
  br i1 %tobool, label %if.end, label %if.then, !dbg !4453

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_gimple_gc* %0 to i8*, !dbg !4453
  tail call void @ggc_free(i8* nonnull %1) #6, !dbg !4451
  br label %if.end, !dbg !4451

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_gimple_gc* null, %struct.VEC_gimple_gc** %vec_, align 8, !dbg !4453
  ret void, !dbg !4453
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !4454 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** @cfg_blocks, metadata !4458, metadata !DIExpression()), !dbg !4459
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4460
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !4460
  br i1 %tobool, label %if.end, label %if.then, !dbg !4462

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !4462
  tail call void @free(i8* nonnull %1) #6, !dbg !4460
  br label %if.end, !dbg !4460

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** @cfg_blocks, align 8, !dbg !4462
  ret void, !dbg !4462
}

declare dso_local void @ggc_free(i8*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_phi_num_args(%union.gimple_statement_d* %gs) unnamed_addr #0 !dbg !4463 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4465, metadata !DIExpression()), !dbg !4466
  %nargs = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 2, !dbg !4467
  %0 = load i32, i32* %nargs, align 4, !dbg !4467
  ret i32 %0, !dbg !4468
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %union.tree_node* @gimple_phi_arg_def(%union.gimple_statement_d* %gs, i64 %index) unnamed_addr #0 !dbg !4469 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4473, metadata !DIExpression()), !dbg !4477
  call void @llvm.dbg.value(metadata i64 %index, metadata !4474, metadata !DIExpression()), !dbg !4477
  %conv = trunc i64 %index to i32, !dbg !4478
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %conv) #7, !dbg !4479
  call void @llvm.dbg.value(metadata %struct.phi_arg_d* %call, metadata !4475, metadata !DIExpression()), !dbg !4477
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4480
  %call1 = tail call fastcc %union.tree_node* @get_use_from_ptr(%struct.ssa_use_operand_d* %imm_use) #7, !dbg !4481
  ret %union.tree_node* %call1, !dbg !4482
}

declare dso_local zeroext i8 @may_propagate_copy(%union.tree_node*, %union.tree_node*) local_unnamed_addr #2

declare dso_local void @propagate_value(%struct.ssa_use_operand_d*, %union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %gs, i32 %i) unnamed_addr #0 !dbg !4483 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4487, metadata !DIExpression()), !dbg !4489
  call void @llvm.dbg.value(metadata i32 %i, metadata !4488, metadata !DIExpression()), !dbg !4489
  %call = tail call fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %i) #7, !dbg !4490
  %imm_use = getelementptr inbounds %struct.phi_arg_d, %struct.phi_arg_d* %call, i64 0, i32 0, !dbg !4491
  ret %struct.ssa_use_operand_d* %imm_use, !dbg !4492
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @gimple_phi_arg_edge(%union.gimple_statement_d* %gs, i64 %i) unnamed_addr #0 !dbg !4493 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4497, metadata !DIExpression()), !dbg !4499
  call void @llvm.dbg.value(metadata i64 %i, metadata !4498, metadata !DIExpression()), !dbg !4499
  %call = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4500
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 0, !dbg !4500
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !4500
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !4500
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4500

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.basic_block_def* @gimple_bb(%union.gimple_statement_d* %gs) #7, !dbg !4500
  %preds2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call1, i64 0, i32 0, !dbg !4500
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds2, align 8, !dbg !4500
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !4500
  br label %cond.end, !dbg !4500

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !4500
  %conv = trunc i64 %i to i32, !dbg !4500
  %call3 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %conv) #7, !dbg !4500
  ret %struct.edge_def* %call3, !dbg !4501
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.phi_arg_d* @gimple_phi_arg(%union.gimple_statement_d* %gs, i32 %index) unnamed_addr #0 !dbg !4502 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %gs, metadata !4506, metadata !DIExpression()), !dbg !4508
  call void @llvm.dbg.value(metadata i32 %index, metadata !4507, metadata !DIExpression()), !dbg !4508
  %capacity = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 1, !dbg !4509
  %0 = load i32, i32* %capacity, align 8, !dbg !4509
  %cmp = icmp ult i32 %0, %index, !dbg !4509
  br i1 %cmp, label %cond.true, label %cond.end, !dbg !4509

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 3103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4509
  br label %cond.end, !dbg !4509

cond.end:                                         ; preds = %entry, %cond.true
  %idxprom = zext i32 %index to i64, !dbg !4510
  %arrayidx = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %gs, i64 0, i32 0, i32 4, i64 %idxprom, !dbg !4510
  ret %struct.phi_arg_d* %arrayidx, !dbg !4511
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.gimple_seq_node_d* @gimple_seq_last(%struct.gimple_seq_d* %s) unnamed_addr #0 !dbg !4512 {
entry:
  call void @llvm.dbg.value(metadata %struct.gimple_seq_d* %s, metadata !4514, metadata !DIExpression()), !dbg !4515
  %tobool = icmp eq %struct.gimple_seq_d* %s, null, !dbg !4516
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4516

cond.true:                                        ; preds = %entry
  %last = getelementptr inbounds %struct.gimple_seq_d, %struct.gimple_seq_d* %s, i64 0, i32 1, !dbg !4517
  %0 = load %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d** %last, align 8, !dbg !4517
  br label %cond.end, !dbg !4516

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.gimple_seq_node_d* [ %0, %cond.true ], [ null, %entry ], !dbg !4516
  ret %struct.gimple_seq_node_d* %cond, !dbg !4518
}

declare dso_local zeroext i8 @has_zero_uses_1(%struct.ssa_use_operand_d*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_init_use(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 %flags) unnamed_addr #0 !dbg !4519 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4523, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4524, metadata !DIExpression()), !dbg !4526
  call void @llvm.dbg.value(metadata i32 1, metadata !4525, metadata !DIExpression()), !dbg !4526
  tail call fastcc void @op_iter_init(%struct.ssa_operand_iterator_d* %ptr, %union.gimple_statement_d* %stmt, i32 1) #7, !dbg !4527
  %iter_type = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 1, !dbg !4528
  store i32 2, i32* %iter_type, align 4, !dbg !4529
  %call = tail call fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) #7, !dbg !4530
  ret %struct.ssa_use_operand_d* %call, !dbg !4531
}

declare dso_local zeroext i8 @may_propagate_copy_into_asm(%union.tree_node*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.ssa_use_operand_d* @op_iter_next_use(%struct.ssa_operand_iterator_d* %ptr) unnamed_addr #0 !dbg !4532 {
entry:
  call void @llvm.dbg.value(metadata %struct.ssa_operand_iterator_d* %ptr, metadata !4536, metadata !DIExpression()), !dbg !4538
  %uses = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 3, !dbg !4539
  %0 = load %struct.use_optype_d*, %struct.use_optype_d** %uses, align 8, !dbg !4539
  %tobool = icmp eq %struct.use_optype_d* %0, null, !dbg !4541
  br i1 %tobool, label %if.end, label %if.then, !dbg !4542

if.then:                                          ; preds = %entry
  %use_ptr = getelementptr inbounds %struct.use_optype_d, %struct.use_optype_d* %0, i64 0, i32 1, !dbg !4543
  call void @llvm.dbg.value(metadata %struct.ssa_use_operand_d* %use_ptr, metadata !4537, metadata !DIExpression()), !dbg !4538
  %1 = bitcast %struct.use_optype_d* %0 to i64*, !dbg !4545
  %2 = load i64, i64* %1, align 8, !dbg !4545
  %3 = bitcast %struct.use_optype_d** %uses to i64*, !dbg !4546
  store i64 %2, i64* %3, align 8, !dbg !4546
  br label %cleanup, !dbg !4547

if.end:                                           ; preds = %entry
  %phi_i = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 4, !dbg !4548
  %4 = load i32, i32* %phi_i, align 8, !dbg !4548
  %num_phi = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 5, !dbg !4550
  %5 = load i32, i32* %num_phi, align 4, !dbg !4550
  %cmp = icmp slt i32 %4, %5, !dbg !4551
  br i1 %cmp, label %if.then4, label %if.end6, !dbg !4552

if.then4:                                         ; preds = %if.end
  %phi_stmt = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 6, !dbg !4553
  %6 = load %union.gimple_statement_d*, %union.gimple_statement_d** %phi_stmt, align 8, !dbg !4553
  %inc = add nsw i32 %4, 1, !dbg !4553
  store i32 %inc, i32* %phi_i, align 8, !dbg !4553
  %call = tail call fastcc %struct.ssa_use_operand_d* @gimple_phi_arg_imm_use_ptr(%union.gimple_statement_d* %6, i32 %4) #7, !dbg !4553
  br label %cleanup, !dbg !4555

if.end6:                                          ; preds = %if.end
  %done = getelementptr inbounds %struct.ssa_operand_iterator_d, %struct.ssa_operand_iterator_d* %ptr, i64 0, i32 0, !dbg !4556
  store i8 1, i8* %done, align 8, !dbg !4557
  br label %cleanup, !dbg !4558

cleanup:                                          ; preds = %if.end6, %if.then4, %if.then
  %retval.0 = phi %struct.ssa_use_operand_d* [ %use_ptr, %if.then ], [ %call, %if.then4 ], [ null, %if.end6 ], !dbg !4538
  ret %struct.ssa_use_operand_d* %retval.0, !dbg !4559
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @gimple_expr_code(%union.gimple_statement_d* %stmt) unnamed_addr #0 !dbg !4560 {
entry:
  call void @llvm.dbg.value(metadata %union.gimple_statement_d* %stmt, metadata !4562, metadata !DIExpression()), !dbg !4564
  %call = tail call fastcc i32 @gimple_code(%union.gimple_statement_d* %stmt) #7, !dbg !4565
  call void @llvm.dbg.value(metadata i32 %call, metadata !4563, metadata !DIExpression()), !dbg !4564
  switch i32 %call, label %if.else4 [
    i32 6, label %if.then
    i32 1, label %if.then
    i32 8, label %cleanup
  ], !dbg !4566

if.then:                                          ; preds = %entry, %entry
  %0 = getelementptr inbounds %union.gimple_statement_d, %union.gimple_statement_d* %stmt, i64 0, i32 0, i32 0, i32 0, !dbg !4568
  %bf.load = load i32, i32* %0, align 8, !dbg !4568
  %bf.lshr = lshr i32 %bf.load, 16, !dbg !4568
  br label %cleanup, !dbg !4569

if.else4:                                         ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), i32 1446, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !4570
  br label %cleanup, !dbg !4572

cleanup:                                          ; preds = %entry, %if.else4, %if.then
  %retval.0 = phi i32 [ %bf.lshr, %if.then ], [ 0, %if.else4 ], [ 59, %entry ], !dbg !4564
  ret i32 %retval.0, !dbg !4573
}

declare dso_local void @gimple_set_modified(%union.gimple_statement_d*, i8 zeroext) local_unnamed_addr #2

declare dso_local void @update_stmt_operands(%union.gimple_statement_d*) local_unnamed_addr #2

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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1876, !1877, !1878}
!llvm.ident = !{!1879}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ssa_prop_visit_stmt", scope: !2, file: !3, line: 119, type: !1871, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !465, globals: !1816, nameTableKind: None)
!3 = !DIFile(filename: "tree-ssa-propagate.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !329, !335, !340, !345, !363, !370, !377, !384, !390, !429, !455, !459}
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
!134 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !135, line: 39, baseType: !7, size: 32, elements: !136)
!135 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!136 = !{!137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328}
!137 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!138 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!139 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!140 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!141 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!142 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!143 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!144 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!145 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!146 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!147 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!148 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!149 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!150 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!151 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!152 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!153 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!154 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!155 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!156 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!157 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!158 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!159 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!160 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!161 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!162 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!163 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!164 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!165 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!166 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!167 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!168 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!169 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!170 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!171 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!172 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!173 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!174 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!175 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!176 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!177 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!178 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!179 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!180 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!181 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!182 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!183 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!184 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!185 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!186 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!187 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!188 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!189 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!190 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!191 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!192 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!193 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!194 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!195 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!196 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!197 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!198 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!199 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!200 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!201 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!202 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!203 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!204 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!205 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!206 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!207 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!208 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!209 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!210 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!211 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!212 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!213 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!214 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!215 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!216 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!217 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!218 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!219 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!220 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!221 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!222 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!223 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!224 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!225 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!226 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!227 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!228 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!229 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!230 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!231 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!232 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!233 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!234 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!235 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!236 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!237 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!238 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!239 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!240 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!241 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!242 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!243 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!244 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!245 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!246 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!247 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!248 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!249 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!250 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!251 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!252 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!253 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!254 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!255 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!256 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!257 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!258 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!259 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!260 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!261 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!262 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!263 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!264 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!265 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!266 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!267 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!268 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!269 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!270 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!271 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!272 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!273 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!274 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!275 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!276 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!277 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!278 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!279 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!280 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!281 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!282 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!283 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!284 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!285 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!286 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!287 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!288 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!289 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!290 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!291 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!292 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!293 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!294 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!295 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!296 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!297 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!298 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!299 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!300 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!301 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!302 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!303 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!304 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!305 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!306 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!307 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!308 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!309 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!310 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!311 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!312 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!313 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!314 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!315 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!316 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!317 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!318 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!319 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!320 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!321 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!322 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!323 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!324 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!325 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!326 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!327 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!328 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!329 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "profile_status_d", file: !330, line: 363, baseType: !7, size: 32, elements: !331)
!330 = !DIFile(filename: "./basic-block.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!331 = !{!332, !333, !334}
!332 = !DIEnumerator(name: "PROFILE_ABSENT", value: 0, isUnsigned: true)
!333 = !DIEnumerator(name: "PROFILE_GUESSED", value: 1, isUnsigned: true)
!334 = !DIEnumerator(name: "PROFILE_READ", value: 2, isUnsigned: true)
!335 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dom_state", file: !330, line: 355, baseType: !7, size: 32, elements: !336)
!336 = !{!337, !338, !339}
!337 = !DIEnumerator(name: "DOM_NONE", value: 0, isUnsigned: true)
!338 = !DIEnumerator(name: "DOM_NO_FAST_QUERY", value: 1, isUnsigned: true)
!339 = !DIEnumerator(name: "DOM_OK", value: 2, isUnsigned: true)
!340 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !341, line: 474, baseType: !7, size: 32, elements: !342)
!341 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!342 = !{!343, !344}
!343 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!344 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!345 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !135, line: 280, baseType: !7, size: 32, elements: !346)
!346 = !{!347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362}
!347 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!348 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!349 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!350 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!362 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!363 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !135, line: 1817, baseType: !7, size: 32, elements: !364)
!364 = !{!365, !366, !367, !368, !369}
!365 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!366 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!367 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!368 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!369 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!370 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !135, line: 1805, baseType: !7, size: 32, elements: !371)
!371 = !{!372, !373, !374, !375, !376}
!372 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!373 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!374 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!375 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!376 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!377 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_op_iter_type", file: !378, line: 119, baseType: !7, size: 32, elements: !379)
!378 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!379 = !{!380, !381, !382, !383}
!380 = !DIEnumerator(name: "ssa_op_iter_none", value: 0, isUnsigned: true)
!381 = !DIEnumerator(name: "ssa_op_iter_tree", value: 1, isUnsigned: true)
!382 = !DIEnumerator(name: "ssa_op_iter_use", value: 2, isUnsigned: true)
!383 = !DIEnumerator(name: "ssa_op_iter_def", value: 3, isUnsigned: true)
!384 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ssa_prop_result", file: !385, line: 44, baseType: !7, size: 32, elements: !386)
!385 = !DIFile(filename: "./tree-ssa-propagate.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!386 = !{!387, !388, !389}
!387 = !DIEnumerator(name: "SSA_PROP_NOT_INTERESTING", value: 0, isUnsigned: true)
!388 = !DIEnumerator(name: "SSA_PROP_INTERESTING", value: 1, isUnsigned: true)
!389 = !DIEnumerator(name: "SSA_PROP_VARYING", value: 2, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_code", file: !391, line: 51, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !425, !426, !427, !428}
!393 = !DIEnumerator(name: "GIMPLE_ERROR_MARK", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "GIMPLE_COND", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "GIMPLE_DEBUG", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "GIMPLE_GOTO", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "GIMPLE_LABEL", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "GIMPLE_SWITCH", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "GIMPLE_ASSIGN", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "GIMPLE_ASM", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "GIMPLE_CALL", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "GIMPLE_RETURN", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "GIMPLE_BIND", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "GIMPLE_CATCH", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "GIMPLE_EH_FILTER", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "GIMPLE_EH_MUST_NOT_THROW", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "GIMPLE_RESX", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "GIMPLE_EH_DISPATCH", value: 15, isUnsigned: true)
!409 = !DIEnumerator(name: "GIMPLE_PHI", value: 16, isUnsigned: true)
!410 = !DIEnumerator(name: "GIMPLE_TRY", value: 17, isUnsigned: true)
!411 = !DIEnumerator(name: "GIMPLE_NOP", value: 18, isUnsigned: true)
!412 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_LOAD", value: 19, isUnsigned: true)
!413 = !DIEnumerator(name: "GIMPLE_OMP_ATOMIC_STORE", value: 20, isUnsigned: true)
!414 = !DIEnumerator(name: "GIMPLE_OMP_CONTINUE", value: 21, isUnsigned: true)
!415 = !DIEnumerator(name: "GIMPLE_OMP_CRITICAL", value: 22, isUnsigned: true)
!416 = !DIEnumerator(name: "GIMPLE_OMP_FOR", value: 23, isUnsigned: true)
!417 = !DIEnumerator(name: "GIMPLE_OMP_MASTER", value: 24, isUnsigned: true)
!418 = !DIEnumerator(name: "GIMPLE_OMP_ORDERED", value: 25, isUnsigned: true)
!419 = !DIEnumerator(name: "GIMPLE_OMP_PARALLEL", value: 26, isUnsigned: true)
!420 = !DIEnumerator(name: "GIMPLE_OMP_TASK", value: 27, isUnsigned: true)
!421 = !DIEnumerator(name: "GIMPLE_OMP_RETURN", value: 28, isUnsigned: true)
!422 = !DIEnumerator(name: "GIMPLE_OMP_SECTION", value: 29, isUnsigned: true)
!423 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS", value: 30, isUnsigned: true)
!424 = !DIEnumerator(name: "GIMPLE_OMP_SECTIONS_SWITCH", value: 31, isUnsigned: true)
!425 = !DIEnumerator(name: "GIMPLE_OMP_SINGLE", value: 32, isUnsigned: true)
!426 = !DIEnumerator(name: "GIMPLE_PREDICT", value: 33, isUnsigned: true)
!427 = !DIEnumerator(name: "GIMPLE_WITH_CLEANUP_EXPR", value: 34, isUnsigned: true)
!428 = !DIEnumerator(name: "LAST_AND_UNUSED_GIMPLE_CODE", value: 35, isUnsigned: true)
!429 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_statement_structure_enum", file: !391, line: 727, baseType: !7, size: 32, elements: !430)
!430 = !{!431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454}
!431 = !DIEnumerator(name: "GSS_BASE", value: 0, isUnsigned: true)
!432 = !DIEnumerator(name: "GSS_WITH_OPS", value: 1, isUnsigned: true)
!433 = !DIEnumerator(name: "GSS_WITH_MEM_OPS_BASE", value: 2, isUnsigned: true)
!434 = !DIEnumerator(name: "GSS_WITH_MEM_OPS", value: 3, isUnsigned: true)
!435 = !DIEnumerator(name: "GSS_ASM", value: 4, isUnsigned: true)
!436 = !DIEnumerator(name: "GSS_BIND", value: 5, isUnsigned: true)
!437 = !DIEnumerator(name: "GSS_PHI", value: 6, isUnsigned: true)
!438 = !DIEnumerator(name: "GSS_TRY", value: 7, isUnsigned: true)
!439 = !DIEnumerator(name: "GSS_CATCH", value: 8, isUnsigned: true)
!440 = !DIEnumerator(name: "GSS_EH_FILTER", value: 9, isUnsigned: true)
!441 = !DIEnumerator(name: "GSS_EH_MNT", value: 10, isUnsigned: true)
!442 = !DIEnumerator(name: "GSS_EH_CTRL", value: 11, isUnsigned: true)
!443 = !DIEnumerator(name: "GSS_WCE", value: 12, isUnsigned: true)
!444 = !DIEnumerator(name: "GSS_OMP", value: 13, isUnsigned: true)
!445 = !DIEnumerator(name: "GSS_OMP_CRITICAL", value: 14, isUnsigned: true)
!446 = !DIEnumerator(name: "GSS_OMP_FOR", value: 15, isUnsigned: true)
!447 = !DIEnumerator(name: "GSS_OMP_PARALLEL", value: 16, isUnsigned: true)
!448 = !DIEnumerator(name: "GSS_OMP_TASK", value: 17, isUnsigned: true)
!449 = !DIEnumerator(name: "GSS_OMP_SECTIONS", value: 18, isUnsigned: true)
!450 = !DIEnumerator(name: "GSS_OMP_SINGLE", value: 19, isUnsigned: true)
!451 = !DIEnumerator(name: "GSS_OMP_CONTINUE", value: 20, isUnsigned: true)
!452 = !DIEnumerator(name: "GSS_OMP_ATOMIC_LOAD", value: 21, isUnsigned: true)
!453 = !DIEnumerator(name: "GSS_OMP_ATOMIC_STORE", value: 22, isUnsigned: true)
!454 = !DIEnumerator(name: "LAST_GSS_ENUM", value: 23, isUnsigned: true)
!455 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "plf_mask", file: !391, line: 130, baseType: !7, size: 32, elements: !456)
!456 = !{!457, !458}
!457 = !DIEnumerator(name: "GF_PLF_1", value: 1, isUnsigned: true)
!458 = !DIEnumerator(name: "GF_PLF_2", value: 2, isUnsigned: true)
!459 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gimple_rhs_class", file: !391, line: 80, baseType: !7, size: 32, elements: !460)
!460 = !{!461, !462, !463, !464}
!461 = !DIEnumerator(name: "GIMPLE_INVALID_RHS", value: 0, isUnsigned: true)
!462 = !DIEnumerator(name: "GIMPLE_BINARY_RHS", value: 1, isUnsigned: true)
!463 = !DIEnumerator(name: "GIMPLE_UNARY_RHS", value: 2, isUnsigned: true)
!464 = !DIEnumerator(name: "GIMPLE_SINGLE_RHS", value: 3, isUnsigned: true)
!465 = !{!466, !467, !468, !469, !472, !473, !134, !475, !800, !1801, !833, !470, !1803, !7, !1312, !1808, !529, !1813, !459}
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!468 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !471)
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !476, line: 56, baseType: !477)
!476 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !135, line: 3371, size: 1792, elements: !479)
!479 = !{!480, !513, !519, !532, !551, !562, !567, !576, !582, !595, !607, !645, !1136, !1164, !1181, !1182, !1187, !1196, !1202, !1207, !1211, !1215, !1452, !1499, !1505, !1511, !1518, !1531, !1545, !1562, !1574, !1596, !1611, !1783}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !478, file: !135, line: 3372, baseType: !481, size: 64)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !135, line: 360, size: 64, elements: !482)
!482 = !{!483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !481, file: !135, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !481, file: !135, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !481, file: !135, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !481, file: !135, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !481, file: !135, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !481, file: !135, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !481, file: !135, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !481, file: !135, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !481, file: !135, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !481, file: !135, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !481, file: !135, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !481, file: !135, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !481, file: !135, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !481, file: !135, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !481, file: !135, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !481, file: !135, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !481, file: !135, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !481, file: !135, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !481, file: !135, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !481, file: !135, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !481, file: !135, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !481, file: !135, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !481, file: !135, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !481, file: !135, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !481, file: !135, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !481, file: !135, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !481, file: !135, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !481, file: !135, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !481, file: !135, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !481, file: !135, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !478, file: !135, line: 3373, baseType: !514, size: 192)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !135, line: 402, size: 192, elements: !515)
!515 = !{!516, !517, !518}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !514, file: !135, line: 403, baseType: !481, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !514, file: !135, line: 404, baseType: !475, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !514, file: !135, line: 405, baseType: !475, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !478, file: !135, line: 3374, baseType: !520, size: 320)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !135, line: 1384, size: 320, elements: !521)
!521 = !{!522, !523}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !520, file: !135, line: 1385, baseType: !514, size: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !520, file: !135, line: 1386, baseType: !524, size: 128, offset: 192)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !525, line: 58, baseType: !526)
!525 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !525, line: 54, size: 128, elements: !527)
!527 = !{!528, !530}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !526, file: !525, line: 56, baseType: !529, size: 64)
!529 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !526, file: !525, line: 57, baseType: !531, size: 64, offset: 64)
!531 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !478, file: !135, line: 3375, baseType: !533, size: 256)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !135, line: 1397, size: 256, elements: !534)
!534 = !{!535, !536}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !533, file: !135, line: 1398, baseType: !514, size: 192)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !533, file: !135, line: 1399, baseType: !537, size: 64, offset: 192)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !539, line: 52, size: 256, elements: !540)
!539 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!540 = !{!541, !542, !543, !544, !545, !546, !547}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !538, file: !539, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !538, file: !539, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !538, file: !539, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !538, file: !539, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !538, file: !539, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !538, file: !539, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !538, file: !539, line: 62, baseType: !548, size: 192, offset: 64)
!548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 192, elements: !549)
!549 = !{!550}
!550 = !DISubrange(count: 3)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !478, file: !135, line: 3376, baseType: !552, size: 256)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !135, line: 1408, size: 256, elements: !553)
!553 = !{!554, !555}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !552, file: !135, line: 1409, baseType: !514, size: 192)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !552, file: !135, line: 1410, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !558, line: 27, size: 192, elements: !559)
!558 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!559 = !{!560, !561}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !558, line: 29, baseType: !524, size: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !557, file: !558, line: 30, baseType: !5, size: 32, offset: 128)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !478, file: !135, line: 3377, baseType: !563, size: 256)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !135, line: 1437, size: 256, elements: !564)
!564 = !{!565, !566}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !563, file: !135, line: 1438, baseType: !514, size: 192)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !563, file: !135, line: 1439, baseType: !475, size: 64, offset: 192)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !478, file: !135, line: 3378, baseType: !568, size: 256)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !135, line: 1418, size: 256, elements: !569)
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !568, file: !135, line: 1419, baseType: !514, size: 192)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !568, file: !135, line: 1420, baseType: !468, size: 32, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !568, file: !135, line: 1421, baseType: !573, size: 8, offset: 224)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 8, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 1)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !478, file: !135, line: 3379, baseType: !577, size: 320)
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !135, line: 1428, size: 320, elements: !578)
!578 = !{!579, !580, !581}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !577, file: !135, line: 1429, baseType: !514, size: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !577, file: !135, line: 1430, baseType: !475, size: 64, offset: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !577, file: !135, line: 1431, baseType: !475, size: 64, offset: 256)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !478, file: !135, line: 3380, baseType: !583, size: 320)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !135, line: 1460, size: 320, elements: !584)
!584 = !{!585, !586}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !583, file: !135, line: 1461, baseType: !514, size: 192)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !583, file: !135, line: 1462, baseType: !587, size: 128, offset: 192)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !588, line: 31, size: 128, elements: !589)
!588 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!589 = !{!590, !593, !594}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !587, file: !588, line: 32, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !467)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !587, file: !588, line: 33, baseType: !7, size: 32, offset: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !587, file: !588, line: 34, baseType: !7, size: 32, offset: 96)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !478, file: !135, line: 3381, baseType: !596, size: 384)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !135, line: 2507, size: 384, elements: !597)
!597 = !{!598, !599, !604, !605, !606}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !596, file: !135, line: 2508, baseType: !514, size: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !596, file: !135, line: 2509, baseType: !600, size: 32, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !601, line: 58, baseType: !602)
!601 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!602 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !603, line: 44, baseType: !7)
!603 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!604 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !596, file: !135, line: 2510, baseType: !7, size: 32, offset: 224)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !596, file: !135, line: 2511, baseType: !475, size: 64, offset: 256)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !596, file: !135, line: 2512, baseType: !475, size: 64, offset: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !478, file: !135, line: 3382, baseType: !608, size: 896)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !135, line: 2652, size: 896, elements: !609)
!609 = !{!610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !608, file: !135, line: 2653, baseType: !596, size: 384)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !608, file: !135, line: 2654, baseType: !475, size: 64, offset: 384)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !608, file: !135, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !608, file: !135, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !608, file: !135, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !608, file: !135, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !608, file: !135, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !608, file: !135, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !608, file: !135, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !608, file: !135, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !608, file: !135, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !608, file: !135, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !608, file: !135, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !608, file: !135, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !608, file: !135, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !608, file: !135, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !608, file: !135, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !608, file: !135, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !608, file: !135, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !608, file: !135, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !608, file: !135, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !608, file: !135, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !608, file: !135, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !608, file: !135, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !608, file: !135, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !608, file: !135, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !608, file: !135, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !608, file: !135, line: 2703, baseType: !7, size: 32, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !608, file: !135, line: 2705, baseType: !475, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !608, file: !135, line: 2706, baseType: !475, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !608, file: !135, line: 2707, baseType: !475, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !608, file: !135, line: 2708, baseType: !475, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !608, file: !135, line: 2711, baseType: !643, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !135, line: 2711, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !478, file: !135, line: 3383, baseType: !646, size: 960)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !135, line: 2756, size: 960, elements: !647)
!647 = !{!648, !649}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !646, file: !135, line: 2757, baseType: !608, size: 896)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !646, file: !135, line: 2758, baseType: !650, size: 64, offset: 896)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !476, line: 50, baseType: !651)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !653, line: 240, size: 384, elements: !654)
!653 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!654 = !{!655, !656, !657, !658, !659, !660, !661, !662, !663, !664, !665}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !652, file: !653, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !652, file: !653, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !652, file: !653, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !652, file: !653, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !652, file: !653, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !652, file: !653, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !652, file: !653, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !652, file: !653, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !652, file: !653, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !652, file: !653, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !652, file: !653, line: 321, baseType: !666, size: 320, offset: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !653, line: 315, size: 320, elements: !667)
!667 = !{!668, !1069, !1071, !1134, !1135}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !666, file: !653, line: 316, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 64, elements: !574)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !653, line: 183, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !653, line: 166, size: 64, elements: !672)
!672 = !{!673, !674, !675, !676, !677, !685, !686, !698, !701, !761, !762, !1046, !1059, !1066}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !671, file: !653, line: 168, baseType: !468, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !671, file: !653, line: 169, baseType: !7, size: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !671, file: !653, line: 170, baseType: !473, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !671, file: !653, line: 171, baseType: !650, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !671, file: !653, line: 172, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !476, line: 53, baseType: !679)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !653, line: 359, size: 128, elements: !681)
!681 = !{!682, !683}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !680, file: !653, line: 360, baseType: !468, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !680, file: !653, line: 361, baseType: !684, size: 64, offset: 64)
!684 = !DICompositeType(tag: DW_TAG_array_type, baseType: !650, size: 64, elements: !574)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !671, file: !653, line: 173, baseType: !5, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !671, file: !653, line: 174, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !653, line: 133, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !653, line: 115, size: 32, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696, !697}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !688, file: !653, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !688, file: !653, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !688, file: !653, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !688, file: !653, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !688, file: !653, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !688, file: !653, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !688, file: !653, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !688, file: !653, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !671, file: !653, line: 175, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !653, line: 175, flags: DIFlagFwdDecl)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !671, file: !653, line: 176, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !704, line: 75, size: 256, elements: !705)
!704 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!705 = !{!706, !720, !721, !722}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !704, line: 76, baseType: !707, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !704, line: 68, baseType: !709)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !704, line: 63, size: 320, elements: !710)
!710 = !{!711, !713, !714, !715}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !709, file: !704, line: 64, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !709, file: !704, line: 65, baseType: !712, size: 64, offset: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !709, file: !704, line: 66, baseType: !7, size: 32, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !709, file: !704, line: 67, baseType: !716, size: 128, offset: 192)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !717, size: 128, elements: !718)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !704, line: 29, baseType: !529)
!718 = !{!719}
!719 = !DISubrange(count: 2)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !703, file: !704, line: 77, baseType: !707, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !703, file: !704, line: 78, baseType: !7, size: 32, offset: 128)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !703, file: !704, line: 79, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !704, line: 49, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !704, line: 45, size: 832, elements: !726)
!726 = !{!727, !728, !729}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !725, file: !704, line: 46, baseType: !712, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !725, file: !704, line: 47, baseType: !702, size: 64, offset: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !725, file: !704, line: 48, baseType: !730, size: 704, offset: 128)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !731, line: 164, size: 704, elements: !732)
!731 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!732 = !{!733, !734, !744, !745, !746, !747, !748, !749, !753, !757, !758, !759, !760}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !730, file: !731, line: 166, baseType: !531, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !730, file: !731, line: 167, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !731, line: 157, size: 192, elements: !737)
!737 = !{!738, !739, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !736, file: !731, line: 159, baseType: !470, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !736, file: !731, line: 160, baseType: !735, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !736, file: !731, line: 161, baseType: !741, size: 32, offset: 128)
!741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 32, elements: !742)
!742 = !{!743}
!743 = !DISubrange(count: 4)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !730, file: !731, line: 168, baseType: !470, size: 64, offset: 128)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !730, file: !731, line: 169, baseType: !470, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !730, file: !731, line: 170, baseType: !470, size: 64, offset: 256)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !730, file: !731, line: 171, baseType: !531, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !730, file: !731, line: 172, baseType: !468, size: 32, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !730, file: !731, line: 176, baseType: !750, size: 64, offset: 448)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!735, !472, !531}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !730, file: !731, line: 177, baseType: !754, size: 64, offset: 512)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !472, !735}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !730, file: !731, line: 178, baseType: !472, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !730, file: !731, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !730, file: !731, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !730, file: !731, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !671, file: !653, line: 177, baseType: !475, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !671, file: !653, line: 178, baseType: !763, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !330, line: 217, size: 832, elements: !765)
!765 = !{!766, !1011, !1012, !1013, !1016, !1020, !1021, !1022, !1040, !1041, !1042, !1043, !1044, !1045}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !764, file: !330, line: 219, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !330, line: 151, baseType: !769)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !330, line: 151, size: 128, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !769, file: !330, line: 151, baseType: !772, size: 128)
!772 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !330, line: 150, baseType: !773)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !330, line: 150, size: 128, elements: !774)
!774 = !{!775, !776, !777}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !773, file: !330, line: 150, baseType: !7, size: 32)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !773, file: !330, line: 150, baseType: !7, size: 32, offset: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !773, file: !330, line: 150, baseType: !778, size: 64, offset: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 64, elements: !574)
!779 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !476, line: 108, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !330, line: 122, size: 512, elements: !782)
!782 = !{!783, !784, !785, !1003, !1004, !1005, !1006, !1007, !1008, !1009}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !781, file: !330, line: 124, baseType: !763, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !781, file: !330, line: 125, baseType: !763, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !781, file: !330, line: 131, baseType: !786, size: 64, offset: 128)
!786 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !330, line: 128, size: 64, elements: !787)
!787 = !{!788, !1002}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !786, file: !330, line: 129, baseType: !789, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !476, line: 66, baseType: !790)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !391, line: 143, size: 192, elements: !792)
!792 = !{!793, !1000, !1001}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !791, file: !391, line: 145, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !476, line: 69, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !391, line: 136, size: 192, elements: !797)
!797 = !{!798, !998, !999}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !796, file: !391, line: 137, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !476, line: 58, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !391, line: 737, size: 768, elements: !802)
!802 = !{!803, !820, !853, !859, !864, !869, !876, !882, !888, !893, !907, !912, !918, !923, !933, !938, !956, !963, !970, !976, !981, !987, !993}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !801, file: !391, line: 738, baseType: !804, size: 256)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !391, line: 271, size: 256, elements: !805)
!805 = !{!806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !804, file: !391, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !804, file: !391, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !804, file: !391, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !804, file: !391, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !804, file: !391, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !804, file: !391, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !804, file: !391, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !804, file: !391, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !804, file: !391, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !804, file: !391, line: 312, baseType: !7, size: 32, offset: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !804, file: !391, line: 316, baseType: !600, size: 32, offset: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !804, file: !391, line: 319, baseType: !7, size: 32, offset: 96)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !804, file: !391, line: 323, baseType: !763, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !804, file: !391, line: 327, baseType: !475, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !801, file: !391, line: 739, baseType: !821, size: 448)
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !391, line: 350, size: 448, elements: !822)
!822 = !{!823, !851}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !821, file: !391, line: 353, baseType: !824, size: 384)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !391, line: 333, size: 384, elements: !825)
!825 = !{!826, !827, !834}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !824, file: !391, line: 336, baseType: !804, size: 256)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !824, file: !391, line: 343, baseType: !828, size: 64, offset: 256)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !378, line: 37, size: 128, elements: !830)
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !829, file: !378, line: 39, baseType: !828, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !829, file: !378, line: 40, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !824, file: !391, line: 344, baseType: !835, size: 64, offset: 320)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !378, line: 45, size: 320, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !378, line: 47, baseType: !835, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !836, file: !378, line: 48, baseType: !840, size: 256, offset: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !135, line: 1883, size: 256, elements: !841)
!841 = !{!842, !844, !845, !850}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !840, file: !135, line: 1884, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !840, file: !135, line: 1885, baseType: !843, size: 64, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !840, file: !135, line: 1891, baseType: !846, size: 64, offset: 128)
!846 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !840, file: !135, line: 1891, size: 64, elements: !847)
!847 = !{!848, !849}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !846, file: !135, line: 1891, baseType: !799, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !846, file: !135, line: 1891, baseType: !475, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !840, file: !135, line: 1892, baseType: !833, size: 64, offset: 192)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !821, file: !391, line: 359, baseType: !852, size: 64, offset: 384)
!852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 64, elements: !574)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !801, file: !391, line: 740, baseType: !854, size: 512)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !391, line: 365, size: 512, elements: !855)
!855 = !{!856, !857, !858}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !854, file: !391, line: 368, baseType: !824, size: 384)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !854, file: !391, line: 373, baseType: !475, size: 64, offset: 384)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !854, file: !391, line: 374, baseType: !475, size: 64, offset: 448)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !801, file: !391, line: 741, baseType: !860, size: 576)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !391, line: 380, size: 576, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !860, file: !391, line: 383, baseType: !854, size: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !860, file: !391, line: 389, baseType: !852, size: 64, offset: 512)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !801, file: !391, line: 742, baseType: !865, size: 320)
!865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !391, line: 395, size: 320, elements: !866)
!866 = !{!867, !868}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !865, file: !391, line: 397, baseType: !804, size: 256)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !865, file: !391, line: 400, baseType: !789, size: 64, offset: 256)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !801, file: !391, line: 743, baseType: !870, size: 448)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !391, line: 406, size: 448, elements: !871)
!871 = !{!872, !873, !874, !875}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !870, file: !391, line: 408, baseType: !804, size: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !870, file: !391, line: 412, baseType: !475, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !870, file: !391, line: 420, baseType: !475, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !870, file: !391, line: 423, baseType: !789, size: 64, offset: 384)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !801, file: !391, line: 744, baseType: !877, size: 384)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !391, line: 429, size: 384, elements: !878)
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !877, file: !391, line: 431, baseType: !804, size: 256)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !877, file: !391, line: 434, baseType: !475, size: 64, offset: 256)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !877, file: !391, line: 437, baseType: !789, size: 64, offset: 320)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !801, file: !391, line: 745, baseType: !883, size: 384)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !391, line: 443, size: 384, elements: !884)
!884 = !{!885, !886, !887}
!885 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !883, file: !391, line: 445, baseType: !804, size: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !883, file: !391, line: 449, baseType: !475, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !883, file: !391, line: 453, baseType: !789, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !801, file: !391, line: 746, baseType: !889, size: 320)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !391, line: 459, size: 320, elements: !890)
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !889, file: !391, line: 461, baseType: !804, size: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !889, file: !391, line: 464, baseType: !475, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !801, file: !391, line: 747, baseType: !894, size: 768)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !391, line: 469, size: 768, elements: !895)
!895 = !{!896, !897, !898, !899, !900}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !894, file: !391, line: 471, baseType: !804, size: 256)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !894, file: !391, line: 474, baseType: !7, size: 32, offset: 256)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !894, file: !391, line: 475, baseType: !7, size: 32, offset: 288)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !894, file: !391, line: 478, baseType: !475, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !894, file: !391, line: 481, baseType: !901, size: 384, offset: 384)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 384, elements: !574)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !135, line: 1917, size: 384, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !902, file: !135, line: 1920, baseType: !840, size: 256)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !902, file: !135, line: 1921, baseType: !475, size: 64, offset: 256)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !902, file: !135, line: 1922, baseType: !600, size: 32, offset: 320)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !801, file: !391, line: 748, baseType: !908, size: 320)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !391, line: 487, size: 320, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !908, file: !391, line: 490, baseType: !804, size: 256)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !908, file: !391, line: 494, baseType: !468, size: 32, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !801, file: !391, line: 749, baseType: !913, size: 384)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !391, line: 500, size: 384, elements: !914)
!914 = !{!915, !916, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !913, file: !391, line: 502, baseType: !804, size: 256)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !913, file: !391, line: 506, baseType: !789, size: 64, offset: 256)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !913, file: !391, line: 510, baseType: !789, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !801, file: !391, line: 750, baseType: !919, size: 320)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !391, line: 529, size: 320, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !919, file: !391, line: 531, baseType: !804, size: 256)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !919, file: !391, line: 540, baseType: !789, size: 64, offset: 256)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !801, file: !391, line: 751, baseType: !924, size: 704)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !391, line: 546, size: 704, elements: !925)
!925 = !{!926, !927, !928, !929, !930, !931, !932}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !924, file: !391, line: 549, baseType: !854, size: 512)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !924, file: !391, line: 553, baseType: !473, size: 64, offset: 512)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !924, file: !391, line: 557, baseType: !467, size: 8, offset: 576)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !924, file: !391, line: 558, baseType: !467, size: 8, offset: 584)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !924, file: !391, line: 559, baseType: !467, size: 8, offset: 592)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !924, file: !391, line: 560, baseType: !467, size: 8, offset: 600)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !924, file: !391, line: 566, baseType: !852, size: 64, offset: 640)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !801, file: !391, line: 752, baseType: !934, size: 384)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !391, line: 571, size: 384, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !934, file: !391, line: 573, baseType: !865, size: 320)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !934, file: !391, line: 577, baseType: !475, size: 64, offset: 320)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !801, file: !391, line: 753, baseType: !939, size: 576)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !391, line: 600, size: 576, elements: !940)
!940 = !{!941, !942, !943, !946, !955}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !939, file: !391, line: 602, baseType: !865, size: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !939, file: !391, line: 605, baseType: !475, size: 64, offset: 320)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !939, file: !391, line: 609, baseType: !944, size: 64, offset: 384)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !945, line: 46, baseType: !529)
!945 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!946 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !939, file: !391, line: 612, baseType: !947, size: 64, offset: 448)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !391, line: 581, size: 320, elements: !949)
!949 = !{!950, !951, !952, !953, !954}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !948, file: !391, line: 583, baseType: !134, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !948, file: !391, line: 586, baseType: !475, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !948, file: !391, line: 589, baseType: !475, size: 64, offset: 128)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !948, file: !391, line: 592, baseType: !475, size: 64, offset: 192)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !948, file: !391, line: 595, baseType: !475, size: 64, offset: 256)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !939, file: !391, line: 616, baseType: !789, size: 64, offset: 512)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !801, file: !391, line: 754, baseType: !957, size: 512)
!957 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !391, line: 622, size: 512, elements: !958)
!958 = !{!959, !960, !961, !962}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !957, file: !391, line: 624, baseType: !865, size: 320)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !957, file: !391, line: 628, baseType: !475, size: 64, offset: 320)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !957, file: !391, line: 632, baseType: !475, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !957, file: !391, line: 636, baseType: !475, size: 64, offset: 448)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !801, file: !391, line: 755, baseType: !964, size: 704)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !391, line: 642, size: 704, elements: !965)
!965 = !{!966, !967, !968, !969}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !964, file: !391, line: 644, baseType: !957, size: 512)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !964, file: !391, line: 648, baseType: !475, size: 64, offset: 512)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !964, file: !391, line: 652, baseType: !475, size: 64, offset: 576)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !964, file: !391, line: 653, baseType: !475, size: 64, offset: 640)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !801, file: !391, line: 756, baseType: !971, size: 448)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !391, line: 663, size: 448, elements: !972)
!972 = !{!973, !974, !975}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !971, file: !391, line: 665, baseType: !865, size: 320)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !971, file: !391, line: 668, baseType: !475, size: 64, offset: 320)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !971, file: !391, line: 673, baseType: !475, size: 64, offset: 384)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !801, file: !391, line: 757, baseType: !977, size: 384)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !391, line: 694, size: 384, elements: !978)
!978 = !{!979, !980}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !977, file: !391, line: 696, baseType: !865, size: 320)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !977, file: !391, line: 699, baseType: !475, size: 64, offset: 320)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !801, file: !391, line: 758, baseType: !982, size: 384)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !391, line: 681, size: 384, elements: !983)
!983 = !{!984, !985, !986}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !982, file: !391, line: 683, baseType: !804, size: 256)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !982, file: !391, line: 686, baseType: !475, size: 64, offset: 256)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !982, file: !391, line: 689, baseType: !475, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !801, file: !391, line: 759, baseType: !988, size: 384)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !391, line: 707, size: 384, elements: !989)
!989 = !{!990, !991, !992}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !988, file: !391, line: 709, baseType: !804, size: 256)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !988, file: !391, line: 712, baseType: !475, size: 64, offset: 256)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !988, file: !391, line: 712, baseType: !475, size: 64, offset: 320)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !801, file: !391, line: 760, baseType: !994, size: 320)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !391, line: 718, size: 320, elements: !995)
!995 = !{!996, !997}
!996 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !994, file: !391, line: 720, baseType: !804, size: 256)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !994, file: !391, line: 723, baseType: !475, size: 64, offset: 256)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !796, file: !391, line: 138, baseType: !795, size: 64, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !796, file: !391, line: 139, baseType: !795, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !791, file: !391, line: 146, baseType: !794, size: 64, offset: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !791, file: !391, line: 152, baseType: !789, size: 64, offset: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !786, file: !330, line: 130, baseType: !650, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !781, file: !330, line: 134, baseType: !472, size: 64, offset: 192)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !781, file: !330, line: 137, baseType: !475, size: 64, offset: 256)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !781, file: !330, line: 138, baseType: !600, size: 32, offset: 320)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !781, file: !330, line: 142, baseType: !7, size: 32, offset: 352)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !330, line: 144, baseType: !468, size: 32, offset: 384)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !781, file: !330, line: 145, baseType: !468, size: 32, offset: 416)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !330, line: 146, baseType: !1010, size: 64, offset: 448)
!1010 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !330, line: 119, baseType: !531)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !764, file: !330, line: 220, baseType: !767, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !764, file: !330, line: 223, baseType: !472, size: 64, offset: 128)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !764, file: !330, line: 226, baseType: !1014, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !330, line: 185, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !764, file: !330, line: 229, baseType: !1017, size: 128, offset: 256)
!1017 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1018, size: 128, elements: !718)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !330, line: 229, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !764, file: !330, line: 232, baseType: !763, size: 64, offset: 384)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !764, file: !330, line: 233, baseType: !763, size: 64, offset: 448)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !764, file: !330, line: 238, baseType: !1023, size: 64, offset: 512)
!1023 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !330, line: 235, size: 64, elements: !1024)
!1024 = !{!1025, !1031}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1023, file: !330, line: 236, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !330, line: 273, size: 128, elements: !1028)
!1028 = !{!1029, !1030}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1027, file: !330, line: 275, baseType: !789, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1027, file: !330, line: 278, baseType: !789, size: 64, offset: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1023, file: !330, line: 237, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !330, line: 259, size: 320, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038, !1039}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1033, file: !330, line: 261, baseType: !650, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1033, file: !330, line: 262, baseType: !650, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1033, file: !330, line: 266, baseType: !650, size: 64, offset: 128)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1033, file: !330, line: 267, baseType: !650, size: 64, offset: 192)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1033, file: !330, line: 270, baseType: !468, size: 32, offset: 256)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !764, file: !330, line: 241, baseType: !1010, size: 64, offset: 576)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !764, file: !330, line: 244, baseType: !468, size: 32, offset: 640)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !764, file: !330, line: 247, baseType: !468, size: 32, offset: 672)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !764, file: !330, line: 250, baseType: !468, size: 32, offset: 704)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !764, file: !330, line: 253, baseType: !468, size: 32, offset: 736)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !330, line: 256, baseType: !468, size: 32, offset: 768)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !671, file: !653, line: 179, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !653, line: 150, baseType: !1049)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !653, line: 142, size: 320, elements: !1050)
!1050 = !{!1051, !1052, !1053, !1054, !1057, !1058}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !1049, file: !653, line: 144, baseType: !475, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1049, file: !653, line: 145, baseType: !650, size: 64, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1049, file: !653, line: 146, baseType: !650, size: 64, offset: 128)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !1049, file: !653, line: 147, baseType: !1055, size: 32, offset: 192)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !1056, line: 31, baseType: !468)
!1056 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1049, file: !653, line: 148, baseType: !7, size: 32, offset: 224)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !1049, file: !653, line: 149, baseType: !467, size: 8, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !671, file: !653, line: 180, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !653, line: 162, baseType: !1062)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !653, line: 159, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1062, file: !653, line: 160, baseType: !475, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1062, file: !653, line: 161, baseType: !531, size: 64, offset: 64)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !671, file: !653, line: 181, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !653, line: 181, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !666, file: !653, line: 317, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !531, size: 64, elements: !574)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !666, file: !653, line: 318, baseType: !1072, size: 320)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !653, line: 188, size: 320, elements: !1073)
!1073 = !{!1074, !1076, !1133}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !1072, file: !653, line: 190, baseType: !1075, size: 192)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !670, size: 192, elements: !549)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1072, file: !653, line: 193, baseType: !1077, size: 64, offset: 192)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !653, line: 206, size: 320, elements: !1079)
!1079 = !{!1080, !1118, !1119, !1120, !1132}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !1078, file: !653, line: 208, baseType: !1081, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !476, line: 62, baseType: !1083)
!1083 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !1084, line: 538, size: 256, elements: !1085)
!1084 = !DIFile(filename: "./output.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1085 = !{!1086, !1090, !1096, !1109}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1083, file: !1084, line: 539, baseType: !1087, size: 32)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "section_common", file: !1084, line: 482, size: 32, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1084, line: 484, baseType: !7, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "named", scope: !1083, file: !1084, line: 540, baseType: !1091, size: 192)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "named_section", file: !1084, line: 488, size: 192, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1091, file: !1084, line: 489, baseType: !1087, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1091, file: !1084, line: 492, baseType: !473, size: 64, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1091, file: !1084, line: 496, baseType: !475, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "unnamed", scope: !1083, file: !1084, line: 541, baseType: !1097, size: 256)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "unnamed_section", file: !1084, line: 504, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1107, !1108}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1097, file: !1084, line: 505, baseType: !1087, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1097, file: !1084, line: 509, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "unnamed_section_callback", file: !1084, line: 501, baseType: !1102)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{null, !1105}
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1097, file: !1084, line: 510, baseType: !1105, size: 64, offset: 128)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1097, file: !1084, line: 513, baseType: !1081, size: 64, offset: 192)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "noswitch", scope: !1083, file: !1084, line: 542, baseType: !1110, size: 128)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "noswitch_section", file: !1084, line: 530, size: 128, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1110, file: !1084, line: 531, baseType: !1087, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !1110, file: !1084, line: 534, baseType: !1114, size: 64, offset: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "noswitch_section_callback", file: !1084, line: 525, baseType: !1115)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!467, !475, !473, !529, !529}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !1078, file: !653, line: 211, baseType: !7, size: 32, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1078, file: !653, line: 214, baseType: !531, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1078, file: !653, line: 224, baseType: !1121, size: 64, offset: 192)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !653, line: 202, baseType: !1123)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !653, line: 202, size: 128, elements: !1124)
!1124 = !{!1125}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1123, file: !653, line: 202, baseType: !1126, size: 128)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !653, line: 200, baseType: !1127)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !653, line: 200, size: 128, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1127, file: !653, line: 200, baseType: !7, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1127, file: !653, line: 200, baseType: !7, size: 32, offset: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1127, file: !653, line: 200, baseType: !684, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !1078, file: !653, line: 234, baseType: !1121, size: 64, offset: 256)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1072, file: !653, line: 197, baseType: !531, size: 64, offset: 256)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !666, file: !653, line: 319, baseType: !538, size: 256)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !666, file: !653, line: 320, baseType: !557, size: 192)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !478, file: !135, line: 3384, baseType: !1137, size: 1472)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !135, line: 3114, size: 1472, elements: !1138)
!1138 = !{!1139, !1160, !1161, !1162, !1163}
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1137, file: !135, line: 3115, baseType: !1140, size: 1216)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !135, line: 2984, size: 1216, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1157, !1158, !1159}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1140, file: !135, line: 2985, baseType: !646, size: 960)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !1140, file: !135, line: 2986, baseType: !475, size: 64, offset: 960)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !1140, file: !135, line: 2987, baseType: !475, size: 64, offset: 1024)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !1140, file: !135, line: 2988, baseType: !475, size: 64, offset: 1088)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !1140, file: !135, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !1140, file: !135, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !1140, file: !135, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !1140, file: !135, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !1140, file: !135, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !1140, file: !135, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !1140, file: !135, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !1140, file: !135, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !1140, file: !135, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !1140, file: !135, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !1140, file: !135, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !1140, file: !135, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !1140, file: !135, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !1140, file: !135, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !1137, file: !135, line: 3117, baseType: !475, size: 64, offset: 1216)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !1137, file: !135, line: 3119, baseType: !475, size: 64, offset: 1280)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1137, file: !135, line: 3121, baseType: !475, size: 64, offset: 1344)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !1137, file: !135, line: 3123, baseType: !475, size: 64, offset: 1408)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !478, file: !135, line: 3385, baseType: !1165, size: 1088)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !135, line: 2874, size: 1088, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1165, file: !135, line: 2875, baseType: !646, size: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !1165, file: !135, line: 2876, baseType: !650, size: 64, offset: 960)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1165, file: !135, line: 2877, baseType: !1170, size: 64, offset: 1024)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !1172, line: 172, size: 128, elements: !1173)
!1172 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1173 = !{!1174, !1175, !1176, !1177, !1178, !1179, !1180}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !1171, file: !1172, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !1171, file: !1172, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !1171, file: !1172, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !1171, file: !1172, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !1171, file: !1172, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !1171, file: !1172, line: 195, baseType: !7, size: 32, offset: 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !1171, file: !1172, line: 199, baseType: !475, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !478, file: !135, line: 3386, baseType: !1140, size: 1216)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !478, file: !135, line: 3387, baseType: !1183, size: 1280)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !135, line: 3093, size: 1280, elements: !1184)
!1184 = !{!1185, !1186}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1183, file: !135, line: 3094, baseType: !1140, size: 1216)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1183, file: !135, line: 3095, baseType: !1170, size: 64, offset: 1216)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !478, file: !135, line: 3388, baseType: !1188, size: 1216)
!1188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !135, line: 2824, size: 1216, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193, !1194, !1195}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1188, file: !135, line: 2825, baseType: !608, size: 896)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1188, file: !135, line: 2827, baseType: !475, size: 64, offset: 896)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !1188, file: !135, line: 2828, baseType: !475, size: 64, offset: 960)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !1188, file: !135, line: 2829, baseType: !475, size: 64, offset: 1024)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !1188, file: !135, line: 2830, baseType: !475, size: 64, offset: 1088)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !1188, file: !135, line: 2831, baseType: !475, size: 64, offset: 1152)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !478, file: !135, line: 3389, baseType: !1197, size: 1024)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !135, line: 2850, size: 1024, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1197, file: !135, line: 2851, baseType: !646, size: 960)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !1197, file: !135, line: 2852, baseType: !468, size: 32, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !1197, file: !135, line: 2853, baseType: !468, size: 32, offset: 992)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !478, file: !135, line: 3390, baseType: !1203, size: 1024)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !135, line: 2857, size: 1024, elements: !1204)
!1204 = !{!1205, !1206}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1203, file: !135, line: 2858, baseType: !646, size: 960)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !1203, file: !135, line: 2859, baseType: !1170, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !478, file: !135, line: 3391, baseType: !1208, size: 960)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !135, line: 2862, size: 960, elements: !1209)
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1208, file: !135, line: 2863, baseType: !646, size: 960)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !478, file: !135, line: 3392, baseType: !1212, size: 1472)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !135, line: 3304, size: 1472, elements: !1213)
!1213 = !{!1214}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1212, file: !135, line: 3305, baseType: !1137, size: 1472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !478, file: !135, line: 3393, baseType: !1216, size: 1792)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !135, line: 3248, size: 1792, elements: !1217)
!1217 = !{!1218, !1219, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1216, file: !135, line: 3249, baseType: !1137, size: 1472)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !1216, file: !135, line: 3251, baseType: !1220, size: 64, offset: 1472)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !1222, line: 463, size: 1152, elements: !1223)
!1222 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1223 = !{!1224, !1227, !1258, !1259, !1372, !1375, !1376, !1377, !1378, !1379, !1380, !1404, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !1221, file: !1222, line: 464, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !1222, line: 464, flags: DIFlagFwdDecl)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !1221, file: !1222, line: 467, baseType: !1228, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !330, line: 374, size: 640, elements: !1230)
!1230 = !{!1231, !1233, !1234, !1247, !1248, !1249, !1250, !1251, !1252, !1254, !1256, !1257}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !1229, file: !330, line: 377, baseType: !1232, size: 64)
!1232 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !476, line: 111, baseType: !763)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !1229, file: !330, line: 378, baseType: !1232, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !1229, file: !330, line: 381, baseType: !1235, size: 64, offset: 128)
!1235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1236, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !330, line: 282, baseType: !1237)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !330, line: 282, size: 128, elements: !1238)
!1238 = !{!1239}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1237, file: !330, line: 282, baseType: !1240, size: 128)
!1240 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !330, line: 281, baseType: !1241)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !330, line: 281, size: 128, elements: !1242)
!1242 = !{!1243, !1244, !1245}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1241, file: !330, line: 281, baseType: !7, size: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1241, file: !330, line: 281, baseType: !7, size: 32, offset: 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1241, file: !330, line: 281, baseType: !1246, size: 64, offset: 64)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1232, size: 64, elements: !574)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !1229, file: !330, line: 384, baseType: !468, size: 32, offset: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !1229, file: !330, line: 387, baseType: !468, size: 32, offset: 224)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !1229, file: !330, line: 390, baseType: !468, size: 32, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !1229, file: !330, line: 394, baseType: !1235, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !1229, file: !330, line: 396, baseType: !329, size: 32, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !1229, file: !330, line: 399, baseType: !1253, size: 64, offset: 416)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !335, size: 64, elements: !718)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !1229, file: !330, line: 402, baseType: !1255, size: 64, offset: 480)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !718)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !1229, file: !330, line: 406, baseType: !468, size: 32, offset: 544)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !1229, file: !330, line: 409, baseType: !468, size: 32, offset: 576)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !1221, file: !1222, line: 470, baseType: !790, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !1221, file: !1222, line: 473, baseType: !1260, size: 64, offset: 192)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !1172, line: 39, size: 1152, elements: !1262)
!1262 = !{!1263, !1311, !1324, !1336, !1337, !1349, !1350, !1354, !1355, !1356, !1357, !1358}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !1261, file: !1172, line: 41, baseType: !1264, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !1265, line: 144, baseType: !1266)
!1265 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1267, size: 64)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !1265, line: 100, size: 896, elements: !1268)
!1268 = !{!1269, !1275, !1280, !1285, !1287, !1288, !1289, !1290, !1291, !1292, !1297, !1299, !1300, !1305, !1310}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !1267, file: !1265, line: 102, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !1265, line: 52, baseType: !1271)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{!1274, !1105}
!1274 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !1265, line: 47, baseType: !7)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !1267, file: !1265, line: 105, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !1265, line: 59, baseType: !1277)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!468, !1105, !1105}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !1267, file: !1265, line: 108, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !1265, line: 63, baseType: !1282)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DISubroutineType(types: !1284)
!1284 = !{null, !472}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !1267, file: !1265, line: 111, baseType: !1286, size: 64, offset: 192)
!1286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1267, file: !1265, line: 114, baseType: !944, size: 64, offset: 256)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !1267, file: !1265, line: 117, baseType: !944, size: 64, offset: 320)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !1267, file: !1265, line: 120, baseType: !944, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !1267, file: !1265, line: 124, baseType: !7, size: 32, offset: 448)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !1267, file: !1265, line: 128, baseType: !7, size: 32, offset: 480)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !1267, file: !1265, line: 131, baseType: !1293, size: 64, offset: 512)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !1265, line: 75, baseType: !1294)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DISubroutineType(types: !1296)
!1296 = !{!472, !944, !944}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !1267, file: !1265, line: 132, baseType: !1298, size: 64, offset: 576)
!1298 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !1265, line: 78, baseType: !1282)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !1267, file: !1265, line: 135, baseType: !472, size: 64, offset: 640)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !1267, file: !1265, line: 136, baseType: !1301, size: 64, offset: 704)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !1265, line: 82, baseType: !1302)
!1302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1303, size: 64)
!1303 = !DISubroutineType(types: !1304)
!1304 = !{!472, !472, !944, !944}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !1267, file: !1265, line: 137, baseType: !1306, size: 64, offset: 768)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !1265, line: 83, baseType: !1307)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{null, !472, !472}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !1267, file: !1265, line: 141, baseType: !7, size: 32, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !1261, file: !1172, line: 48, baseType: !1312, size: 64, offset: 64)
!1312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1313, size: 64)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !391, line: 35, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !391, line: 35, size: 128, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1314, file: !391, line: 35, baseType: !1317, size: 128)
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !391, line: 33, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !391, line: 33, size: 128, elements: !1319)
!1319 = !{!1320, !1321, !1322}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1318, file: !391, line: 33, baseType: !7, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1318, file: !391, line: 33, baseType: !7, size: 32, offset: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1318, file: !391, line: 33, baseType: !1323, size: 64, offset: 64)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !799, size: 64, elements: !574)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !1261, file: !1172, line: 51, baseType: !1325, size: 64, offset: 128)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !135, line: 183, baseType: !1327)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !135, line: 183, size: 128, elements: !1328)
!1328 = !{!1329}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1327, file: !135, line: 183, baseType: !1330, size: 128)
!1330 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !135, line: 182, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !135, line: 182, size: 128, elements: !1332)
!1332 = !{!1333, !1334, !1335}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1331, file: !135, line: 182, baseType: !7, size: 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1331, file: !135, line: 182, baseType: !7, size: 32, offset: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1331, file: !135, line: 182, baseType: !852, size: 64, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !1261, file: !1172, line: 54, baseType: !475, size: 64, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1261, file: !1172, line: 57, baseType: !1338, size: 128, offset: 256)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1339, line: 31, size: 128, elements: !1340)
!1339 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1340 = !{!1341, !1342, !1343, !1344, !1345, !1346, !1347}
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1338, file: !1339, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1338, file: !1339, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1338, file: !1339, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1338, file: !1339, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1338, file: !1339, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1338, file: !1339, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1338, file: !1339, line: 56, baseType: !1348, size: 64, offset: 64)
!1348 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !476, line: 47, baseType: !702)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !1261, file: !1172, line: 60, baseType: !1338, size: 128, offset: 384)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !1261, file: !1172, line: 64, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1353, line: 33, flags: DIFlagFwdDecl)
!1353 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !1261, file: !1172, line: 67, baseType: !475, size: 64, offset: 576)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !1261, file: !1172, line: 73, baseType: !1264, size: 64, offset: 640)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !1261, file: !1172, line: 77, baseType: !1348, size: 64, offset: 704)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !1261, file: !1172, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !1261, file: !1172, line: 82, baseType: !1359, size: 320, offset: 832)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !378, line: 62, size: 320, elements: !1360)
!1360 = !{!1361, !1367, !1368, !1369, !1370, !1371}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1359, file: !378, line: 63, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !378, line: 56, size: 128, elements: !1364)
!1364 = !{!1365, !1366}
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1363, file: !378, line: 57, baseType: !1362, size: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1363, file: !378, line: 58, baseType: !573, size: 8, offset: 64)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1359, file: !378, line: 64, baseType: !7, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1359, file: !378, line: 66, baseType: !7, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1359, file: !378, line: 68, baseType: !467, size: 8, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1359, file: !378, line: 70, baseType: !828, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1359, file: !378, line: 71, baseType: !835, size: 64, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !1221, file: !1222, line: 476, baseType: !1373, size: 64, offset: 256)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !1222, line: 476, flags: DIFlagFwdDecl)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !1221, file: !1222, line: 479, baseType: !1264, size: 64, offset: 320)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !1221, file: !1222, line: 484, baseType: !475, size: 64, offset: 384)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !1221, file: !1222, line: 488, baseType: !475, size: 64, offset: 448)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !1221, file: !1222, line: 493, baseType: !475, size: 64, offset: 512)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !1221, file: !1222, line: 496, baseType: !475, size: 64, offset: 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !1221, file: !1222, line: 501, baseType: !1381, size: 64, offset: 640)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !341, line: 2355, size: 576, elements: !1383)
!1383 = !{!1384, !1387, !1388, !1389, !1390, !1392, !1393, !1398, !1399, !1400, !1401, !1402, !1403}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1382, file: !341, line: 2356, baseType: !1385, size: 64)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !341, line: 2356, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1382, file: !341, line: 2357, baseType: !473, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1382, file: !341, line: 2358, baseType: !468, size: 32, offset: 128)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1382, file: !341, line: 2359, baseType: !468, size: 32, offset: 160)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1382, file: !341, line: 2360, baseType: !1391, size: 128, offset: 192)
!1391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !468, size: 128, elements: !742)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1382, file: !341, line: 2364, baseType: !468, size: 32, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1382, file: !341, line: 2367, baseType: !1394, size: 128, offset: 384)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !341, line: 2349, size: 128, elements: !1395)
!1395 = !{!1396, !1397}
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1394, file: !341, line: 2351, baseType: !650, size: 64)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1394, file: !341, line: 2352, baseType: !531, size: 64, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1382, file: !341, line: 2371, baseType: !340, size: 32, offset: 512)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1382, file: !341, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1382, file: !341, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1382, file: !341, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1382, file: !341, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1382, file: !341, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !1221, file: !1222, line: 504, baseType: !1405, size: 64, offset: 704)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1406 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !1222, line: 504, flags: DIFlagFwdDecl)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !1221, file: !1222, line: 507, baseType: !1264, size: 64, offset: 768)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !1221, file: !1222, line: 510, baseType: !468, size: 32, offset: 832)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !1221, file: !1222, line: 513, baseType: !468, size: 32, offset: 864)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !1221, file: !1222, line: 516, baseType: !600, size: 32, offset: 896)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !1221, file: !1222, line: 519, baseType: !600, size: 32, offset: 928)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !1221, file: !1222, line: 522, baseType: !7, size: 32, offset: 960)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !1221, file: !1222, line: 523, baseType: !7, size: 32, offset: 992)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !1221, file: !1222, line: 528, baseType: !473, size: 64, offset: 1024)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !1221, file: !1222, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !1221, file: !1222, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !1221, file: !1222, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !1221, file: !1222, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !1221, file: !1222, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !1221, file: !1222, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !1221, file: !1222, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !1221, file: !1222, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !1221, file: !1222, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !1221, file: !1222, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !1221, file: !1222, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !1221, file: !1222, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !1221, file: !1222, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !1221, file: !1222, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !1221, file: !1222, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !1221, file: !1222, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !1216, file: !135, line: 3254, baseType: !475, size: 64, offset: 1536)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !1216, file: !135, line: 3257, baseType: !475, size: 64, offset: 1600)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !1216, file: !135, line: 3258, baseType: !475, size: 64, offset: 1664)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !1216, file: !135, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !1216, file: !135, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !1216, file: !135, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !1216, file: !135, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !1216, file: !135, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !1216, file: !135, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !1216, file: !135, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !1216, file: !135, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !1216, file: !135, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !1216, file: !135, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !1216, file: !135, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !1216, file: !135, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !1216, file: !135, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !1216, file: !135, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !1216, file: !135, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !1216, file: !135, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !1216, file: !135, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !1216, file: !135, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !478, file: !135, line: 3394, baseType: !1453, size: 1344)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !135, line: 2279, size: 1344, elements: !1454)
!1454 = !{!1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1453, file: !135, line: 2280, baseType: !514, size: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1453, file: !135, line: 2281, baseType: !475, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1453, file: !135, line: 2282, baseType: !475, size: 64, offset: 256)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1453, file: !135, line: 2283, baseType: !475, size: 64, offset: 320)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1453, file: !135, line: 2284, baseType: !475, size: 64, offset: 384)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1453, file: !135, line: 2285, baseType: !7, size: 32, offset: 448)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1453, file: !135, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1453, file: !135, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1453, file: !135, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1453, file: !135, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1453, file: !135, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1453, file: !135, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1453, file: !135, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1453, file: !135, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1453, file: !135, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1453, file: !135, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1453, file: !135, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1453, file: !135, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1453, file: !135, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1453, file: !135, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1453, file: !135, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1453, file: !135, line: 2305, baseType: !7, size: 32, offset: 512)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1453, file: !135, line: 2306, baseType: !1055, size: 32, offset: 544)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1453, file: !135, line: 2307, baseType: !475, size: 64, offset: 576)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1453, file: !135, line: 2308, baseType: !475, size: 64, offset: 640)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1453, file: !135, line: 2314, baseType: !1481, size: 64, offset: 704)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !135, line: 2309, size: 64, elements: !1482)
!1482 = !{!1483, !1484, !1485}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1481, file: !135, line: 2310, baseType: !468, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1481, file: !135, line: 2311, baseType: !473, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1481, file: !135, line: 2312, baseType: !1486, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1487, size: 64)
!1487 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !135, line: 2277, flags: DIFlagFwdDecl)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1453, file: !135, line: 2315, baseType: !475, size: 64, offset: 768)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1453, file: !135, line: 2316, baseType: !475, size: 64, offset: 832)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1453, file: !135, line: 2317, baseType: !475, size: 64, offset: 896)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1453, file: !135, line: 2318, baseType: !475, size: 64, offset: 960)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1453, file: !135, line: 2319, baseType: !475, size: 64, offset: 1024)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1453, file: !135, line: 2320, baseType: !475, size: 64, offset: 1088)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1453, file: !135, line: 2321, baseType: !475, size: 64, offset: 1152)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1453, file: !135, line: 2322, baseType: !475, size: 64, offset: 1216)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1453, file: !135, line: 2324, baseType: !1497, size: 64, offset: 1280)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !135, line: 2324, flags: DIFlagFwdDecl)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !478, file: !135, line: 3395, baseType: !1500, size: 320)
!1500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !135, line: 1469, size: 320, elements: !1501)
!1501 = !{!1502, !1503, !1504}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1500, file: !135, line: 1470, baseType: !514, size: 192)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1500, file: !135, line: 1471, baseType: !475, size: 64, offset: 192)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1500, file: !135, line: 1472, baseType: !475, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !478, file: !135, line: 3396, baseType: !1506, size: 320)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !135, line: 1482, size: 320, elements: !1507)
!1507 = !{!1508, !1509, !1510}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1506, file: !135, line: 1483, baseType: !514, size: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1506, file: !135, line: 1484, baseType: !468, size: 32, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1506, file: !135, line: 1485, baseType: !852, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !478, file: !135, line: 3397, baseType: !1512, size: 384)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !135, line: 1829, size: 384, elements: !1513)
!1513 = !{!1514, !1515, !1516, !1517}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1512, file: !135, line: 1830, baseType: !514, size: 192)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1512, file: !135, line: 1831, baseType: !600, size: 32, offset: 192)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1512, file: !135, line: 1832, baseType: !475, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1512, file: !135, line: 1835, baseType: !852, size: 64, offset: 320)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !478, file: !135, line: 3398, baseType: !1519, size: 704)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !135, line: 1898, size: 704, elements: !1520)
!1520 = !{!1521, !1522, !1523, !1524, !1525, !1530}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1519, file: !135, line: 1899, baseType: !514, size: 192)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1519, file: !135, line: 1902, baseType: !475, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1519, file: !135, line: 1905, baseType: !799, size: 64, offset: 256)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1519, file: !135, line: 1908, baseType: !7, size: 32, offset: 320)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1519, file: !135, line: 1911, baseType: !1526, size: 64, offset: 384)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !1172, line: 117, size: 128, elements: !1528)
!1528 = !{!1529}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1527, file: !1172, line: 120, baseType: !1338, size: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1519, file: !135, line: 1914, baseType: !840, size: 256, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !478, file: !135, line: 3399, baseType: !1532, size: 704)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !135, line: 2008, size: 704, elements: !1533)
!1533 = !{!1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1532, file: !135, line: 2009, baseType: !514, size: 192)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1532, file: !135, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1532, file: !135, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1532, file: !135, line: 2014, baseType: !600, size: 32, offset: 224)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1532, file: !135, line: 2016, baseType: !475, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1532, file: !135, line: 2017, baseType: !1325, size: 64, offset: 320)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1532, file: !135, line: 2019, baseType: !475, size: 64, offset: 384)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1532, file: !135, line: 2020, baseType: !475, size: 64, offset: 448)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1532, file: !135, line: 2021, baseType: !475, size: 64, offset: 512)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1532, file: !135, line: 2022, baseType: !475, size: 64, offset: 576)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1532, file: !135, line: 2023, baseType: !475, size: 64, offset: 640)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !478, file: !135, line: 3400, baseType: !1546, size: 832)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !135, line: 2430, size: 832, elements: !1547)
!1547 = !{!1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1546, file: !135, line: 2431, baseType: !514, size: 192)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1546, file: !135, line: 2433, baseType: !475, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1546, file: !135, line: 2434, baseType: !475, size: 64, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1546, file: !135, line: 2435, baseType: !475, size: 64, offset: 320)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1546, file: !135, line: 2436, baseType: !475, size: 64, offset: 384)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1546, file: !135, line: 2437, baseType: !1325, size: 64, offset: 448)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1546, file: !135, line: 2438, baseType: !475, size: 64, offset: 512)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1546, file: !135, line: 2440, baseType: !475, size: 64, offset: 576)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1546, file: !135, line: 2441, baseType: !475, size: 64, offset: 640)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1546, file: !135, line: 2443, baseType: !1558, size: 128, offset: 704)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !135, line: 182, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !135, line: 182, size: 128, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1559, file: !135, line: 182, baseType: !1330, size: 128)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !478, file: !135, line: 3401, baseType: !1563, size: 320)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !135, line: 3327, size: 320, elements: !1564)
!1564 = !{!1565, !1566, !1573}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1563, file: !135, line: 3329, baseType: !514, size: 192)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1563, file: !135, line: 3330, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !135, line: 3320, size: 192, elements: !1569)
!1569 = !{!1570, !1571, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1568, file: !135, line: 3322, baseType: !1567, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1568, file: !135, line: 3323, baseType: !1567, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1568, file: !135, line: 3324, baseType: !475, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1563, file: !135, line: 3331, baseType: !1567, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !478, file: !135, line: 3402, baseType: !1575, size: 256)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !135, line: 1540, size: 256, elements: !1576)
!1576 = !{!1577, !1578}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1575, file: !135, line: 1541, baseType: !514, size: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1575, file: !135, line: 1542, baseType: !1579, size: 64, offset: 192)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !135, line: 1538, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !135, line: 1538, size: 192, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1581, file: !135, line: 1538, baseType: !1584, size: 192)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !135, line: 1537, baseType: !1585)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !135, line: 1537, size: 192, elements: !1586)
!1586 = !{!1587, !1588, !1589}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1585, file: !135, line: 1537, baseType: !7, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1585, file: !135, line: 1537, baseType: !7, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1585, file: !135, line: 1537, baseType: !1590, size: 128, offset: 64)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1591, size: 128, elements: !574)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !135, line: 1535, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !135, line: 1532, size: 128, elements: !1593)
!1593 = !{!1594, !1595}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1592, file: !135, line: 1533, baseType: !475, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1592, file: !135, line: 1534, baseType: !475, size: 64, offset: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !478, file: !135, line: 3403, baseType: !1597, size: 512)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !135, line: 1938, size: 512, elements: !1598)
!1598 = !{!1599, !1600, !1601, !1602, !1608, !1609, !1610}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1597, file: !135, line: 1939, baseType: !514, size: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1597, file: !135, line: 1940, baseType: !600, size: 32, offset: 192)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1597, file: !135, line: 1941, baseType: !345, size: 32, offset: 224)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1597, file: !135, line: 1946, baseType: !1603, size: 32, offset: 256)
!1603 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !135, line: 1942, size: 32, elements: !1604)
!1604 = !{!1605, !1606, !1607}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1603, file: !135, line: 1943, baseType: !363, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1603, file: !135, line: 1944, baseType: !370, size: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1603, file: !135, line: 1945, baseType: !134, size: 32)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1597, file: !135, line: 1950, baseType: !789, size: 64, offset: 320)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1597, file: !135, line: 1951, baseType: !789, size: 64, offset: 384)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1597, file: !135, line: 1953, baseType: !852, size: 64, offset: 448)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !478, file: !135, line: 3404, baseType: !1612, size: 1664)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !135, line: 3337, size: 1664, elements: !1613)
!1613 = !{!1614, !1615}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1612, file: !135, line: 3338, baseType: !514, size: 192)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1612, file: !135, line: 3341, baseType: !1616, size: 1472, offset: 192)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1617, line: 410, size: 1472, elements: !1618)
!1617 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1618 = !{!1619, !1620, !1621, !1622, !1623, !1624, !1625, !1626, !1627, !1629, !1630, !1631, !1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1687, !1688, !1689, !1690, !1691, !1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1616, file: !1617, line: 412, baseType: !468, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1616, file: !1617, line: 413, baseType: !468, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1616, file: !1617, line: 414, baseType: !468, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1616, file: !1617, line: 415, baseType: !468, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1616, file: !1617, line: 416, baseType: !468, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1616, file: !1617, line: 417, baseType: !468, size: 32, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1616, file: !1617, line: 418, baseType: !467, size: 8, offset: 192)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1616, file: !1617, line: 419, baseType: !467, size: 8, offset: 200)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1616, file: !1617, line: 420, baseType: !1628, size: 8, offset: 208)
!1628 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1616, file: !1617, line: 421, baseType: !1628, size: 8, offset: 216)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1616, file: !1617, line: 422, baseType: !1628, size: 8, offset: 224)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1616, file: !1617, line: 423, baseType: !1628, size: 8, offset: 232)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1616, file: !1617, line: 424, baseType: !1628, size: 8, offset: 240)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1616, file: !1617, line: 425, baseType: !1628, size: 8, offset: 248)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1616, file: !1617, line: 426, baseType: !1628, size: 8, offset: 256)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1616, file: !1617, line: 427, baseType: !1628, size: 8, offset: 264)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1616, file: !1617, line: 428, baseType: !1628, size: 8, offset: 272)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1616, file: !1617, line: 429, baseType: !1628, size: 8, offset: 280)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1616, file: !1617, line: 430, baseType: !1628, size: 8, offset: 288)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1616, file: !1617, line: 431, baseType: !1628, size: 8, offset: 296)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1616, file: !1617, line: 432, baseType: !1628, size: 8, offset: 304)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1616, file: !1617, line: 433, baseType: !1628, size: 8, offset: 312)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1616, file: !1617, line: 434, baseType: !1628, size: 8, offset: 320)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1616, file: !1617, line: 435, baseType: !1628, size: 8, offset: 328)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1616, file: !1617, line: 436, baseType: !1628, size: 8, offset: 336)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1616, file: !1617, line: 437, baseType: !1628, size: 8, offset: 344)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1616, file: !1617, line: 438, baseType: !1628, size: 8, offset: 352)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1616, file: !1617, line: 439, baseType: !1628, size: 8, offset: 360)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1616, file: !1617, line: 440, baseType: !1628, size: 8, offset: 368)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1616, file: !1617, line: 441, baseType: !1628, size: 8, offset: 376)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1616, file: !1617, line: 442, baseType: !1628, size: 8, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1616, file: !1617, line: 443, baseType: !1628, size: 8, offset: 392)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1616, file: !1617, line: 444, baseType: !1628, size: 8, offset: 400)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1616, file: !1617, line: 445, baseType: !1628, size: 8, offset: 408)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1616, file: !1617, line: 446, baseType: !1628, size: 8, offset: 416)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1616, file: !1617, line: 447, baseType: !1628, size: 8, offset: 424)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1616, file: !1617, line: 448, baseType: !1628, size: 8, offset: 432)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1616, file: !1617, line: 449, baseType: !1628, size: 8, offset: 440)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1616, file: !1617, line: 450, baseType: !1628, size: 8, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1616, file: !1617, line: 451, baseType: !1628, size: 8, offset: 456)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1616, file: !1617, line: 452, baseType: !1628, size: 8, offset: 464)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1616, file: !1617, line: 453, baseType: !1628, size: 8, offset: 472)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1616, file: !1617, line: 454, baseType: !1628, size: 8, offset: 480)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1616, file: !1617, line: 455, baseType: !1628, size: 8, offset: 488)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1616, file: !1617, line: 456, baseType: !1628, size: 8, offset: 496)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1616, file: !1617, line: 457, baseType: !1628, size: 8, offset: 504)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1616, file: !1617, line: 458, baseType: !1628, size: 8, offset: 512)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1616, file: !1617, line: 459, baseType: !1628, size: 8, offset: 520)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1616, file: !1617, line: 460, baseType: !1628, size: 8, offset: 528)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1616, file: !1617, line: 461, baseType: !1628, size: 8, offset: 536)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1616, file: !1617, line: 462, baseType: !1628, size: 8, offset: 544)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1616, file: !1617, line: 463, baseType: !1628, size: 8, offset: 552)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1616, file: !1617, line: 464, baseType: !1628, size: 8, offset: 560)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1616, file: !1617, line: 465, baseType: !1628, size: 8, offset: 568)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1616, file: !1617, line: 466, baseType: !1628, size: 8, offset: 576)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1616, file: !1617, line: 467, baseType: !1628, size: 8, offset: 584)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1616, file: !1617, line: 468, baseType: !1628, size: 8, offset: 592)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1616, file: !1617, line: 469, baseType: !1628, size: 8, offset: 600)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1616, file: !1617, line: 470, baseType: !1628, size: 8, offset: 608)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1616, file: !1617, line: 471, baseType: !1628, size: 8, offset: 616)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1616, file: !1617, line: 472, baseType: !1628, size: 8, offset: 624)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1616, file: !1617, line: 473, baseType: !1628, size: 8, offset: 632)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1616, file: !1617, line: 474, baseType: !1628, size: 8, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1616, file: !1617, line: 475, baseType: !1628, size: 8, offset: 648)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1616, file: !1617, line: 476, baseType: !1628, size: 8, offset: 656)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1616, file: !1617, line: 477, baseType: !1628, size: 8, offset: 664)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1616, file: !1617, line: 478, baseType: !1628, size: 8, offset: 672)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1616, file: !1617, line: 479, baseType: !1628, size: 8, offset: 680)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1616, file: !1617, line: 480, baseType: !1628, size: 8, offset: 688)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1616, file: !1617, line: 481, baseType: !1628, size: 8, offset: 696)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1616, file: !1617, line: 482, baseType: !1628, size: 8, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1616, file: !1617, line: 483, baseType: !1628, size: 8, offset: 712)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1616, file: !1617, line: 484, baseType: !1628, size: 8, offset: 720)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1616, file: !1617, line: 485, baseType: !1628, size: 8, offset: 728)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1616, file: !1617, line: 486, baseType: !1628, size: 8, offset: 736)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1616, file: !1617, line: 487, baseType: !1628, size: 8, offset: 744)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1616, file: !1617, line: 488, baseType: !1628, size: 8, offset: 752)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1616, file: !1617, line: 489, baseType: !1628, size: 8, offset: 760)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1616, file: !1617, line: 490, baseType: !1628, size: 8, offset: 768)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1616, file: !1617, line: 491, baseType: !1628, size: 8, offset: 776)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1616, file: !1617, line: 492, baseType: !1628, size: 8, offset: 784)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1616, file: !1617, line: 493, baseType: !1628, size: 8, offset: 792)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1616, file: !1617, line: 494, baseType: !1628, size: 8, offset: 800)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1616, file: !1617, line: 495, baseType: !1628, size: 8, offset: 808)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1616, file: !1617, line: 496, baseType: !1628, size: 8, offset: 816)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1616, file: !1617, line: 497, baseType: !1628, size: 8, offset: 824)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1616, file: !1617, line: 498, baseType: !1628, size: 8, offset: 832)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1616, file: !1617, line: 499, baseType: !1628, size: 8, offset: 840)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1616, file: !1617, line: 500, baseType: !1628, size: 8, offset: 848)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1616, file: !1617, line: 501, baseType: !1628, size: 8, offset: 856)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1616, file: !1617, line: 502, baseType: !1628, size: 8, offset: 864)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1616, file: !1617, line: 503, baseType: !1628, size: 8, offset: 872)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1616, file: !1617, line: 504, baseType: !1628, size: 8, offset: 880)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1616, file: !1617, line: 505, baseType: !1628, size: 8, offset: 888)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1616, file: !1617, line: 506, baseType: !1628, size: 8, offset: 896)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1616, file: !1617, line: 507, baseType: !1628, size: 8, offset: 904)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1616, file: !1617, line: 508, baseType: !1628, size: 8, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1616, file: !1617, line: 509, baseType: !1628, size: 8, offset: 920)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1616, file: !1617, line: 510, baseType: !1628, size: 8, offset: 928)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1616, file: !1617, line: 511, baseType: !1628, size: 8, offset: 936)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1616, file: !1617, line: 512, baseType: !1628, size: 8, offset: 944)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1616, file: !1617, line: 513, baseType: !1628, size: 8, offset: 952)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1616, file: !1617, line: 514, baseType: !1628, size: 8, offset: 960)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1616, file: !1617, line: 515, baseType: !1628, size: 8, offset: 968)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1616, file: !1617, line: 516, baseType: !1628, size: 8, offset: 976)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1616, file: !1617, line: 517, baseType: !1628, size: 8, offset: 984)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1616, file: !1617, line: 518, baseType: !1628, size: 8, offset: 992)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1616, file: !1617, line: 519, baseType: !1628, size: 8, offset: 1000)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1616, file: !1617, line: 520, baseType: !1628, size: 8, offset: 1008)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1616, file: !1617, line: 521, baseType: !1628, size: 8, offset: 1016)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1616, file: !1617, line: 522, baseType: !1628, size: 8, offset: 1024)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1616, file: !1617, line: 523, baseType: !1628, size: 8, offset: 1032)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1616, file: !1617, line: 524, baseType: !1628, size: 8, offset: 1040)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1616, file: !1617, line: 525, baseType: !1628, size: 8, offset: 1048)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1616, file: !1617, line: 526, baseType: !1628, size: 8, offset: 1056)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1616, file: !1617, line: 527, baseType: !1628, size: 8, offset: 1064)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1616, file: !1617, line: 528, baseType: !1628, size: 8, offset: 1072)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1616, file: !1617, line: 529, baseType: !1628, size: 8, offset: 1080)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1616, file: !1617, line: 530, baseType: !1628, size: 8, offset: 1088)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1616, file: !1617, line: 531, baseType: !1628, size: 8, offset: 1096)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1616, file: !1617, line: 532, baseType: !1628, size: 8, offset: 1104)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1616, file: !1617, line: 533, baseType: !1628, size: 8, offset: 1112)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1616, file: !1617, line: 534, baseType: !1628, size: 8, offset: 1120)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1616, file: !1617, line: 535, baseType: !1628, size: 8, offset: 1128)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1616, file: !1617, line: 536, baseType: !1628, size: 8, offset: 1136)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1616, file: !1617, line: 537, baseType: !1628, size: 8, offset: 1144)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1616, file: !1617, line: 538, baseType: !1628, size: 8, offset: 1152)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1616, file: !1617, line: 539, baseType: !1628, size: 8, offset: 1160)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1616, file: !1617, line: 540, baseType: !1628, size: 8, offset: 1168)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1616, file: !1617, line: 541, baseType: !1628, size: 8, offset: 1176)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1616, file: !1617, line: 542, baseType: !1628, size: 8, offset: 1184)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1616, file: !1617, line: 543, baseType: !1628, size: 8, offset: 1192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1616, file: !1617, line: 544, baseType: !1628, size: 8, offset: 1200)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1616, file: !1617, line: 545, baseType: !1628, size: 8, offset: 1208)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1616, file: !1617, line: 546, baseType: !1628, size: 8, offset: 1216)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1616, file: !1617, line: 547, baseType: !1628, size: 8, offset: 1224)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1616, file: !1617, line: 548, baseType: !1628, size: 8, offset: 1232)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1616, file: !1617, line: 549, baseType: !1628, size: 8, offset: 1240)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1616, file: !1617, line: 550, baseType: !1628, size: 8, offset: 1248)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1616, file: !1617, line: 551, baseType: !1628, size: 8, offset: 1256)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1616, file: !1617, line: 552, baseType: !1628, size: 8, offset: 1264)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1616, file: !1617, line: 553, baseType: !1628, size: 8, offset: 1272)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1616, file: !1617, line: 554, baseType: !1628, size: 8, offset: 1280)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1616, file: !1617, line: 555, baseType: !1628, size: 8, offset: 1288)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1616, file: !1617, line: 556, baseType: !1628, size: 8, offset: 1296)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1616, file: !1617, line: 557, baseType: !1628, size: 8, offset: 1304)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1616, file: !1617, line: 558, baseType: !1628, size: 8, offset: 1312)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1616, file: !1617, line: 559, baseType: !1628, size: 8, offset: 1320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1616, file: !1617, line: 560, baseType: !1628, size: 8, offset: 1328)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1616, file: !1617, line: 561, baseType: !1628, size: 8, offset: 1336)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1616, file: !1617, line: 562, baseType: !1628, size: 8, offset: 1344)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1616, file: !1617, line: 563, baseType: !1628, size: 8, offset: 1352)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1616, file: !1617, line: 564, baseType: !1628, size: 8, offset: 1360)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1616, file: !1617, line: 565, baseType: !1628, size: 8, offset: 1368)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1616, file: !1617, line: 566, baseType: !1628, size: 8, offset: 1376)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1616, file: !1617, line: 567, baseType: !1628, size: 8, offset: 1384)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1616, file: !1617, line: 568, baseType: !1628, size: 8, offset: 1392)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1616, file: !1617, line: 569, baseType: !1628, size: 8, offset: 1400)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1616, file: !1617, line: 570, baseType: !1628, size: 8, offset: 1408)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1616, file: !1617, line: 571, baseType: !1628, size: 8, offset: 1416)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1616, file: !1617, line: 572, baseType: !1628, size: 8, offset: 1424)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1616, file: !1617, line: 573, baseType: !1628, size: 8, offset: 1432)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1616, file: !1617, line: 574, baseType: !1628, size: 8, offset: 1440)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !478, file: !135, line: 3405, baseType: !1784, size: 384)
!1784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !135, line: 3352, size: 384, elements: !1785)
!1785 = !{!1786, !1787}
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1784, file: !135, line: 3353, baseType: !514, size: 192)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1784, file: !135, line: 3356, baseType: !1788, size: 192, offset: 192)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1617, line: 578, size: 192, elements: !1789)
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1788, file: !1617, line: 580, baseType: !468, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1788, file: !1617, line: 581, baseType: !468, size: 32, offset: 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1788, file: !1617, line: 582, baseType: !468, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1788, file: !1617, line: 583, baseType: !468, size: 32, offset: 96)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1788, file: !1617, line: 584, baseType: !467, size: 8, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1788, file: !1617, line: 585, baseType: !467, size: 8, offset: 136)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1788, file: !1617, line: 586, baseType: !467, size: 8, offset: 144)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1788, file: !1617, line: 587, baseType: !467, size: 8, offset: 152)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1788, file: !1617, line: 588, baseType: !467, size: 8, offset: 160)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1788, file: !1617, line: 589, baseType: !467, size: 8, offset: 168)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1788, file: !1617, line: 590, baseType: !467, size: 8, offset: 176)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !801)
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1804, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_heap", file: !135, line: 184, baseType: !1805)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_heap", file: !135, line: 184, size: 128, elements: !1806)
!1806 = !{!1807}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1805, file: !135, line: 184, baseType: !1330, size: 128)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !330, line: 283, baseType: !1810)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !330, line: 283, size: 128, elements: !1811)
!1811 = !{!1812}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1810, file: !330, line: 283, baseType: !1240, size: 128)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_operand_p", file: !378, line: 30, baseType: !1814)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_use_operand_t", file: !135, line: 1893, baseType: !840)
!1816 = !{!1817, !0, !1831, !1837, !1839, !1841, !1849, !1861, !1863, !1865, !1867, !1869}
!1817 = !DIGlobalVariableExpression(var: !1818, expr: !DIExpression())
!1818 = distinct !DIGlobalVariable(name: "gt_ggc_r_gt_tree_ssa_propagate_h", scope: !2, file: !1819, line: 24, type: !1820, isLocal: false, isDefinition: true)
!1819 = !DIFile(filename: "./gt-tree-ssa-propagate.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1820 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1821, size: 960, elements: !549)
!1821 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1822)
!1822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ggc_root_tab", file: !1823, line: 69, size: 320, elements: !1824)
!1823 = !DIFile(filename: "./ggc.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1824 = !{!1825, !1826, !1827, !1828, !1830}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1822, file: !1823, line: 70, baseType: !472, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "nelt", scope: !1822, file: !1823, line: 71, baseType: !944, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "stride", scope: !1822, file: !1823, line: 72, baseType: !944, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !1822, file: !1823, line: 73, baseType: !1829, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "gt_pointer_walker", file: !1823, line: 65, baseType: !1282)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "pchw", scope: !1822, file: !1823, line: 74, baseType: !1829, size: 64, offset: 256)
!1831 = !DIGlobalVariableExpression(var: !1832, expr: !DIExpression())
!1832 = distinct !DIGlobalVariable(name: "ssa_prop_visit_phi", scope: !2, file: !3, line: 120, type: !1833, isLocal: true, isDefinition: true)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_prop_visit_phi_fn", file: !385, line: 112, baseType: !1834)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!384, !799}
!1837 = !DIGlobalVariableExpression(var: !1838, expr: !DIExpression())
!1838 = distinct !DIGlobalVariable(name: "interesting_ssa_edges", scope: !2, file: !3, line: 149, type: !1312, isLocal: true, isDefinition: true)
!1839 = !DIGlobalVariableExpression(var: !1840, expr: !DIExpression())
!1840 = distinct !DIGlobalVariable(name: "varying_ssa_edges", scope: !2, file: !3, line: 165, type: !1312, isLocal: true, isDefinition: true)
!1841 = !DIGlobalVariableExpression(var: !1842, expr: !DIExpression())
!1842 = distinct !DIGlobalVariable(name: "prop_stats", scope: !2, file: !3, line: 863, type: !1843, isLocal: true, isDefinition: true)
!1843 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prop_stats_d", file: !3, line: 855, size: 256, elements: !1844)
!1844 = !{!1845, !1846, !1847, !1848}
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "num_const_prop", scope: !1843, file: !3, line: 857, baseType: !531, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "num_copy_prop", scope: !1843, file: !3, line: 858, baseType: !531, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "num_stmts_folded", scope: !1843, file: !3, line: 859, baseType: !531, size: 64, offset: 128)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "num_dce", scope: !1843, file: !3, line: 860, baseType: !531, size: 64, offset: 192)
!1849 = !DIGlobalVariableExpression(var: !1850, expr: !DIExpression())
!1850 = distinct !DIGlobalVariable(name: "executable_blocks", scope: !2, file: !3, line: 134, type: !1851, isLocal: true, isDefinition: true)
!1851 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1852, line: 45, baseType: !1853)
!1852 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1852, line: 39, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1859}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1854, file: !1852, line: 41, baseType: !466, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1854, file: !1852, line: 42, baseType: !7, size: 32, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1854, file: !1852, line: 43, baseType: !7, size: 32, offset: 96)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1854, file: !1852, line: 44, baseType: !1860, size: 64, offset: 128)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !529, size: 64, elements: !574)
!1861 = !DIGlobalVariableExpression(var: !1862, expr: !DIExpression())
!1862 = distinct !DIGlobalVariable(name: "bb_in_list", scope: !2, file: !3, line: 143, type: !1851, isLocal: true, isDefinition: true)
!1863 = !DIGlobalVariableExpression(var: !1864, expr: !DIExpression())
!1864 = distinct !DIGlobalVariable(name: "cfg_blocks", scope: !2, file: !3, line: 137, type: !1808, isLocal: true, isDefinition: true)
!1865 = !DIGlobalVariableExpression(var: !1866, expr: !DIExpression())
!1866 = distinct !DIGlobalVariable(name: "cfg_blocks_head", scope: !2, file: !3, line: 141, type: !468, isLocal: true, isDefinition: true)
!1867 = !DIGlobalVariableExpression(var: !1868, expr: !DIExpression())
!1868 = distinct !DIGlobalVariable(name: "cfg_blocks_tail", scope: !2, file: !3, line: 140, type: !468, isLocal: true, isDefinition: true)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(name: "cfg_blocks_num", scope: !2, file: !3, line: 139, type: !7, isLocal: true, isDefinition: true)
!1871 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_prop_visit_stmt_fn", file: !385, line: 111, baseType: !1872)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!384, !799, !1875, !833}
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!1876 = !{i32 2, !"Dwarf Version", i32 4}
!1877 = !{i32 2, !"Debug Info Version", i32 3}
!1878 = !{i32 1, !"wchar_size", i32 4}
!1879 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1880 = distinct !DISubprogram(name: "vprintf", scope: !1881, file: !1881, line: 39, type: !1882, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1881 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1882 = !DISubroutineType(types: !1883)
!1883 = !{!468, !1884, !1885}
!1884 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !473)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1886, file: !3, baseType: !7, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1886, file: !3, baseType: !7, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1886, file: !3, baseType: !472, size: 64, offset: 64)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1886, file: !3, baseType: !472, size: 64, offset: 128)
!1892 = !{!1893, !1894}
!1893 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1880, file: !1881, line: 39, type: !1884)
!1894 = !DILocalVariable(name: "__arg", arg: 2, scope: !1880, file: !1881, line: 39, type: !1885)
!1895 = !DILocation(line: 0, scope: !1880)
!1896 = !DILocation(line: 41, column: 20, scope: !1880)
!1897 = !DILocation(line: 41, column: 10, scope: !1880)
!1898 = !DILocation(line: 41, column: 3, scope: !1880)
!1899 = distinct !DISubprogram(name: "getchar", scope: !1881, file: !1881, line: 47, type: !1900, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!1900 = !DISubroutineType(types: !1901)
!1901 = !{!468}
!1902 = !{}
!1903 = !DILocation(line: 49, column: 16, scope: !1899)
!1904 = !DILocation(line: 49, column: 10, scope: !1899)
!1905 = !DILocation(line: 49, column: 3, scope: !1899)
!1906 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1881, file: !1881, line: 56, type: !1907, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1960)
!1907 = !DISubroutineType(types: !1908)
!1908 = !{!468, !1909}
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1911, line: 7, baseType: !1912)
!1911 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1913, line: 49, size: 1728, elements: !1914)
!1913 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1930, !1932, !1933, !1934, !1937, !1939, !1940, !1941, !1944, !1946, !1949, !1952, !1953, !1954, !1955, !1956}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1912, file: !1913, line: 51, baseType: !468, size: 32)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1912, file: !1913, line: 54, baseType: !470, size: 64, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1912, file: !1913, line: 55, baseType: !470, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1912, file: !1913, line: 56, baseType: !470, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1912, file: !1913, line: 57, baseType: !470, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1912, file: !1913, line: 58, baseType: !470, size: 64, offset: 320)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1912, file: !1913, line: 59, baseType: !470, size: 64, offset: 384)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1912, file: !1913, line: 60, baseType: !470, size: 64, offset: 448)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1912, file: !1913, line: 61, baseType: !470, size: 64, offset: 512)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1912, file: !1913, line: 64, baseType: !470, size: 64, offset: 576)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1912, file: !1913, line: 65, baseType: !470, size: 64, offset: 640)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1912, file: !1913, line: 66, baseType: !470, size: 64, offset: 704)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1912, file: !1913, line: 68, baseType: !1928, size: 64, offset: 768)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1913, line: 36, flags: DIFlagFwdDecl)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1912, file: !1913, line: 70, baseType: !1931, size: 64, offset: 832)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1912, file: !1913, line: 72, baseType: !468, size: 32, offset: 896)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1912, file: !1913, line: 73, baseType: !468, size: 32, offset: 928)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1912, file: !1913, line: 74, baseType: !1935, size: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1936, line: 152, baseType: !531)
!1936 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1912, file: !1913, line: 77, baseType: !1938, size: 16, offset: 1024)
!1938 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1912, file: !1913, line: 78, baseType: !1628, size: 8, offset: 1040)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1912, file: !1913, line: 79, baseType: !573, size: 8, offset: 1048)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1912, file: !1913, line: 81, baseType: !1942, size: 64, offset: 1088)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1913, line: 43, baseType: null)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1912, file: !1913, line: 89, baseType: !1945, size: 64, offset: 1152)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1936, line: 153, baseType: !531)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1912, file: !1913, line: 91, baseType: !1947, size: 64, offset: 1216)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1913, line: 37, flags: DIFlagFwdDecl)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1912, file: !1913, line: 92, baseType: !1950, size: 64, offset: 1280)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1913, line: 38, flags: DIFlagFwdDecl)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1912, file: !1913, line: 93, baseType: !1931, size: 64, offset: 1344)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1912, file: !1913, line: 94, baseType: !472, size: 64, offset: 1408)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1912, file: !1913, line: 95, baseType: !944, size: 64, offset: 1472)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1912, file: !1913, line: 96, baseType: !468, size: 32, offset: 1536)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1912, file: !1913, line: 98, baseType: !1957, size: 160, offset: 1568)
!1957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !471, size: 160, elements: !1958)
!1958 = !{!1959}
!1959 = !DISubrange(count: 20)
!1960 = !{!1961}
!1961 = !DILocalVariable(name: "__fp", arg: 1, scope: !1906, file: !1881, line: 56, type: !1909)
!1962 = !DILocation(line: 0, scope: !1906)
!1963 = !DILocation(line: 58, column: 10, scope: !1906)
!1964 = !DILocation(line: 58, column: 3, scope: !1906)
!1965 = distinct !DISubprogram(name: "getc_unlocked", scope: !1881, file: !1881, line: 66, type: !1907, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1966)
!1966 = !{!1967}
!1967 = !DILocalVariable(name: "__fp", arg: 1, scope: !1965, file: !1881, line: 66, type: !1909)
!1968 = !DILocation(line: 0, scope: !1965)
!1969 = !DILocation(line: 68, column: 10, scope: !1965)
!1970 = !DILocation(line: 68, column: 3, scope: !1965)
!1971 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1881, file: !1881, line: 73, type: !1900, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!1972 = !DILocation(line: 75, column: 10, scope: !1971)
!1973 = !DILocation(line: 75, column: 3, scope: !1971)
!1974 = distinct !DISubprogram(name: "putchar", scope: !1881, file: !1881, line: 82, type: !1975, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1977)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{!468, !468}
!1977 = !{!1978}
!1978 = !DILocalVariable(name: "__c", arg: 1, scope: !1974, file: !1881, line: 82, type: !468)
!1979 = !DILocation(line: 0, scope: !1974)
!1980 = !DILocation(line: 84, column: 21, scope: !1974)
!1981 = !DILocation(line: 84, column: 10, scope: !1974)
!1982 = !DILocation(line: 84, column: 3, scope: !1974)
!1983 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1881, file: !1881, line: 91, type: !1984, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1986)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!468, !468, !1909}
!1986 = !{!1987, !1988}
!1987 = !DILocalVariable(name: "__c", arg: 1, scope: !1983, file: !1881, line: 91, type: !468)
!1988 = !DILocalVariable(name: "__stream", arg: 2, scope: !1983, file: !1881, line: 91, type: !1909)
!1989 = !DILocation(line: 0, scope: !1983)
!1990 = !DILocation(line: 93, column: 10, scope: !1983)
!1991 = !DILocation(line: 93, column: 3, scope: !1983)
!1992 = distinct !DISubprogram(name: "putc_unlocked", scope: !1881, file: !1881, line: 101, type: !1984, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1993)
!1993 = !{!1994, !1995}
!1994 = !DILocalVariable(name: "__c", arg: 1, scope: !1992, file: !1881, line: 101, type: !468)
!1995 = !DILocalVariable(name: "__stream", arg: 2, scope: !1992, file: !1881, line: 101, type: !1909)
!1996 = !DILocation(line: 0, scope: !1992)
!1997 = !DILocation(line: 103, column: 10, scope: !1992)
!1998 = !DILocation(line: 103, column: 3, scope: !1992)
!1999 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1881, file: !1881, line: 108, type: !1975, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2000)
!2000 = !{!2001}
!2001 = !DILocalVariable(name: "__c", arg: 1, scope: !1999, file: !1881, line: 108, type: !468)
!2002 = !DILocation(line: 0, scope: !1999)
!2003 = !DILocation(line: 110, column: 10, scope: !1999)
!2004 = !DILocation(line: 110, column: 3, scope: !1999)
!2005 = distinct !DISubprogram(name: "getline", scope: !1881, file: !1881, line: 118, type: !2006, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!2008, !469, !2009, !1909}
!2008 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1936, line: 193, baseType: !531)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!2010 = !{!2011, !2012, !2013}
!2011 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2005, file: !1881, line: 118, type: !469)
!2012 = !DILocalVariable(name: "__n", arg: 2, scope: !2005, file: !1881, line: 118, type: !2009)
!2013 = !DILocalVariable(name: "__stream", arg: 3, scope: !2005, file: !1881, line: 118, type: !1909)
!2014 = !DILocation(line: 0, scope: !2005)
!2015 = !DILocation(line: 120, column: 10, scope: !2005)
!2016 = !DILocation(line: 120, column: 3, scope: !2005)
!2017 = distinct !DISubprogram(name: "feof_unlocked", scope: !1881, file: !1881, line: 128, type: !1907, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2018)
!2018 = !{!2019}
!2019 = !DILocalVariable(name: "__stream", arg: 1, scope: !2017, file: !1881, line: 128, type: !1909)
!2020 = !DILocation(line: 0, scope: !2017)
!2021 = !DILocation(line: 130, column: 10, scope: !2017)
!2022 = !DILocation(line: 130, column: 3, scope: !2017)
!2023 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1881, file: !1881, line: 135, type: !1907, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2024)
!2024 = !{!2025}
!2025 = !DILocalVariable(name: "__stream", arg: 1, scope: !2023, file: !1881, line: 135, type: !1909)
!2026 = !DILocation(line: 0, scope: !2023)
!2027 = !DILocation(line: 137, column: 10, scope: !2023)
!2028 = !DILocation(line: 137, column: 3, scope: !2023)
!2029 = distinct !DISubprogram(name: "tolower", scope: !2030, file: !2030, line: 207, type: !1975, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2031)
!2030 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2031 = !{!2032}
!2032 = !DILocalVariable(name: "__c", arg: 1, scope: !2029, file: !2030, line: 207, type: !468)
!2033 = !DILocation(line: 0, scope: !2029)
!2034 = !DILocation(line: 209, column: 22, scope: !2029)
!2035 = !DILocation(line: 209, column: 39, scope: !2029)
!2036 = !DILocation(line: 209, column: 38, scope: !2029)
!2037 = !DILocation(line: 209, column: 37, scope: !2029)
!2038 = !DILocation(line: 209, column: 10, scope: !2029)
!2039 = !DILocation(line: 209, column: 3, scope: !2029)
!2040 = distinct !DISubprogram(name: "toupper", scope: !2030, file: !2030, line: 213, type: !1975, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2041)
!2041 = !{!2042}
!2042 = !DILocalVariable(name: "__c", arg: 1, scope: !2040, file: !2030, line: 213, type: !468)
!2043 = !DILocation(line: 0, scope: !2040)
!2044 = !DILocation(line: 215, column: 22, scope: !2040)
!2045 = !DILocation(line: 215, column: 39, scope: !2040)
!2046 = !DILocation(line: 215, column: 38, scope: !2040)
!2047 = !DILocation(line: 215, column: 37, scope: !2040)
!2048 = !DILocation(line: 215, column: 10, scope: !2040)
!2049 = !DILocation(line: 215, column: 3, scope: !2040)
!2050 = distinct !DISubprogram(name: "atoi", scope: !2051, file: !2051, line: 361, type: !2052, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2054)
!2051 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2052 = !DISubroutineType(types: !2053)
!2053 = !{!468, !473}
!2054 = !{!2055}
!2055 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2050, file: !2051, line: 361, type: !473)
!2056 = !DILocation(line: 0, scope: !2050)
!2057 = !DILocation(line: 363, column: 16, scope: !2050)
!2058 = !DILocation(line: 363, column: 10, scope: !2050)
!2059 = !DILocation(line: 363, column: 3, scope: !2050)
!2060 = distinct !DISubprogram(name: "atol", scope: !2051, file: !2051, line: 366, type: !2061, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2063)
!2061 = !DISubroutineType(types: !2062)
!2062 = !{!531, !473}
!2063 = !{!2064}
!2064 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2060, file: !2051, line: 366, type: !473)
!2065 = !DILocation(line: 0, scope: !2060)
!2066 = !DILocation(line: 368, column: 10, scope: !2060)
!2067 = !DILocation(line: 368, column: 3, scope: !2060)
!2068 = distinct !DISubprogram(name: "atoll", scope: !2051, file: !2051, line: 373, type: !2069, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2072)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!2071, !473}
!2071 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2072 = !{!2073}
!2073 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2068, file: !2051, line: 373, type: !473)
!2074 = !DILocation(line: 0, scope: !2068)
!2075 = !DILocation(line: 375, column: 10, scope: !2068)
!2076 = !DILocation(line: 375, column: 3, scope: !2068)
!2077 = distinct !DISubprogram(name: "bsearch", scope: !2078, file: !2078, line: 20, type: !2079, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2082)
!2078 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!472, !1105, !1105, !944, !944, !2081}
!2081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2051, line: 808, baseType: !1277)
!2082 = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092}
!2083 = !DILocalVariable(name: "__key", arg: 1, scope: !2077, file: !2078, line: 20, type: !1105)
!2084 = !DILocalVariable(name: "__base", arg: 2, scope: !2077, file: !2078, line: 20, type: !1105)
!2085 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2077, file: !2078, line: 20, type: !944)
!2086 = !DILocalVariable(name: "__size", arg: 4, scope: !2077, file: !2078, line: 20, type: !944)
!2087 = !DILocalVariable(name: "__compar", arg: 5, scope: !2077, file: !2078, line: 21, type: !2081)
!2088 = !DILocalVariable(name: "__l", scope: !2077, file: !2078, line: 23, type: !944)
!2089 = !DILocalVariable(name: "__u", scope: !2077, file: !2078, line: 23, type: !944)
!2090 = !DILocalVariable(name: "__idx", scope: !2077, file: !2078, line: 23, type: !944)
!2091 = !DILocalVariable(name: "__p", scope: !2077, file: !2078, line: 24, type: !1105)
!2092 = !DILocalVariable(name: "__comparison", scope: !2077, file: !2078, line: 25, type: !468)
!2093 = !DILocation(line: 0, scope: !2077)
!2094 = !DILocation(line: 29, column: 3, scope: !2077)
!2095 = !DILocation(line: 27, column: 7, scope: !2077)
!2096 = !DILocation(line: 29, column: 14, scope: !2077)
!2097 = !DILocation(line: 31, column: 20, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2077, file: !2078, line: 30, column: 5)
!2099 = !DILocation(line: 31, column: 27, scope: !2098)
!2100 = !DILocation(line: 32, column: 56, scope: !2098)
!2101 = !DILocation(line: 32, column: 47, scope: !2098)
!2102 = !DILocation(line: 33, column: 22, scope: !2098)
!2103 = !DILocation(line: 34, column: 24, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !2078, line: 34, column: 11)
!2105 = !DILocation(line: 34, column: 11, scope: !2098)
!2106 = !DILocation(line: 36, column: 29, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2104, file: !2078, line: 36, column: 16)
!2108 = !DILocation(line: 36, column: 16, scope: !2104)
!2109 = !DILocation(line: 37, column: 14, scope: !2107)
!2110 = distinct !{!2110, !2094, !2111}
!2111 = !DILocation(line: 40, column: 5, scope: !2077)
!2112 = !DILocation(line: 43, column: 1, scope: !2077)
!2113 = distinct !DISubprogram(name: "atof", scope: !2114, file: !2114, line: 25, type: !2115, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2118)
!2114 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2115 = !DISubroutineType(types: !2116)
!2116 = !{!2117, !473}
!2117 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2118 = !{!2119}
!2119 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2113, file: !2114, line: 25, type: !473)
!2120 = !DILocation(line: 0, scope: !2113)
!2121 = !DILocation(line: 27, column: 10, scope: !2113)
!2122 = !DILocation(line: 27, column: 3, scope: !2113)
!2123 = distinct !DISubprogram(name: "strtoimax", scope: !2124, file: !2124, line: 324, type: !2125, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2131)
!2124 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!2127, !1884, !2130, !468}
!2127 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2128, line: 101, baseType: !2129)
!2128 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1936, line: 72, baseType: !531)
!2130 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !469)
!2131 = !{!2132, !2133, !2134}
!2132 = !DILocalVariable(name: "nptr", arg: 1, scope: !2123, file: !2124, line: 324, type: !1884)
!2133 = !DILocalVariable(name: "endptr", arg: 2, scope: !2123, file: !2124, line: 324, type: !2130)
!2134 = !DILocalVariable(name: "base", arg: 3, scope: !2123, file: !2124, line: 324, type: !468)
!2135 = !DILocation(line: 0, scope: !2123)
!2136 = !DILocation(line: 327, column: 10, scope: !2123)
!2137 = !DILocation(line: 327, column: 3, scope: !2123)
!2138 = distinct !DISubprogram(name: "strtoumax", scope: !2124, file: !2124, line: 336, type: !2139, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2143)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2141, !1884, !2130, !468}
!2141 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2128, line: 102, baseType: !2142)
!2142 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1936, line: 73, baseType: !529)
!2143 = !{!2144, !2145, !2146}
!2144 = !DILocalVariable(name: "nptr", arg: 1, scope: !2138, file: !2124, line: 336, type: !1884)
!2145 = !DILocalVariable(name: "endptr", arg: 2, scope: !2138, file: !2124, line: 336, type: !2130)
!2146 = !DILocalVariable(name: "base", arg: 3, scope: !2138, file: !2124, line: 336, type: !468)
!2147 = !DILocation(line: 0, scope: !2138)
!2148 = !DILocation(line: 339, column: 10, scope: !2138)
!2149 = !DILocation(line: 339, column: 3, scope: !2138)
!2150 = distinct !DISubprogram(name: "wcstoimax", scope: !2124, file: !2124, line: 348, type: !2151, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!2127, !2153, !2157, !468}
!2153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2154)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2124, line: 34, baseType: !468)
!2157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2158)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2160 = !{!2161, !2162, !2163}
!2161 = !DILocalVariable(name: "nptr", arg: 1, scope: !2150, file: !2124, line: 348, type: !2153)
!2162 = !DILocalVariable(name: "endptr", arg: 2, scope: !2150, file: !2124, line: 348, type: !2157)
!2163 = !DILocalVariable(name: "base", arg: 3, scope: !2150, file: !2124, line: 348, type: !468)
!2164 = !DILocation(line: 0, scope: !2150)
!2165 = !DILocation(line: 351, column: 10, scope: !2150)
!2166 = !DILocation(line: 351, column: 3, scope: !2150)
!2167 = distinct !DISubprogram(name: "wcstoumax", scope: !2124, file: !2124, line: 362, type: !2168, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!2141, !2153, !2157, !468}
!2170 = !{!2171, !2172, !2173}
!2171 = !DILocalVariable(name: "nptr", arg: 1, scope: !2167, file: !2124, line: 362, type: !2153)
!2172 = !DILocalVariable(name: "endptr", arg: 2, scope: !2167, file: !2124, line: 362, type: !2157)
!2173 = !DILocalVariable(name: "base", arg: 3, scope: !2167, file: !2124, line: 362, type: !468)
!2174 = !DILocation(line: 0, scope: !2167)
!2175 = !DILocation(line: 365, column: 10, scope: !2167)
!2176 = !DILocation(line: 365, column: 3, scope: !2167)
!2177 = distinct !DISubprogram(name: "stat", scope: !2178, file: !2178, line: 453, type: !2179, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!468, !473, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2183, line: 46, size: 1152, elements: !2184)
!2183 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2184 = !{!2185, !2187, !2189, !2191, !2193, !2195, !2197, !2198, !2199, !2200, !2202, !2204, !2212, !2213, !2214}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2182, file: !2183, line: 48, baseType: !2186, size: 64)
!2186 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1936, line: 145, baseType: !529)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2182, file: !2183, line: 53, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1936, line: 148, baseType: !529)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2182, file: !2183, line: 61, baseType: !2190, size: 64, offset: 128)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1936, line: 151, baseType: !529)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2182, file: !2183, line: 62, baseType: !2192, size: 32, offset: 192)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1936, line: 150, baseType: !7)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2182, file: !2183, line: 64, baseType: !2194, size: 32, offset: 224)
!2194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1936, line: 146, baseType: !7)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2182, file: !2183, line: 65, baseType: !2196, size: 32, offset: 256)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1936, line: 147, baseType: !7)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2182, file: !2183, line: 67, baseType: !468, size: 32, offset: 288)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2182, file: !2183, line: 69, baseType: !2186, size: 64, offset: 320)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2182, file: !2183, line: 74, baseType: !1935, size: 64, offset: 384)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2182, file: !2183, line: 78, baseType: !2201, size: 64, offset: 448)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1936, line: 174, baseType: !531)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2182, file: !2183, line: 80, baseType: !2203, size: 64, offset: 512)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1936, line: 179, baseType: !531)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2182, file: !2183, line: 91, baseType: !2205, size: 128, offset: 576)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2206, line: 10, size: 128, elements: !2207)
!2206 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2207 = !{!2208, !2210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2205, file: !2206, line: 12, baseType: !2209, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1936, line: 160, baseType: !531)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2205, file: !2206, line: 16, baseType: !2211, size: 64, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1936, line: 196, baseType: !531)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2182, file: !2183, line: 92, baseType: !2205, size: 128, offset: 704)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2182, file: !2183, line: 93, baseType: !2205, size: 128, offset: 832)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2182, file: !2183, line: 106, baseType: !2215, size: 192, offset: 960)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2211, size: 192, elements: !549)
!2216 = !{!2217, !2218}
!2217 = !DILocalVariable(name: "__path", arg: 1, scope: !2177, file: !2178, line: 453, type: !473)
!2218 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2177, file: !2178, line: 453, type: !2181)
!2219 = !DILocation(line: 0, scope: !2177)
!2220 = !DILocation(line: 455, column: 10, scope: !2177)
!2221 = !DILocation(line: 455, column: 3, scope: !2177)
!2222 = distinct !DISubprogram(name: "lstat", scope: !2178, file: !2178, line: 460, type: !2179, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2223)
!2223 = !{!2224, !2225}
!2224 = !DILocalVariable(name: "__path", arg: 1, scope: !2222, file: !2178, line: 460, type: !473)
!2225 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2222, file: !2178, line: 460, type: !2181)
!2226 = !DILocation(line: 0, scope: !2222)
!2227 = !DILocation(line: 462, column: 10, scope: !2222)
!2228 = !DILocation(line: 462, column: 3, scope: !2222)
!2229 = distinct !DISubprogram(name: "fstat", scope: !2178, file: !2178, line: 467, type: !2230, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!468, !468, !2181}
!2232 = !{!2233, !2234}
!2233 = !DILocalVariable(name: "__fd", arg: 1, scope: !2229, file: !2178, line: 467, type: !468)
!2234 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2229, file: !2178, line: 467, type: !2181)
!2235 = !DILocation(line: 0, scope: !2229)
!2236 = !DILocation(line: 469, column: 10, scope: !2229)
!2237 = !DILocation(line: 469, column: 3, scope: !2229)
!2238 = distinct !DISubprogram(name: "fstatat", scope: !2178, file: !2178, line: 474, type: !2239, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!468, !468, !473, !2181, !468}
!2241 = !{!2242, !2243, !2244, !2245}
!2242 = !DILocalVariable(name: "__fd", arg: 1, scope: !2238, file: !2178, line: 474, type: !468)
!2243 = !DILocalVariable(name: "__filename", arg: 2, scope: !2238, file: !2178, line: 474, type: !473)
!2244 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2238, file: !2178, line: 474, type: !2181)
!2245 = !DILocalVariable(name: "__flag", arg: 4, scope: !2238, file: !2178, line: 474, type: !468)
!2246 = !DILocation(line: 0, scope: !2238)
!2247 = !DILocation(line: 477, column: 10, scope: !2238)
!2248 = !DILocation(line: 477, column: 3, scope: !2238)
!2249 = distinct !DISubprogram(name: "mknod", scope: !2178, file: !2178, line: 483, type: !2250, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2252)
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!468, !473, !2192, !2186}
!2252 = !{!2253, !2254, !2255}
!2253 = !DILocalVariable(name: "__path", arg: 1, scope: !2249, file: !2178, line: 483, type: !473)
!2254 = !DILocalVariable(name: "__mode", arg: 2, scope: !2249, file: !2178, line: 483, type: !2192)
!2255 = !DILocalVariable(name: "__dev", arg: 3, scope: !2249, file: !2178, line: 483, type: !2186)
!2256 = !DILocation(line: 0, scope: !2249)
!2257 = !DILocation(line: 485, column: 10, scope: !2249)
!2258 = !DILocation(line: 485, column: 3, scope: !2249)
!2259 = distinct !DISubprogram(name: "mknodat", scope: !2178, file: !2178, line: 491, type: !2260, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2262)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!468, !468, !473, !2192, !2186}
!2262 = !{!2263, !2264, !2265, !2266}
!2263 = !DILocalVariable(name: "__fd", arg: 1, scope: !2259, file: !2178, line: 491, type: !468)
!2264 = !DILocalVariable(name: "__path", arg: 2, scope: !2259, file: !2178, line: 491, type: !473)
!2265 = !DILocalVariable(name: "__mode", arg: 3, scope: !2259, file: !2178, line: 491, type: !2192)
!2266 = !DILocalVariable(name: "__dev", arg: 4, scope: !2259, file: !2178, line: 491, type: !2186)
!2267 = !DILocation(line: 0, scope: !2259)
!2268 = !DILocation(line: 494, column: 10, scope: !2259)
!2269 = !DILocation(line: 494, column: 3, scope: !2259)
!2270 = distinct !DISubprogram(name: "stat64", scope: !2178, file: !2178, line: 502, type: !2271, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2271 = !DISubroutineType(types: !2272)
!2272 = !{!468, !473, !2273}
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2183, line: 119, size: 1152, elements: !2275)
!2275 = !{!2276, !2277, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2289, !2290, !2291, !2292}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2274, file: !2183, line: 121, baseType: !2186, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2274, file: !2183, line: 123, baseType: !2278, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1936, line: 149, baseType: !529)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2274, file: !2183, line: 124, baseType: !2190, size: 64, offset: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2274, file: !2183, line: 125, baseType: !2192, size: 32, offset: 192)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2274, file: !2183, line: 132, baseType: !2194, size: 32, offset: 224)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2274, file: !2183, line: 133, baseType: !2196, size: 32, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2274, file: !2183, line: 135, baseType: !468, size: 32, offset: 288)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2274, file: !2183, line: 136, baseType: !2186, size: 64, offset: 320)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2274, file: !2183, line: 137, baseType: !1935, size: 64, offset: 384)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2274, file: !2183, line: 143, baseType: !2201, size: 64, offset: 448)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2274, file: !2183, line: 144, baseType: !2288, size: 64, offset: 512)
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1936, line: 180, baseType: !531)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2274, file: !2183, line: 152, baseType: !2205, size: 128, offset: 576)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2274, file: !2183, line: 153, baseType: !2205, size: 128, offset: 704)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2274, file: !2183, line: 154, baseType: !2205, size: 128, offset: 832)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2274, file: !2183, line: 164, baseType: !2215, size: 192, offset: 960)
!2293 = !{!2294, !2295}
!2294 = !DILocalVariable(name: "__path", arg: 1, scope: !2270, file: !2178, line: 502, type: !473)
!2295 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2270, file: !2178, line: 502, type: !2273)
!2296 = !DILocation(line: 0, scope: !2270)
!2297 = !DILocation(line: 504, column: 10, scope: !2270)
!2298 = !DILocation(line: 504, column: 3, scope: !2270)
!2299 = distinct !DISubprogram(name: "lstat64", scope: !2178, file: !2178, line: 509, type: !2271, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2300)
!2300 = !{!2301, !2302}
!2301 = !DILocalVariable(name: "__path", arg: 1, scope: !2299, file: !2178, line: 509, type: !473)
!2302 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2299, file: !2178, line: 509, type: !2273)
!2303 = !DILocation(line: 0, scope: !2299)
!2304 = !DILocation(line: 511, column: 10, scope: !2299)
!2305 = !DILocation(line: 511, column: 3, scope: !2299)
!2306 = distinct !DISubprogram(name: "fstat64", scope: !2178, file: !2178, line: 516, type: !2307, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{!468, !468, !2273}
!2309 = !{!2310, !2311}
!2310 = !DILocalVariable(name: "__fd", arg: 1, scope: !2306, file: !2178, line: 516, type: !468)
!2311 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2306, file: !2178, line: 516, type: !2273)
!2312 = !DILocation(line: 0, scope: !2306)
!2313 = !DILocation(line: 518, column: 10, scope: !2306)
!2314 = !DILocation(line: 518, column: 3, scope: !2306)
!2315 = distinct !DISubprogram(name: "fstatat64", scope: !2178, file: !2178, line: 523, type: !2316, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!468, !468, !473, !2273, !468}
!2318 = !{!2319, !2320, !2321, !2322}
!2319 = !DILocalVariable(name: "__fd", arg: 1, scope: !2315, file: !2178, line: 523, type: !468)
!2320 = !DILocalVariable(name: "__filename", arg: 2, scope: !2315, file: !2178, line: 523, type: !473)
!2321 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2315, file: !2178, line: 523, type: !2273)
!2322 = !DILocalVariable(name: "__flag", arg: 4, scope: !2315, file: !2178, line: 523, type: !468)
!2323 = !DILocation(line: 0, scope: !2315)
!2324 = !DILocation(line: 526, column: 10, scope: !2315)
!2325 = !DILocation(line: 526, column: 3, scope: !2315)
!2326 = distinct !DISubprogram(name: "valid_gimple_rhs_p", scope: !3, file: !3, line: 557, type: !2327, scopeLine: 558, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2329)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!467, !475}
!2329 = !{!2330, !2331, !2332}
!2330 = !DILocalVariable(name: "expr", arg: 1, scope: !2326, file: !3, line: 557, type: !475)
!2331 = !DILocalVariable(name: "code", scope: !2326, file: !3, line: 559, type: !134)
!2332 = !DILocalVariable(name: "t", scope: !2333, file: !3, line: 589, type: !475)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 588, column: 11)
!2334 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 586, column: 9)
!2335 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 562, column: 5)
!2336 = !DILocation(line: 0, scope: !2326)
!2337 = !DILocation(line: 559, column: 25, scope: !2326)
!2338 = !DILocation(line: 561, column: 11, scope: !2326)
!2339 = !DILocation(line: 561, column: 3, scope: !2326)
!2340 = !DILocation(line: 564, column: 12, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 564, column: 11)
!2342 = !DILocation(line: 564, column: 11, scope: !2335)
!2343 = !DILocation(line: 574, column: 27, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 574, column: 11)
!2345 = !DILocation(line: 574, column: 12, scope: !2344)
!2346 = !DILocation(line: 575, column: 4, scope: !2344)
!2347 = !DILocation(line: 575, column: 23, scope: !2344)
!2348 = !DILocation(line: 575, column: 8, scope: !2344)
!2349 = !DILocation(line: 574, column: 11, scope: !2335)
!2350 = !DILocation(line: 580, column: 27, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 580, column: 11)
!2352 = !DILocation(line: 580, column: 12, scope: !2351)
!2353 = !DILocation(line: 580, column: 11, scope: !2335)
!2354 = !DILocation(line: 585, column: 7, scope: !2335)
!2355 = !DILocation(line: 590, column: 10, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 590, column: 10)
!2357 = !DILocation(line: 590, column: 10, scope: !2333)
!2358 = !DILocation(line: 593, column: 13, scope: !2333)
!2359 = !DILocation(line: 0, scope: !2333)
!2360 = !DILocation(line: 593, column: 20, scope: !2333)
!2361 = !DILocation(line: 596, column: 22, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 596, column: 21)
!2363 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 594, column: 15)
!2364 = !DILocation(line: 596, column: 36, scope: !2362)
!2365 = !DILocation(line: 597, column: 22, scope: !2362)
!2366 = !DILocation(line: 597, column: 39, scope: !2362)
!2367 = !DILocation(line: 598, column: 21, scope: !2362)
!2368 = !DILocation(line: 598, column: 40, scope: !2362)
!2369 = !DILocation(line: 598, column: 25, scope: !2362)
!2370 = !DILocation(line: 596, column: 21, scope: !2363)
!2371 = distinct !{!2371, !2358, !2372}
!2372 = !DILocation(line: 601, column: 15, scope: !2333)
!2373 = !DILocation(line: 602, column: 18, scope: !2374)
!2374 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 602, column: 17)
!2375 = !DILocation(line: 0, scope: !2334)
!2376 = !DILocation(line: 608, column: 24, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 608, column: 8)
!2378 = !DILocation(line: 608, column: 9, scope: !2377)
!2379 = !DILocation(line: 608, column: 8, scope: !2334)
!2380 = !DILocation(line: 615, column: 24, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2334, file: !3, line: 615, column: 8)
!2382 = !DILocation(line: 615, column: 9, scope: !2381)
!2383 = !DILocation(line: 616, column: 8, scope: !2381)
!2384 = !DILocation(line: 616, column: 27, scope: !2381)
!2385 = !DILocation(line: 616, column: 12, scope: !2381)
!2386 = !DILocation(line: 615, column: 8, scope: !2334)
!2387 = !DILocation(line: 629, column: 16, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2335, file: !3, line: 629, column: 11)
!2389 = !DILocation(line: 629, column: 11, scope: !2335)
!2390 = !DILocation(line: 637, column: 3, scope: !2326)
!2391 = !DILocation(line: 638, column: 1, scope: !2326)
!2392 = distinct !DISubprogram(name: "handled_component_p", scope: !135, file: !135, line: 4551, type: !2393, scopeLine: 4552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2398)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!467, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_tree", file: !476, line: 59, baseType: !2396)
!2396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2397, size: 64)
!2397 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!2398 = !{!2399}
!2399 = !DILocalVariable(name: "t", arg: 1, scope: !2392, file: !135, line: 4551, type: !2395)
!2400 = !DILocation(line: 0, scope: !2392)
!2401 = !DILocation(line: 4553, column: 11, scope: !2392)
!2402 = !DILocation(line: 4553, column: 3, scope: !2392)
!2403 = !DILocation(line: 4565, column: 7, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2392, file: !135, line: 4554, column: 5)
!2405 = !DILocation(line: 0, scope: !2404)
!2406 = !DILocation(line: 4567, column: 1, scope: !2392)
!2407 = distinct !DISubprogram(name: "valid_gimple_call_p", scope: !3, file: !3, line: 646, type: !2327, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2408)
!2408 = !{!2409, !2410, !2411}
!2409 = !DILocalVariable(name: "expr", arg: 1, scope: !2407, file: !3, line: 646, type: !475)
!2410 = !DILocalVariable(name: "i", scope: !2407, file: !3, line: 648, type: !7)
!2411 = !DILocalVariable(name: "nargs", scope: !2407, file: !3, line: 648, type: !7)
!2412 = !DILocation(line: 0, scope: !2407)
!2413 = !DILocation(line: 650, column: 7, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 650, column: 7)
!2415 = !DILocation(line: 650, column: 24, scope: !2414)
!2416 = !DILocation(line: 650, column: 7, scope: !2407)
!2417 = !DILocation(line: 653, column: 11, scope: !2407)
!2418 = !DILocation(line: 654, column: 8, scope: !2419)
!2419 = distinct !DILexicalBlock(scope: !2407, file: !3, line: 654, column: 3)
!2420 = !DILocation(line: 654, column: 17, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 654, column: 3)
!2422 = !DILocation(line: 0, scope: !2419)
!2423 = !DILocation(line: 654, column: 3, scope: !2419)
!2424 = !DILocation(line: 655, column: 30, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 655, column: 9)
!2426 = !DILocation(line: 655, column: 11, scope: !2425)
!2427 = !DILocation(line: 655, column: 9, scope: !2421)
!2428 = !DILocation(line: 654, column: 27, scope: !2421)
!2429 = !DILocation(line: 654, column: 3, scope: !2421)
!2430 = distinct !{!2430, !2423, !2431}
!2431 = !DILocation(line: 656, column: 14, scope: !2419)
!2432 = !DILocation(line: 659, column: 1, scope: !2407)
!2433 = distinct !DISubprogram(name: "move_ssa_defining_stmt_for_defs", scope: !3, file: !3, line: 666, type: !2434, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !799, !799}
!2436 = !{!2437, !2438, !2439, !2440}
!2437 = !DILocalVariable(name: "new_stmt", arg: 1, scope: !2433, file: !3, line: 666, type: !799)
!2438 = !DILocalVariable(name: "old_stmt", arg: 2, scope: !2433, file: !3, line: 666, type: !799)
!2439 = !DILocalVariable(name: "var", scope: !2433, file: !3, line: 668, type: !475)
!2440 = !DILocalVariable(name: "iter", scope: !2433, file: !3, line: 669, type: !2441)
!2441 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_op_iter", file: !378, line: 140, baseType: !2442)
!2442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_iterator_d", file: !378, line: 131, size: 320, elements: !2443)
!2443 = !{!2444, !2445, !2446, !2448, !2450, !2451, !2452}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2442, file: !378, line: 133, baseType: !467, size: 8)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "iter_type", scope: !2442, file: !378, line: 134, baseType: !377, size: 32, offset: 32)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "defs", scope: !2442, file: !378, line: 135, baseType: !2447, size: 64, offset: 64)
!2447 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_optype_p", file: !378, line: 42, baseType: !828)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "uses", scope: !2442, file: !378, line: 136, baseType: !2449, size: 64, offset: 128)
!2449 = !DIDerivedType(tag: DW_TAG_typedef, name: "use_optype_p", file: !378, line: 50, baseType: !835)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "phi_i", scope: !2442, file: !378, line: 137, baseType: !468, size: 32, offset: 192)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "num_phi", scope: !2442, file: !378, line: 138, baseType: !468, size: 32, offset: 224)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "phi_stmt", scope: !2442, file: !378, line: 139, baseType: !799, size: 64, offset: 256)
!2453 = !DILocation(line: 0, scope: !2433)
!2454 = !DILocation(line: 669, column: 3, scope: !2433)
!2455 = !DILocation(line: 671, column: 24, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 671, column: 7)
!2457 = !DILocation(line: 671, column: 7, scope: !2456)
!2458 = !DILocation(line: 671, column: 7, scope: !2433)
!2459 = !DILocation(line: 675, column: 7, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !3, line: 675, column: 7)
!2461 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 672, column: 5)
!2462 = !DILocation(line: 0, scope: !2460)
!2463 = !DILocation(line: 675, column: 7, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 675, column: 7)
!2465 = !DILocation(line: 677, column: 15, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 677, column: 15)
!2467 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 676, column: 9)
!2468 = !DILocation(line: 677, column: 31, scope: !2466)
!2469 = !DILocation(line: 677, column: 15, scope: !2467)
!2470 = !DILocation(line: 678, column: 13, scope: !2466)
!2471 = !DILocation(line: 678, column: 37, scope: !2466)
!2472 = distinct !{!2472, !2459, !2473}
!2473 = !DILocation(line: 679, column: 9, scope: !2460)
!2474 = !DILocation(line: 681, column: 1, scope: !2433)
!2475 = distinct !DISubprogram(name: "gimple_in_ssa_p", scope: !2476, file: !2476, line: 33, type: !2477, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2481)
!2476 = !DIFile(filename: "./tree-flow-inline.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!2477 = !DISubroutineType(types: !2478)
!2478 = !{!467, !2479}
!2479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2480, size: 64)
!2480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!2481 = !{!2482}
!2482 = !DILocalVariable(name: "fun", arg: 1, scope: !2475, file: !2476, line: 33, type: !2479)
!2483 = !DILocation(line: 0, scope: !2475)
!2484 = !DILocation(line: 35, column: 10, scope: !2475)
!2485 = !DILocation(line: 35, column: 14, scope: !2475)
!2486 = !DILocation(line: 35, column: 22, scope: !2475)
!2487 = !DILocation(line: 35, column: 17, scope: !2475)
!2488 = !DILocation(line: 35, column: 32, scope: !2475)
!2489 = !DILocation(line: 35, column: 51, scope: !2475)
!2490 = !DILocation(line: 35, column: 3, scope: !2475)
!2491 = distinct !DISubprogram(name: "op_iter_init_tree", scope: !2476, file: !2476, line: 792, type: !2492, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2495)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!475, !2494, !799, !468}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2441, size: 64)
!2495 = !{!2496, !2497, !2498}
!2496 = !DILocalVariable(name: "ptr", arg: 1, scope: !2491, file: !2476, line: 792, type: !2494)
!2497 = !DILocalVariable(name: "stmt", arg: 2, scope: !2491, file: !2476, line: 792, type: !799)
!2498 = !DILocalVariable(name: "flags", arg: 3, scope: !2491, file: !2476, line: 792, type: !468)
!2499 = !DILocation(line: 0, scope: !2491)
!2500 = !DILocation(line: 794, column: 3, scope: !2491)
!2501 = !DILocation(line: 795, column: 8, scope: !2491)
!2502 = !DILocation(line: 795, column: 18, scope: !2491)
!2503 = !DILocation(line: 796, column: 10, scope: !2491)
!2504 = !DILocation(line: 796, column: 3, scope: !2491)
!2505 = distinct !DISubprogram(name: "op_iter_done", scope: !2476, file: !2476, line: 652, type: !2506, scopeLine: 653, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2510)
!2506 = !DISubroutineType(types: !2507)
!2507 = !{!467, !2508}
!2508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2509, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2510 = !{!2511}
!2511 = !DILocalVariable(name: "ptr", arg: 1, scope: !2505, file: !2476, line: 652, type: !2508)
!2512 = !DILocation(line: 0, scope: !2505)
!2513 = !DILocation(line: 654, column: 15, scope: !2505)
!2514 = !DILocation(line: 654, column: 3, scope: !2505)
!2515 = distinct !DISubprogram(name: "op_iter_next_tree", scope: !2476, file: !2476, line: 699, type: !2516, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2518)
!2516 = !DISubroutineType(types: !2517)
!2517 = !{!475, !2494}
!2518 = !{!2519, !2520}
!2519 = !DILocalVariable(name: "ptr", arg: 1, scope: !2515, file: !2476, line: 699, type: !2494)
!2520 = !DILocalVariable(name: "val", scope: !2515, file: !2476, line: 701, type: !475)
!2521 = !DILocation(line: 0, scope: !2515)
!2522 = !DILocation(line: 705, column: 12, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2515, file: !2476, line: 705, column: 7)
!2524 = !DILocation(line: 705, column: 7, scope: !2523)
!2525 = !DILocation(line: 705, column: 7, scope: !2515)
!2526 = !DILocation(line: 707, column: 13, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2523, file: !2476, line: 706, column: 5)
!2528 = !DILocation(line: 708, column: 24, scope: !2527)
!2529 = !DILocation(line: 708, column: 30, scope: !2527)
!2530 = !DILocation(line: 708, column: 17, scope: !2527)
!2531 = !DILocation(line: 709, column: 7, scope: !2527)
!2532 = !DILocation(line: 711, column: 12, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2515, file: !2476, line: 711, column: 7)
!2534 = !DILocation(line: 711, column: 7, scope: !2533)
!2535 = !DILocation(line: 711, column: 7, scope: !2515)
!2536 = !DILocation(line: 713, column: 13, scope: !2537)
!2537 = distinct !DILexicalBlock(scope: !2533, file: !2476, line: 712, column: 5)
!2538 = !DILocation(line: 714, column: 24, scope: !2537)
!2539 = !DILocation(line: 714, column: 30, scope: !2537)
!2540 = !DILocation(line: 714, column: 17, scope: !2537)
!2541 = !DILocation(line: 715, column: 7, scope: !2537)
!2542 = !DILocation(line: 718, column: 8, scope: !2515)
!2543 = !DILocation(line: 718, column: 13, scope: !2515)
!2544 = !DILocation(line: 719, column: 3, scope: !2515)
!2545 = !DILocation(line: 721, column: 1, scope: !2515)
!2546 = distinct !DISubprogram(name: "update_call_from_tree", scope: !3, file: !3, line: 697, type: !2547, scopeLine: 698, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2556)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!467, !2549, !475}
!2549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2550, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_stmt_iterator", file: !391, line: 265, baseType: !2551)
!2551 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !391, line: 254, size: 192, elements: !2552)
!2552 = !{!2553, !2554, !2555}
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !2551, file: !391, line: 257, baseType: !794, size: 64)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !2551, file: !391, line: 263, baseType: !789, size: 64, offset: 64)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !2551, file: !391, line: 264, baseType: !1232, size: 64, offset: 128)
!2556 = !{!2557, !2558, !2559, !2560, !2561, !2564, !2565, !2566, !2567, !2568}
!2557 = !DILocalVariable(name: "si_p", arg: 1, scope: !2546, file: !3, line: 697, type: !2549)
!2558 = !DILocalVariable(name: "expr", arg: 2, scope: !2546, file: !3, line: 697, type: !475)
!2559 = !DILocalVariable(name: "lhs", scope: !2546, file: !3, line: 699, type: !475)
!2560 = !DILocalVariable(name: "stmt", scope: !2546, file: !3, line: 701, type: !799)
!2561 = !DILocalVariable(name: "fn", scope: !2562, file: !3, line: 710, type: !475)
!2562 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 708, column: 5)
!2563 = distinct !DILexicalBlock(scope: !2546, file: !3, line: 707, column: 7)
!2564 = !DILocalVariable(name: "i", scope: !2562, file: !3, line: 711, type: !7)
!2565 = !DILocalVariable(name: "nargs", scope: !2562, file: !3, line: 712, type: !7)
!2566 = !DILocalVariable(name: "args", scope: !2562, file: !3, line: 713, type: !1803)
!2567 = !DILocalVariable(name: "new_stmt", scope: !2562, file: !3, line: 714, type: !799)
!2568 = !DILocalVariable(name: "new_stmt", scope: !2569, file: !3, line: 738, type: !799)
!2569 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 737, column: 5)
!2570 = distinct !DILexicalBlock(scope: !2563, file: !3, line: 736, column: 12)
!2571 = !DILocation(line: 0, scope: !2546)
!2572 = !DILocation(line: 701, column: 17, scope: !2546)
!2573 = !DILocation(line: 703, column: 3, scope: !2546)
!2574 = !DILocation(line: 705, column: 9, scope: !2546)
!2575 = !DILocation(line: 707, column: 7, scope: !2563)
!2576 = !DILocation(line: 707, column: 7, scope: !2546)
!2577 = !DILocation(line: 710, column: 17, scope: !2562)
!2578 = !DILocation(line: 0, scope: !2562)
!2579 = !DILocation(line: 712, column: 24, scope: !2562)
!2580 = !DILocation(line: 713, column: 7, scope: !2562)
!2581 = !DILocation(line: 713, column: 24, scope: !2562)
!2582 = !DILocation(line: 716, column: 17, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 716, column: 11)
!2584 = !DILocation(line: 716, column: 11, scope: !2562)
!2585 = !DILocation(line: 718, column: 18, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 717, column: 9)
!2587 = !DILocation(line: 718, column: 16, scope: !2586)
!2588 = !DILocation(line: 719, column: 11, scope: !2586)
!2589 = !DILocation(line: 721, column: 16, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 721, column: 11)
!2591 = !DILocation(line: 721, column: 25, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 721, column: 11)
!2593 = !DILocation(line: 0, scope: !2590)
!2594 = !DILocation(line: 721, column: 11, scope: !2590)
!2595 = !DILocation(line: 722, column: 13, scope: !2592)
!2596 = !DILocation(line: 721, column: 35, scope: !2592)
!2597 = !DILocation(line: 721, column: 11, scope: !2592)
!2598 = distinct !{!2598, !2594, !2599}
!2599 = !DILocation(line: 722, column: 13, scope: !2590)
!2600 = !DILocation(line: 725, column: 45, scope: !2562)
!2601 = !DILocation(line: 725, column: 18, scope: !2562)
!2602 = !DILocation(line: 726, column: 7, scope: !2562)
!2603 = !DILocation(line: 727, column: 7, scope: !2562)
!2604 = !DILocation(line: 728, column: 34, scope: !2562)
!2605 = !DILocation(line: 728, column: 7, scope: !2562)
!2606 = !DILocation(line: 729, column: 34, scope: !2562)
!2607 = !DILocation(line: 729, column: 7, scope: !2562)
!2608 = !DILocation(line: 730, column: 38, scope: !2562)
!2609 = !DILocation(line: 730, column: 7, scope: !2562)
!2610 = !DILocation(line: 731, column: 7, scope: !2562)
!2611 = !DILocation(line: 732, column: 7, scope: !2562)
!2612 = !DILocation(line: 735, column: 5, scope: !2563)
!2613 = !DILocation(line: 736, column: 12, scope: !2570)
!2614 = !DILocation(line: 736, column: 12, scope: !2563)
!2615 = !DILocation(line: 742, column: 11, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 742, column: 11)
!2617 = !DILocation(line: 742, column: 11, scope: !2569)
!2618 = !DILocation(line: 746, column: 11, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 743, column: 9)
!2620 = !DILocation(line: 747, column: 22, scope: !2619)
!2621 = !DILocation(line: 0, scope: !2569)
!2622 = !DILocation(line: 748, column: 11, scope: !2619)
!2623 = !DILocation(line: 749, column: 31, scope: !2619)
!2624 = !DILocation(line: 749, column: 4, scope: !2619)
!2625 = !DILocation(line: 750, column: 31, scope: !2619)
!2626 = !DILocation(line: 750, column: 4, scope: !2619)
!2627 = !DILocation(line: 751, column: 9, scope: !2619)
!2628 = !DILocation(line: 752, column: 17, scope: !2629)
!2629 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 752, column: 16)
!2630 = !DILocation(line: 752, column: 16, scope: !2616)
!2631 = !DILocation(line: 756, column: 22, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 753, column: 9)
!2633 = !DILocation(line: 757, column: 4, scope: !2632)
!2634 = !DILocation(line: 758, column: 4, scope: !2632)
!2635 = !DILocation(line: 759, column: 9, scope: !2632)
!2636 = !DILocation(line: 766, column: 11, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 761, column: 9)
!2638 = !DILocation(line: 767, column: 33, scope: !2637)
!2639 = !DILocation(line: 767, column: 17, scope: !2637)
!2640 = !DILocation(line: 768, column: 22, scope: !2637)
!2641 = !DILocation(line: 769, column: 11, scope: !2637)
!2642 = !DILocation(line: 770, column: 17, scope: !2637)
!2643 = !DILocation(line: 771, column: 11, scope: !2637)
!2644 = !DILocation(line: 772, column: 31, scope: !2637)
!2645 = !DILocation(line: 772, column: 4, scope: !2637)
!2646 = !DILocation(line: 773, column: 31, scope: !2637)
!2647 = !DILocation(line: 773, column: 4, scope: !2637)
!2648 = !DILocation(line: 774, column: 11, scope: !2637)
!2649 = !DILocation(line: 0, scope: !2616)
!2650 = !DILocation(line: 776, column: 38, scope: !2569)
!2651 = !DILocation(line: 776, column: 7, scope: !2569)
!2652 = !DILocation(line: 777, column: 7, scope: !2569)
!2653 = !DILocation(line: 0, scope: !2563)
!2654 = !DILocation(line: 784, column: 1, scope: !2546)
!2655 = distinct !DISubprogram(name: "gsi_stmt", scope: !391, file: !391, line: 4501, type: !2656, scopeLine: 4502, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2658)
!2656 = !DISubroutineType(types: !2657)
!2657 = !{!799, !2550}
!2658 = !{!2659}
!2659 = !DILocalVariable(name: "i", arg: 1, scope: !2655, file: !391, line: 4501, type: !2550)
!2660 = !DILocation(line: 4501, column: 32, scope: !2655)
!2661 = !DILocation(line: 4503, column: 12, scope: !2655)
!2662 = !DILocation(line: 4503, column: 17, scope: !2655)
!2663 = !DILocation(line: 4503, column: 3, scope: !2655)
!2664 = distinct !DISubprogram(name: "is_gimple_call", scope: !391, file: !391, line: 1870, type: !2665, scopeLine: 1871, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2668)
!2665 = !DISubroutineType(types: !2666)
!2666 = !{!467, !2667}
!2667 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple", file: !476, line: 60, baseType: !1801)
!2668 = !{!2669}
!2669 = !DILocalVariable(name: "gs", arg: 1, scope: !2664, file: !391, line: 1870, type: !2667)
!2670 = !DILocation(line: 0, scope: !2664)
!2671 = !DILocation(line: 1872, column: 10, scope: !2664)
!2672 = !DILocation(line: 1872, column: 27, scope: !2664)
!2673 = !DILocation(line: 1872, column: 3, scope: !2664)
!2674 = distinct !DISubprogram(name: "gimple_call_lhs", scope: !391, file: !391, line: 1878, type: !2675, scopeLine: 1879, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2677)
!2675 = !DISubroutineType(types: !2676)
!2676 = !{!475, !2667}
!2677 = !{!2678}
!2678 = !DILocalVariable(name: "gs", arg: 1, scope: !2674, file: !391, line: 1878, type: !2667)
!2679 = !DILocation(line: 0, scope: !2674)
!2680 = !DILocation(line: 1881, column: 10, scope: !2674)
!2681 = !DILocation(line: 1881, column: 3, scope: !2674)
!2682 = distinct !DISubprogram(name: "VEC_tree_heap_alloc", scope: !135, file: !135, line: 184, type: !2683, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2685)
!2683 = !DISubroutineType(types: !2684)
!2684 = !{!1803, !468}
!2685 = !{!2686}
!2686 = !DILocalVariable(name: "alloc_", arg: 1, scope: !2682, file: !135, line: 184, type: !468)
!2687 = !DILocation(line: 0, scope: !2682)
!2688 = !DILocation(line: 184, column: 1, scope: !2682)
!2689 = distinct !DISubprogram(name: "VEC_tree_heap_safe_grow", scope: !135, file: !135, line: 184, type: !2690, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2693)
!2690 = !DISubroutineType(types: !2691)
!2691 = !{null, !2692, !468}
!2692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!2693 = !{!2694, !2695}
!2694 = !DILocalVariable(name: "vec_", arg: 1, scope: !2689, file: !135, line: 184, type: !2692)
!2695 = !DILocalVariable(name: "size_", arg: 2, scope: !2689, file: !135, line: 184, type: !468)
!2696 = !DILocation(line: 0, scope: !2689)
!2697 = !DILocation(line: 184, column: 1, scope: !2689)
!2698 = distinct !DISubprogram(name: "VEC_tree_base_replace", scope: !135, file: !135, line: 182, type: !2699, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2702)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!475, !2701, !7, !475}
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!2702 = !{!2703, !2704, !2705, !2706}
!2703 = !DILocalVariable(name: "vec_", arg: 1, scope: !2698, file: !135, line: 182, type: !2701)
!2704 = !DILocalVariable(name: "ix_", arg: 2, scope: !2698, file: !135, line: 182, type: !7)
!2705 = !DILocalVariable(name: "obj_", arg: 3, scope: !2698, file: !135, line: 182, type: !475)
!2706 = !DILocalVariable(name: "old_obj_", scope: !2698, file: !135, line: 182, type: !475)
!2707 = !DILocation(line: 0, scope: !2698)
!2708 = !DILocation(line: 182, column: 1, scope: !2698)
!2709 = distinct !DISubprogram(name: "gimple_call_set_lhs", scope: !391, file: !391, line: 1898, type: !2710, scopeLine: 1899, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2710 = !DISubroutineType(types: !2711)
!2711 = !{null, !799, !475}
!2712 = !{!2713, !2714}
!2713 = !DILocalVariable(name: "gs", arg: 1, scope: !2709, file: !391, line: 1898, type: !799)
!2714 = !DILocalVariable(name: "lhs", arg: 2, scope: !2709, file: !391, line: 1898, type: !475)
!2715 = !DILocation(line: 0, scope: !2709)
!2716 = !DILocation(line: 1901, column: 3, scope: !2709)
!2717 = !DILocation(line: 1902, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2709, file: !391, line: 1902, column: 7)
!2719 = !DILocation(line: 1902, column: 11, scope: !2718)
!2720 = !DILocation(line: 1902, column: 14, scope: !2718)
!2721 = !DILocation(line: 1902, column: 30, scope: !2718)
!2722 = !DILocation(line: 1902, column: 7, scope: !2709)
!2723 = !DILocation(line: 1903, column: 5, scope: !2718)
!2724 = !DILocation(line: 1903, column: 29, scope: !2718)
!2725 = !DILocation(line: 1904, column: 1, scope: !2709)
!2726 = distinct !DISubprogram(name: "gimple_set_vuse", scope: !391, file: !391, line: 1405, type: !2710, scopeLine: 1406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2727)
!2727 = !{!2728, !2729}
!2728 = !DILocalVariable(name: "g", arg: 1, scope: !2726, file: !391, line: 1405, type: !799)
!2729 = !DILocalVariable(name: "vuse", arg: 2, scope: !2726, file: !391, line: 1405, type: !475)
!2730 = !DILocation(line: 0, scope: !2726)
!2731 = !DILocation(line: 1407, column: 3, scope: !2726)
!2732 = !DILocation(line: 1408, column: 16, scope: !2726)
!2733 = !DILocation(line: 1408, column: 21, scope: !2726)
!2734 = !DILocation(line: 1409, column: 1, scope: !2726)
!2735 = distinct !DISubprogram(name: "gimple_vuse", scope: !391, file: !391, line: 1365, type: !2675, scopeLine: 1366, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2736)
!2736 = !{!2737}
!2737 = !DILocalVariable(name: "g", arg: 1, scope: !2735, file: !391, line: 1365, type: !2667)
!2738 = !DILocation(line: 0, scope: !2735)
!2739 = !DILocation(line: 1367, column: 8, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2735, file: !391, line: 1367, column: 7)
!2741 = !DILocation(line: 1367, column: 7, scope: !2735)
!2742 = !DILocation(line: 1369, column: 23, scope: !2735)
!2743 = !DILocation(line: 1369, column: 3, scope: !2735)
!2744 = !DILocation(line: 1370, column: 1, scope: !2735)
!2745 = distinct !DISubprogram(name: "gimple_set_vdef", scope: !391, file: !391, line: 1414, type: !2710, scopeLine: 1415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2746)
!2746 = !{!2747, !2748}
!2747 = !DILocalVariable(name: "g", arg: 1, scope: !2745, file: !391, line: 1414, type: !799)
!2748 = !DILocalVariable(name: "vdef", arg: 2, scope: !2745, file: !391, line: 1414, type: !475)
!2749 = !DILocation(line: 0, scope: !2745)
!2750 = !DILocation(line: 1416, column: 3, scope: !2745)
!2751 = !DILocation(line: 1417, column: 16, scope: !2745)
!2752 = !DILocation(line: 1417, column: 21, scope: !2745)
!2753 = !DILocation(line: 1418, column: 1, scope: !2745)
!2754 = distinct !DISubprogram(name: "gimple_vdef", scope: !391, file: !391, line: 1375, type: !2675, scopeLine: 1376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2755)
!2755 = !{!2756}
!2756 = !DILocalVariable(name: "g", arg: 1, scope: !2754, file: !391, line: 1375, type: !2667)
!2757 = !DILocation(line: 0, scope: !2754)
!2758 = !DILocation(line: 1377, column: 8, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2754, file: !391, line: 1377, column: 7)
!2760 = !DILocation(line: 1377, column: 7, scope: !2754)
!2761 = !DILocation(line: 1379, column: 23, scope: !2754)
!2762 = !DILocation(line: 1379, column: 3, scope: !2754)
!2763 = !DILocation(line: 1380, column: 1, scope: !2754)
!2764 = distinct !DISubprogram(name: "gimple_set_location", scope: !391, file: !391, line: 1156, type: !2765, scopeLine: 1157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2765 = !DISubroutineType(types: !2766)
!2766 = !{null, !799, !600}
!2767 = !{!2768, !2769}
!2768 = !DILocalVariable(name: "g", arg: 1, scope: !2764, file: !391, line: 1156, type: !799)
!2769 = !DILocalVariable(name: "location", arg: 2, scope: !2764, file: !391, line: 1156, type: !600)
!2770 = !DILocation(line: 0, scope: !2764)
!2771 = !DILocation(line: 1158, column: 13, scope: !2764)
!2772 = !DILocation(line: 1158, column: 22, scope: !2764)
!2773 = !DILocation(line: 1159, column: 1, scope: !2764)
!2774 = distinct !DISubprogram(name: "gimple_location", scope: !391, file: !391, line: 1139, type: !2775, scopeLine: 1140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2777)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{!600, !2667}
!2777 = !{!2778}
!2778 = !DILocalVariable(name: "g", arg: 1, scope: !2774, file: !391, line: 1139, type: !2667)
!2779 = !DILocation(line: 0, scope: !2774)
!2780 = !DILocation(line: 1141, column: 20, scope: !2774)
!2781 = !DILocation(line: 1141, column: 3, scope: !2774)
!2782 = distinct !DISubprogram(name: "VEC_tree_heap_free", scope: !135, file: !135, line: 184, type: !2783, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2785)
!2783 = !DISubroutineType(types: !2784)
!2784 = !{null, !2692}
!2785 = !{!2786}
!2786 = !DILocalVariable(name: "vec_", arg: 1, scope: !2782, file: !135, line: 184, type: !2692)
!2787 = !DILocation(line: 0, scope: !2782)
!2788 = !DILocation(line: 184, column: 1, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2782, file: !135, line: 184, column: 1)
!2790 = !DILocation(line: 184, column: 1, scope: !2782)
!2791 = distinct !DISubprogram(name: "make_ssa_name", scope: !2476, file: !2476, line: 1245, type: !2792, scopeLine: 1246, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2794)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{!475, !475, !799}
!2794 = !{!2795, !2796}
!2795 = !DILocalVariable(name: "var", arg: 1, scope: !2791, file: !2476, line: 1245, type: !475)
!2796 = !DILocalVariable(name: "stmt", arg: 2, scope: !2791, file: !2476, line: 1245, type: !799)
!2797 = !DILocation(line: 0, scope: !2791)
!2798 = !DILocation(line: 1247, column: 28, scope: !2791)
!2799 = !DILocation(line: 1247, column: 10, scope: !2791)
!2800 = !DILocation(line: 1247, column: 3, scope: !2791)
!2801 = distinct !DISubprogram(name: "gimple_assign_set_lhs", scope: !391, file: !391, line: 1714, type: !2710, scopeLine: 1715, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2802)
!2802 = !{!2803, !2804}
!2803 = !DILocalVariable(name: "gs", arg: 1, scope: !2801, file: !391, line: 1714, type: !799)
!2804 = !DILocalVariable(name: "lhs", arg: 2, scope: !2801, file: !391, line: 1714, type: !475)
!2805 = !DILocation(line: 0, scope: !2801)
!2806 = !DILocation(line: 1717, column: 3, scope: !2801)
!2807 = !DILocation(line: 1719, column: 7, scope: !2808)
!2808 = distinct !DILexicalBlock(scope: !2801, file: !391, line: 1719, column: 7)
!2809 = !DILocation(line: 1719, column: 11, scope: !2808)
!2810 = !DILocation(line: 1719, column: 14, scope: !2808)
!2811 = !DILocation(line: 1719, column: 30, scope: !2808)
!2812 = !DILocation(line: 1719, column: 7, scope: !2801)
!2813 = !DILocation(line: 1720, column: 5, scope: !2808)
!2814 = !DILocation(line: 1720, column: 29, scope: !2808)
!2815 = !DILocation(line: 1721, column: 1, scope: !2801)
!2816 = distinct !DISubprogram(name: "ssa_propagate", scope: !3, file: !3, line: 793, type: !2817, scopeLine: 795, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2819)
!2817 = !DISubroutineType(types: !2818)
!2818 = !{null, !1871, !1833}
!2819 = !{!2820, !2821, !2822}
!2820 = !DILocalVariable(name: "visit_stmt", arg: 1, scope: !2816, file: !3, line: 793, type: !1871)
!2821 = !DILocalVariable(name: "visit_phi", arg: 2, scope: !2816, file: !3, line: 794, type: !1833)
!2822 = !DILocalVariable(name: "dest_block", scope: !2823, file: !3, line: 809, type: !1232)
!2823 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 807, column: 2)
!2824 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 806, column: 11)
!2825 = distinct !DILexicalBlock(scope: !2816, file: !3, line: 805, column: 5)
!2826 = !DILocation(line: 0, scope: !2816)
!2827 = !DILocation(line: 796, column: 23, scope: !2816)
!2828 = !DILocation(line: 797, column: 22, scope: !2816)
!2829 = !DILocation(line: 799, column: 3, scope: !2816)
!2830 = !DILocation(line: 802, column: 3, scope: !2816)
!2831 = !DILocation(line: 802, column: 11, scope: !2816)
!2832 = !DILocation(line: 803, column: 3, scope: !2816)
!2833 = !DILocation(line: 803, column: 6, scope: !2816)
!2834 = !DILocation(line: 803, column: 49, scope: !2816)
!2835 = !DILocation(line: 804, column: 3, scope: !2816)
!2836 = !DILocation(line: 804, column: 6, scope: !2816)
!2837 = !DILocation(line: 804, column: 45, scope: !2816)
!2838 = !DILocation(line: 806, column: 12, scope: !2824)
!2839 = !DILocation(line: 806, column: 11, scope: !2825)
!2840 = !DILocation(line: 809, column: 29, scope: !2823)
!2841 = !DILocation(line: 0, scope: !2823)
!2842 = !DILocation(line: 810, column: 4, scope: !2823)
!2843 = !DILocation(line: 811, column: 2, scope: !2823)
!2844 = !DILocation(line: 815, column: 7, scope: !2825)
!2845 = !DILocation(line: 818, column: 7, scope: !2825)
!2846 = distinct !{!2846, !2830, !2847}
!2847 = !DILocation(line: 819, column: 5, scope: !2816)
!2848 = !DILocation(line: 821, column: 3, scope: !2816)
!2849 = !DILocation(line: 822, column: 1, scope: !2816)
!2850 = distinct !DISubprogram(name: "ssa_prop_init", scope: !3, file: !3, line: 485, type: !2851, scopeLine: 486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{null}
!2853 = !{!2854, !2855, !2862, !2863}
!2854 = !DILocalVariable(name: "e", scope: !2850, file: !3, line: 487, type: !779)
!2855 = !DILocalVariable(name: "ei", scope: !2850, file: !3, line: 488, type: !2856)
!2856 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !330, line: 682, baseType: !2857)
!2857 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !330, line: 679, size: 128, elements: !2858)
!2858 = !{!2859, !2860}
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2857, file: !330, line: 680, baseType: !7, size: 32)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2857, file: !330, line: 681, baseType: !2861, size: 64, offset: 64)
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!2862 = !DILocalVariable(name: "bb", scope: !2850, file: !3, line: 489, type: !1232)
!2863 = !DILocalVariable(name: "si", scope: !2864, file: !3, line: 511, type: !2550)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !3, line: 510, column: 5)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !3, line: 509, column: 3)
!2866 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 509, column: 3)
!2867 = !DILocation(line: 487, column: 3, scope: !2850)
!2868 = !DILocation(line: 488, column: 3, scope: !2850)
!2869 = !DILocation(line: 492, column: 27, scope: !2850)
!2870 = !DILocation(line: 492, column: 25, scope: !2850)
!2871 = !DILocation(line: 493, column: 23, scope: !2850)
!2872 = !DILocation(line: 493, column: 21, scope: !2850)
!2873 = !DILocation(line: 495, column: 38, scope: !2850)
!2874 = !DILocation(line: 495, column: 23, scope: !2850)
!2875 = !DILocation(line: 495, column: 21, scope: !2850)
!2876 = !DILocation(line: 496, column: 3, scope: !2850)
!2877 = !DILocation(line: 498, column: 31, scope: !2850)
!2878 = !DILocation(line: 498, column: 16, scope: !2850)
!2879 = !DILocation(line: 498, column: 14, scope: !2850)
!2880 = !DILocation(line: 499, column: 3, scope: !2850)
!2881 = !DILocation(line: 501, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 501, column: 7)
!2883 = !DILocation(line: 501, column: 17, scope: !2882)
!2884 = !DILocation(line: 501, column: 21, scope: !2882)
!2885 = !DILocation(line: 501, column: 32, scope: !2882)
!2886 = !DILocation(line: 501, column: 7, scope: !2850)
!2887 = !DILocation(line: 502, column: 5, scope: !2882)
!2888 = !DILocation(line: 504, column: 16, scope: !2850)
!2889 = !DILocation(line: 504, column: 14, scope: !2850)
!2890 = !DILocation(line: 505, column: 3, scope: !2850)
!2891 = !DILocation(line: 509, column: 3, scope: !2866)
!2892 = !DILocation(line: 0, scope: !2864)
!2893 = !DILocation(line: 0, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 513, column: 7)
!2895 = !DILocation(line: 0, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 516, column: 7)
!2897 = !DILocation(line: 0, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2864, file: !3, line: 519, column: 7)
!2899 = !DILocation(line: 0, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 519, column: 7)
!2901 = !DILocation(line: 0, scope: !2866)
!2902 = !DILocation(line: 0, scope: !2850)
!2903 = !DILocation(line: 511, column: 7, scope: !2864)
!2904 = !DILocation(line: 513, column: 17, scope: !2894)
!2905 = !DILocation(line: 513, column: 12, scope: !2894)
!2906 = !DILocation(line: 513, column: 37, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 513, column: 7)
!2908 = !DILocation(line: 513, column: 36, scope: !2907)
!2909 = !DILocation(line: 513, column: 7, scope: !2894)
!2910 = !DILocation(line: 514, column: 18, scope: !2907)
!2911 = !DILocation(line: 514, column: 2, scope: !2907)
!2912 = !DILocation(line: 513, column: 53, scope: !2907)
!2913 = !DILocation(line: 513, column: 7, scope: !2907)
!2914 = distinct !{!2914, !2909, !2915}
!2915 = !DILocation(line: 514, column: 65, scope: !2894)
!2916 = !DILocation(line: 516, column: 17, scope: !2896)
!2917 = !DILocation(line: 516, column: 12, scope: !2896)
!2918 = !DILocation(line: 516, column: 39, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 516, column: 7)
!2920 = !DILocation(line: 516, column: 38, scope: !2919)
!2921 = !DILocation(line: 516, column: 7, scope: !2896)
!2922 = !DILocation(line: 517, column: 18, scope: !2919)
!2923 = !DILocation(line: 517, column: 2, scope: !2919)
!2924 = !DILocation(line: 516, column: 55, scope: !2919)
!2925 = !DILocation(line: 516, column: 7, scope: !2919)
!2926 = distinct !{!2926, !2921, !2927}
!2927 = !DILocation(line: 517, column: 65, scope: !2896)
!2928 = !DILocation(line: 519, column: 7, scope: !2898)
!2929 = !DILocation(line: 519, column: 7, scope: !2900)
!2930 = !DILocation(line: 520, column: 2, scope: !2900)
!2931 = !DILocation(line: 520, column: 5, scope: !2900)
!2932 = !DILocation(line: 520, column: 11, scope: !2900)
!2933 = distinct !{!2933, !2928, !2934}
!2934 = !DILocation(line: 520, column: 15, scope: !2898)
!2935 = !DILocation(line: 521, column: 5, scope: !2865)
!2936 = !DILocation(line: 509, column: 3, scope: !2865)
!2937 = distinct !{!2937, !2891, !2938}
!2938 = !DILocation(line: 521, column: 5, scope: !2866)
!2939 = !DILocation(line: 525, column: 3, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 525, column: 3)
!2941 = !DILocation(line: 525, column: 3, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 525, column: 3)
!2943 = !DILocation(line: 526, column: 23, scope: !2942)
!2944 = !DILocation(line: 526, column: 5, scope: !2942)
!2945 = distinct !{!2945, !2939, !2946}
!2946 = !DILocation(line: 526, column: 24, scope: !2940)
!2947 = !DILocation(line: 527, column: 1, scope: !2850)
!2948 = distinct !DISubprogram(name: "cfg_blocks_empty_p", scope: !3, file: !3, line: 171, type: !2949, scopeLine: 172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!2949 = !DISubroutineType(types: !2950)
!2950 = !{!467}
!2951 = !DILocation(line: 173, column: 11, scope: !2948)
!2952 = !DILocation(line: 173, column: 26, scope: !2948)
!2953 = !DILocation(line: 173, column: 10, scope: !2948)
!2954 = !DILocation(line: 173, column: 3, scope: !2948)
!2955 = distinct !DISubprogram(name: "VEC_gimple_base_length", scope: !391, file: !391, line: 33, type: !2956, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2960)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!7, !2958}
!2958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2959, size: 64)
!2959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1317)
!2960 = !{!2961}
!2961 = !DILocalVariable(name: "vec_", arg: 1, scope: !2955, file: !391, line: 33, type: !2958)
!2962 = !DILocation(line: 0, scope: !2955)
!2963 = !DILocation(line: 33, column: 1, scope: !2955)
!2964 = distinct !DISubprogram(name: "cfg_blocks_get", scope: !3, file: !3, line: 234, type: !2965, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2967)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{!1232}
!2967 = !{!2968}
!2968 = !DILocalVariable(name: "bb", scope: !2964, file: !3, line: 236, type: !1232)
!2969 = !DILocation(line: 238, column: 8, scope: !2964)
!2970 = !DILocation(line: 0, scope: !2964)
!2971 = !DILocation(line: 240, column: 3, scope: !2964)
!2972 = !DILocation(line: 241, column: 3, scope: !2964)
!2973 = !DILocation(line: 243, column: 23, scope: !2964)
!2974 = !DILocation(line: 243, column: 39, scope: !2964)
!2975 = !DILocation(line: 244, column: 10, scope: !2964)
!2976 = !DILocation(line: 244, column: 8, scope: !2964)
!2977 = !DILocation(line: 243, column: 19, scope: !2964)
!2978 = !DILocation(line: 245, column: 3, scope: !2964)
!2979 = !DILocation(line: 246, column: 14, scope: !2964)
!2980 = !DILocation(line: 246, column: 30, scope: !2964)
!2981 = !DILocation(line: 246, column: 3, scope: !2964)
!2982 = !DILocation(line: 248, column: 3, scope: !2964)
!2983 = distinct !DISubprogram(name: "simulate_block", scope: !3, file: !3, line: 409, type: !2984, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2986)
!2984 = !DISubroutineType(types: !2985)
!2985 = !{null, !1232}
!2986 = !{!2987, !2988, !2989, !2992, !2993, !2994, !2995, !2996}
!2987 = !DILocalVariable(name: "block", arg: 1, scope: !2983, file: !3, line: 409, type: !1232)
!2988 = !DILocalVariable(name: "gsi", scope: !2983, file: !3, line: 411, type: !2550)
!2989 = !DILocalVariable(name: "j", scope: !2990, file: !3, line: 429, type: !2550)
!2990 = distinct !DILexicalBlock(scope: !2991, file: !3, line: 428, column: 5)
!2991 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 427, column: 7)
!2992 = !DILocalVariable(name: "normal_edge_count", scope: !2990, file: !3, line: 430, type: !7)
!2993 = !DILocalVariable(name: "e", scope: !2990, file: !3, line: 431, type: !779)
!2994 = !DILocalVariable(name: "normal_edge", scope: !2990, file: !3, line: 431, type: !779)
!2995 = !DILocalVariable(name: "ei", scope: !2990, file: !3, line: 432, type: !2856)
!2996 = !DILocalVariable(name: "stmt", scope: !2997, file: !3, line: 439, type: !799)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 438, column: 2)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 437, column: 7)
!2999 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 437, column: 7)
!3000 = !DILocation(line: 0, scope: !2983)
!3001 = !DILocation(line: 411, column: 3, scope: !2983)
!3002 = !DILocation(line: 414, column: 16, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 414, column: 7)
!3004 = !DILocation(line: 414, column: 13, scope: !3003)
!3005 = !DILocation(line: 414, column: 7, scope: !2983)
!3006 = !DILocation(line: 417, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 417, column: 7)
!3008 = !DILocation(line: 417, column: 17, scope: !3007)
!3009 = !DILocation(line: 417, column: 21, scope: !3007)
!3010 = !DILocation(line: 417, column: 32, scope: !3007)
!3011 = !DILocation(line: 417, column: 7, scope: !2983)
!3012 = !DILocation(line: 418, column: 59, scope: !3007)
!3013 = !DILocation(line: 418, column: 5, scope: !3007)
!3014 = !DILocation(line: 422, column: 14, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 422, column: 3)
!3016 = !DILocation(line: 422, column: 8, scope: !3015)
!3017 = !DILocation(line: 422, column: 39, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 422, column: 3)
!3019 = !DILocation(line: 422, column: 38, scope: !3018)
!3020 = !DILocation(line: 422, column: 3, scope: !3015)
!3021 = !DILocation(line: 423, column: 20, scope: !3018)
!3022 = !DILocation(line: 423, column: 5, scope: !3018)
!3023 = !DILocation(line: 422, column: 56, scope: !3018)
!3024 = !DILocation(line: 422, column: 3, scope: !3018)
!3025 = distinct !{!3025, !3020, !3026}
!3026 = !DILocation(line: 423, column: 34, scope: !3015)
!3027 = !DILocation(line: 427, column: 8, scope: !2991)
!3028 = !DILocation(line: 427, column: 7, scope: !2983)
!3029 = !DILocation(line: 429, column: 7, scope: !2990)
!3030 = !DILocation(line: 431, column: 7, scope: !2990)
!3031 = !DILocation(line: 432, column: 7, scope: !2990)
!3032 = !DILocation(line: 435, column: 7, scope: !2990)
!3033 = !DILocation(line: 437, column: 16, scope: !2999)
!3034 = !DILocation(line: 437, column: 12, scope: !2999)
!3035 = !DILocation(line: 0, scope: !2990)
!3036 = !DILocation(line: 437, column: 39, scope: !2998)
!3037 = !DILocation(line: 437, column: 38, scope: !2998)
!3038 = !DILocation(line: 437, column: 7, scope: !2999)
!3039 = !DILocation(line: 439, column: 18, scope: !2997)
!3040 = !DILocation(line: 0, scope: !2997)
!3041 = !DILocation(line: 446, column: 8, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !2997, file: !3, line: 446, column: 8)
!3043 = !DILocation(line: 446, column: 8, scope: !2997)
!3044 = !DILocation(line: 447, column: 6, scope: !3042)
!3045 = !DILocation(line: 449, column: 4, scope: !2997)
!3046 = !DILocation(line: 437, column: 54, scope: !2998)
!3047 = !DILocation(line: 437, column: 7, scope: !2998)
!3048 = distinct !{!3048, !3038, !3049}
!3049 = !DILocation(line: 450, column: 2, scope: !2999)
!3050 = !DILocation(line: 465, column: 7, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 465, column: 7)
!3052 = !DILocation(line: 0, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 465, column: 7)
!3054 = !DILocation(line: 463, column: 25, scope: !2990)
!3055 = !DILocation(line: 464, column: 19, scope: !2990)
!3056 = !DILocation(line: 465, column: 7, scope: !3053)
!3057 = !DILocation(line: 467, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3059, file: !3, line: 467, column: 8)
!3059 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 466, column: 2)
!3060 = !DILocation(line: 467, column: 11, scope: !3058)
!3061 = !DILocation(line: 467, column: 17, scope: !3058)
!3062 = !DILocation(line: 467, column: 8, scope: !3059)
!3063 = !DILocation(line: 468, column: 6, scope: !3058)
!3064 = !DILocation(line: 471, column: 25, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 470, column: 6)
!3066 = distinct !{!3066, !3050, !3067}
!3067 = !DILocation(line: 474, column: 2, scope: !3051)
!3068 = !DILocation(line: 476, column: 29, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !2990, file: !3, line: 476, column: 11)
!3070 = !DILocation(line: 476, column: 11, scope: !2990)
!3071 = !DILocation(line: 477, column: 2, scope: !3069)
!3072 = !DILocation(line: 478, column: 5, scope: !2991)
!3073 = !DILocation(line: 478, column: 5, scope: !2990)
!3074 = !DILocation(line: 479, column: 1, scope: !2983)
!3075 = distinct !DISubprogram(name: "process_ssa_edge_worklist", scope: !3, file: !3, line: 369, type: !3076, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3079)
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !3078}
!3078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!3079 = !{!3080, !3081, !3083}
!3080 = !DILocalVariable(name: "worklist", arg: 1, scope: !3075, file: !3, line: 369, type: !3078)
!3081 = !DILocalVariable(name: "bb", scope: !3082, file: !3, line: 374, type: !1232)
!3082 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 373, column: 5)
!3083 = !DILocalVariable(name: "stmt", scope: !3082, file: !3, line: 377, type: !799)
!3084 = !DILocation(line: 0, scope: !3075)
!3085 = !DILocation(line: 372, column: 3, scope: !3075)
!3086 = !DILocation(line: 372, column: 10, scope: !3075)
!3087 = !DILocation(line: 372, column: 41, scope: !3075)
!3088 = !DILocation(line: 377, column: 21, scope: !3082)
!3089 = !DILocation(line: 0, scope: !3082)
!3090 = !DILocation(line: 381, column: 12, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 381, column: 11)
!3092 = !DILocation(line: 381, column: 11, scope: !3082)
!3093 = distinct !{!3093, !3085, !3094}
!3094 = !DILocation(line: 401, column: 5, scope: !3075)
!3095 = !DILocation(line: 385, column: 7, scope: !3082)
!3096 = !DILocation(line: 387, column: 11, scope: !3097)
!3097 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 387, column: 11)
!3098 = !DILocation(line: 387, column: 21, scope: !3097)
!3099 = !DILocation(line: 387, column: 25, scope: !3097)
!3100 = !DILocation(line: 387, column: 36, scope: !3097)
!3101 = !DILocation(line: 387, column: 11, scope: !3082)
!3102 = !DILocation(line: 389, column: 4, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3097, file: !3, line: 388, column: 2)
!3104 = !DILocation(line: 390, column: 23, scope: !3103)
!3105 = !DILocation(line: 390, column: 43, scope: !3103)
!3106 = !DILocation(line: 390, column: 4, scope: !3103)
!3107 = !DILocation(line: 391, column: 2, scope: !3103)
!3108 = !DILocation(line: 393, column: 12, scope: !3082)
!3109 = !DILocation(line: 398, column: 11, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 398, column: 11)
!3111 = !DILocation(line: 398, column: 30, scope: !3110)
!3112 = !DILocation(line: 399, column: 4, scope: !3110)
!3113 = !DILocation(line: 399, column: 7, scope: !3110)
!3114 = !DILocation(line: 398, column: 11, scope: !3082)
!3115 = !DILocation(line: 400, column: 2, scope: !3110)
!3116 = !DILocation(line: 402, column: 1, scope: !3075)
!3117 = distinct !DISubprogram(name: "ssa_prop_fini", scope: !3, file: !3, line: 533, type: !2851, scopeLine: 534, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1902)
!3118 = !DILocation(line: 535, column: 3, scope: !3117)
!3119 = !DILocation(line: 536, column: 3, scope: !3117)
!3120 = !DILocation(line: 537, column: 3, scope: !3117)
!3121 = !DILocation(line: 538, column: 14, scope: !3117)
!3122 = !DILocation(line: 539, column: 3, scope: !3117)
!3123 = !DILocation(line: 540, column: 3, scope: !3117)
!3124 = !DILocation(line: 541, column: 1, scope: !3117)
!3125 = distinct !DISubprogram(name: "stmt_makes_single_store", scope: !3, file: !3, line: 831, type: !3126, scopeLine: 832, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!467, !799}
!3128 = !{!3129, !3130}
!3129 = !DILocalVariable(name: "stmt", arg: 1, scope: !3125, file: !3, line: 831, type: !799)
!3130 = !DILocalVariable(name: "lhs", scope: !3125, file: !3, line: 833, type: !475)
!3131 = !DILocation(line: 0, scope: !3125)
!3132 = !DILocation(line: 835, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 835, column: 7)
!3134 = !DILocation(line: 835, column: 26, scope: !3133)
!3135 = !DILocation(line: 836, column: 7, scope: !3133)
!3136 = !DILocation(line: 836, column: 10, scope: !3133)
!3137 = !DILocation(line: 836, column: 29, scope: !3133)
!3138 = !DILocation(line: 835, column: 7, scope: !3125)
!3139 = !DILocation(line: 839, column: 8, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 839, column: 7)
!3141 = !DILocation(line: 839, column: 7, scope: !3125)
!3142 = !DILocation(line: 842, column: 9, scope: !3125)
!3143 = !DILocation(line: 845, column: 8, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 845, column: 7)
!3145 = !DILocation(line: 845, column: 7, scope: !3125)
!3146 = !DILocation(line: 848, column: 12, scope: !3125)
!3147 = !DILocation(line: 849, column: 11, scope: !3125)
!3148 = !DILocation(line: 849, column: 15, scope: !3125)
!3149 = !DILocation(line: 850, column: 8, scope: !3125)
!3150 = !DILocation(line: 850, column: 11, scope: !3125)
!3151 = !DILocation(line: 848, column: 3, scope: !3125)
!3152 = !DILocation(line: 851, column: 1, scope: !3125)
!3153 = distinct !DISubprogram(name: "gimple_code", scope: !391, file: !391, line: 1052, type: !3154, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!390, !2667}
!3156 = !{!3157}
!3157 = !DILocalVariable(name: "g", arg: 1, scope: !3153, file: !391, line: 1052, type: !2667)
!3158 = !DILocation(line: 0, scope: !3153)
!3159 = !DILocation(line: 1054, column: 20, scope: !3153)
!3160 = !DILocation(line: 1054, column: 3, scope: !3153)
!3161 = distinct !DISubprogram(name: "substitute_and_fold", scope: !3, file: !3, line: 973, type: !3162, scopeLine: 974, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3174)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!467, !3164, !3170}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_typedef, name: "prop_value_t", file: !385, line: 74, baseType: !3166)
!3166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prop_value_d", file: !385, line: 64, size: 128, elements: !3167)
!3167 = !{!3168, !3169}
!3168 = !DIDerivedType(tag: DW_TAG_member, name: "lattice_val", scope: !3166, file: !385, line: 68, baseType: !7, size: 32)
!3169 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !3166, file: !385, line: 71, baseType: !475, size: 64, offset: 64)
!3170 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssa_prop_fold_stmt_fn", file: !385, line: 113, baseType: !3171)
!3171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3172, size: 64)
!3172 = !DISubroutineType(types: !3173)
!3173 = !{!467, !2549}
!3174 = !{!3175, !3176, !3177, !3178, !3179, !3183, !3187, !3188, !3189, !3190, !3191, !3194}
!3175 = !DILocalVariable(name: "prop_value", arg: 1, scope: !3161, file: !3, line: 973, type: !3164)
!3176 = !DILocalVariable(name: "fold_fn", arg: 2, scope: !3161, file: !3, line: 973, type: !3170)
!3177 = !DILocalVariable(name: "bb", scope: !3161, file: !3, line: 975, type: !1232)
!3178 = !DILocalVariable(name: "something_changed", scope: !3161, file: !3, line: 976, type: !467)
!3179 = !DILocalVariable(name: "i", scope: !3180, file: !3, line: 989, type: !2550)
!3180 = distinct !DILexicalBlock(scope: !3181, file: !3, line: 988, column: 5)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 987, column: 3)
!3182 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 987, column: 3)
!3183 = !DILocalVariable(name: "did_replace", scope: !3184, file: !3, line: 1000, type: !467)
!3184 = distinct !DILexicalBlock(scope: !3185, file: !3, line: 999, column: 2)
!3185 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 998, column: 7)
!3186 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 998, column: 7)
!3187 = !DILocalVariable(name: "stmt", scope: !3184, file: !3, line: 1001, type: !799)
!3188 = !DILocalVariable(name: "old_stmt", scope: !3184, file: !3, line: 1002, type: !799)
!3189 = !DILocalVariable(name: "code", scope: !3184, file: !3, line: 1003, type: !390)
!3190 = !DILocalVariable(name: "oldi", scope: !3184, file: !3, line: 1004, type: !2550)
!3191 = !DILocalVariable(name: "i2", scope: !3192, file: !3, line: 1025, type: !2550)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !3, line: 1024, column: 6)
!3193 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1019, column: 8)
!3194 = !DILocalVariable(name: "rhs", scope: !3195, file: !3, line: 1085, type: !475)
!3195 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 1084, column: 15)
!3196 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1081, column: 19)
!3197 = distinct !DILexicalBlock(scope: !3198, file: !3, line: 1073, column: 6)
!3198 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1072, column: 8)
!3199 = !DILocation(line: 0, scope: !3161)
!3200 = !DILocation(line: 978, column: 18, scope: !3201)
!3201 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 978, column: 7)
!3202 = !DILocation(line: 978, column: 30, scope: !3201)
!3203 = !DILocation(line: 978, column: 26, scope: !3201)
!3204 = !DILocation(line: 981, column: 7, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 981, column: 7)
!3206 = !DILocation(line: 981, column: 17, scope: !3205)
!3207 = !DILocation(line: 981, column: 21, scope: !3205)
!3208 = !DILocation(line: 981, column: 32, scope: !3205)
!3209 = !DILocation(line: 981, column: 7, scope: !3161)
!3210 = !DILocation(line: 982, column: 5, scope: !3205)
!3211 = !DILocation(line: 984, column: 3, scope: !3161)
!3212 = !DILocation(line: 987, column: 3, scope: !3182)
!3213 = !DILocation(line: 0, scope: !3180)
!3214 = !DILocation(line: 0, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 992, column: 11)
!3216 = !DILocation(line: 0, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 993, column: 2)
!3218 = !DILocation(line: 0, scope: !3186)
!3219 = !DILocation(line: 0, scope: !3184)
!3220 = !DILocation(line: 0, scope: !3192)
!3221 = !DILocation(line: 0, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1054, column: 8)
!3223 = !DILocation(line: 987, column: 3, scope: !3181)
!3224 = !DILocation(line: 976, column: 8, scope: !3161)
!3225 = !DILocation(line: 0, scope: !3182)
!3226 = !DILocation(line: 989, column: 7, scope: !3180)
!3227 = !DILocation(line: 992, column: 11, scope: !3180)
!3228 = !DILocation(line: 993, column: 11, scope: !3217)
!3229 = !DILocation(line: 993, column: 7, scope: !3217)
!3230 = !DILocation(line: 993, column: 33, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 993, column: 2)
!3232 = !DILocation(line: 993, column: 32, scope: !3231)
!3233 = !DILocation(line: 993, column: 2, scope: !3217)
!3234 = !DILocation(line: 994, column: 25, scope: !3231)
!3235 = !DILocation(line: 994, column: 4, scope: !3231)
!3236 = !DILocation(line: 993, column: 48, scope: !3231)
!3237 = !DILocation(line: 993, column: 2, scope: !3231)
!3238 = distinct !{!3238, !3233, !3239}
!3239 = !DILocation(line: 994, column: 49, scope: !3217)
!3240 = !DILocation(line: 998, column: 16, scope: !3186)
!3241 = !DILocation(line: 998, column: 12, scope: !3186)
!3242 = !DILocation(line: 998, column: 35, scope: !3185)
!3243 = !DILocation(line: 998, column: 34, scope: !3185)
!3244 = !DILocation(line: 998, column: 7, scope: !3186)
!3245 = !DILocation(line: 1001, column: 18, scope: !3184)
!3246 = !DILocation(line: 1003, column: 28, scope: !3184)
!3247 = !DILocation(line: 1004, column: 4, scope: !3184)
!3248 = !DILocation(line: 1006, column: 11, scope: !3184)
!3249 = !DILocation(line: 1007, column: 4, scope: !3184)
!3250 = !DILocation(line: 1013, column: 13, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1013, column: 8)
!3252 = !DILocation(line: 1014, column: 8, scope: !3251)
!3253 = !DILocation(line: 1014, column: 11, scope: !3251)
!3254 = !DILocation(line: 1014, column: 49, scope: !3251)
!3255 = !DILocation(line: 1013, column: 8, scope: !3184)
!3256 = distinct !{!3256, !3244, !3257}
!3257 = !DILocation(line: 1108, column: 2, scope: !3186)
!3258 = !DILocation(line: 1019, column: 8, scope: !3193)
!3259 = !DILocation(line: 1020, column: 8, scope: !3193)
!3260 = !DILocation(line: 1020, column: 11, scope: !3193)
!3261 = !DILocation(line: 1020, column: 45, scope: !3193)
!3262 = !DILocation(line: 1021, column: 8, scope: !3193)
!3263 = !DILocation(line: 1021, column: 26, scope: !3193)
!3264 = !DILocation(line: 1021, column: 11, scope: !3193)
!3265 = !DILocation(line: 1022, column: 8, scope: !3193)
!3266 = !DILocation(line: 1022, column: 12, scope: !3193)
!3267 = !DILocation(line: 1023, column: 8, scope: !3193)
!3268 = !DILocation(line: 1023, column: 12, scope: !3193)
!3269 = !DILocation(line: 1019, column: 8, scope: !3184)
!3270 = !DILocation(line: 1025, column: 8, scope: !3192)
!3271 = !DILocation(line: 1027, column: 12, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 1027, column: 12)
!3273 = !DILocation(line: 1027, column: 22, scope: !3272)
!3274 = !DILocation(line: 1027, column: 25, scope: !3272)
!3275 = !DILocation(line: 1027, column: 36, scope: !3272)
!3276 = !DILocation(line: 1027, column: 12, scope: !3192)
!3277 = !DILocation(line: 1029, column: 5, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 1028, column: 3)
!3279 = !DILocation(line: 1030, column: 24, scope: !3278)
!3280 = !DILocation(line: 1030, column: 5, scope: !3278)
!3281 = !DILocation(line: 1031, column: 14, scope: !3278)
!3282 = !DILocation(line: 1031, column: 5, scope: !3278)
!3283 = !DILocation(line: 1032, column: 3, scope: !3278)
!3284 = !DILocation(line: 1033, column: 26, scope: !3192)
!3285 = !DILocation(line: 1034, column: 13, scope: !3192)
!3286 = !DILocation(line: 1035, column: 8, scope: !3192)
!3287 = !DILocation(line: 1036, column: 8, scope: !3192)
!3288 = !DILocation(line: 1038, column: 6, scope: !3193)
!3289 = !DILocation(line: 1043, column: 8, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1043, column: 8)
!3291 = !DILocation(line: 1043, column: 18, scope: !3290)
!3292 = !DILocation(line: 1043, column: 22, scope: !3290)
!3293 = !DILocation(line: 1043, column: 33, scope: !3290)
!3294 = !DILocation(line: 1043, column: 8, scope: !3184)
!3295 = !DILocation(line: 1045, column: 8, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1044, column: 6)
!3297 = !DILocation(line: 1046, column: 27, scope: !3296)
!3298 = !DILocation(line: 1046, column: 8, scope: !3296)
!3299 = !DILocation(line: 1047, column: 6, scope: !3296)
!3300 = !DILocation(line: 1055, column: 8, scope: !3222)
!3301 = !DILocation(line: 1055, column: 11, scope: !3222)
!3302 = !DILocation(line: 1054, column: 8, scope: !3184)
!3303 = !DILocation(line: 1058, column: 35, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 1056, column: 6)
!3305 = !DILocation(line: 1059, column: 6, scope: !3304)
!3306 = !DILocation(line: 1064, column: 12, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1063, column: 8)
!3308 = !DILocation(line: 1064, column: 8, scope: !3307)
!3309 = !DILocation(line: 1065, column: 21, scope: !3307)
!3310 = !DILocation(line: 1065, column: 6, scope: !3307)
!3311 = !DILocation(line: 1068, column: 8, scope: !3184)
!3312 = !DILocation(line: 1069, column: 6, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1068, column: 8)
!3314 = !DILocation(line: 1074, column: 15, scope: !3197)
!3315 = !DILocation(line: 1078, column: 12, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1078, column: 12)
!3317 = !DILocation(line: 1078, column: 12, scope: !3197)
!3318 = !DILocation(line: 1079, column: 3, scope: !3316)
!3319 = !DILocation(line: 1081, column: 19, scope: !3196)
!3320 = !DILocation(line: 1082, column: 19, scope: !3196)
!3321 = !DILocation(line: 1082, column: 45, scope: !3196)
!3322 = !DILocation(line: 1082, column: 23, scope: !3196)
!3323 = !DILocation(line: 1083, column: 23, scope: !3196)
!3324 = !DILocation(line: 1081, column: 19, scope: !3197)
!3325 = !DILocation(line: 1085, column: 28, scope: !3195)
!3326 = !DILocation(line: 0, scope: !3195)
!3327 = !DILocation(line: 1087, column: 21, scope: !3328)
!3328 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 1087, column: 21)
!3329 = !DILocation(line: 1087, column: 37, scope: !3328)
!3330 = !DILocation(line: 1087, column: 21, scope: !3195)
!3331 = !DILocation(line: 1088, column: 19, scope: !3328)
!3332 = !DILocation(line: 1092, column: 8, scope: !3197)
!3333 = !DILocation(line: 1093, column: 13, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3197, file: !3, line: 1093, column: 12)
!3335 = !DILocation(line: 1093, column: 12, scope: !3197)
!3336 = !DILocation(line: 1095, column: 6, scope: !3197)
!3337 = !DILocation(line: 1097, column: 8, scope: !3338)
!3338 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 1097, column: 8)
!3339 = !DILocation(line: 1097, column: 18, scope: !3338)
!3340 = !DILocation(line: 1097, column: 22, scope: !3338)
!3341 = !DILocation(line: 1097, column: 33, scope: !3338)
!3342 = !DILocation(line: 1097, column: 8, scope: !3184)
!3343 = !DILocation(line: 1099, column: 12, scope: !3344)
!3344 = distinct !DILexicalBlock(scope: !3338, file: !3, line: 1098, column: 6)
!3345 = !DILocation(line: 1101, column: 5, scope: !3346)
!3346 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 1100, column: 3)
!3347 = distinct !DILexicalBlock(scope: !3344, file: !3, line: 1099, column: 12)
!3348 = !DILocation(line: 1102, column: 24, scope: !3346)
!3349 = !DILocation(line: 1102, column: 5, scope: !3346)
!3350 = !DILocation(line: 1103, column: 14, scope: !3346)
!3351 = !DILocation(line: 1103, column: 5, scope: !3346)
!3352 = !DILocation(line: 1104, column: 3, scope: !3346)
!3353 = !DILocation(line: 1106, column: 3, scope: !3347)
!3354 = !DILocation(line: 1108, column: 2, scope: !3185)
!3355 = !DILocation(line: 1109, column: 5, scope: !3181)
!3356 = !DILocation(line: 0, scope: !3181)
!3357 = distinct !{!3357, !3212, !3358}
!3358 = !DILocation(line: 1109, column: 5, scope: !3182)
!3359 = !DILocation(line: 1112, column: 19, scope: !3161)
!3360 = !DILocation(line: 1112, column: 8, scope: !3161)
!3361 = !DILocation(line: 1111, column: 3, scope: !3161)
!3362 = !DILocation(line: 1113, column: 29, scope: !3161)
!3363 = !DILocation(line: 1114, column: 19, scope: !3161)
!3364 = !DILocation(line: 1114, column: 8, scope: !3161)
!3365 = !DILocation(line: 1113, column: 3, scope: !3161)
!3366 = !DILocation(line: 1115, column: 29, scope: !3161)
!3367 = !DILocation(line: 1116, column: 19, scope: !3161)
!3368 = !DILocation(line: 1116, column: 8, scope: !3161)
!3369 = !DILocation(line: 1115, column: 3, scope: !3161)
!3370 = !DILocation(line: 1117, column: 29, scope: !3161)
!3371 = !DILocation(line: 1118, column: 19, scope: !3161)
!3372 = !DILocation(line: 1118, column: 8, scope: !3161)
!3373 = !DILocation(line: 1117, column: 3, scope: !3161)
!3374 = !DILocation(line: 1119, column: 3, scope: !3161)
!3375 = !DILocation(line: 1120, column: 1, scope: !3161)
!3376 = distinct !DISubprogram(name: "gsi_end_p", scope: !391, file: !391, line: 4467, type: !3377, scopeLine: 4468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3379)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!467, !2550}
!3379 = !{!3380}
!3380 = !DILocalVariable(name: "i", arg: 1, scope: !3376, file: !391, line: 4467, type: !2550)
!3381 = !DILocation(line: 4467, column: 33, scope: !3376)
!3382 = !DILocation(line: 4469, column: 12, scope: !3376)
!3383 = !DILocation(line: 4469, column: 16, scope: !3376)
!3384 = !DILocation(line: 4469, column: 10, scope: !3376)
!3385 = !DILocation(line: 4469, column: 3, scope: !3376)
!3386 = distinct !DISubprogram(name: "replace_phi_args_in", scope: !3, file: !3, line: 908, type: !3387, scopeLine: 909, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3389)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{null, !799, !3164}
!3389 = !{!3390, !3391, !3392, !3393, !3394, !3398}
!3390 = !DILocalVariable(name: "phi", arg: 1, scope: !3386, file: !3, line: 908, type: !799)
!3391 = !DILocalVariable(name: "prop_value", arg: 2, scope: !3386, file: !3, line: 908, type: !3164)
!3392 = !DILocalVariable(name: "i", scope: !3386, file: !3, line: 910, type: !944)
!3393 = !DILocalVariable(name: "replaced", scope: !3386, file: !3, line: 911, type: !467)
!3394 = !DILocalVariable(name: "arg", scope: !3395, file: !3, line: 921, type: !475)
!3395 = distinct !DILexicalBlock(scope: !3396, file: !3, line: 920, column: 5)
!3396 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 919, column: 3)
!3397 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 919, column: 3)
!3398 = !DILocalVariable(name: "val", scope: !3399, file: !3, line: 925, type: !475)
!3399 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 924, column: 2)
!3400 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 923, column: 11)
!3401 = !DILocation(line: 0, scope: !3386)
!3402 = !DILocation(line: 913, column: 7, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 913, column: 7)
!3404 = !DILocation(line: 913, column: 17, scope: !3403)
!3405 = !DILocation(line: 913, column: 21, scope: !3403)
!3406 = !DILocation(line: 913, column: 32, scope: !3403)
!3407 = !DILocation(line: 913, column: 7, scope: !3386)
!3408 = !DILocation(line: 915, column: 7, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3403, file: !3, line: 914, column: 5)
!3410 = !DILocation(line: 916, column: 26, scope: !3409)
!3411 = !DILocation(line: 916, column: 7, scope: !3409)
!3412 = !DILocation(line: 917, column: 5, scope: !3409)
!3413 = !DILocation(line: 919, column: 8, scope: !3397)
!3414 = !DILocation(line: 0, scope: !3397)
!3415 = !DILocation(line: 919, column: 19, scope: !3396)
!3416 = !DILocation(line: 919, column: 17, scope: !3396)
!3417 = !DILocation(line: 919, column: 3, scope: !3397)
!3418 = !DILocation(line: 921, column: 18, scope: !3395)
!3419 = !DILocation(line: 0, scope: !3395)
!3420 = !DILocation(line: 923, column: 11, scope: !3400)
!3421 = !DILocation(line: 923, column: 27, scope: !3400)
!3422 = !DILocation(line: 923, column: 11, scope: !3395)
!3423 = !DILocation(line: 925, column: 26, scope: !3399)
!3424 = !DILocation(line: 925, column: 15, scope: !3399)
!3425 = !DILocation(line: 925, column: 50, scope: !3399)
!3426 = !DILocation(line: 0, scope: !3399)
!3427 = !DILocation(line: 927, column: 8, scope: !3428)
!3428 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 927, column: 8)
!3429 = !DILocation(line: 927, column: 19, scope: !3428)
!3430 = !DILocation(line: 927, column: 12, scope: !3428)
!3431 = !DILocation(line: 927, column: 29, scope: !3428)
!3432 = !DILocation(line: 927, column: 8, scope: !3399)
!3433 = !DILocation(line: 929, column: 12, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 929, column: 12)
!3435 = distinct !DILexicalBlock(scope: !3428, file: !3, line: 928, column: 6)
!3436 = !DILocation(line: 929, column: 28, scope: !3434)
!3437 = !DILocation(line: 929, column: 12, scope: !3435)
!3438 = !DILocation(line: 930, column: 28, scope: !3434)
!3439 = !DILocation(line: 930, column: 3, scope: !3434)
!3440 = !DILocation(line: 932, column: 27, scope: !3434)
!3441 = !DILocation(line: 934, column: 25, scope: !3435)
!3442 = !DILocation(line: 934, column: 8, scope: !3435)
!3443 = !DILocation(line: 940, column: 12, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 940, column: 12)
!3445 = !DILocation(line: 940, column: 28, scope: !3444)
!3446 = !DILocation(line: 941, column: 5, scope: !3444)
!3447 = !DILocation(line: 941, column: 8, scope: !3444)
!3448 = !DILocation(line: 941, column: 38, scope: !3444)
!3449 = !DILocation(line: 941, column: 44, scope: !3444)
!3450 = !DILocation(line: 940, column: 12, scope: !3435)
!3451 = !DILocation(line: 942, column: 41, scope: !3444)
!3452 = !DILocation(line: 942, column: 3, scope: !3444)
!3453 = !DILocation(line: 919, column: 47, scope: !3396)
!3454 = !DILocation(line: 919, column: 3, scope: !3396)
!3455 = distinct !{!3455, !3417, !3456}
!3456 = !DILocation(line: 945, column: 5, scope: !3397)
!3457 = !DILocation(line: 947, column: 7, scope: !3458)
!3458 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 947, column: 7)
!3459 = !DILocation(line: 947, column: 17, scope: !3458)
!3460 = !DILocation(line: 947, column: 21, scope: !3458)
!3461 = !DILocation(line: 947, column: 32, scope: !3458)
!3462 = !DILocation(line: 947, column: 7, scope: !3386)
!3463 = !DILocation(line: 949, column: 12, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 949, column: 11)
!3465 = distinct !DILexicalBlock(scope: !3458, file: !3, line: 948, column: 5)
!3466 = !DILocation(line: 949, column: 11, scope: !3465)
!3467 = !DILocation(line: 950, column: 2, scope: !3464)
!3468 = !DILocation(line: 953, column: 4, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3464, file: !3, line: 952, column: 2)
!3470 = !DILocation(line: 954, column: 23, scope: !3469)
!3471 = !DILocation(line: 954, column: 4, scope: !3469)
!3472 = !DILocation(line: 955, column: 13, scope: !3469)
!3473 = !DILocation(line: 955, column: 4, scope: !3469)
!3474 = !DILocation(line: 958, column: 1, scope: !3386)
!3475 = distinct !DISubprogram(name: "gsi_next", scope: !391, file: !391, line: 4485, type: !3476, scopeLine: 4486, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3478)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{null, !2549}
!3478 = !{!3479}
!3479 = !DILocalVariable(name: "i", arg: 1, scope: !3475, file: !391, line: 4485, type: !2549)
!3480 = !DILocation(line: 0, scope: !3475)
!3481 = !DILocation(line: 4487, column: 15, scope: !3475)
!3482 = !DILocation(line: 4487, column: 20, scope: !3475)
!3483 = !DILocation(line: 4487, column: 10, scope: !3475)
!3484 = !DILocation(line: 4488, column: 1, scope: !3475)
!3485 = distinct !DISubprogram(name: "gsi_last_bb", scope: !391, file: !391, line: 4450, type: !3486, scopeLine: 4451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3488)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!2550, !1232}
!3488 = !{!3489, !3490, !3491}
!3489 = !DILocalVariable(name: "bb", arg: 1, scope: !3485, file: !391, line: 4450, type: !1232)
!3490 = !DILocalVariable(name: "i", scope: !3485, file: !391, line: 4452, type: !2550)
!3491 = !DILocalVariable(name: "seq", scope: !3485, file: !391, line: 4453, type: !789)
!3492 = !DILocation(line: 0, scope: !3485)
!3493 = !DILocation(line: 4452, column: 24, scope: !3485)
!3494 = !DILocation(line: 4455, column: 9, scope: !3485)
!3495 = !DILocation(line: 4456, column: 11, scope: !3485)
!3496 = !DILocation(line: 4456, column: 5, scope: !3485)
!3497 = !DILocation(line: 4456, column: 9, scope: !3485)
!3498 = !DILocation(line: 4457, column: 5, scope: !3485)
!3499 = !DILocation(line: 4457, column: 9, scope: !3485)
!3500 = !DILocation(line: 4458, column: 5, scope: !3485)
!3501 = !DILocation(line: 4458, column: 8, scope: !3485)
!3502 = !DILocation(line: 4461, column: 1, scope: !3485)
!3503 = distinct !DISubprogram(name: "gsi_prev", scope: !391, file: !391, line: 4493, type: !3476, scopeLine: 4494, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3504)
!3504 = !{!3505}
!3505 = !DILocalVariable(name: "i", arg: 1, scope: !3503, file: !391, line: 4493, type: !2549)
!3506 = !DILocation(line: 0, scope: !3503)
!3507 = !DILocation(line: 4495, column: 15, scope: !3503)
!3508 = !DILocation(line: 4495, column: 20, scope: !3503)
!3509 = !DILocation(line: 4495, column: 10, scope: !3503)
!3510 = !DILocation(line: 4496, column: 1, scope: !3503)
!3511 = distinct !DISubprogram(name: "gimple_assign_rhs1", scope: !391, file: !391, line: 1727, type: !2675, scopeLine: 1728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3512)
!3512 = !{!3513}
!3513 = !DILocalVariable(name: "gs", arg: 1, scope: !3511, file: !391, line: 1727, type: !2667)
!3514 = !DILocation(line: 0, scope: !3511)
!3515 = !DILocation(line: 1730, column: 10, scope: !3511)
!3516 = !DILocation(line: 1730, column: 3, scope: !3511)
!3517 = distinct !DISubprogram(name: "has_zero_uses", scope: !2476, file: !2476, line: 332, type: !2393, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3518)
!3518 = !{!3519, !3520}
!3519 = !DILocalVariable(name: "var", arg: 1, scope: !3517, file: !2476, line: 332, type: !2395)
!3520 = !DILocalVariable(name: "ptr", scope: !3517, file: !2476, line: 334, type: !3521)
!3521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3522)
!3522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3523, size: 64)
!3523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1815)
!3524 = !DILocation(line: 0, scope: !3517)
!3525 = !DILocation(line: 334, column: 42, scope: !3517)
!3526 = !DILocation(line: 337, column: 19, scope: !3527)
!3527 = distinct !DILexicalBlock(scope: !3517, file: !2476, line: 337, column: 7)
!3528 = !DILocation(line: 337, column: 11, scope: !3527)
!3529 = !DILocation(line: 337, column: 7, scope: !3517)
!3530 = !DILocation(line: 342, column: 8, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3517, file: !2476, line: 342, column: 7)
!3532 = !DILocation(line: 342, column: 7, scope: !3517)
!3533 = !DILocation(line: 345, column: 10, scope: !3517)
!3534 = !DILocation(line: 345, column: 3, scope: !3517)
!3535 = !DILocation(line: 346, column: 1, scope: !3517)
!3536 = distinct !DISubprogram(name: "replace_uses_in", scope: !3, file: !3, line: 869, type: !3537, scopeLine: 870, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3539)
!3537 = !DISubroutineType(types: !3538)
!3538 = !{!467, !799, !3164}
!3539 = !{!3540, !3541, !3542, !3543, !3544, !3545, !3549}
!3540 = !DILocalVariable(name: "stmt", arg: 1, scope: !3536, file: !3, line: 869, type: !799)
!3541 = !DILocalVariable(name: "prop_value", arg: 2, scope: !3536, file: !3, line: 869, type: !3164)
!3542 = !DILocalVariable(name: "replaced", scope: !3536, file: !3, line: 871, type: !467)
!3543 = !DILocalVariable(name: "use", scope: !3536, file: !3, line: 872, type: !1813)
!3544 = !DILocalVariable(name: "iter", scope: !3536, file: !3, line: 873, type: !2441)
!3545 = !DILocalVariable(name: "tuse", scope: !3546, file: !3, line: 877, type: !475)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 876, column: 5)
!3547 = distinct !DILexicalBlock(scope: !3548, file: !3, line: 875, column: 3)
!3548 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 875, column: 3)
!3549 = !DILocalVariable(name: "val", scope: !3546, file: !3, line: 878, type: !475)
!3550 = !DILocation(line: 0, scope: !3536)
!3551 = !DILocation(line: 873, column: 3, scope: !3536)
!3552 = !DILocation(line: 875, column: 3, scope: !3548)
!3553 = !DILocation(line: 871, column: 8, scope: !3536)
!3554 = !DILocation(line: 0, scope: !3548)
!3555 = !DILocation(line: 875, column: 3, scope: !3547)
!3556 = !DILocation(line: 877, column: 19, scope: !3546)
!3557 = !DILocation(line: 0, scope: !3546)
!3558 = !DILocation(line: 878, column: 29, scope: !3546)
!3559 = !DILocation(line: 878, column: 18, scope: !3546)
!3560 = !DILocation(line: 878, column: 54, scope: !3546)
!3561 = !DILocation(line: 880, column: 15, scope: !3562)
!3562 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 880, column: 11)
!3563 = !DILocation(line: 880, column: 30, scope: !3562)
!3564 = !DILocation(line: 880, column: 23, scope: !3562)
!3565 = !DILocation(line: 883, column: 11, scope: !3566)
!3566 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 883, column: 11)
!3567 = !DILocation(line: 883, column: 30, scope: !3566)
!3568 = !DILocation(line: 884, column: 4, scope: !3566)
!3569 = !DILocation(line: 884, column: 8, scope: !3566)
!3570 = !DILocation(line: 883, column: 11, scope: !3546)
!3571 = !DILocation(line: 887, column: 12, scope: !3572)
!3572 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 887, column: 11)
!3573 = !DILocation(line: 887, column: 11, scope: !3546)
!3574 = !DILocation(line: 890, column: 11, scope: !3575)
!3575 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 890, column: 11)
!3576 = !DILocation(line: 890, column: 27, scope: !3575)
!3577 = !DILocation(line: 890, column: 11, scope: !3546)
!3578 = !DILocation(line: 891, column: 27, scope: !3575)
!3579 = !DILocation(line: 891, column: 2, scope: !3575)
!3580 = !DILocation(line: 893, column: 26, scope: !3575)
!3581 = !DILocation(line: 895, column: 7, scope: !3546)
!3582 = !DILocation(line: 898, column: 5, scope: !3547)
!3583 = distinct !{!3583, !3552, !3584}
!3584 = !DILocation(line: 898, column: 5, scope: !3548)
!3585 = !DILocation(line: 901, column: 1, scope: !3536)
!3586 = !DILocation(line: 900, column: 3, scope: !3536)
!3587 = distinct !DISubprogram(name: "is_gimple_assign", scope: !391, file: !391, line: 1677, type: !2665, scopeLine: 1678, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3588 = !{!3589}
!3589 = !DILocalVariable(name: "gs", arg: 1, scope: !3587, file: !391, line: 1677, type: !2667)
!3590 = !DILocation(line: 0, scope: !3587)
!3591 = !DILocation(line: 1679, column: 10, scope: !3587)
!3592 = !DILocation(line: 1679, column: 27, scope: !3587)
!3593 = !DILocation(line: 1679, column: 3, scope: !3587)
!3594 = distinct !DISubprogram(name: "get_gimple_rhs_class", scope: !391, file: !391, line: 1686, type: !3595, scopeLine: 1687, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!459, !134}
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "code", arg: 1, scope: !3594, file: !391, line: 1686, type: !134)
!3599 = !DILocation(line: 0, scope: !3594)
!3600 = !DILocation(line: 1688, column: 34, scope: !3594)
!3601 = !DILocation(line: 1688, column: 10, scope: !3594)
!3602 = !DILocation(line: 1688, column: 3, scope: !3594)
!3603 = distinct !DISubprogram(name: "gimple_assign_rhs_code", scope: !391, file: !391, line: 1815, type: !3604, scopeLine: 1816, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3606)
!3604 = !DISubroutineType(types: !3605)
!3605 = !{!134, !2667}
!3606 = !{!3607, !3608}
!3607 = !DILocalVariable(name: "gs", arg: 1, scope: !3603, file: !391, line: 1815, type: !2667)
!3608 = !DILocalVariable(name: "code", scope: !3603, file: !391, line: 1817, type: !134)
!3609 = !DILocation(line: 0, scope: !3603)
!3610 = !DILocation(line: 1820, column: 10, scope: !3603)
!3611 = !DILocation(line: 1821, column: 7, scope: !3612)
!3612 = distinct !DILexicalBlock(scope: !3603, file: !391, line: 1821, column: 7)
!3613 = !DILocation(line: 1821, column: 35, scope: !3612)
!3614 = !DILocation(line: 1821, column: 7, scope: !3603)
!3615 = !DILocation(line: 1822, column: 12, scope: !3612)
!3616 = !DILocation(line: 1822, column: 5, scope: !3612)
!3617 = !DILocation(line: 1824, column: 3, scope: !3603)
!3618 = distinct !DISubprogram(name: "update_stmt", scope: !391, file: !391, line: 1456, type: !3619, scopeLine: 1457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3621)
!3619 = !DISubroutineType(types: !3620)
!3620 = !{null, !799}
!3621 = !{!3622}
!3622 = !DILocalVariable(name: "s", arg: 1, scope: !3618, file: !391, line: 1456, type: !799)
!3623 = !DILocation(line: 0, scope: !3618)
!3624 = !DILocation(line: 1458, column: 7, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3618, file: !391, line: 1458, column: 7)
!3626 = !DILocation(line: 1458, column: 7, scope: !3618)
!3627 = !DILocation(line: 1460, column: 7, scope: !3628)
!3628 = distinct !DILexicalBlock(scope: !3625, file: !391, line: 1459, column: 5)
!3629 = !DILocation(line: 1461, column: 7, scope: !3628)
!3630 = !DILocation(line: 1462, column: 5, scope: !3628)
!3631 = !DILocation(line: 1463, column: 1, scope: !3618)
!3632 = distinct !DISubprogram(name: "is_gimple_debug", scope: !391, file: !391, line: 3249, type: !2665, scopeLine: 3250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3633)
!3633 = !{!3634}
!3634 = !DILocalVariable(name: "gs", arg: 1, scope: !3632, file: !391, line: 3249, type: !2667)
!3635 = !DILocation(line: 0, scope: !3632)
!3636 = !DILocation(line: 3251, column: 10, scope: !3632)
!3637 = !DILocation(line: 3251, column: 27, scope: !3632)
!3638 = !DILocation(line: 3251, column: 3, scope: !3632)
!3639 = distinct !DISubprogram(name: "op_iter_init", scope: !2476, file: !2476, line: 742, type: !3640, scopeLine: 743, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3642)
!3640 = !DISubroutineType(types: !3641)
!3641 = !{null, !2494, !799, !468}
!3642 = !{!3643, !3644, !3645}
!3643 = !DILocalVariable(name: "ptr", arg: 1, scope: !3639, file: !2476, line: 742, type: !2494)
!3644 = !DILocalVariable(name: "stmt", arg: 2, scope: !3639, file: !2476, line: 742, type: !799)
!3645 = !DILocalVariable(name: "flags", arg: 3, scope: !3639, file: !2476, line: 742, type: !468)
!3646 = !DILocation(line: 0, scope: !3639)
!3647 = !DILocation(line: 746, column: 3, scope: !3639)
!3648 = !DILocation(line: 748, column: 22, scope: !3639)
!3649 = !DILocation(line: 748, column: 15, scope: !3639)
!3650 = !DILocation(line: 748, column: 52, scope: !3639)
!3651 = !DILocation(line: 748, column: 8, scope: !3639)
!3652 = !DILocation(line: 748, column: 13, scope: !3639)
!3653 = !DILocation(line: 749, column: 15, scope: !3654)
!3654 = distinct !DILexicalBlock(scope: !3639, file: !2476, line: 749, column: 7)
!3655 = !DILocation(line: 750, column: 7, scope: !3654)
!3656 = !DILocation(line: 750, column: 10, scope: !3654)
!3657 = !DILocation(line: 751, column: 7, scope: !3654)
!3658 = !DILocation(line: 751, column: 10, scope: !3654)
!3659 = !DILocation(line: 751, column: 29, scope: !3654)
!3660 = !DILocation(line: 749, column: 7, scope: !3639)
!3661 = !DILocation(line: 752, column: 22, scope: !3654)
!3662 = !DILocation(line: 752, column: 28, scope: !3654)
!3663 = !DILocation(line: 752, column: 15, scope: !3654)
!3664 = !DILocation(line: 752, column: 5, scope: !3654)
!3665 = !DILocation(line: 753, column: 22, scope: !3639)
!3666 = !DILocation(line: 753, column: 15, scope: !3639)
!3667 = !DILocation(line: 753, column: 52, scope: !3639)
!3668 = !DILocation(line: 753, column: 8, scope: !3639)
!3669 = !DILocation(line: 753, column: 13, scope: !3639)
!3670 = !DILocation(line: 754, column: 15, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3639, file: !2476, line: 754, column: 7)
!3672 = !DILocation(line: 755, column: 7, scope: !3671)
!3673 = !DILocation(line: 755, column: 10, scope: !3671)
!3674 = !DILocation(line: 756, column: 7, scope: !3671)
!3675 = !DILocation(line: 756, column: 10, scope: !3671)
!3676 = !DILocation(line: 756, column: 29, scope: !3671)
!3677 = !DILocation(line: 754, column: 7, scope: !3639)
!3678 = !DILocation(line: 757, column: 22, scope: !3671)
!3679 = !DILocation(line: 757, column: 28, scope: !3671)
!3680 = !DILocation(line: 757, column: 15, scope: !3671)
!3681 = !DILocation(line: 757, column: 5, scope: !3671)
!3682 = !DILocation(line: 758, column: 8, scope: !3639)
!3683 = !DILocation(line: 758, column: 13, scope: !3639)
!3684 = !DILocation(line: 760, column: 8, scope: !3639)
!3685 = !DILocation(line: 760, column: 14, scope: !3639)
!3686 = !DILocation(line: 761, column: 8, scope: !3639)
!3687 = !DILocation(line: 761, column: 16, scope: !3639)
!3688 = !DILocation(line: 762, column: 8, scope: !3639)
!3689 = !DILocation(line: 762, column: 17, scope: !3639)
!3690 = !DILocation(line: 763, column: 1, scope: !3639)
!3691 = distinct !DISubprogram(name: "gimple_def_ops", scope: !391, file: !391, line: 1292, type: !3692, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3694)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!828, !2667}
!3694 = !{!3695}
!3695 = !DILocalVariable(name: "g", arg: 1, scope: !3691, file: !391, line: 1292, type: !2667)
!3696 = !DILocation(line: 0, scope: !3691)
!3697 = !DILocation(line: 1294, column: 8, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3691, file: !391, line: 1294, column: 7)
!3699 = !DILocation(line: 1294, column: 7, scope: !3691)
!3700 = !DILocation(line: 1296, column: 26, scope: !3691)
!3701 = !DILocation(line: 1296, column: 3, scope: !3691)
!3702 = !DILocation(line: 1297, column: 1, scope: !3691)
!3703 = distinct !DISubprogram(name: "gimple_use_ops", scope: !391, file: !391, line: 1313, type: !3704, scopeLine: 1314, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3706)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!835, !2667}
!3706 = !{!3707}
!3707 = !DILocalVariable(name: "g", arg: 1, scope: !3703, file: !391, line: 1313, type: !2667)
!3708 = !DILocation(line: 0, scope: !3703)
!3709 = !DILocation(line: 1315, column: 8, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3703, file: !391, line: 1315, column: 7)
!3711 = !DILocation(line: 1315, column: 7, scope: !3703)
!3712 = !DILocation(line: 1317, column: 26, scope: !3703)
!3713 = !DILocation(line: 1317, column: 3, scope: !3703)
!3714 = !DILocation(line: 1318, column: 1, scope: !3703)
!3715 = distinct !DISubprogram(name: "gimple_has_ops", scope: !391, file: !391, line: 1274, type: !2665, scopeLine: 1275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3716)
!3716 = !{!3717}
!3717 = !DILocalVariable(name: "g", arg: 1, scope: !3715, file: !391, line: 1274, type: !2667)
!3718 = !DILocation(line: 0, scope: !3715)
!3719 = !DILocation(line: 1276, column: 10, scope: !3715)
!3720 = !DILocation(line: 1276, column: 26, scope: !3715)
!3721 = !DILocation(line: 1276, column: 41, scope: !3715)
!3722 = !DILocation(line: 1276, column: 44, scope: !3715)
!3723 = !DILocation(line: 1276, column: 60, scope: !3715)
!3724 = !DILocation(line: 1276, column: 3, scope: !3715)
!3725 = distinct !DISubprogram(name: "get_use_from_ptr", scope: !2476, file: !2476, line: 427, type: !3726, scopeLine: 428, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3728)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!475, !1813}
!3728 = !{!3729}
!3729 = !DILocalVariable(name: "use", arg: 1, scope: !3725, file: !2476, line: 427, type: !1813)
!3730 = !DILocation(line: 0, scope: !3725)
!3731 = !DILocation(line: 429, column: 17, scope: !3725)
!3732 = !DILocation(line: 429, column: 10, scope: !3725)
!3733 = !DILocation(line: 429, column: 3, scope: !3725)
!3734 = distinct !DISubprogram(name: "get_def_from_ptr", scope: !2476, file: !2476, line: 434, type: !3735, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3738)
!3735 = !DISubroutineType(types: !3736)
!3736 = !{!475, !3737}
!3737 = !DIDerivedType(tag: DW_TAG_typedef, name: "def_operand_p", file: !378, line: 27, baseType: !833)
!3738 = !{!3739}
!3739 = !DILocalVariable(name: "def", arg: 1, scope: !3734, file: !2476, line: 434, type: !3737)
!3740 = !DILocation(line: 0, scope: !3734)
!3741 = !DILocation(line: 436, column: 10, scope: !3734)
!3742 = !DILocation(line: 436, column: 3, scope: !3734)
!3743 = distinct !DISubprogram(name: "gimple_op", scope: !391, file: !391, line: 1631, type: !3744, scopeLine: 1632, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3746)
!3744 = !DISubroutineType(types: !3745)
!3745 = !{!475, !2667, !7}
!3746 = !{!3747, !3748}
!3747 = !DILocalVariable(name: "gs", arg: 1, scope: !3743, file: !391, line: 1631, type: !2667)
!3748 = !DILocalVariable(name: "i", arg: 2, scope: !3743, file: !391, line: 1631, type: !7)
!3749 = !DILocation(line: 0, scope: !3743)
!3750 = !DILocation(line: 1633, column: 7, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3743, file: !391, line: 1633, column: 7)
!3752 = !DILocation(line: 1633, column: 7, scope: !3743)
!3753 = !DILocation(line: 1638, column: 14, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3751, file: !391, line: 1634, column: 5)
!3755 = !DILocation(line: 1638, column: 7, scope: !3754)
!3756 = !DILocation(line: 0, scope: !3751)
!3757 = !DILocation(line: 1642, column: 1, scope: !3743)
!3758 = distinct !DISubprogram(name: "gimple_ops", scope: !391, file: !391, line: 1614, type: !3759, scopeLine: 1615, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3761)
!3759 = !DISubroutineType(types: !3760)
!3760 = !{!833, !799}
!3761 = !{!3762, !3763}
!3762 = !DILocalVariable(name: "gs", arg: 1, scope: !3758, file: !391, line: 1614, type: !799)
!3763 = !DILocalVariable(name: "off", scope: !3758, file: !391, line: 1616, type: !944)
!3764 = !DILocation(line: 0, scope: !3758)
!3765 = !DILocation(line: 1621, column: 28, scope: !3758)
!3766 = !DILocation(line: 1621, column: 9, scope: !3758)
!3767 = !DILocation(line: 1622, column: 3, scope: !3758)
!3768 = !DILocation(line: 1624, column: 20, scope: !3758)
!3769 = !DILocation(line: 1624, column: 32, scope: !3758)
!3770 = !DILocation(line: 1624, column: 10, scope: !3758)
!3771 = !DILocation(line: 1624, column: 3, scope: !3758)
!3772 = distinct !DISubprogram(name: "gimple_statement_structure", scope: !391, file: !391, line: 1073, type: !3773, scopeLine: 1074, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3775)
!3773 = !DISubroutineType(types: !3774)
!3774 = !{!429, !799}
!3775 = !{!3776}
!3776 = !DILocalVariable(name: "gs", arg: 1, scope: !3772, file: !391, line: 1073, type: !799)
!3777 = !DILocation(line: 0, scope: !3772)
!3778 = !DILocation(line: 1075, column: 24, scope: !3772)
!3779 = !DILocation(line: 1075, column: 10, scope: !3772)
!3780 = !DILocation(line: 1075, column: 3, scope: !3772)
!3781 = distinct !DISubprogram(name: "gss_for_code", scope: !391, file: !391, line: 1061, type: !3782, scopeLine: 1062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3784)
!3782 = !DISubroutineType(types: !3783)
!3783 = !{!429, !390}
!3784 = !{!3785}
!3785 = !DILocalVariable(name: "code", arg: 1, scope: !3781, file: !391, line: 1061, type: !390)
!3786 = !DILocation(line: 0, scope: !3781)
!3787 = !DILocation(line: 1066, column: 10, scope: !3781)
!3788 = !DILocation(line: 1066, column: 3, scope: !3781)
!3789 = distinct !DISubprogram(name: "VEC_tree_base_length", scope: !135, file: !135, line: 182, type: !3790, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3790 = !DISubroutineType(types: !3791)
!3791 = !{!7, !3792}
!3792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3793, size: 64)
!3793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1330)
!3794 = !{!3795}
!3795 = !DILocalVariable(name: "vec_", arg: 1, scope: !3789, file: !135, line: 182, type: !3792)
!3796 = !DILocation(line: 0, scope: !3789)
!3797 = !DILocation(line: 182, column: 1, scope: !3789)
!3798 = distinct !DISubprogram(name: "VEC_tree_heap_reserve_exact", scope: !135, file: !135, line: 184, type: !3799, scopeLine: 184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3801)
!3799 = !DISubroutineType(types: !3800)
!3800 = !{!468, !2692, !468}
!3801 = !{!3802, !3803, !3804}
!3802 = !DILocalVariable(name: "vec_", arg: 1, scope: !3798, file: !135, line: 184, type: !2692)
!3803 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3798, file: !135, line: 184, type: !468)
!3804 = !DILocalVariable(name: "extend", scope: !3798, file: !135, line: 184, type: !468)
!3805 = !DILocation(line: 0, scope: !3798)
!3806 = !DILocation(line: 184, column: 1, scope: !3798)
!3807 = !DILocation(line: 184, column: 1, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3798, file: !135, line: 184, column: 1)
!3809 = distinct !DISubprogram(name: "VEC_tree_base_space", scope: !135, file: !135, line: 182, type: !3810, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3812)
!3810 = !DISubroutineType(types: !3811)
!3811 = !{!468, !2701, !468}
!3812 = !{!3813, !3814}
!3813 = !DILocalVariable(name: "vec_", arg: 1, scope: !3809, file: !135, line: 182, type: !2701)
!3814 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3809, file: !135, line: 182, type: !468)
!3815 = !DILocation(line: 0, scope: !3809)
!3816 = !DILocation(line: 182, column: 1, scope: !3809)
!3817 = distinct !DISubprogram(name: "gimple_set_op", scope: !391, file: !391, line: 1663, type: !3818, scopeLine: 1664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3820)
!3818 = !DISubroutineType(types: !3819)
!3819 = !{null, !799, !7, !475}
!3820 = !{!3821, !3822, !3823}
!3821 = !DILocalVariable(name: "gs", arg: 1, scope: !3817, file: !391, line: 1663, type: !799)
!3822 = !DILocalVariable(name: "i", arg: 2, scope: !3817, file: !391, line: 1663, type: !7)
!3823 = !DILocalVariable(name: "op", arg: 3, scope: !3817, file: !391, line: 1663, type: !475)
!3824 = !DILocation(line: 0, scope: !3817)
!3825 = !DILocation(line: 1665, column: 3, scope: !3817)
!3826 = !DILocation(line: 1671, column: 3, scope: !3817)
!3827 = !DILocation(line: 1671, column: 22, scope: !3817)
!3828 = !DILocation(line: 1672, column: 1, scope: !3817)
!3829 = distinct !DISubprogram(name: "gimple_num_ops", scope: !391, file: !391, line: 1596, type: !3830, scopeLine: 1597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3832)
!3830 = !DISubroutineType(types: !3831)
!3831 = !{!7, !2667}
!3832 = !{!3833}
!3833 = !DILocalVariable(name: "gs", arg: 1, scope: !3829, file: !391, line: 1596, type: !2667)
!3834 = !DILocation(line: 0, scope: !3829)
!3835 = !DILocation(line: 1598, column: 21, scope: !3829)
!3836 = !DILocation(line: 1598, column: 3, scope: !3829)
!3837 = distinct !DISubprogram(name: "gimple_has_mem_ops", scope: !391, file: !391, line: 1283, type: !2665, scopeLine: 1284, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3838)
!3838 = !{!3839}
!3839 = !DILocalVariable(name: "g", arg: 1, scope: !3837, file: !391, line: 1283, type: !2667)
!3840 = !DILocation(line: 0, scope: !3837)
!3841 = !DILocation(line: 1285, column: 10, scope: !3837)
!3842 = !DILocation(line: 1285, column: 26, scope: !3837)
!3843 = !DILocation(line: 1285, column: 43, scope: !3837)
!3844 = !DILocation(line: 1285, column: 46, scope: !3837)
!3845 = !DILocation(line: 1285, column: 62, scope: !3837)
!3846 = !DILocation(line: 1285, column: 3, scope: !3837)
!3847 = distinct !DISubprogram(name: "VEC_gimple_gc_alloc", scope: !391, file: !391, line: 35, type: !3848, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3850)
!3848 = !DISubroutineType(types: !3849)
!3849 = !{!1312, !468}
!3850 = !{!3851}
!3851 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3847, file: !391, line: 35, type: !468)
!3852 = !DILocation(line: 0, scope: !3847)
!3853 = !DILocation(line: 35, column: 1, scope: !3847)
!3854 = distinct !DISubprogram(name: "VEC_basic_block_heap_alloc", scope: !330, file: !330, line: 283, type: !3855, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3857)
!3855 = !DISubroutineType(types: !3856)
!3856 = !{!1808, !468}
!3857 = !{!3858}
!3858 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3854, file: !330, line: 283, type: !468)
!3859 = !DILocation(line: 0, scope: !3854)
!3860 = !DILocation(line: 283, column: 1, scope: !3854)
!3861 = distinct !DISubprogram(name: "VEC_basic_block_heap_safe_grow", scope: !330, file: !330, line: 283, type: !3862, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3865)
!3862 = !DISubroutineType(types: !3863)
!3863 = !{null, !3864, !468}
!3864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1808, size: 64)
!3865 = !{!3866, !3867}
!3866 = !DILocalVariable(name: "vec_", arg: 1, scope: !3861, file: !330, line: 283, type: !3864)
!3867 = !DILocalVariable(name: "size_", arg: 2, scope: !3861, file: !330, line: 283, type: !468)
!3868 = !DILocation(line: 0, scope: !3861)
!3869 = !DILocation(line: 283, column: 1, scope: !3861)
!3870 = distinct !DISubprogram(name: "gsi_start_bb", scope: !391, file: !391, line: 4418, type: !3486, scopeLine: 4419, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3871)
!3871 = !{!3872, !3873, !3874}
!3872 = !DILocalVariable(name: "bb", arg: 1, scope: !3870, file: !391, line: 4418, type: !1232)
!3873 = !DILocalVariable(name: "i", scope: !3870, file: !391, line: 4420, type: !2550)
!3874 = !DILocalVariable(name: "seq", scope: !3870, file: !391, line: 4421, type: !789)
!3875 = !DILocation(line: 0, scope: !3870)
!3876 = !DILocation(line: 4420, column: 24, scope: !3870)
!3877 = !DILocation(line: 4423, column: 9, scope: !3870)
!3878 = !DILocation(line: 4424, column: 11, scope: !3870)
!3879 = !DILocation(line: 4424, column: 5, scope: !3870)
!3880 = !DILocation(line: 4424, column: 9, scope: !3870)
!3881 = !DILocation(line: 4425, column: 5, scope: !3870)
!3882 = !DILocation(line: 4425, column: 9, scope: !3870)
!3883 = !DILocation(line: 4426, column: 5, scope: !3870)
!3884 = !DILocation(line: 4426, column: 8, scope: !3870)
!3885 = !DILocation(line: 4429, column: 1, scope: !3870)
!3886 = distinct !DISubprogram(name: "gimple_set_plf", scope: !391, file: !391, line: 1235, type: !3887, scopeLine: 1236, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3889)
!3887 = !DISubroutineType(types: !3888)
!3888 = !{null, !799, !455, !467}
!3889 = !{!3890, !3891, !3892}
!3890 = !DILocalVariable(name: "stmt", arg: 1, scope: !3886, file: !391, line: 1235, type: !799)
!3891 = !DILocalVariable(name: "plf", arg: 2, scope: !3886, file: !391, line: 1235, type: !455)
!3892 = !DILocalVariable(name: "val_p", arg: 3, scope: !3886, file: !391, line: 1235, type: !467)
!3893 = !DILocation(line: 0, scope: !3886)
!3894 = !DILocation(line: 1237, column: 7, scope: !3895)
!3895 = distinct !DILexicalBlock(scope: !3886, file: !391, line: 1237, column: 7)
!3896 = !DILocation(line: 1237, column: 7, scope: !3886)
!3897 = !DILocation(line: 1238, column: 18, scope: !3895)
!3898 = !DILocation(line: 1238, column: 22, scope: !3895)
!3899 = !DILocation(line: 1238, column: 5, scope: !3895)
!3900 = !DILocation(line: 1240, column: 18, scope: !3895)
!3901 = !DILocation(line: 1240, column: 22, scope: !3895)
!3902 = !DILocation(line: 1241, column: 1, scope: !3886)
!3903 = distinct !DISubprogram(name: "ei_start_1", scope: !330, file: !330, line: 696, type: !3904, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3906)
!3904 = !DISubroutineType(types: !3905)
!3905 = !{!2856, !2861}
!3906 = !{!3907, !3908}
!3907 = !DILocalVariable(name: "ev", arg: 1, scope: !3903, file: !330, line: 696, type: !2861)
!3908 = !DILocalVariable(name: "i", scope: !3903, file: !330, line: 698, type: !2856)
!3909 = !DILocation(line: 0, scope: !3903)
!3910 = !DILocation(line: 700, column: 5, scope: !3903)
!3911 = !DILocation(line: 700, column: 11, scope: !3903)
!3912 = !DILocation(line: 701, column: 5, scope: !3903)
!3913 = !DILocation(line: 701, column: 15, scope: !3903)
!3914 = !DILocation(line: 703, column: 3, scope: !3903)
!3915 = distinct !DISubprogram(name: "ei_cond", scope: !330, file: !330, line: 771, type: !3916, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3916 = !DISubroutineType(types: !3917)
!3917 = !{!467, !2856, !1875}
!3918 = !{!3919, !3920}
!3919 = !DILocalVariable(name: "ei", arg: 1, scope: !3915, file: !330, line: 771, type: !2856)
!3920 = !DILocalVariable(name: "p", arg: 2, scope: !3915, file: !330, line: 771, type: !1875)
!3921 = !DILocation(line: 0, scope: !3915)
!3922 = !DILocation(line: 773, column: 8, scope: !3923)
!3923 = distinct !DILexicalBlock(scope: !3915, file: !330, line: 773, column: 7)
!3924 = !DILocation(line: 773, column: 7, scope: !3915)
!3925 = !DILocation(line: 775, column: 12, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3923, file: !330, line: 774, column: 5)
!3927 = !DILocation(line: 776, column: 7, scope: !3926)
!3928 = !DILocation(line: 781, column: 7, scope: !3929)
!3929 = distinct !DILexicalBlock(scope: !3923, file: !330, line: 779, column: 5)
!3930 = !DILocation(line: 0, scope: !3923)
!3931 = !DILocation(line: 783, column: 1, scope: !3915)
!3932 = distinct !DISubprogram(name: "ei_next", scope: !330, file: !330, line: 736, type: !3933, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3936)
!3933 = !DISubroutineType(types: !3934)
!3934 = !{null, !3935}
!3935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2856, size: 64)
!3936 = !{!3937}
!3937 = !DILocalVariable(name: "i", arg: 1, scope: !3932, file: !330, line: 736, type: !3935)
!3938 = !DILocation(line: 0, scope: !3932)
!3939 = !DILocation(line: 738, column: 3, scope: !3932)
!3940 = !DILocation(line: 739, column: 11, scope: !3932)
!3941 = !DILocation(line: 740, column: 1, scope: !3932)
!3942 = distinct !DISubprogram(name: "add_control_edge", scope: !3, file: !3, line: 282, type: !3943, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3945)
!3943 = !DISubroutineType(types: !3944)
!3944 = !{null, !779}
!3945 = !{!3946, !3947}
!3946 = !DILocalVariable(name: "e", arg: 1, scope: !3942, file: !3, line: 282, type: !779)
!3947 = !DILocalVariable(name: "bb", scope: !3942, file: !3, line: 284, type: !1232)
!3948 = !DILocation(line: 0, scope: !3942)
!3949 = !DILocation(line: 284, column: 23, scope: !3942)
!3950 = !DILocation(line: 285, column: 13, scope: !3951)
!3951 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 285, column: 7)
!3952 = !DILocation(line: 285, column: 10, scope: !3951)
!3953 = !DILocation(line: 285, column: 7, scope: !3942)
!3954 = !DILocation(line: 289, column: 10, scope: !3955)
!3955 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 289, column: 7)
!3956 = !DILocation(line: 289, column: 16, scope: !3955)
!3957 = !DILocation(line: 289, column: 7, scope: !3942)
!3958 = !DILocation(line: 292, column: 12, scope: !3942)
!3959 = !DILocation(line: 295, column: 7, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 295, column: 7)
!3961 = !DILocation(line: 295, column: 7, scope: !3942)
!3962 = !DILocation(line: 298, column: 3, scope: !3942)
!3963 = !DILocation(line: 300, column: 7, scope: !3964)
!3964 = distinct !DILexicalBlock(scope: !3942, file: !3, line: 300, column: 7)
!3965 = !DILocation(line: 300, column: 17, scope: !3964)
!3966 = !DILocation(line: 300, column: 21, scope: !3964)
!3967 = !DILocation(line: 300, column: 32, scope: !3964)
!3968 = !DILocation(line: 300, column: 7, scope: !3942)
!3969 = !DILocation(line: 302, column: 5, scope: !3964)
!3970 = !DILocation(line: 302, column: 10, scope: !3964)
!3971 = !DILocation(line: 302, column: 20, scope: !3964)
!3972 = !DILocation(line: 302, column: 26, scope: !3964)
!3973 = !DILocation(line: 301, column: 5, scope: !3964)
!3974 = !DILocation(line: 303, column: 1, scope: !3942)
!3975 = distinct !DISubprogram(name: "VEC_basic_block_base_length", scope: !330, file: !330, line: 281, type: !3976, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3980)
!3976 = !DISubroutineType(types: !3977)
!3977 = !{!7, !3978}
!3978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3979, size: 64)
!3979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1240)
!3980 = !{!3981}
!3981 = !DILocalVariable(name: "vec_", arg: 1, scope: !3975, file: !330, line: 281, type: !3978)
!3982 = !DILocation(line: 0, scope: !3975)
!3983 = !DILocation(line: 281, column: 1, scope: !3975)
!3984 = distinct !DISubprogram(name: "VEC_basic_block_heap_reserve_exact", scope: !330, file: !330, line: 283, type: !3985, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3987)
!3985 = !DISubroutineType(types: !3986)
!3986 = !{!468, !3864, !468}
!3987 = !{!3988, !3989, !3990}
!3988 = !DILocalVariable(name: "vec_", arg: 1, scope: !3984, file: !330, line: 283, type: !3864)
!3989 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3984, file: !330, line: 283, type: !468)
!3990 = !DILocalVariable(name: "extend", scope: !3984, file: !330, line: 283, type: !468)
!3991 = !DILocation(line: 0, scope: !3984)
!3992 = !DILocation(line: 283, column: 1, scope: !3984)
!3993 = !DILocation(line: 283, column: 1, scope: !3994)
!3994 = distinct !DILexicalBlock(scope: !3984, file: !330, line: 283, column: 1)
!3995 = distinct !DISubprogram(name: "VEC_basic_block_base_space", scope: !330, file: !330, line: 281, type: !3996, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3996 = !DISubroutineType(types: !3997)
!3997 = !{!468, !3998, !468}
!3998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!3999 = !{!4000, !4001}
!4000 = !DILocalVariable(name: "vec_", arg: 1, scope: !3995, file: !330, line: 281, type: !3998)
!4001 = !DILocalVariable(name: "alloc_", arg: 2, scope: !3995, file: !330, line: 281, type: !468)
!4002 = !DILocation(line: 0, scope: !3995)
!4003 = !DILocation(line: 281, column: 1, scope: !3995)
!4004 = distinct !DISubprogram(name: "bb_seq", scope: !391, file: !391, line: 237, type: !4005, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4010)
!4005 = !DISubroutineType(types: !4006)
!4006 = !{!789, !4007}
!4007 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !476, line: 112, baseType: !4008)
!4008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4009, size: 64)
!4009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !764)
!4010 = !{!4011}
!4011 = !DILocalVariable(name: "bb", arg: 1, scope: !4004, file: !391, line: 237, type: !4007)
!4012 = !DILocation(line: 0, scope: !4004)
!4013 = !DILocation(line: 239, column: 17, scope: !4004)
!4014 = !DILocation(line: 239, column: 23, scope: !4004)
!4015 = !DILocation(line: 239, column: 33, scope: !4004)
!4016 = !DILocation(line: 239, column: 43, scope: !4004)
!4017 = !DILocation(line: 239, column: 36, scope: !4004)
!4018 = !DILocation(line: 239, column: 10, scope: !4004)
!4019 = !DILocation(line: 239, column: 68, scope: !4004)
!4020 = !DILocation(line: 239, column: 3, scope: !4004)
!4021 = distinct !DISubprogram(name: "gimple_seq_first", scope: !391, file: !391, line: 159, type: !4022, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4027)
!4022 = !DISubroutineType(types: !4023)
!4023 = !{!794, !4024}
!4024 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_gimple_seq", file: !476, line: 67, baseType: !4025)
!4025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4026, size: 64)
!4026 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!4027 = !{!4028}
!4028 = !DILocalVariable(name: "s", arg: 1, scope: !4021, file: !391, line: 159, type: !4024)
!4029 = !DILocation(line: 0, scope: !4021)
!4030 = !DILocation(line: 161, column: 10, scope: !4021)
!4031 = !DILocation(line: 161, column: 17, scope: !4021)
!4032 = !DILocation(line: 161, column: 3, scope: !4021)
!4033 = distinct !DISubprogram(name: "ei_end_p", scope: !330, file: !330, line: 721, type: !4034, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4036)
!4034 = !DISubroutineType(types: !4035)
!4035 = !{!467, !2856}
!4036 = !{!4037}
!4037 = !DILocalVariable(name: "i", arg: 1, scope: !4033, file: !330, line: 721, type: !2856)
!4038 = !DILocation(line: 723, column: 22, scope: !4033)
!4039 = !DILocation(line: 723, column: 19, scope: !4033)
!4040 = !DILocation(line: 723, column: 10, scope: !4033)
!4041 = !DILocation(line: 723, column: 3, scope: !4033)
!4042 = distinct !DISubprogram(name: "ei_edge", scope: !330, file: !330, line: 752, type: !4043, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4045)
!4043 = !DISubroutineType(types: !4044)
!4044 = !{!779, !2856}
!4045 = !{!4046}
!4046 = !DILocalVariable(name: "i", arg: 1, scope: !4042, file: !330, line: 752, type: !2856)
!4047 = !DILocation(line: 754, column: 10, scope: !4042)
!4048 = !DILocation(line: 754, column: 3, scope: !4042)
!4049 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !330, file: !330, line: 150, type: !4050, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4054)
!4050 = !DISubroutineType(types: !4051)
!4051 = !{!7, !4052}
!4052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4053, size: 64)
!4053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !772)
!4054 = !{!4055}
!4055 = !DILocalVariable(name: "vec_", arg: 1, scope: !4049, file: !330, line: 150, type: !4052)
!4056 = !DILocation(line: 0, scope: !4049)
!4057 = !DILocation(line: 150, column: 1, scope: !4049)
!4058 = distinct !DISubprogram(name: "ei_container", scope: !330, file: !330, line: 685, type: !4059, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4061)
!4059 = !DISubroutineType(types: !4060)
!4060 = !{!767, !2856}
!4061 = !{!4062}
!4062 = !DILocalVariable(name: "i", arg: 1, scope: !4058, file: !330, line: 685, type: !2856)
!4063 = !DILocation(line: 687, column: 3, scope: !4058)
!4064 = !DILocation(line: 688, column: 10, scope: !4058)
!4065 = !DILocation(line: 688, column: 3, scope: !4058)
!4066 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !330, file: !330, line: 150, type: !4067, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4069)
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!779, !4052, !7}
!4069 = !{!4070, !4071}
!4070 = !DILocalVariable(name: "vec_", arg: 1, scope: !4066, file: !330, line: 150, type: !4052)
!4071 = !DILocalVariable(name: "ix_", arg: 2, scope: !4066, file: !330, line: 150, type: !7)
!4072 = !DILocation(line: 0, scope: !4066)
!4073 = !DILocation(line: 150, column: 1, scope: !4066)
!4074 = distinct !DISubprogram(name: "cfg_blocks_add", scope: !3, file: !3, line: 181, type: !2984, scopeLine: 182, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4075)
!4075 = !{!4076, !4077}
!4076 = !DILocalVariable(name: "bb", arg: 1, scope: !4074, file: !3, line: 181, type: !1232)
!4077 = !DILocalVariable(name: "head", scope: !4074, file: !3, line: 183, type: !467)
!4078 = !DILocation(line: 0, scope: !4074)
!4079 = !DILocation(line: 185, column: 3, scope: !4074)
!4080 = !DILocation(line: 186, column: 3, scope: !4074)
!4081 = !DILocation(line: 188, column: 7, scope: !4082)
!4082 = distinct !DILexicalBlock(scope: !4074, file: !3, line: 188, column: 7)
!4083 = !DILocation(line: 188, column: 7, scope: !4074)
!4084 = !DILocation(line: 190, column: 41, scope: !4085)
!4085 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 189, column: 5)
!4086 = !DILocation(line: 190, column: 23, scope: !4085)
!4087 = !DILocation(line: 191, column: 22, scope: !4085)
!4088 = !DILocation(line: 192, column: 5, scope: !4085)
!4089 = !DILocation(line: 195, column: 21, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4082, file: !3, line: 194, column: 5)
!4091 = !DILocation(line: 196, column: 28, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4090, file: !3, line: 196, column: 11)
!4093 = !DILocation(line: 196, column: 26, scope: !4092)
!4094 = !DILocation(line: 196, column: 11, scope: !4090)
!4095 = !DILocation(line: 203, column: 22, scope: !4096)
!4096 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 197, column: 2)
!4097 = !DILocation(line: 203, column: 20, scope: !4096)
!4098 = !DILocation(line: 204, column: 20, scope: !4096)
!4099 = !DILocation(line: 205, column: 4, scope: !4096)
!4100 = !DILocation(line: 206, column: 2, scope: !4096)
!4101 = !DILocation(line: 210, column: 16, scope: !4102)
!4102 = distinct !DILexicalBlock(scope: !4092, file: !3, line: 210, column: 16)
!4103 = !DILocation(line: 211, column: 12, scope: !4102)
!4104 = !DILocation(line: 211, column: 9, scope: !4102)
!4105 = !DILocation(line: 210, column: 16, scope: !4092)
!4106 = !DILocation(line: 213, column: 22, scope: !4102)
!4107 = !DILocation(line: 213, column: 38, scope: !4102)
!4108 = !DILocation(line: 214, column: 9, scope: !4102)
!4109 = !DILocation(line: 214, column: 7, scope: !4102)
!4110 = !DILocation(line: 213, column: 18, scope: !4102)
!4111 = !DILocation(line: 213, column: 2, scope: !4102)
!4112 = !DILocation(line: 217, column: 8, scope: !4113)
!4113 = distinct !DILexicalBlock(scope: !4114, file: !3, line: 217, column: 8)
!4114 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 216, column: 2)
!4115 = !DILocation(line: 217, column: 24, scope: !4113)
!4116 = !DILocation(line: 217, column: 8, scope: !4114)
!4117 = !DILocation(line: 218, column: 24, scope: !4113)
!4118 = !DILocation(line: 218, column: 22, scope: !4113)
!4119 = !DILocation(line: 218, column: 6, scope: !4113)
!4120 = !DILocation(line: 219, column: 4, scope: !4114)
!4121 = !DILocation(line: 224, column: 3, scope: !4074)
!4122 = !DILocation(line: 227, column: 12, scope: !4074)
!4123 = !DILocation(line: 227, column: 28, scope: !4074)
!4124 = !DILocation(line: 227, column: 3, scope: !4074)
!4125 = !DILocation(line: 228, column: 1, scope: !4074)
!4126 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !330, file: !330, line: 281, type: !4127, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4129)
!4127 = !DISubroutineType(types: !4128)
!4128 = !{!1232, !3978, !7}
!4129 = !{!4130, !4131}
!4130 = !DILocalVariable(name: "vec_", arg: 1, scope: !4126, file: !330, line: 281, type: !3978)
!4131 = !DILocalVariable(name: "ix_", arg: 2, scope: !4126, file: !330, line: 281, type: !7)
!4132 = !DILocation(line: 0, scope: !4126)
!4133 = !DILocation(line: 281, column: 1, scope: !4126)
!4134 = distinct !DISubprogram(name: "VEC_basic_block_base_replace", scope: !330, file: !330, line: 281, type: !4135, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4137)
!4135 = !DISubroutineType(types: !4136)
!4136 = !{!1232, !3998, !7, !1232}
!4137 = !{!4138, !4139, !4140, !4141}
!4138 = !DILocalVariable(name: "vec_", arg: 1, scope: !4134, file: !330, line: 281, type: !3998)
!4139 = !DILocalVariable(name: "ix_", arg: 2, scope: !4134, file: !330, line: 281, type: !7)
!4140 = !DILocalVariable(name: "obj_", arg: 3, scope: !4134, file: !330, line: 281, type: !1232)
!4141 = !DILocalVariable(name: "old_obj_", scope: !4134, file: !330, line: 281, type: !1232)
!4142 = !DILocation(line: 0, scope: !4134)
!4143 = !DILocation(line: 281, column: 1, scope: !4134)
!4144 = distinct !DISubprogram(name: "SET_BIT", scope: !1852, file: !1852, line: 63, type: !4145, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4147)
!4145 = !DISubroutineType(types: !4146)
!4146 = !{null, !1851, !7}
!4147 = !{!4148, !4149, !4150}
!4148 = !DILocalVariable(name: "map", arg: 1, scope: !4144, file: !1852, line: 63, type: !1851)
!4149 = !DILocalVariable(name: "bitno", arg: 2, scope: !4144, file: !1852, line: 63, type: !7)
!4150 = !DILocalVariable(name: "oldbit", scope: !4151, file: !1852, line: 67, type: !467)
!4151 = distinct !DILexicalBlock(scope: !4152, file: !1852, line: 66, column: 5)
!4152 = distinct !DILexicalBlock(scope: !4144, file: !1852, line: 65, column: 7)
!4153 = !DILocation(line: 0, scope: !4144)
!4154 = !DILocation(line: 65, column: 12, scope: !4152)
!4155 = !DILocation(line: 65, column: 7, scope: !4152)
!4156 = !DILocation(line: 65, column: 7, scope: !4144)
!4157 = !DILocation(line: 73, column: 40, scope: !4144)
!4158 = !DILocation(line: 73, column: 29, scope: !4144)
!4159 = !DILocation(line: 72, column: 19, scope: !4144)
!4160 = !DILocation(line: 72, column: 3, scope: !4144)
!4161 = !DILocation(line: 68, column: 16, scope: !4151)
!4162 = !DILocation(line: 69, column: 12, scope: !4163)
!4163 = distinct !DILexicalBlock(scope: !4151, file: !1852, line: 69, column: 11)
!4164 = !DILocation(line: 69, column: 11, scope: !4151)
!4165 = !DILocation(line: 70, column: 2, scope: !4163)
!4166 = !DILocation(line: 70, column: 41, scope: !4163)
!4167 = !DILocation(line: 73, column: 5, scope: !4144)
!4168 = !DILocation(line: 74, column: 1, scope: !4144)
!4169 = distinct !DISubprogram(name: "RESET_BIT", scope: !1852, file: !1852, line: 82, type: !4145, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4170)
!4170 = !{!4171, !4172, !4173}
!4171 = !DILocalVariable(name: "map", arg: 1, scope: !4169, file: !1852, line: 82, type: !1851)
!4172 = !DILocalVariable(name: "bitno", arg: 2, scope: !4169, file: !1852, line: 82, type: !7)
!4173 = !DILocalVariable(name: "oldbit", scope: !4174, file: !1852, line: 86, type: !467)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !1852, line: 85, column: 5)
!4175 = distinct !DILexicalBlock(scope: !4169, file: !1852, line: 84, column: 7)
!4176 = !DILocation(line: 0, scope: !4169)
!4177 = !DILocation(line: 84, column: 12, scope: !4175)
!4178 = !DILocation(line: 84, column: 7, scope: !4175)
!4179 = !DILocation(line: 84, column: 7, scope: !4169)
!4180 = !DILocation(line: 92, column: 42, scope: !4169)
!4181 = !DILocation(line: 92, column: 31, scope: !4169)
!4182 = !DILocation(line: 91, column: 19, scope: !4169)
!4183 = !DILocation(line: 91, column: 3, scope: !4169)
!4184 = !DILocation(line: 87, column: 16, scope: !4174)
!4185 = !DILocation(line: 88, column: 11, scope: !4186)
!4186 = distinct !DILexicalBlock(scope: !4174, file: !1852, line: 88, column: 11)
!4187 = !DILocation(line: 88, column: 11, scope: !4174)
!4188 = !DILocation(line: 89, column: 2, scope: !4186)
!4189 = !DILocation(line: 89, column: 41, scope: !4186)
!4190 = !DILocation(line: 92, column: 8, scope: !4169)
!4191 = !DILocation(line: 92, column: 5, scope: !4169)
!4192 = !DILocation(line: 93, column: 1, scope: !4169)
!4193 = distinct !DISubprogram(name: "simulate_stmt", scope: !3, file: !3, line: 309, type: !3619, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4194)
!4194 = !{!4195, !4196, !4197, !4198, !4199, !4204, !4205}
!4195 = !DILocalVariable(name: "stmt", arg: 1, scope: !4193, file: !3, line: 309, type: !799)
!4196 = !DILocalVariable(name: "val", scope: !4193, file: !3, line: 311, type: !384)
!4197 = !DILocalVariable(name: "taken_edge", scope: !4193, file: !3, line: 312, type: !779)
!4198 = !DILocalVariable(name: "output_name", scope: !4193, file: !3, line: 313, type: !475)
!4199 = !DILocalVariable(name: "e", scope: !4200, file: !3, line: 341, type: !779)
!4200 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 340, column: 2)
!4201 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 339, column: 11)
!4202 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 329, column: 5)
!4203 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 328, column: 7)
!4204 = !DILocalVariable(name: "ei", scope: !4200, file: !3, line: 342, type: !2856)
!4205 = !DILocalVariable(name: "bb", scope: !4200, file: !3, line: 343, type: !1232)
!4206 = !DILocation(line: 0, scope: !4193)
!4207 = !DILocation(line: 312, column: 3, scope: !4193)
!4208 = !DILocation(line: 312, column: 8, scope: !4193)
!4209 = !DILocation(line: 313, column: 3, scope: !4193)
!4210 = !DILocation(line: 313, column: 8, scope: !4193)
!4211 = !DILocation(line: 317, column: 8, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 317, column: 7)
!4213 = !DILocation(line: 317, column: 7, scope: !4193)
!4214 = !DILocation(line: 320, column: 7, scope: !4215)
!4215 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 320, column: 7)
!4216 = !DILocation(line: 320, column: 26, scope: !4215)
!4217 = !DILocation(line: 320, column: 7, scope: !4193)
!4218 = !DILocation(line: 322, column: 13, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4215, file: !3, line: 321, column: 5)
!4220 = !DILocation(line: 323, column: 21, scope: !4219)
!4221 = !DILocation(line: 323, column: 19, scope: !4219)
!4222 = !DILocation(line: 324, column: 5, scope: !4219)
!4223 = !DILocation(line: 326, column: 11, scope: !4215)
!4224 = !DILocation(line: 0, scope: !4215)
!4225 = !DILocation(line: 328, column: 7, scope: !4193)
!4226 = !DILocation(line: 330, column: 7, scope: !4202)
!4227 = !DILocation(line: 334, column: 11, scope: !4228)
!4228 = distinct !DILexicalBlock(scope: !4202, file: !3, line: 334, column: 11)
!4229 = !DILocation(line: 334, column: 11, scope: !4202)
!4230 = !DILocation(line: 335, column: 2, scope: !4228)
!4231 = !DILocation(line: 339, column: 11, scope: !4201)
!4232 = !DILocation(line: 339, column: 11, scope: !4202)
!4233 = !DILocation(line: 341, column: 4, scope: !4200)
!4234 = !DILocation(line: 342, column: 4, scope: !4200)
!4235 = !DILocation(line: 343, column: 21, scope: !4200)
!4236 = !DILocation(line: 0, scope: !4200)
!4237 = !DILocation(line: 344, column: 4, scope: !4238)
!4238 = distinct !DILexicalBlock(scope: !4200, file: !3, line: 344, column: 4)
!4239 = !DILocation(line: 0, scope: !4240)
!4240 = distinct !DILexicalBlock(scope: !4238, file: !3, line: 344, column: 4)
!4241 = !DILocation(line: 344, column: 4, scope: !4240)
!4242 = !DILocation(line: 345, column: 24, scope: !4240)
!4243 = !DILocation(line: 345, column: 6, scope: !4240)
!4244 = distinct !{!4244, !4237, !4245}
!4245 = !DILocation(line: 345, column: 25, scope: !4238)
!4246 = !DILocation(line: 346, column: 2, scope: !4201)
!4247 = !DILocation(line: 346, column: 2, scope: !4200)
!4248 = !DILocation(line: 352, column: 11, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 352, column: 11)
!4250 = distinct !DILexicalBlock(scope: !4251, file: !3, line: 349, column: 5)
!4251 = distinct !DILexicalBlock(scope: !4203, file: !3, line: 348, column: 12)
!4252 = !DILocation(line: 352, column: 11, scope: !4250)
!4253 = !DILocation(line: 353, column: 2, scope: !4249)
!4254 = !DILocation(line: 357, column: 11, scope: !4255)
!4255 = distinct !DILexicalBlock(scope: !4250, file: !3, line: 357, column: 11)
!4256 = !DILocation(line: 357, column: 11, scope: !4250)
!4257 = !DILocation(line: 358, column: 2, scope: !4255)
!4258 = !DILocation(line: 360, column: 1, scope: !4193)
!4259 = distinct !DISubprogram(name: "gimple_plf", scope: !391, file: !391, line: 1247, type: !4260, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4262)
!4260 = !DISubroutineType(types: !4261)
!4261 = !{!7, !799, !455}
!4262 = !{!4263, !4264}
!4263 = !DILocalVariable(name: "stmt", arg: 1, scope: !4259, file: !391, line: 1247, type: !799)
!4264 = !DILocalVariable(name: "plf", arg: 2, scope: !4259, file: !391, line: 1247, type: !455)
!4265 = !DILocation(line: 0, scope: !4259)
!4266 = !DILocation(line: 1249, column: 23, scope: !4259)
!4267 = !DILocation(line: 1249, column: 27, scope: !4259)
!4268 = !DILocation(line: 1249, column: 3, scope: !4259)
!4269 = distinct !DISubprogram(name: "prop_simulate_again_p", scope: !385, file: !385, line: 36, type: !3126, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4270)
!4270 = !{!4271}
!4271 = !DILocalVariable(name: "s", arg: 1, scope: !4269, file: !385, line: 36, type: !799)
!4272 = !DILocation(line: 0, scope: !4269)
!4273 = !DILocation(line: 38, column: 10, scope: !4269)
!4274 = !DILocation(line: 38, column: 3, scope: !4269)
!4275 = distinct !DISubprogram(name: "gimple_phi_result", scope: !391, file: !391, line: 3071, type: !2675, scopeLine: 3072, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4276)
!4276 = !{!4277}
!4277 = !DILocalVariable(name: "gs", arg: 1, scope: !4275, file: !391, line: 3071, type: !2667)
!4278 = !DILocation(line: 0, scope: !4275)
!4279 = !DILocation(line: 3074, column: 25, scope: !4275)
!4280 = !DILocation(line: 3074, column: 3, scope: !4275)
!4281 = distinct !DISubprogram(name: "prop_set_simulate_again", scope: !385, file: !385, line: 28, type: !4282, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4284)
!4282 = !DISubroutineType(types: !4283)
!4283 = !{null, !799, !467}
!4284 = !{!4285, !4286}
!4285 = !DILocalVariable(name: "s", arg: 1, scope: !4281, file: !385, line: 28, type: !799)
!4286 = !DILocalVariable(name: "visit_p", arg: 2, scope: !4281, file: !385, line: 28, type: !467)
!4287 = !DILocation(line: 0, scope: !4281)
!4288 = !DILocation(line: 30, column: 3, scope: !4281)
!4289 = !DILocation(line: 31, column: 1, scope: !4281)
!4290 = distinct !DISubprogram(name: "add_ssa_edge", scope: !3, file: !3, line: 257, type: !4291, scopeLine: 258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4293)
!4291 = !DISubroutineType(types: !4292)
!4292 = !{null, !475, !467}
!4293 = !{!4294, !4295, !4296, !4304, !4305}
!4294 = !DILocalVariable(name: "var", arg: 1, scope: !4290, file: !3, line: 257, type: !475)
!4295 = !DILocalVariable(name: "is_varying", arg: 2, scope: !4290, file: !3, line: 257, type: !467)
!4296 = !DILocalVariable(name: "iter", scope: !4290, file: !3, line: 259, type: !4297)
!4297 = !DIDerivedType(tag: DW_TAG_typedef, name: "imm_use_iterator", file: !1172, line: 249, baseType: !4298)
!4298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "immediate_use_iterator_d", file: !1172, line: 238, size: 448, elements: !4299)
!4299 = !{!4300, !4301, !4302, !4303}
!4300 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !4298, file: !1172, line: 241, baseType: !1814, size: 64)
!4301 = !DIDerivedType(tag: DW_TAG_member, name: "end_p", scope: !4298, file: !1172, line: 243, baseType: !1814, size: 64, offset: 64)
!4302 = !DIDerivedType(tag: DW_TAG_member, name: "iter_node", scope: !4298, file: !1172, line: 245, baseType: !1815, size: 256, offset: 128)
!4303 = !DIDerivedType(tag: DW_TAG_member, name: "next_imm_name", scope: !4298, file: !1172, line: 248, baseType: !1814, size: 64, offset: 384)
!4304 = !DILocalVariable(name: "use_p", scope: !4290, file: !3, line: 260, type: !1813)
!4305 = !DILocalVariable(name: "use_stmt", scope: !4306, file: !3, line: 264, type: !799)
!4306 = distinct !DILexicalBlock(scope: !4307, file: !3, line: 263, column: 5)
!4307 = distinct !DILexicalBlock(scope: !4308, file: !3, line: 262, column: 3)
!4308 = distinct !DILexicalBlock(scope: !4290, file: !3, line: 262, column: 3)
!4309 = !DILocation(line: 0, scope: !4290)
!4310 = !DILocation(line: 259, column: 3, scope: !4290)
!4311 = !DILocation(line: 262, column: 3, scope: !4308)
!4312 = !DILocation(line: 0, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4314, file: !3, line: 270, column: 8)
!4314 = distinct !DILexicalBlock(scope: !4315, file: !3, line: 268, column: 2)
!4315 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 266, column: 11)
!4316 = !DILocation(line: 0, scope: !4308)
!4317 = !DILocation(line: 262, column: 3, scope: !4307)
!4318 = !DILocation(line: 264, column: 25, scope: !4306)
!4319 = !DILocation(line: 0, scope: !4306)
!4320 = !DILocation(line: 266, column: 11, scope: !4315)
!4321 = !DILocation(line: 267, column: 4, scope: !4315)
!4322 = !DILocation(line: 267, column: 8, scope: !4315)
!4323 = !DILocation(line: 266, column: 11, scope: !4306)
!4324 = !DILocation(line: 269, column: 4, scope: !4314)
!4325 = !DILocation(line: 273, column: 6, scope: !4313)
!4326 = distinct !{!4326, !4311, !4327}
!4327 = !DILocation(line: 275, column: 5, scope: !4308)
!4328 = !DILocation(line: 276, column: 1, scope: !4290)
!4329 = !DILocation(line: 271, column: 6, scope: !4313)
!4330 = distinct !DISubprogram(name: "gimple_bb", scope: !391, file: !391, line: 1112, type: !4331, scopeLine: 1113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4333)
!4331 = !DISubroutineType(types: !4332)
!4332 = !{!763, !2667}
!4333 = !{!4334}
!4334 = !DILocalVariable(name: "g", arg: 1, scope: !4330, file: !391, line: 1112, type: !2667)
!4335 = !DILocation(line: 0, scope: !4330)
!4336 = !DILocation(line: 1114, column: 20, scope: !4330)
!4337 = !DILocation(line: 1114, column: 3, scope: !4330)
!4338 = distinct !DISubprogram(name: "gimple_visited_p", scope: !391, file: !391, line: 1226, type: !3126, scopeLine: 1227, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4339)
!4339 = !{!4340}
!4340 = !DILocalVariable(name: "stmt", arg: 1, scope: !4338, file: !391, line: 1226, type: !799)
!4341 = !DILocation(line: 0, scope: !4338)
!4342 = !DILocation(line: 1228, column: 23, scope: !4338)
!4343 = !DILocation(line: 1228, column: 10, scope: !4338)
!4344 = !DILocation(line: 1228, column: 3, scope: !4338)
!4345 = distinct !DISubprogram(name: "gimple_set_visited", scope: !391, file: !391, line: 1217, type: !4282, scopeLine: 1218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4346)
!4346 = !{!4347, !4348}
!4347 = !DILocalVariable(name: "stmt", arg: 1, scope: !4345, file: !391, line: 1217, type: !799)
!4348 = !DILocalVariable(name: "visited_p", arg: 2, scope: !4345, file: !391, line: 1217, type: !467)
!4349 = !DILocation(line: 0, scope: !4345)
!4350 = !DILocation(line: 1219, column: 16, scope: !4345)
!4351 = !DILocation(line: 1219, column: 24, scope: !4345)
!4352 = !DILocation(line: 1220, column: 1, scope: !4345)
!4353 = distinct !DISubprogram(name: "first_readonly_imm_use", scope: !2476, file: !2476, line: 292, type: !4354, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4357)
!4354 = !DISubroutineType(types: !4355)
!4355 = !{!1813, !4356, !475}
!4356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4297, size: 64)
!4357 = !{!4358, !4359}
!4358 = !DILocalVariable(name: "imm", arg: 1, scope: !4353, file: !2476, line: 292, type: !4356)
!4359 = !DILocalVariable(name: "var", arg: 2, scope: !4353, file: !2476, line: 292, type: !475)
!4360 = !DILocation(line: 0, scope: !4353)
!4361 = !DILocation(line: 294, column: 18, scope: !4353)
!4362 = !DILocation(line: 294, column: 8, scope: !4353)
!4363 = !DILocation(line: 294, column: 14, scope: !4353)
!4364 = !DILocation(line: 295, column: 30, scope: !4353)
!4365 = !DILocation(line: 295, column: 16, scope: !4353)
!4366 = !DILocation(line: 299, column: 7, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4353, file: !2476, line: 299, column: 7)
!4368 = !DILocation(line: 299, column: 7, scope: !4353)
!4369 = !DILocation(line: 301, column: 15, scope: !4353)
!4370 = !DILocation(line: 301, column: 3, scope: !4353)
!4371 = !DILocation(line: 302, column: 1, scope: !4353)
!4372 = distinct !DISubprogram(name: "end_readonly_imm_use_p", scope: !2476, file: !2476, line: 285, type: !4373, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4377)
!4373 = !DISubroutineType(types: !4374)
!4374 = !{!467, !4375}
!4375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4376, size: 64)
!4376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4297)
!4377 = !{!4378}
!4378 = !DILocalVariable(name: "imm", arg: 1, scope: !4372, file: !2476, line: 285, type: !4375)
!4379 = !DILocation(line: 0, scope: !4372)
!4380 = !DILocation(line: 287, column: 16, scope: !4372)
!4381 = !DILocation(line: 287, column: 32, scope: !4372)
!4382 = !DILocation(line: 287, column: 24, scope: !4372)
!4383 = !DILocation(line: 287, column: 10, scope: !4372)
!4384 = !DILocation(line: 287, column: 3, scope: !4372)
!4385 = distinct !DISubprogram(name: "VEC_gimple_gc_safe_push", scope: !391, file: !391, line: 35, type: !4386, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4389)
!4386 = !DISubroutineType(types: !4387)
!4387 = !{!4388, !3078, !799}
!4388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!4389 = !{!4390, !4391}
!4390 = !DILocalVariable(name: "vec_", arg: 1, scope: !4385, file: !391, line: 35, type: !3078)
!4391 = !DILocalVariable(name: "obj_", arg: 2, scope: !4385, file: !391, line: 35, type: !799)
!4392 = !DILocation(line: 0, scope: !4385)
!4393 = !DILocation(line: 35, column: 1, scope: !4385)
!4394 = distinct !DISubprogram(name: "next_readonly_imm_use", scope: !2476, file: !2476, line: 306, type: !4395, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4397)
!4395 = !DISubroutineType(types: !4396)
!4396 = !{!1813, !4356}
!4397 = !{!4398, !4399}
!4398 = !DILocalVariable(name: "imm", arg: 1, scope: !4394, file: !2476, line: 306, type: !4356)
!4399 = !DILocalVariable(name: "old", scope: !4394, file: !2476, line: 308, type: !1813)
!4400 = !DILocation(line: 0, scope: !4394)
!4401 = !DILocation(line: 308, column: 28, scope: !4394)
!4402 = !DILocation(line: 319, column: 23, scope: !4394)
!4403 = !DILocation(line: 319, column: 16, scope: !4394)
!4404 = !DILocation(line: 320, column: 7, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4394, file: !2476, line: 320, column: 7)
!4406 = !DILocation(line: 320, column: 7, scope: !4394)
!4407 = !DILocation(line: 322, column: 15, scope: !4394)
!4408 = !DILocation(line: 322, column: 3, scope: !4394)
!4409 = !DILocation(line: 323, column: 1, scope: !4394)
!4410 = distinct !DISubprogram(name: "VEC_gimple_gc_reserve", scope: !391, file: !391, line: 35, type: !4411, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4413)
!4411 = !DISubroutineType(types: !4412)
!4412 = !{!468, !3078, !468}
!4413 = !{!4414, !4415, !4416}
!4414 = !DILocalVariable(name: "vec_", arg: 1, scope: !4410, file: !391, line: 35, type: !3078)
!4415 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4410, file: !391, line: 35, type: !468)
!4416 = !DILocalVariable(name: "extend", scope: !4410, file: !391, line: 35, type: !468)
!4417 = !DILocation(line: 0, scope: !4410)
!4418 = !DILocation(line: 35, column: 1, scope: !4410)
!4419 = !DILocation(line: 35, column: 1, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4410, file: !391, line: 35, column: 1)
!4421 = distinct !DISubprogram(name: "VEC_gimple_base_quick_push", scope: !391, file: !391, line: 33, type: !4422, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4425)
!4422 = !DISubroutineType(types: !4423)
!4423 = !{!4388, !4424, !799}
!4424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!4425 = !{!4426, !4427, !4428}
!4426 = !DILocalVariable(name: "vec_", arg: 1, scope: !4421, file: !391, line: 33, type: !4424)
!4427 = !DILocalVariable(name: "obj_", arg: 2, scope: !4421, file: !391, line: 33, type: !799)
!4428 = !DILocalVariable(name: "slot_", scope: !4421, file: !391, line: 33, type: !4388)
!4429 = !DILocation(line: 0, scope: !4421)
!4430 = !DILocation(line: 33, column: 1, scope: !4421)
!4431 = distinct !DISubprogram(name: "VEC_gimple_base_space", scope: !391, file: !391, line: 33, type: !4432, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4434)
!4432 = !DISubroutineType(types: !4433)
!4433 = !{!468, !4424, !468}
!4434 = !{!4435, !4436}
!4435 = !DILocalVariable(name: "vec_", arg: 1, scope: !4431, file: !391, line: 33, type: !4424)
!4436 = !DILocalVariable(name: "alloc_", arg: 2, scope: !4431, file: !391, line: 33, type: !468)
!4437 = !DILocation(line: 0, scope: !4431)
!4438 = !DILocation(line: 33, column: 1, scope: !4431)
!4439 = distinct !DISubprogram(name: "VEC_gimple_base_pop", scope: !391, file: !391, line: 33, type: !4440, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4442)
!4440 = !DISubroutineType(types: !4441)
!4441 = !{!799, !4424}
!4442 = !{!4443, !4444}
!4443 = !DILocalVariable(name: "vec_", arg: 1, scope: !4439, file: !391, line: 33, type: !4424)
!4444 = !DILocalVariable(name: "obj_", scope: !4439, file: !391, line: 33, type: !799)
!4445 = !DILocation(line: 0, scope: !4439)
!4446 = !DILocation(line: 33, column: 1, scope: !4439)
!4447 = distinct !DISubprogram(name: "VEC_gimple_gc_free", scope: !391, file: !391, line: 35, type: !3076, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4448)
!4448 = !{!4449}
!4449 = !DILocalVariable(name: "vec_", arg: 1, scope: !4447, file: !391, line: 35, type: !3078)
!4450 = !DILocation(line: 0, scope: !4447)
!4451 = !DILocation(line: 35, column: 1, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4447, file: !391, line: 35, column: 1)
!4453 = !DILocation(line: 35, column: 1, scope: !4447)
!4454 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !330, file: !330, line: 283, type: !4455, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4457)
!4455 = !DISubroutineType(types: !4456)
!4456 = !{null, !3864}
!4457 = !{!4458}
!4458 = !DILocalVariable(name: "vec_", arg: 1, scope: !4454, file: !330, line: 283, type: !3864)
!4459 = !DILocation(line: 0, scope: !4454)
!4460 = !DILocation(line: 283, column: 1, scope: !4461)
!4461 = distinct !DILexicalBlock(scope: !4454, file: !330, line: 283, column: 1)
!4462 = !DILocation(line: 283, column: 1, scope: !4454)
!4463 = distinct !DISubprogram(name: "gimple_phi_num_args", scope: !391, file: !391, line: 3061, type: !3830, scopeLine: 3062, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4464)
!4464 = !{!4465}
!4465 = !DILocalVariable(name: "gs", arg: 1, scope: !4463, file: !391, line: 3061, type: !2667)
!4466 = !DILocation(line: 0, scope: !4463)
!4467 = !DILocation(line: 3064, column: 25, scope: !4463)
!4468 = !DILocation(line: 3064, column: 3, scope: !4463)
!4469 = distinct !DISubprogram(name: "gimple_phi_arg_def", scope: !2476, file: !2476, line: 450, type: !4470, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4472)
!4470 = !DISubroutineType(types: !4471)
!4471 = !{!475, !799, !944}
!4472 = !{!4473, !4474, !4475}
!4473 = !DILocalVariable(name: "gs", arg: 1, scope: !4469, file: !2476, line: 450, type: !799)
!4474 = !DILocalVariable(name: "index", arg: 2, scope: !4469, file: !2476, line: 450, type: !944)
!4475 = !DILocalVariable(name: "pd", scope: !4469, file: !2476, line: 452, type: !4476)
!4476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!4477 = !DILocation(line: 0, scope: !4469)
!4478 = !DILocation(line: 452, column: 46, scope: !4469)
!4479 = !DILocation(line: 452, column: 26, scope: !4469)
!4480 = !DILocation(line: 453, column: 33, scope: !4469)
!4481 = !DILocation(line: 453, column: 10, scope: !4469)
!4482 = !DILocation(line: 453, column: 3, scope: !4469)
!4483 = distinct !DISubprogram(name: "gimple_phi_arg_imm_use_ptr", scope: !2476, file: !2476, line: 442, type: !4484, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4486)
!4484 = !DISubroutineType(types: !4485)
!4485 = !{!1813, !799, !468}
!4486 = !{!4487, !4488}
!4487 = !DILocalVariable(name: "gs", arg: 1, scope: !4483, file: !2476, line: 442, type: !799)
!4488 = !DILocalVariable(name: "i", arg: 2, scope: !4483, file: !2476, line: 442, type: !468)
!4489 = !DILocation(line: 0, scope: !4483)
!4490 = !DILocation(line: 444, column: 11, scope: !4483)
!4491 = !DILocation(line: 444, column: 35, scope: !4483)
!4492 = !DILocation(line: 444, column: 3, scope: !4483)
!4493 = distinct !DISubprogram(name: "gimple_phi_arg_edge", scope: !2476, file: !2476, line: 467, type: !4494, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4496)
!4494 = !DISubroutineType(types: !4495)
!4495 = !{!779, !799, !944}
!4496 = !{!4497, !4498}
!4497 = !DILocalVariable(name: "gs", arg: 1, scope: !4493, file: !2476, line: 467, type: !799)
!4498 = !DILocalVariable(name: "i", arg: 2, scope: !4493, file: !2476, line: 467, type: !944)
!4499 = !DILocation(line: 0, scope: !4493)
!4500 = !DILocation(line: 469, column: 10, scope: !4493)
!4501 = !DILocation(line: 469, column: 3, scope: !4493)
!4502 = distinct !DISubprogram(name: "gimple_phi_arg", scope: !391, file: !391, line: 3100, type: !4503, scopeLine: 3101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4505)
!4503 = !DISubroutineType(types: !4504)
!4504 = !{!4476, !799, !7}
!4505 = !{!4506, !4507}
!4506 = !DILocalVariable(name: "gs", arg: 1, scope: !4502, file: !391, line: 3100, type: !799)
!4507 = !DILocalVariable(name: "index", arg: 2, scope: !4502, file: !391, line: 3100, type: !7)
!4508 = !DILocation(line: 0, scope: !4502)
!4509 = !DILocation(line: 3103, column: 3, scope: !4502)
!4510 = !DILocation(line: 3104, column: 12, scope: !4502)
!4511 = !DILocation(line: 3104, column: 3, scope: !4502)
!4512 = distinct !DISubprogram(name: "gimple_seq_last", scope: !391, file: !391, line: 178, type: !4022, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4513)
!4513 = !{!4514}
!4514 = !DILocalVariable(name: "s", arg: 1, scope: !4512, file: !391, line: 178, type: !4024)
!4515 = !DILocation(line: 0, scope: !4512)
!4516 = !DILocation(line: 180, column: 10, scope: !4512)
!4517 = !DILocation(line: 180, column: 17, scope: !4512)
!4518 = !DILocation(line: 180, column: 3, scope: !4512)
!4519 = distinct !DISubprogram(name: "op_iter_init_use", scope: !2476, file: !2476, line: 768, type: !4520, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4522)
!4520 = !DISubroutineType(types: !4521)
!4521 = !{!1813, !2494, !799, !468}
!4522 = !{!4523, !4524, !4525}
!4523 = !DILocalVariable(name: "ptr", arg: 1, scope: !4519, file: !2476, line: 768, type: !2494)
!4524 = !DILocalVariable(name: "stmt", arg: 2, scope: !4519, file: !2476, line: 768, type: !799)
!4525 = !DILocalVariable(name: "flags", arg: 3, scope: !4519, file: !2476, line: 768, type: !468)
!4526 = !DILocation(line: 0, scope: !4519)
!4527 = !DILocation(line: 772, column: 3, scope: !4519)
!4528 = !DILocation(line: 773, column: 8, scope: !4519)
!4529 = !DILocation(line: 773, column: 18, scope: !4519)
!4530 = !DILocation(line: 774, column: 10, scope: !4519)
!4531 = !DILocation(line: 774, column: 3, scope: !4519)
!4532 = distinct !DISubprogram(name: "op_iter_next_use", scope: !2476, file: !2476, line: 659, type: !4533, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4535)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!1813, !2494}
!4535 = !{!4536, !4537}
!4536 = !DILocalVariable(name: "ptr", arg: 1, scope: !4532, file: !2476, line: 659, type: !2494)
!4537 = !DILocalVariable(name: "use_p", scope: !4532, file: !2476, line: 661, type: !1813)
!4538 = !DILocation(line: 0, scope: !4532)
!4539 = !DILocation(line: 665, column: 12, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4532, file: !2476, line: 665, column: 7)
!4541 = !DILocation(line: 665, column: 7, scope: !4540)
!4542 = !DILocation(line: 665, column: 7, scope: !4532)
!4543 = !DILocation(line: 667, column: 15, scope: !4544)
!4544 = distinct !DILexicalBlock(scope: !4540, file: !2476, line: 666, column: 5)
!4545 = !DILocation(line: 668, column: 30, scope: !4544)
!4546 = !DILocation(line: 668, column: 17, scope: !4544)
!4547 = !DILocation(line: 669, column: 7, scope: !4544)
!4548 = !DILocation(line: 671, column: 12, scope: !4549)
!4549 = distinct !DILexicalBlock(scope: !4532, file: !2476, line: 671, column: 7)
!4550 = !DILocation(line: 671, column: 25, scope: !4549)
!4551 = !DILocation(line: 671, column: 18, scope: !4549)
!4552 = !DILocation(line: 671, column: 7, scope: !4532)
!4553 = !DILocation(line: 673, column: 14, scope: !4554)
!4554 = distinct !DILexicalBlock(scope: !4549, file: !2476, line: 672, column: 5)
!4555 = !DILocation(line: 673, column: 7, scope: !4554)
!4556 = !DILocation(line: 675, column: 8, scope: !4532)
!4557 = !DILocation(line: 675, column: 13, scope: !4532)
!4558 = !DILocation(line: 676, column: 3, scope: !4532)
!4559 = !DILocation(line: 677, column: 1, scope: !4532)
!4560 = distinct !DISubprogram(name: "gimple_expr_code", scope: !391, file: !391, line: 1438, type: !3604, scopeLine: 1439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4561)
!4561 = !{!4562, !4563}
!4562 = !DILocalVariable(name: "stmt", arg: 1, scope: !4560, file: !391, line: 1438, type: !2667)
!4563 = !DILocalVariable(name: "code", scope: !4560, file: !391, line: 1440, type: !390)
!4564 = !DILocation(line: 0, scope: !4560)
!4565 = !DILocation(line: 1440, column: 27, scope: !4560)
!4566 = !DILocation(line: 1441, column: 29, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4560, file: !391, line: 1441, column: 7)
!4568 = !DILocation(line: 1442, column: 42, scope: !4567)
!4569 = !DILocation(line: 1442, column: 5, scope: !4567)
!4570 = !DILocation(line: 1446, column: 5, scope: !4571)
!4571 = distinct !DILexicalBlock(scope: !4567, file: !391, line: 1443, column: 12)
!4572 = !DILocation(line: 1448, column: 5, scope: !4560)
!4573 = !DILocation(line: 1450, column: 1, scope: !4560)
