; ModuleID = 'cfghooks.bc'
source_filename = "cfghooks.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque
%struct.cfg_hooks = type { i8*, i32 ()*, void (%struct.basic_block_def*, %struct._IO_FILE*, i32, i32)*, %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)*, %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)*, %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)*, i8 (%struct.edge_def*)*, void (%struct.basic_block_def*)*, %struct.basic_block_def* (%struct.basic_block_def*, i8*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, void (%struct.basic_block_def*, %struct.basic_block_def*)*, void (%struct.edge_def*, i32, i32)*, i8 (%struct.basic_block_def*, i32)*, i8 (%struct.basic_block_def*)*, %struct.basic_block_def* (%struct.basic_block_def*)*, %struct.basic_block_def* (%struct.edge_def*)*, void (%struct.edge_def*)*, void (%struct.edge_def*)*, i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)*, i32 (%struct.simple_bitmap_def*)*, void (%struct.edge_def*)*, void (%struct.edge_def*)*, i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)*, void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def*)*, void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)*, void (%struct.edge_def*)* }
%struct.basic_block_def = type { %struct.VEC_edge_gc*, %struct.VEC_edge_gc*, i8*, %struct.loop*, [2 x %struct.et_node*], %struct.basic_block_def*, %struct.basic_block_def*, %union.basic_block_il_dependent, i64, i32, i32, i32, i32, i32 }
%struct.VEC_edge_gc = type { %struct.VEC_edge_base }
%struct.VEC_edge_base = type { i32, i32, [1 x %struct.edge_def*] }
%struct.edge_def = type { %struct.basic_block_def*, %struct.basic_block_def*, %union.edge_def_insns, i8*, %union.tree_node*, i32, i32, i32, i32, i64 }
%union.edge_def_insns = type { %struct.gimple_seq_d* }
%struct.gimple_seq_d = type { %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_d* }
%struct.gimple_seq_node_d = type { %union.gimple_statement_d*, %struct.gimple_seq_node_d*, %struct.gimple_seq_node_d* }
%union.gimple_statement_d = type { %struct.gimple_statement_phi }
%struct.gimple_statement_phi = type { %struct.gimple_statement_base, i32, i32, %union.tree_node*, [1 x %struct.phi_arg_d] }
%struct.gimple_statement_base = type { i32, i32, i32, i32, %struct.basic_block_def*, %union.tree_node* }
%struct.phi_arg_d = type { %struct.ssa_use_operand_d, %union.tree_node*, i32 }
%struct.ssa_use_operand_d = type { %struct.ssa_use_operand_d*, %struct.ssa_use_operand_d*, %union.anon, %union.tree_node** }
%union.anon = type { %union.gimple_statement_d* }
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
%struct.function = type { %struct.eh_status*, %struct.control_flow_graph*, %struct.gimple_seq_d*, %struct.gimple_df*, %struct.loops*, %struct.htab*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %union.tree_node*, %struct.machine_function*, %struct.language_function*, %struct.htab*, i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.eh_status = type opaque
%struct.control_flow_graph = type { %struct.basic_block_def*, %struct.basic_block_def*, %struct.VEC_basic_block_gc*, i32, i32, i32, %struct.VEC_basic_block_gc*, i32, [2 x i32], [2 x i32], i32, i32 }
%struct.VEC_basic_block_gc = type { %struct.VEC_basic_block_base }
%struct.VEC_basic_block_base = type { i32, i32, [1 x %struct.basic_block_def*] }
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
%struct.loops = type { i32, %struct.VEC_loop_p_gc*, %struct.htab*, %struct.loop* }
%struct.VEC_loop_p_gc = type { %struct.VEC_loop_p_base }
%struct.VEC_loop_p_base = type { i32, i32, [1 x %struct.loop*] }
%struct.machine_function = type { %struct.stack_local_entry*, i8*, i32, i32, [4 x i32], i32, %struct.machine_cfa_state, i32, i8 }
%struct.stack_local_entry = type opaque
%struct.machine_cfa_state = type { %struct.rtx_def*, i64 }
%struct.language_function = type opaque
%struct.htab = type { i32 (i8*)*, i32 (i8*, i8*)*, void (i8*)*, i8**, i64, i64, i64, i32, i32, i8* (i64, i64)*, void (i8*)*, i8*, i8* (i8*, i64, i64)*, void (i8*, i8*)*, i32 }
%struct.loop = type { i32, i32, %struct.basic_block_def*, %struct.basic_block_def*, %struct.lpt_decision, i32, i32, %struct.VEC_loop_p_gc*, %struct.loop*, %struct.loop*, i8*, %union.tree_node*, %struct.double_int, %struct.double_int, i8, i8, i32, %struct.nb_iter_bound*, %struct.loop_exit*, i8, %union.tree_node* }
%struct.lpt_decision = type { i32, i32 }
%struct.double_int = type { i64, i64 }
%struct.nb_iter_bound = type { %union.gimple_statement_d*, %struct.double_int, i8, %struct.nb_iter_bound* }
%struct.loop_exit = type { %struct.edge_def*, %struct.loop_exit*, %struct.loop_exit*, %struct.loop_exit* }
%struct.et_node = type opaque
%union.basic_block_il_dependent = type { %struct.gimple_bb_info* }
%struct.gimple_bb_info = type { %struct.gimple_seq_d*, %struct.gimple_seq_d* }
%struct.simple_bitmap_def = type { i8*, i32, i32, [1 x i64] }
%struct.VEC_edge_heap = type { %struct.VEC_edge_base }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.stat64 = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.edge_iterator = type { i32, %struct.VEC_edge_gc** }
%struct.VEC_basic_block_heap = type { %struct.VEC_basic_block_base }
%struct.rtl_bb_info = type { %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, %struct.rtx_def*, i32 }

@stdout = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@stdin = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@rtl_cfg_hooks = external dso_local global %struct.cfg_hooks, align 8
@cfg_hooks = internal unnamed_addr global %struct.cfg_hooks* null, align 8, !dbg !0
@cfg_layout_rtl_cfg_hooks = external dso_local global %struct.cfg_hooks, align 8
@gimple_cfg_hooks = external dso_local global %struct.cfg_hooks, align 8
@.str = private unnamed_addr constant [11 x i8] c"cfghooks.c\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@timevar_enable = external dso_local local_unnamed_addr global i8, align 1
@cfun = external dso_local local_unnamed_addr global %struct.function*, align 8
@.str.2 = private unnamed_addr constant [21 x i8] c"bb %d on wrong place\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"prev_bb of %d should be %d, not %d\00", align 1
@.str.4 = private unnamed_addr constant [67 x i8] c"verify_flow_info: Block %i has loop_father, but there are no loops\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Block %i lacks loop_father\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"verify_flow_info: Wrong count of block %i %i\00", align 1
@.str.7 = private unnamed_addr constant [49 x i8] c"verify_flow_info: Wrong frequency of block %i %i\00", align 1
@.str.8 = private unnamed_addr constant [40 x i8] c"verify_flow_info: Duplicate edge %i->%i\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"verify_flow_info: Wrong probability of edge %i->%i %i\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"verify_flow_info: Wrong count of edge %i->%i %i\00", align 1
@.str.11 = private unnamed_addr constant [56 x i8] c"verify_flow_info: Basic block %d succ edge is corrupted\00", align 1
@stderr = external dso_local local_unnamed_addr global %struct._IO_FILE*, align 8
@.str.12 = private unnamed_addr constant [14 x i8] c"Predecessor: \00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"\0ASuccessor: \00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.15 = private unnamed_addr constant [57 x i8] c"wrong amount of branch edges after unconditional jump %i\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"basic block %d pred edge is corrupted\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"its dest_idx should be %d, not %d\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"basic block %i edge lists are corrupted\00", align 1
@.str.19 = private unnamed_addr constant [24 x i8] c"verify_flow_info failed\00", align 1
@.str.20 = private unnamed_addr constant [43 x i8] c";;%s basic block %d, loop depth %d, count \00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c";;%s prev block \00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"%d, \00", align 1
@.str.24 = private unnamed_addr constant [8 x i8] c"(nil), \00", align 1
@.str.25 = private unnamed_addr constant [12 x i8] c"next block \00", align 1
@.str.26 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"(nil)\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c";;%s pred:      \00", align 1
@.str.29 = private unnamed_addr constant [17 x i8] c";;%s succ:      \00", align 1
@.str.30 = private unnamed_addr constant [45 x i8] c"%s does not support redirect_edge_and_branch\00", align 1
@.str.31 = private unnamed_addr constant [40 x i8] c"%s does not support can_remove_branch_p\00", align 1
@.str.32 = private unnamed_addr constant [51 x i8] c"%s does not support redirect_edge_and_branch_force\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"%s does not support split_block\00", align 1
@.str.34 = private unnamed_addr constant [37 x i8] c"%s does not support move_block_after\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"%s does not support delete_basic_block\00", align 1
@.str.36 = private unnamed_addr constant [31 x i8] c"%s does not support split_edge\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"%s does not support create_basic_block\00", align 1
@.str.38 = private unnamed_addr constant [39 x i8] c"%s does not support can_merge_blocks_p\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"%s does not support predict_edge\00", align 1
@.str.40 = private unnamed_addr constant [35 x i8] c"%s does not support predicted_by_p\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"%s does not support merge_blocks\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"%s does not support make_forwarder_block\00", align 1
@.str.43 = private unnamed_addr constant [42 x i8] c"%s does not support can_duplicate_block_p\00", align 1
@.str.44 = private unnamed_addr constant [36 x i8] c"%s does not support duplicate_block\00", align 1
@.str.45 = private unnamed_addr constant [43 x i8] c"%s does not support block_ends_with_call_p\00", align 1
@.str.46 = private unnamed_addr constant [47 x i8] c"%s does not support block_ends_with_condjump_p\00", align 1
@.str.47 = private unnamed_addr constant [40 x i8] c"%s does not support flow_call_edges_add\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"./basic-block.h\00", align 1

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @vprintf(i8* noalias %__fmt, %struct.__va_list_tag* %__arg) local_unnamed_addr #0 !dbg !1976 {
entry:
  call void @llvm.dbg.value(metadata i8* %__fmt, metadata !1989, metadata !DIExpression()), !dbg !1991
  call void @llvm.dbg.value(metadata %struct.__va_list_tag* %__arg, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !1992
  %call = tail call i32 @vfprintf(%struct._IO_FILE* %0, i8* %__fmt, %struct.__va_list_tag* %__arg) #6, !dbg !1993
  ret i32 %call, !dbg !1994
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @vfprintf(%struct._IO_FILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar() local_unnamed_addr #0 !dbg !1995 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !1997
  %call = tail call i32 @getc(%struct._IO_FILE* %0) #6, !dbg !1998
  ret i32 %call, !dbg !1999
}

declare dso_local i32 @getc(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fgetc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2000 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2004, metadata !DIExpression()), !dbg !2005
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2006
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2006
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2006
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2006
  %cmp = icmp uge i8* %0, %1, !dbg !2006
  %conv1 = zext i1 %cmp to i64, !dbg !2006
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2006
  %tobool = icmp eq i64 %expval, 0, !dbg !2006
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2006

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2006
  br label %cond.end, !dbg !2006

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2006
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2006
  %2 = load i8, i8* %0, align 1, !dbg !2006
  %conv3 = zext i8 %2 to i32, !dbg !2006
  br label %cond.end, !dbg !2006

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2006
  ret i32 %cond, !dbg !2007
}

; Function Attrs: nounwind readnone
declare i64 @llvm.expect.i64(i64, i64) #3

declare dso_local i32 @__uflow(%struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getc_unlocked(%struct._IO_FILE* %__fp) local_unnamed_addr #0 !dbg !2008 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__fp, metadata !2010, metadata !DIExpression()), !dbg !2011
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 1, !dbg !2012
  %0 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2012
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__fp, i64 0, i32 2, !dbg !2012
  %1 = load i8*, i8** %_IO_read_end, align 8, !dbg !2012
  %cmp = icmp uge i8* %0, %1, !dbg !2012
  %conv1 = zext i1 %cmp to i64, !dbg !2012
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2012
  %tobool = icmp eq i64 %expval, 0, !dbg !2012
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2012

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %__fp) #6, !dbg !2012
  br label %cond.end, !dbg !2012

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2012
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2012
  %2 = load i8, i8* %0, align 1, !dbg !2012
  %conv3 = zext i8 %2 to i32, !dbg !2012
  br label %cond.end, !dbg !2012

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2012
  ret i32 %cond, !dbg !2013
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @getchar_unlocked() local_unnamed_addr #0 !dbg !2014 {
entry:
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8, !dbg !2015
  %_IO_read_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 1, !dbg !2015
  %1 = load i8*, i8** %_IO_read_ptr, align 8, !dbg !2015
  %_IO_read_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 2, !dbg !2015
  %2 = load i8*, i8** %_IO_read_end, align 8, !dbg !2015
  %cmp = icmp uge i8* %1, %2, !dbg !2015
  %conv1 = zext i1 %cmp to i64, !dbg !2015
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2015
  %tobool = icmp eq i64 %expval, 0, !dbg !2015
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2015

cond.true:                                        ; preds = %entry
  %call = tail call i32 @__uflow(%struct._IO_FILE* %0) #6, !dbg !2015
  br label %cond.end, !dbg !2015

cond.false:                                       ; preds = %entry
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2015
  store i8* %incdec.ptr, i8** %_IO_read_ptr, align 8, !dbg !2015
  %3 = load i8, i8* %1, align 1, !dbg !2015
  %conv3 = zext i8 %3 to i32, !dbg !2015
  br label %cond.end, !dbg !2015

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv3, %cond.false ], !dbg !2015
  ret i32 %cond, !dbg !2016
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar(i32 %__c) local_unnamed_addr #0 !dbg !2017 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2021, metadata !DIExpression()), !dbg !2022
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2023
  %call = tail call i32 @putc(i32 %__c, %struct._IO_FILE* %0) #6, !dbg !2024
  ret i32 %call, !dbg !2025
}

declare dso_local i32 @putc(i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fputc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2026 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2030, metadata !DIExpression()), !dbg !2032
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2031, metadata !DIExpression()), !dbg !2032
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2033
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2033
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2033
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2033
  %cmp = icmp uge i8* %0, %1, !dbg !2033
  %conv1 = zext i1 %cmp to i64, !dbg !2033
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2033
  %tobool = icmp eq i64 %expval, 0, !dbg !2033
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2033

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2033
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2033
  br label %cond.end, !dbg !2033

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2033
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2033
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2033
  store i8 %conv2, i8* %0, align 1, !dbg !2033
  %conv6 = and i32 %__c, 255, !dbg !2033
  br label %cond.end, !dbg !2033

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2033
  ret i32 %cond, !dbg !2034
}

declare dso_local i32 @__overflow(%struct._IO_FILE*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putc_unlocked(i32 %__c, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2035 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2037, metadata !DIExpression()), !dbg !2039
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2038, metadata !DIExpression()), !dbg !2039
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 5, !dbg !2040
  %0 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2040
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 6, !dbg !2040
  %1 = load i8*, i8** %_IO_write_end, align 8, !dbg !2040
  %cmp = icmp uge i8* %0, %1, !dbg !2040
  %conv1 = zext i1 %cmp to i64, !dbg !2040
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2040
  %tobool = icmp eq i64 %expval, 0, !dbg !2040
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2040

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2040
  %call = tail call i32 @__overflow(%struct._IO_FILE* %__stream, i32 %conv3) #6, !dbg !2040
  br label %cond.end, !dbg !2040

cond.false:                                       ; preds = %entry
  %conv2 = trunc i32 %__c to i8, !dbg !2040
  %incdec.ptr = getelementptr inbounds i8, i8* %0, i64 1, !dbg !2040
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2040
  store i8 %conv2, i8* %0, align 1, !dbg !2040
  %conv6 = and i32 %__c, 255, !dbg !2040
  br label %cond.end, !dbg !2040

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2040
  ret i32 %cond, !dbg !2041
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @putchar_unlocked(i32 %__c) local_unnamed_addr #0 !dbg !2042 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2044, metadata !DIExpression()), !dbg !2045
  %0 = load %struct._IO_FILE*, %struct._IO_FILE** @stdout, align 8, !dbg !2046
  %_IO_write_ptr = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 5, !dbg !2046
  %1 = load i8*, i8** %_IO_write_ptr, align 8, !dbg !2046
  %_IO_write_end = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %0, i64 0, i32 6, !dbg !2046
  %2 = load i8*, i8** %_IO_write_end, align 8, !dbg !2046
  %cmp = icmp uge i8* %1, %2, !dbg !2046
  %conv1 = zext i1 %cmp to i64, !dbg !2046
  %expval = tail call i64 @llvm.expect.i64(i64 %conv1, i64 0), !dbg !2046
  %tobool = icmp eq i64 %expval, 0, !dbg !2046
  br i1 %tobool, label %cond.false, label %cond.true, !dbg !2046

cond.true:                                        ; preds = %entry
  %conv3 = and i32 %__c, 255, !dbg !2046
  %call = tail call i32 @__overflow(%struct._IO_FILE* %0, i32 %conv3) #6, !dbg !2046
  br label %cond.end, !dbg !2046

cond.false:                                       ; preds = %entry
  %conv4 = trunc i32 %__c to i8, !dbg !2046
  %incdec.ptr = getelementptr inbounds i8, i8* %1, i64 1, !dbg !2046
  store i8* %incdec.ptr, i8** %_IO_write_ptr, align 8, !dbg !2046
  store i8 %conv4, i8* %1, align 1, !dbg !2046
  %conv6 = and i32 %__c, 255, !dbg !2046
  br label %cond.end, !dbg !2046

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %conv6, %cond.false ], !dbg !2046
  ret i32 %cond, !dbg !2047
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @getline(i8** %__lineptr, i64* %__n, %struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2048 {
entry:
  call void @llvm.dbg.value(metadata i8** %__lineptr, metadata !2053, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata i64* %__n, metadata !2054, metadata !DIExpression()), !dbg !2056
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2055, metadata !DIExpression()), !dbg !2056
  %call = tail call i64 @__getdelim(i8** %__lineptr, i64* %__n, i32 10, %struct._IO_FILE* %__stream) #6, !dbg !2057
  ret i64 %call, !dbg !2058
}

declare dso_local i64 @__getdelim(i8**, i64*, i32, %struct._IO_FILE*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @feof_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2059 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2061, metadata !DIExpression()), !dbg !2062
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2063
  %0 = load i32, i32* %_flags, align 8, !dbg !2063
  %and = lshr i32 %0, 4, !dbg !2063
  %and.lobit = and i32 %and, 1, !dbg !2063
  ret i32 %and.lobit, !dbg !2064
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @ferror_unlocked(%struct._IO_FILE* %__stream) local_unnamed_addr #0 !dbg !2065 {
entry:
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %__stream, metadata !2067, metadata !DIExpression()), !dbg !2068
  %_flags = getelementptr inbounds %struct._IO_FILE, %struct._IO_FILE* %__stream, i64 0, i32 0, !dbg !2069
  %0 = load i32, i32* %_flags, align 8, !dbg !2069
  %and = lshr i32 %0, 5, !dbg !2069
  %and.lobit = and i32 %and, 1, !dbg !2069
  ret i32 %and.lobit, !dbg !2070
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @tolower(i32 %__c) local_unnamed_addr #0 !dbg !2071 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2074, metadata !DIExpression()), !dbg !2075
  %__c.off = add i32 %__c, 128, !dbg !2076
  %0 = icmp ult i32 %__c.off, 384, !dbg !2076
  br i1 %0, label %cond.true, label %cond.end, !dbg !2076

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_tolower_loc() #6, !dbg !2077
  %1 = load i32*, i32** %call, align 8, !dbg !2078
  %idxprom = sext i32 %__c to i64, !dbg !2079
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2079
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2079
  br label %cond.end, !dbg !2080

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2080
  ret i32 %cond, !dbg !2081
}

declare dso_local i32** @__ctype_tolower_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @toupper(i32 %__c) local_unnamed_addr #0 !dbg !2082 {
entry:
  call void @llvm.dbg.value(metadata i32 %__c, metadata !2084, metadata !DIExpression()), !dbg !2085
  %__c.off = add i32 %__c, 128, !dbg !2086
  %0 = icmp ult i32 %__c.off, 384, !dbg !2086
  br i1 %0, label %cond.true, label %cond.end, !dbg !2086

cond.true:                                        ; preds = %entry
  %call = tail call i32** @__ctype_toupper_loc() #6, !dbg !2087
  %1 = load i32*, i32** %call, align 8, !dbg !2088
  %idxprom = sext i32 %__c to i64, !dbg !2089
  %arrayidx = getelementptr inbounds i32, i32* %1, i64 %idxprom, !dbg !2089
  %2 = load i32, i32* %arrayidx, align 4, !dbg !2089
  br label %cond.end, !dbg !2090

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %2, %cond.true ], [ %__c, %entry ], !dbg !2090
  ret i32 %cond, !dbg !2091
}

declare dso_local i32** @__ctype_toupper_loc() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @atoi(i8* %__nptr) local_unnamed_addr #0 !dbg !2092 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2097, metadata !DIExpression()), !dbg !2098
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2099
  %conv = trunc i64 %call to i32, !dbg !2100
  ret i32 %conv, !dbg !2101
}

declare dso_local i64 @strtol(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atol(i8* %__nptr) local_unnamed_addr #0 !dbg !2102 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2106, metadata !DIExpression()), !dbg !2107
  %call = tail call i64 @strtol(i8* %__nptr, i8** null, i32 10) #6, !dbg !2108
  ret i64 %call, !dbg !2109
}

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @atoll(i8* %__nptr) local_unnamed_addr #0 !dbg !2110 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2115, metadata !DIExpression()), !dbg !2116
  %call = tail call i64 @strtoll(i8* %__nptr, i8** null, i32 10) #6, !dbg !2117
  ret i64 %call, !dbg !2118
}

declare dso_local i64 @strtoll(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i8* @bsearch(i8* %__key, i8* %__base, i64 %__nmemb, i64 %__size, i32 (i8*, i8*)* %__compar) local_unnamed_addr #0 !dbg !2119 {
entry:
  call void @llvm.dbg.value(metadata i8* %__key, metadata !2125, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i8* %__base, metadata !2126, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2127, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__size, metadata !2128, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i32 (i8*, i8*)* %__compar, metadata !2129, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 0, metadata !2130, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__nmemb, metadata !2131, metadata !DIExpression()), !dbg !2135
  br label %while.cond, !dbg !2136

while.cond:                                       ; preds = %if.end6, %entry
  %__l.0 = phi i64 [ 0, %entry ], [ %__l.1, %if.end6 ], !dbg !2137
  %__u.0 = phi i64 [ %__nmemb, %entry ], [ %__u.1, %if.end6 ], !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__u.0, metadata !2131, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__l.0, metadata !2130, metadata !DIExpression()), !dbg !2135
  %cmp = icmp ult i64 %__l.0, %__u.0, !dbg !2138
  br i1 %cmp, label %while.body, label %cleanup, !dbg !2136

while.body:                                       ; preds = %while.cond
  %add = add i64 %__l.0, %__u.0, !dbg !2139
  %div = lshr i64 %add, 1, !dbg !2141
  call void @llvm.dbg.value(metadata i64 %div, metadata !2132, metadata !DIExpression()), !dbg !2135
  %mul = mul i64 %div, %__size, !dbg !2142
  %add.ptr = getelementptr inbounds i8, i8* %__base, i64 %mul, !dbg !2143
  call void @llvm.dbg.value(metadata i8* %add.ptr, metadata !2133, metadata !DIExpression()), !dbg !2135
  %call = tail call i32 %__compar(i8* %__key, i8* %add.ptr) #6, !dbg !2144
  call void @llvm.dbg.value(metadata i32 %call, metadata !2134, metadata !DIExpression()), !dbg !2135
  %cmp1 = icmp slt i32 %call, 0, !dbg !2145
  br i1 %cmp1, label %if.end6, label %if.else, !dbg !2147

if.else:                                          ; preds = %while.body
  %cmp2 = icmp eq i32 %call, 0, !dbg !2148
  br i1 %cmp2, label %cleanup, label %if.then3, !dbg !2150

if.then3:                                         ; preds = %if.else
  %add4 = add nuw i64 %div, 1, !dbg !2151
  call void @llvm.dbg.value(metadata i64 %add4, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %if.end6

if.end6:                                          ; preds = %while.body, %if.then3
  %__l.1 = phi i64 [ %add4, %if.then3 ], [ %__l.0, %while.body ], !dbg !2135
  %__u.1 = phi i64 [ %__u.0, %if.then3 ], [ %div, %while.body ], !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__u.1, metadata !2131, metadata !DIExpression()), !dbg !2135
  call void @llvm.dbg.value(metadata i64 %__l.1, metadata !2130, metadata !DIExpression()), !dbg !2135
  br label %while.cond, !dbg !2136, !llvm.loop !2152

cleanup:                                          ; preds = %if.else, %while.cond
  %retval.0 = phi i8* [ %add.ptr, %if.else ], [ null, %while.cond ], !dbg !2135
  ret i8* %retval.0, !dbg !2154
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: inlinehint nounwind uwtable
define dso_local double @atof(i8* %__nptr) local_unnamed_addr #0 !dbg !2155 {
entry:
  call void @llvm.dbg.value(metadata i8* %__nptr, metadata !2161, metadata !DIExpression()), !dbg !2162
  %call = tail call double @strtod(i8* %__nptr, i8** null) #6, !dbg !2163
  ret double %call, !dbg !2164
}

declare dso_local double @strtod(i8*, i8**) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoimax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2165 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2174, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2175, metadata !DIExpression()), !dbg !2177
  call void @llvm.dbg.value(metadata i32 %base, metadata !2176, metadata !DIExpression()), !dbg !2177
  %call = tail call i64 @__strtol_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2178
  ret i64 %call, !dbg !2179
}

declare dso_local i64 @__strtol_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @strtoumax(i8* noalias %nptr, i8** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2180 {
entry:
  call void @llvm.dbg.value(metadata i8* %nptr, metadata !2186, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i8** %endptr, metadata !2187, metadata !DIExpression()), !dbg !2189
  call void @llvm.dbg.value(metadata i32 %base, metadata !2188, metadata !DIExpression()), !dbg !2189
  %call = tail call i64 @__strtoul_internal(i8* %nptr, i8** %endptr, i32 %base, i32 0) #6, !dbg !2190
  ret i64 %call, !dbg !2191
}

declare dso_local i64 @__strtoul_internal(i8*, i8**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoimax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2192 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2203, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2204, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.value(metadata i32 %base, metadata !2205, metadata !DIExpression()), !dbg !2206
  %call = tail call i64 @__wcstol_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2207
  ret i64 %call, !dbg !2208
}

declare dso_local i64 @__wcstol_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i64 @wcstoumax(i32* noalias %nptr, i32** noalias %endptr, i32 %base) local_unnamed_addr #0 !dbg !2209 {
entry:
  call void @llvm.dbg.value(metadata i32* %nptr, metadata !2213, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32** %endptr, metadata !2214, metadata !DIExpression()), !dbg !2216
  call void @llvm.dbg.value(metadata i32 %base, metadata !2215, metadata !DIExpression()), !dbg !2216
  %call = tail call i64 @__wcstoul_internal(i32* %nptr, i32** %endptr, i32 %base, i32 0) #6, !dbg !2217
  ret i64 %call, !dbg !2218
}

declare dso_local i64 @__wcstoul_internal(i32*, i32**, i32, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2219 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2259, metadata !DIExpression()), !dbg !2261
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2260, metadata !DIExpression()), !dbg !2261
  %call = tail call i32 @__xstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2262
  ret i32 %call, !dbg !2263
}

declare dso_local i32 @__xstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat(i8* %__path, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2264 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2266, metadata !DIExpression()), !dbg !2268
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2267, metadata !DIExpression()), !dbg !2268
  %call = tail call i32 @__lxstat(i32 1, i8* %__path, %struct.stat* %__statbuf) #6, !dbg !2269
  ret i32 %call, !dbg !2270
}

declare dso_local i32 @__lxstat(i32, i8*, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat(i32 %__fd, %struct.stat* %__statbuf) local_unnamed_addr #0 !dbg !2271 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2276, metadata !DIExpression()), !dbg !2277
  %call = tail call i32 @__fxstat(i32 1, i32 %__fd, %struct.stat* %__statbuf) #6, !dbg !2278
  ret i32 %call, !dbg !2279
}

declare dso_local i32 @__fxstat(i32, i32, %struct.stat*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat(i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2280 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2284, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2285, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata %struct.stat* %__statbuf, metadata !2286, metadata !DIExpression()), !dbg !2288
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2287, metadata !DIExpression()), !dbg !2288
  %call = tail call i32 @__fxstatat(i32 1, i32 %__fd, i8* %__filename, %struct.stat* %__statbuf, i32 %__flag) #6, !dbg !2289
  ret i32 %call, !dbg !2290
}

declare dso_local i32 @__fxstatat(i32, i32, i8*, %struct.stat*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknod(i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2291 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2296, metadata !DIExpression()), !dbg !2298
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2297, metadata !DIExpression()), !dbg !2298
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2297, metadata !DIExpression(DW_OP_deref)), !dbg !2298
  %call = call i32 @__xmknod(i32 0, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2299
  ret i32 %call, !dbg !2300
}

declare dso_local i32 @__xmknod(i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @mknodat(i32 %__fd, i8* %__path, i32 %__mode, i64 %__dev) local_unnamed_addr #0 !dbg !2301 {
entry:
  %__dev.addr = alloca i64, align 8
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2305, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2306, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i32 %__mode, metadata !2307, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.value(metadata i64 %__dev, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i64 %__dev, i64* %__dev.addr, align 8
  call void @llvm.dbg.value(metadata i64* %__dev.addr, metadata !2308, metadata !DIExpression(DW_OP_deref)), !dbg !2309
  %call = call i32 @__xmknodat(i32 0, i32 %__fd, i8* %__path, i32 %__mode, i64* nonnull %__dev.addr) #6, !dbg !2310
  ret i32 %call, !dbg !2311
}

declare dso_local i32 @__xmknodat(i32, i32, i8*, i32, i64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @stat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2312 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2336, metadata !DIExpression()), !dbg !2338
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2337, metadata !DIExpression()), !dbg !2338
  %call = tail call i32 @__xstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2339
  ret i32 %call, !dbg !2340
}

declare dso_local i32 @__xstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @lstat64(i8* %__path, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2341 {
entry:
  call void @llvm.dbg.value(metadata i8* %__path, metadata !2343, metadata !DIExpression()), !dbg !2345
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2344, metadata !DIExpression()), !dbg !2345
  %call = tail call i32 @__lxstat64(i32 1, i8* %__path, %struct.stat64* %__statbuf) #6, !dbg !2346
  ret i32 %call, !dbg !2347
}

declare dso_local i32 @__lxstat64(i32, i8*, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstat64(i32 %__fd, %struct.stat64* %__statbuf) local_unnamed_addr #0 !dbg !2348 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2352, metadata !DIExpression()), !dbg !2354
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2353, metadata !DIExpression()), !dbg !2354
  %call = tail call i32 @__fxstat64(i32 1, i32 %__fd, %struct.stat64* %__statbuf) #6, !dbg !2355
  ret i32 %call, !dbg !2356
}

declare dso_local i32 @__fxstat64(i32, i32, %struct.stat64*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define dso_local i32 @fstatat64(i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) local_unnamed_addr #0 !dbg !2357 {
entry:
  call void @llvm.dbg.value(metadata i32 %__fd, metadata !2361, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i8* %__filename, metadata !2362, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata %struct.stat64* %__statbuf, metadata !2363, metadata !DIExpression()), !dbg !2365
  call void @llvm.dbg.value(metadata i32 %__flag, metadata !2364, metadata !DIExpression()), !dbg !2365
  %call = tail call i32 @__fxstatat64(i32 1, i32 %__fd, i8* %__filename, %struct.stat64* %__statbuf, i32 %__flag) #6, !dbg !2366
  ret i32 %call, !dbg !2367
}

declare dso_local i32 @__fxstatat64(i32, i32, i8*, %struct.stat64*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rtl_register_cfg_hooks() local_unnamed_addr #5 !dbg !2368 {
entry:
  store %struct.cfg_hooks* @rtl_cfg_hooks, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2371
  ret void, !dbg !2372
}

; Function Attrs: nounwind uwtable
define dso_local void @cfg_layout_rtl_register_cfg_hooks() local_unnamed_addr #5 !dbg !2373 {
entry:
  store %struct.cfg_hooks* @cfg_layout_rtl_cfg_hooks, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2374
  ret void, !dbg !2375
}

; Function Attrs: nounwind uwtable
define dso_local void @gimple_register_cfg_hooks() local_unnamed_addr #5 !dbg !2376 {
entry:
  store %struct.cfg_hooks* @gimple_cfg_hooks, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2377
  ret void, !dbg !2378
}

; Function Attrs: nounwind uwtable
define dso_local void @get_cfg_hooks(%struct.cfg_hooks* noalias sret %agg.result) local_unnamed_addr #5 !dbg !2379 {
entry:
  %0 = load i8*, i8** bitcast (%struct.cfg_hooks** @cfg_hooks to i8**), align 8, !dbg !2382
  %1 = bitcast %struct.cfg_hooks* %agg.result to i8*, !dbg !2383
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %0, i64 232, i1 false), !dbg !2383
  ret void, !dbg !2384
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define dso_local void @set_cfg_hooks(%struct.cfg_hooks* byval(%struct.cfg_hooks) align 8 %new_cfg_hooks) local_unnamed_addr #5 !dbg !2385 {
entry:
  call void @llvm.dbg.declare(metadata %struct.cfg_hooks* %new_cfg_hooks, metadata !2389, metadata !DIExpression()), !dbg !2390
  %0 = load i8*, i8** bitcast (%struct.cfg_hooks** @cfg_hooks to i8**), align 8, !dbg !2391
  %1 = bitcast %struct.cfg_hooks* %new_cfg_hooks to i8*, !dbg !2392
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* nonnull align 8 %1, i64 232, i1 false), !dbg !2392
  ret void, !dbg !2393
}

; Function Attrs: nounwind uwtable
define dso_local i32 @current_ir_type() local_unnamed_addr #5 !dbg !2394 {
entry:
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2397
  %cmp = icmp eq %struct.cfg_hooks* %0, @gimple_cfg_hooks, !dbg !2399
  br i1 %cmp, label %return, label %if.else, !dbg !2400

if.else:                                          ; preds = %entry
  %cmp1 = icmp eq %struct.cfg_hooks* %0, @rtl_cfg_hooks, !dbg !2401
  br i1 %cmp1, label %return, label %if.else3, !dbg !2403

if.else3:                                         ; preds = %if.else
  %cmp4 = icmp eq %struct.cfg_hooks* %0, @cfg_layout_rtl_cfg_hooks, !dbg !2404
  br i1 %cmp4, label %return, label %if.else6, !dbg !2406

if.else6:                                         ; preds = %if.else3
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2407
  br label %return, !dbg !2408

return:                                           ; preds = %if.else3, %if.else, %entry, %if.else6
  %retval.0 = phi i32 [ 0, %if.else6 ], [ 0, %entry ], [ 1, %if.else ], [ 2, %if.else3 ], !dbg !2409
  ret i32 %retval.0, !dbg !2410
}

declare dso_local void @fancy_abort(i8*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @verify_flow_info() local_unnamed_addr #5 !dbg !2411 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp144 = alloca %struct.edge_iterator, align 8
  %e179 = alloca %struct.edge_def*, align 8
  %ei180 = alloca %struct.edge_iterator, align 8
  %tmp181 = alloca %struct.edge_iterator, align 8
  %tmp198 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata i32 0, metadata !2414, metadata !DIExpression()), !dbg !2433
  %0 = load i8, i8* @timevar_enable, align 1, !dbg !2434
  %tobool = icmp eq i8 %0, 0, !dbg !2434
  br i1 %tobool, label %do.end, label %if.then, !dbg !2437

if.then:                                          ; preds = %entry
  tail call void @timevar_push_1(i32 24) #6, !dbg !2434
  br label %do.end, !dbg !2434

do.end:                                           ; preds = %entry, %if.then
  %1 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2438
  %cfg = getelementptr inbounds %struct.function, %struct.function* %1, i64 0, i32 1, !dbg !2438
  %2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !2438
  %x_last_basic_block = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %2, i64 0, i32 5, !dbg !2438
  %3 = load i32, i32* %x_last_basic_block, align 8, !dbg !2438
  %conv = sext i32 %3 to i64, !dbg !2438
  %call = tail call i8* @xcalloc(i64 %conv, i64 8) #6, !dbg !2438
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %20, metadata !2417, metadata !DIExpression()), !dbg !2433
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2439
  %cfg2 = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 1, !dbg !2439
  %5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg2, align 8, !dbg !2439
  %x_last_basic_block3 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %5, i64 0, i32 5, !dbg !2439
  %6 = load i32, i32* %x_last_basic_block3, align 8, !dbg !2439
  %conv4 = sext i32 %6 to i64, !dbg !2439
  %call5 = tail call i8* @xcalloc(i64 %conv4, i64 8) #6, !dbg !2439
  call void @llvm.dbg.value(metadata i64* %21, metadata !2413, metadata !DIExpression()), !dbg !2433
  %7 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2440
  %cfg7 = getelementptr inbounds %struct.function, %struct.function* %7, i64 0, i32 1, !dbg !2440
  %8 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg7, align 8, !dbg !2440
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %8, i64 0, i32 0, !dbg !2440
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !2440
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !2416, metadata !DIExpression()), !dbg !2433
  br label %for.cond, !dbg !2441

for.cond:                                         ; preds = %for.inc, %do.end
  %10 = phi %struct.control_flow_graph* [ %8, %do.end ], [ %.pre5, %for.inc ], !dbg !2433
  %11 = phi %struct.function* [ %7, %do.end ], [ %.pre, %for.inc ], !dbg !2433
  %last_bb_seen.0 = phi %struct.basic_block_def* [ %9, %do.end ], [ %bb.0, %for.inc ], !dbg !2433
  %.pn = phi %struct.basic_block_def* [ %9, %do.end ], [ %bb.0, %for.inc ]
  %err.0 = phi i32 [ 0, %do.end ], [ %err.2, %for.inc ], !dbg !2433
  %bb.0.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn, i64 0, i32 6, !dbg !2443
  %bb.0 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.0.in, align 8, !dbg !2443
  call void @llvm.dbg.value(metadata i32 %err.0, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2415, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %last_bb_seen.0, metadata !2416, metadata !DIExpression()), !dbg !2433
  %cmp = icmp eq %struct.basic_block_def* %bb.0, null, !dbg !2444
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 1, !dbg !2433
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !2433
  br i1 %cmp, label %for.end, label %for.body, !dbg !2441

for.body:                                         ; preds = %for.cond
  %cmp14 = icmp eq %struct.basic_block_def* %bb.0, %12, !dbg !2446
  br i1 %cmp14, label %if.end27, label %land.lhs.true, !dbg !2449

land.lhs.true:                                    ; preds = %for.body
  %x_basic_block_info = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %10, i64 0, i32 2, !dbg !2450
  %13 = load %struct.VEC_basic_block_gc*, %struct.VEC_basic_block_gc** %x_basic_block_info, align 8, !dbg !2450
  %tobool18 = icmp eq %struct.VEC_basic_block_gc* %13, null, !dbg !2450
  br i1 %tobool18, label %cond.end, label %cond.true, !dbg !2450

cond.true:                                        ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.VEC_basic_block_gc, %struct.VEC_basic_block_gc* %13, i64 0, i32 0, !dbg !2450
  br label %cond.end, !dbg !2450

cond.end:                                         ; preds = %land.lhs.true, %cond.true
  %cond = phi %struct.VEC_basic_block_base* [ %base, %cond.true ], [ null, %land.lhs.true ], !dbg !2450
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2450
  %14 = load i32, i32* %index, align 8, !dbg !2450
  %call22 = tail call fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %cond, i32 %14) #7, !dbg !2450
  %cmp23 = icmp eq %struct.basic_block_def* %bb.0, %call22, !dbg !2451
  br i1 %cmp23, label %if.end27, label %if.then25, !dbg !2452

if.then25:                                        ; preds = %cond.end
  %15 = load i32, i32* %index, align 8, !dbg !2453
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %15) #6, !dbg !2455
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end27, !dbg !2456

if.end27:                                         ; preds = %cond.end, %for.body, %if.then25
  %err.1 = phi i32 [ 1, %if.then25 ], [ %err.0, %cond.end ], [ %err.0, %for.body ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 5, !dbg !2457
  %16 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !2457
  %cmp28 = icmp eq %struct.basic_block_def* %16, %last_bb_seen.0, !dbg !2459
  br i1 %cmp28, label %for.inc, label %if.then30, !dbg !2460

if.then30:                                        ; preds = %if.end27
  %index31 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.0, i64 0, i32 9, !dbg !2461
  %17 = load i32, i32* %index31, align 8, !dbg !2461
  %index32 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %last_bb_seen.0, i64 0, i32 9, !dbg !2463
  %18 = load i32, i32* %index32, align 8, !dbg !2463
  %index34 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %16, i64 0, i32 9, !dbg !2464
  %19 = load i32, i32* %index34, align 8, !dbg !2464
  tail call void (i8*, ...) @error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %17, i32 %18, i32 %19) #6, !dbg !2465
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %for.inc, !dbg !2466

for.inc:                                          ; preds = %if.end27, %if.then30
  %err.2 = phi i32 [ 1, %if.then30 ], [ %err.1, %if.end27 ], !dbg !2467
  call void @llvm.dbg.value(metadata i32 %err.2, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.0, metadata !2416, metadata !DIExpression()), !dbg !2433
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2433
  %cfg13.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !2433
  %.pre5 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg13.phi.trans.insert, align 8, !dbg !2433
  br label %for.cond, !dbg !2444, !llvm.loop !2468

for.end:                                          ; preds = %for.cond
  %.lcssa18 = phi %struct.control_flow_graph* [ %10, %for.cond ], !dbg !2433
  %.lcssa17 = phi %struct.function* [ %11, %for.cond ], !dbg !2433
  %err.0.lcssa = phi i32 [ %err.0, %for.cond ], !dbg !2433
  %.lcssa = phi %struct.basic_block_def* [ %12, %for.cond ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  %20 = bitcast i8* %call to %struct.basic_block_def**, !dbg !2438
  %21 = bitcast i8* %call5 to i64*, !dbg !2439
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.0.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  %22 = bitcast %struct.edge_def** %e to i8*, !dbg !2470
  %23 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2470
  %24 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2471
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2471
  %26 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2471
  %27 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2473
  %28 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2473
  %29 = bitcast %struct.edge_def** %e to i64*, !dbg !2475
  %30 = bitcast %struct.edge_iterator* %tmp144 to i8*, !dbg !2477
  %31 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp144, i64 0, i32 0, !dbg !2477
  %32 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp144, i64 0, i32 1, !dbg !2477
  br label %for.cond41, !dbg !2479

for.cond41:                                       ; preds = %for.end175, %for.end
  %33 = phi %struct.control_flow_graph* [ %.lcssa18, %for.end ], [ %.pre7, %for.end175 ], !dbg !2480
  %34 = phi %struct.function* [ %.lcssa17, %for.end ], [ %.pre6, %for.end175 ], !dbg !2480
  %.pn4 = phi %struct.basic_block_def* [ %.lcssa, %for.end ], [ %bb.1, %for.end175 ]
  %err.3 = phi i32 [ %err.0.lcssa, %for.end ], [ %err.14.lcssa, %for.end175 ], !dbg !2433
  %bb.1.in = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %.pn4, i64 0, i32 5, !dbg !2481
  %bb.1 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.1.in, align 8, !dbg !2481
  call void @llvm.dbg.value(metadata i32 %err.3, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.1, metadata !2415, metadata !DIExpression()), !dbg !2433
  %x_entry_block_ptr44 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %33, i64 0, i32 0, !dbg !2480
  %35 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr44, align 8, !dbg !2480
  %cmp45 = icmp eq %struct.basic_block_def* %bb.1, %35, !dbg !2480
  br i1 %cmp45, label %for.end178, label %for.body47, !dbg !2479

for.body47:                                       ; preds = %for.cond41
  call void @llvm.dbg.value(metadata i32 0, metadata !2418, metadata !DIExpression()), !dbg !2470
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #8, !dbg !2482
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2483
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 3, !dbg !2484
  %36 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2484
  %cmp48 = icmp eq %struct.loop* %36, null, !dbg !2486
  br i1 %cmp48, label %if.end56, label %land.lhs.true50, !dbg !2487

land.lhs.true50:                                  ; preds = %for.body47
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %34, i64 0, i32 4, !dbg !2488
  %37 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2488
  %cmp52 = icmp eq %struct.loops* %37, null, !dbg !2489
  br i1 %cmp52, label %if.then54, label %if.end56, !dbg !2490

if.then54:                                        ; preds = %land.lhs.true50
  %index55 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2491
  %38 = load i32, i32* %index55, align 8, !dbg !2491
  call void (i8*, ...) @error(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %38) #6, !dbg !2493
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre8 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2494
  br label %if.end56, !dbg !2496

if.end56:                                         ; preds = %for.body47, %if.then54, %land.lhs.true50
  %39 = phi %struct.loop* [ %.pre8, %if.then54 ], [ %36, %land.lhs.true50 ], [ null, %for.body47 ], !dbg !2494
  %err.4 = phi i32 [ 1, %if.then54 ], [ %err.3, %land.lhs.true50 ], [ %err.3, %for.body47 ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.4, metadata !2414, metadata !DIExpression()), !dbg !2433
  %cmp58 = icmp eq %struct.loop* %39, null, !dbg !2497
  br i1 %cmp58, label %land.lhs.true60, label %if.end67, !dbg !2498

land.lhs.true60:                                  ; preds = %if.end56
  %40 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2499
  %x_current_loops62 = getelementptr inbounds %struct.function, %struct.function* %40, i64 0, i32 4, !dbg !2499
  %41 = load %struct.loops*, %struct.loops** %x_current_loops62, align 8, !dbg !2499
  %cmp63 = icmp eq %struct.loops* %41, null, !dbg !2500
  br i1 %cmp63, label %if.end67, label %if.then65, !dbg !2501

if.then65:                                        ; preds = %land.lhs.true60
  %index66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2502
  %42 = load i32, i32* %index66, align 8, !dbg !2502
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), i32 %42) #6, !dbg !2504
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end67, !dbg !2505

if.end67:                                         ; preds = %land.lhs.true60, %if.then65, %if.end56
  %err.5 = phi i32 [ 1, %if.then65 ], [ %err.4, %land.lhs.true60 ], [ %err.4, %if.end56 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.5, metadata !2414, metadata !DIExpression()), !dbg !2433
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 8, !dbg !2506
  %43 = load i64, i64* %count, align 8, !dbg !2506
  %cmp68 = icmp slt i64 %43, 0, !dbg !2508
  br i1 %cmp68, label %if.then70, label %if.end74, !dbg !2509

if.then70:                                        ; preds = %if.end67
  %index71 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2510
  %44 = load i32, i32* %index71, align 8, !dbg !2510
  %conv73 = trunc i64 %43 to i32, !dbg !2512
  call void (i8*, ...) @error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %44, i32 %conv73) #6, !dbg !2513
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end74, !dbg !2514

if.end74:                                         ; preds = %if.then70, %if.end67
  %err.6 = phi i32 [ 1, %if.then70 ], [ %err.5, %if.end67 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.6, metadata !2414, metadata !DIExpression()), !dbg !2433
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 11, !dbg !2515
  %45 = load i32, i32* %frequency, align 8, !dbg !2515
  %cmp75 = icmp slt i32 %45, 0, !dbg !2517
  br i1 %cmp75, label %if.then77, label %if.end80, !dbg !2518

if.then77:                                        ; preds = %if.end74
  %index78 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2519
  %46 = load i32, i32* %index78, align 8, !dbg !2519
  call void (i8*, ...) @error(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.7, i64 0, i64 0), i32 %46, i32 %45) #6, !dbg !2521
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end80, !dbg !2522

if.end80:                                         ; preds = %if.then77, %if.end74
  %err.7 = phi i32 [ 1, %if.then77 ], [ %err.6, %if.end74 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.7, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2523
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 1, !dbg !2523
  %call81 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2523
  %47 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 0, !dbg !2523
  store i32 %47, i32* %25, align 8, !dbg !2523
  %48 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 1, !dbg !2523
  store %struct.VEC_edge_gc** %48, %struct.VEC_edge_gc*** %26, align 8, !dbg !2523
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* nonnull align 8 %24, i64 16, i1 false), !dbg !2523
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %24) #8, !dbg !2523
  %index128 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 9, !dbg !2524
  br label %for.cond82, !dbg !2523

for.cond82:                                       ; preds = %if.end132, %if.end80
  %err.8 = phi i32 [ %err.7, %if.end80 ], [ %err.12, %if.end132 ], !dbg !2470
  %n_fallthru.0 = phi i32 [ 0, %if.end80 ], [ %spec.select, %if.end132 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %n_fallthru.0, metadata !2418, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.8, metadata !2414, metadata !DIExpression()), !dbg !2433
  %49 = load i32, i32* %27, align 8, !dbg !2527
  %50 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %28, align 8, !dbg !2527
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2422, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  %call83 = call fastcc zeroext i8 @ei_cond(i32 %49, %struct.VEC_edge_gc** %50, %struct.edge_def** nonnull %e) #7, !dbg !2527
  %tobool84 = icmp eq i8 %call83, 0, !dbg !2523
  br i1 %tobool84, label %for.end138, label %for.body85, !dbg !2523

for.body85:                                       ; preds = %for.cond82
  %51 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2528
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 1, !dbg !2530
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2530
  %index86 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %52, i64 0, i32 9, !dbg !2531
  %53 = load i32, i32* %index86, align 8, !dbg !2531
  %idxprom = sext i32 %53 to i64, !dbg !2532
  %arrayidx = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %20, i64 %idxprom, !dbg !2532
  %54 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2532
  %cmp87 = icmp eq %struct.basic_block_def* %54, %bb.1, !dbg !2533
  br i1 %cmp87, label %if.then89, label %if.end93, !dbg !2534

if.then89:                                        ; preds = %for.body85
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2422, metadata !DIExpression()), !dbg !2470
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %51, i64 0, i32 0, !dbg !2535
  %55 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2535
  %index90 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %55, i64 0, i32 9, !dbg !2537
  %56 = load i32, i32* %index90, align 8, !dbg !2537
  call void @llvm.dbg.value(metadata %struct.edge_def* %51, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.8, i64 0, i64 0), i32 %56, i32 %53) #6, !dbg !2538
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre9 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2539
  br label %if.end93, !dbg !2541

if.end93:                                         ; preds = %if.then89, %for.body85
  %57 = phi %struct.edge_def* [ %.pre9, %if.then89 ], [ %51, %for.body85 ], !dbg !2539
  %err.9 = phi i32 [ 1, %if.then89 ], [ %err.8, %for.body85 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.9, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !2422, metadata !DIExpression()), !dbg !2470
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i64 0, i32 8, !dbg !2542
  %58 = load i32, i32* %probability, align 4, !dbg !2542
  %cmp94 = icmp slt i32 %58, 0, !dbg !2543
  br i1 %cmp94, label %if.then99, label %lor.lhs.false, !dbg !2544

lor.lhs.false:                                    ; preds = %if.end93
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !2422, metadata !DIExpression()), !dbg !2470
  %cmp97 = icmp sgt i32 %58, 10000, !dbg !2545
  br i1 %cmp97, label %if.then99, label %if.end105, !dbg !2546

if.then99:                                        ; preds = %lor.lhs.false, %if.end93
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !2422, metadata !DIExpression()), !dbg !2470
  %src100 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i64 0, i32 0, !dbg !2547
  %59 = load %struct.basic_block_def*, %struct.basic_block_def** %src100, align 8, !dbg !2547
  %index101 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %59, i64 0, i32 9, !dbg !2549
  %60 = load i32, i32* %index101, align 8, !dbg !2549
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest102 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %57, i64 0, i32 1, !dbg !2550
  %61 = load %struct.basic_block_def*, %struct.basic_block_def** %dest102, align 8, !dbg !2550
  %index103 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %61, i64 0, i32 9, !dbg !2551
  %62 = load i32, i32* %index103, align 8, !dbg !2551
  call void @llvm.dbg.value(metadata %struct.edge_def* %57, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void (i8*, ...) @error(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0), i32 %60, i32 %62, i32 %58) #6, !dbg !2552
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre10 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2553
  br label %if.end105, !dbg !2555

if.end105:                                        ; preds = %if.then99, %lor.lhs.false
  %63 = phi %struct.edge_def* [ %.pre10, %if.then99 ], [ %57, %lor.lhs.false ], !dbg !2553
  %err.10 = phi i32 [ 1, %if.then99 ], [ %err.9, %lor.lhs.false ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %err.10, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.edge_def* %63, metadata !2422, metadata !DIExpression()), !dbg !2470
  %count106 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 9, !dbg !2556
  %64 = load i64, i64* %count106, align 8, !dbg !2556
  %cmp107 = icmp slt i64 %64, 0, !dbg !2557
  br i1 %cmp107, label %if.then109, label %if.end116, !dbg !2558

if.then109:                                       ; preds = %if.end105
  call void @llvm.dbg.value(metadata %struct.edge_def* %63, metadata !2422, metadata !DIExpression()), !dbg !2470
  %src110 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 0, !dbg !2559
  %65 = load %struct.basic_block_def*, %struct.basic_block_def** %src110, align 8, !dbg !2559
  %index111 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %65, i64 0, i32 9, !dbg !2561
  %66 = load i32, i32* %index111, align 8, !dbg !2561
  call void @llvm.dbg.value(metadata %struct.edge_def* %63, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest112 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %63, i64 0, i32 1, !dbg !2562
  %67 = load %struct.basic_block_def*, %struct.basic_block_def** %dest112, align 8, !dbg !2562
  %index113 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %67, i64 0, i32 9, !dbg !2563
  %68 = load i32, i32* %index113, align 8, !dbg !2563
  call void @llvm.dbg.value(metadata %struct.edge_def* %63, metadata !2422, metadata !DIExpression()), !dbg !2470
  %conv115 = trunc i64 %64 to i32, !dbg !2564
  call void (i8*, ...) @error(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0), i32 %66, i32 %68, i32 %conv115) #6, !dbg !2565
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre11 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2566
  br label %if.end116, !dbg !2567

if.end116:                                        ; preds = %if.then109, %if.end105
  %69 = phi %struct.edge_def* [ %.pre11, %if.then109 ], [ %63, %if.end105 ], !dbg !2566
  %err.11 = phi i32 [ 1, %if.then109 ], [ %err.10, %if.end105 ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %err.11, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.edge_def* %69, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest117 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %69, i64 0, i32 1, !dbg !2568
  %70 = load %struct.basic_block_def*, %struct.basic_block_def** %dest117, align 8, !dbg !2568
  %index118 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %70, i64 0, i32 9, !dbg !2569
  %71 = load i32, i32* %index118, align 8, !dbg !2569
  %idxprom119 = sext i32 %71 to i64, !dbg !2570
  %arrayidx120 = getelementptr inbounds %struct.basic_block_def*, %struct.basic_block_def** %20, i64 %idxprom119, !dbg !2570
  store %struct.basic_block_def* %bb.1, %struct.basic_block_def** %arrayidx120, align 8, !dbg !2571
  %72 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2572
  call void @llvm.dbg.value(metadata %struct.edge_def* %72, metadata !2422, metadata !DIExpression()), !dbg !2470
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i64 0, i32 7, !dbg !2574
  %73 = load i32, i32* %flags, align 8, !dbg !2574
  %and = and i32 %73, 1, !dbg !2575
  %spec.select = add nuw nsw i32 %n_fallthru.0, %and, !dbg !2576
  call void @llvm.dbg.value(metadata i32 %spec.select, metadata !2418, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata %struct.edge_def* %72, metadata !2422, metadata !DIExpression()), !dbg !2470
  %src124 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %72, i64 0, i32 0, !dbg !2577
  %74 = load %struct.basic_block_def*, %struct.basic_block_def** %src124, align 8, !dbg !2577
  %cmp125 = icmp eq %struct.basic_block_def* %74, %bb.1, !dbg !2578
  %75 = ptrtoint %struct.edge_def* %72 to i64, !dbg !2579
  br i1 %cmp125, label %if.end132, label %if.then127, !dbg !2579

if.then127:                                       ; preds = %if.end116
  %76 = load i32, i32* %index128, align 8, !dbg !2580
  call void (i8*, ...) @error(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.11, i64 0, i64 0), i32 %76) #6, !dbg !2581
  %77 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2582
  %call129 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %77, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2583
  %78 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2584
  %79 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2585
  call void @llvm.dbg.value(metadata %struct.edge_def* %79, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %78, %struct.edge_def* %79, i32 0) #6, !dbg !2586
  %80 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2587
  %call130 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %80, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0)) #6, !dbg !2588
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2589
  %82 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2590
  call void @llvm.dbg.value(metadata %struct.edge_def* %82, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %81, %struct.edge_def* %82, i32 1) #6, !dbg !2591
  %83 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2592
  %call131 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %83, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i64 0, i64 0)) #6, !dbg !2593
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre12 = load i64, i64* %29, align 8, !dbg !2594
  br label %if.end132, !dbg !2595

if.end132:                                        ; preds = %if.end116, %if.then127
  %84 = phi i64 [ %.pre12, %if.then127 ], [ %75, %if.end116 ], !dbg !2594
  %err.12 = phi i32 [ 1, %if.then127 ], [ %err.11, %if.end116 ], !dbg !2475
  call void @llvm.dbg.value(metadata i32 %err.12, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.cast3 = inttoptr i64 %84 to %struct.edge_def*, !dbg !2596
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast3, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest133 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast3, i64 0, i32 1, !dbg !2597
  %85 = load %struct.basic_block_def*, %struct.basic_block_def** %dest133, align 8, !dbg !2597
  %index134 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %85, i64 0, i32 9, !dbg !2598
  %86 = load i32, i32* %index134, align 8, !dbg !2598
  %idxprom135 = sext i32 %86 to i64, !dbg !2599
  %arrayidx136 = getelementptr inbounds i64, i64* %21, i64 %idxprom135, !dbg !2599
  %87 = load i64, i64* %arrayidx136, align 8, !dbg !2600
  %add = add i64 %87, %84, !dbg !2600
  store i64 %add, i64* %arrayidx136, align 8, !dbg !2600
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2423, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2527
  br label %for.cond82, !dbg !2527, !llvm.loop !2601

for.end138:                                       ; preds = %for.cond82
  %err.8.lcssa = phi i32 [ %err.8, %for.cond82 ], !dbg !2470
  %n_fallthru.0.lcssa = phi i32 [ %n_fallthru.0, %for.cond82 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.8.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %n_fallthru.0.lcssa, metadata !2418, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.8.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %n_fallthru.0.lcssa, metadata !2418, metadata !DIExpression()), !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.8.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %n_fallthru.0.lcssa, metadata !2418, metadata !DIExpression()), !dbg !2470
  %cmp139 = icmp ugt i32 %n_fallthru.0.lcssa, 1, !dbg !2603
  br i1 %cmp139, label %if.then141, label %if.end143, !dbg !2605

if.then141:                                       ; preds = %for.end138
  %88 = load i32, i32* %index128, align 8, !dbg !2606
  call void (i8*, ...) @error(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.15, i64 0, i64 0), i32 %88) #6, !dbg !2608
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end143, !dbg !2609

if.end143:                                        ; preds = %if.then141, %for.end138
  %err.13 = phi i32 [ 1, %if.then141 ], [ %err.8.lcssa, %for.end138 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.13, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #8, !dbg !2610
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1, i64 0, i32 0, !dbg !2610
  %call145 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2610
  %89 = extractvalue { i32, %struct.VEC_edge_gc** } %call145, 0, !dbg !2610
  store i32 %89, i32* %31, align 8, !dbg !2610
  %90 = extractvalue { i32, %struct.VEC_edge_gc** } %call145, 1, !dbg !2610
  store %struct.VEC_edge_gc** %90, %struct.VEC_edge_gc*** %32, align 8, !dbg !2610
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %23, i8* nonnull align 8 %30, i64 16, i1 false), !dbg !2610
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #8, !dbg !2610
  br label %for.cond146, !dbg !2610

for.cond146:                                      ; preds = %if.end169, %if.end143
  %err.14 = phi i32 [ %err.13, %if.end143 ], [ %err.16, %if.end169 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.14, metadata !2414, metadata !DIExpression()), !dbg !2433
  %91 = load i32, i32* %27, align 8, !dbg !2611
  %92 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %28, align 8, !dbg !2611
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2422, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  %call147 = call fastcc zeroext i8 @ei_cond(i32 %91, %struct.VEC_edge_gc** %92, %struct.edge_def** nonnull %e) #7, !dbg !2611
  %tobool148 = icmp eq i8 %call147, 0, !dbg !2610
  br i1 %tobool148, label %for.end175, label %for.body149, !dbg !2610

for.body149:                                      ; preds = %for.cond146
  %93 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2613
  call void @llvm.dbg.value(metadata %struct.edge_def* %93, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest150 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %93, i64 0, i32 1, !dbg !2616
  %94 = load %struct.basic_block_def*, %struct.basic_block_def** %dest150, align 8, !dbg !2616
  %cmp151 = icmp eq %struct.basic_block_def* %94, %bb.1, !dbg !2617
  br i1 %cmp151, label %if.end158, label %if.then153, !dbg !2618

if.then153:                                       ; preds = %for.body149
  %95 = load i32, i32* %index128, align 8, !dbg !2619
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %95) #6, !dbg !2621
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2622
  %call155 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %96) #6, !dbg !2623
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2624
  %98 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2625
  call void @llvm.dbg.value(metadata %struct.edge_def* %98, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %97, %struct.edge_def* %98, i32 0) #6, !dbg !2626
  %99 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2627
  %call156 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %99) #6, !dbg !2628
  %100 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2629
  %101 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2630
  call void @llvm.dbg.value(metadata %struct.edge_def* %101, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %100, %struct.edge_def* %101, i32 1) #6, !dbg !2631
  %102 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2632
  %call157 = call i32 @fputc(i32 10, %struct._IO_FILE* %102) #6, !dbg !2633
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre13 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2634
  br label %if.end158, !dbg !2636

if.end158:                                        ; preds = %for.body149, %if.then153
  %.in = phi %struct.edge_def* [ %.pre13, %if.then153 ], [ %93, %for.body149 ]
  %103 = phi %struct.edge_def* [ %.pre13, %if.then153 ], [ %93, %for.body149 ], !dbg !2634
  %err.15 = phi i32 [ 1, %if.then153 ], [ %err.14, %for.body149 ], !dbg !2470
  %104 = ptrtoint %struct.edge_def* %.in to i64, !dbg !2637
  call void @llvm.dbg.value(metadata i32 %err.15, metadata !2414, metadata !DIExpression()), !dbg !2433
  %105 = load i32, i32* %27, align 8, !dbg !2638
  call void @llvm.dbg.value(metadata %struct.edge_def* %103, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest_idx = getelementptr inbounds %struct.edge_def, %struct.edge_def* %103, i64 0, i32 6, !dbg !2639
  %106 = load i32, i32* %dest_idx, align 4, !dbg !2639
  %cmp160 = icmp eq i32 %105, %106, !dbg !2640
  br i1 %cmp160, label %if.end169, label %if.then162, !dbg !2641

if.then162:                                       ; preds = %if.end158
  %107 = load i32, i32* %index128, align 8, !dbg !2642
  call void (i8*, ...) @error(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i64 0, i64 0), i32 %107) #6, !dbg !2644
  %108 = load i32, i32* %27, align 8, !dbg !2645
  %109 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2646
  call void @llvm.dbg.value(metadata %struct.edge_def* %109, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest_idx165 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %109, i64 0, i32 6, !dbg !2647
  %110 = load i32, i32* %dest_idx165, align 4, !dbg !2647
  call void (i8*, ...) @error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i64 0, i64 0), i32 %108, i32 %110) #6, !dbg !2648
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2649
  %call166 = call i32 @fputs(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), %struct._IO_FILE* %111) #6, !dbg !2650
  %112 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2651
  %113 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2652
  call void @llvm.dbg.value(metadata %struct.edge_def* %113, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %112, %struct.edge_def* %113, i32 0) #6, !dbg !2653
  %114 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2654
  %call167 = call i32 @fputs(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0), %struct._IO_FILE* %114) #6, !dbg !2655
  %115 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2656
  %116 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2657
  call void @llvm.dbg.value(metadata %struct.edge_def* %116, metadata !2422, metadata !DIExpression()), !dbg !2470
  call void @dump_edge_info(%struct._IO_FILE* %115, %struct.edge_def* %116, i32 1) #6, !dbg !2658
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !2659
  %call168 = call i32 @fputc(i32 10, %struct._IO_FILE* %117) #6, !dbg !2660
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.pre14 = load i64, i64* %29, align 8, !dbg !2661
  br label %if.end169, !dbg !2662

if.end169:                                        ; preds = %if.end158, %if.then162
  %118 = phi i64 [ %.pre14, %if.then162 ], [ %104, %if.end158 ], !dbg !2661
  %err.16 = phi i32 [ 1, %if.then162 ], [ %err.15, %if.end158 ], !dbg !2637
  call void @llvm.dbg.value(metadata i32 %err.16, metadata !2414, metadata !DIExpression()), !dbg !2433
  %.cast2 = inttoptr i64 %118 to %struct.edge_def*, !dbg !2663
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast2, metadata !2422, metadata !DIExpression()), !dbg !2470
  %dest170 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast2, i64 0, i32 1, !dbg !2664
  %119 = load %struct.basic_block_def*, %struct.basic_block_def** %dest170, align 8, !dbg !2664
  %index171 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %119, i64 0, i32 9, !dbg !2665
  %120 = load i32, i32* %index171, align 8, !dbg !2665
  %idxprom172 = sext i32 %120 to i64, !dbg !2666
  %arrayidx173 = getelementptr inbounds i64, i64* %21, i64 %idxprom172, !dbg !2666
  %121 = load i64, i64* %arrayidx173, align 8, !dbg !2667
  %sub = sub i64 %121, %118, !dbg !2667
  store i64 %sub, i64* %arrayidx173, align 8, !dbg !2667
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2423, metadata !DIExpression(DW_OP_deref)), !dbg !2470
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2611
  br label %for.cond146, !dbg !2611, !llvm.loop !2668

for.end175:                                       ; preds = %for.cond146
  %err.14.lcssa = phi i32 [ %err.14, %for.cond146 ], !dbg !2470
  call void @llvm.dbg.value(metadata i32 %err.14.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.14.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.14.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %23) #8, !dbg !2670
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #8, !dbg !2670
  %.pre6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2480
  %cfg43.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre6, i64 0, i32 1, !dbg !2671
  %.pre7 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg43.phi.trans.insert, align 8, !dbg !2480
  br label %for.cond41, !dbg !2480, !llvm.loop !2672

for.end178:                                       ; preds = %for.cond41
  %err.3.lcssa = phi i32 [ %err.3, %for.cond41 ], !dbg !2433
  %bb.1.lcssa = phi %struct.basic_block_def* [ %bb.1, %for.cond41 ], !dbg !2481
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.3.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  %122 = bitcast %struct.edge_def** %e179 to i8*, !dbg !2674
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #8, !dbg !2674
  %123 = bitcast %struct.edge_iterator* %ei180 to i8*, !dbg !2675
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %123) #8, !dbg !2675
  %124 = bitcast %struct.edge_iterator* %tmp181 to i8*, !dbg !2676
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %124) #8, !dbg !2676
  %succs185 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.1.lcssa, i64 0, i32 1, !dbg !2676
  %call186 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs185) #7, !dbg !2676
  %125 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp181, i64 0, i32 0, !dbg !2676
  %126 = extractvalue { i32, %struct.VEC_edge_gc** } %call186, 0, !dbg !2676
  store i32 %126, i32* %125, align 8, !dbg !2676
  %127 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp181, i64 0, i32 1, !dbg !2676
  %128 = extractvalue { i32, %struct.VEC_edge_gc** } %call186, 1, !dbg !2676
  store %struct.VEC_edge_gc** %128, %struct.VEC_edge_gc*** %127, align 8, !dbg !2676
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %123, i8* nonnull align 8 %124, i64 16, i1 false), !dbg !2676
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %124) #8, !dbg !2676
  %129 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei180, i64 0, i32 0, !dbg !2678
  %130 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei180, i64 0, i32 1, !dbg !2678
  %131 = bitcast %struct.edge_def** %e179 to i64*, !dbg !2678
  br label %for.cond187, !dbg !2676

for.cond187:                                      ; preds = %for.body190, %for.end178
  %132 = load i32, i32* %129, align 8, !dbg !2680
  %133 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %130, align 8, !dbg !2680
  call void @llvm.dbg.value(metadata %struct.edge_def** %e179, metadata !2430, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  %call188 = call fastcc zeroext i8 @ei_cond(i32 %132, %struct.VEC_edge_gc** %133, %struct.edge_def** nonnull %e179) #7, !dbg !2680
  %tobool189 = icmp eq i8 %call188, 0, !dbg !2676
  br i1 %tobool189, label %for.end197, label %for.body190, !dbg !2676

for.body190:                                      ; preds = %for.cond187
  %134 = load i64, i64* %131, align 8, !dbg !2682
  %.cast1 = inttoptr i64 %134 to %struct.edge_def*, !dbg !2683
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast1, metadata !2430, metadata !DIExpression()), !dbg !2681
  %dest191 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast1, i64 0, i32 1, !dbg !2684
  %135 = load %struct.basic_block_def*, %struct.basic_block_def** %dest191, align 8, !dbg !2684
  %index192 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %135, i64 0, i32 9, !dbg !2685
  %136 = load i32, i32* %index192, align 8, !dbg !2685
  %idxprom193 = sext i32 %136 to i64, !dbg !2686
  %arrayidx194 = getelementptr inbounds i64, i64* %21, i64 %idxprom193, !dbg !2686
  %137 = load i64, i64* %arrayidx194, align 8, !dbg !2687
  %add195 = add i64 %137, %134, !dbg !2687
  store i64 %add195, i64* %arrayidx194, align 8, !dbg !2687
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei180, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei180) #7, !dbg !2680
  br label %for.cond187, !dbg !2680, !llvm.loop !2688

for.end197:                                       ; preds = %for.cond187
  %138 = bitcast %struct.edge_iterator* %tmp198 to i8*, !dbg !2690
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %138) #8, !dbg !2690
  %139 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2690
  %cfg200 = getelementptr inbounds %struct.function, %struct.function* %139, i64 0, i32 1, !dbg !2690
  %140 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg200, align 8, !dbg !2690
  %x_exit_block_ptr201 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %140, i64 0, i32 1, !dbg !2690
  %141 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr201, align 8, !dbg !2690
  %preds202 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %141, i64 0, i32 0, !dbg !2690
  %call203 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds202) #7, !dbg !2690
  %142 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp198, i64 0, i32 0, !dbg !2690
  %143 = extractvalue { i32, %struct.VEC_edge_gc** } %call203, 0, !dbg !2690
  store i32 %143, i32* %142, align 8, !dbg !2690
  %144 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp198, i64 0, i32 1, !dbg !2690
  %145 = extractvalue { i32, %struct.VEC_edge_gc** } %call203, 1, !dbg !2690
  store %struct.VEC_edge_gc** %145, %struct.VEC_edge_gc*** %144, align 8, !dbg !2690
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %123, i8* nonnull align 8 %138, i64 16, i1 false), !dbg !2690
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %138) #8, !dbg !2690
  br label %for.cond204, !dbg !2690

for.cond204:                                      ; preds = %for.body207, %for.end197
  %146 = load i32, i32* %129, align 8, !dbg !2692
  %147 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %130, align 8, !dbg !2692
  call void @llvm.dbg.value(metadata %struct.edge_def** %e179, metadata !2430, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  %call205 = call fastcc zeroext i8 @ei_cond(i32 %146, %struct.VEC_edge_gc** %147, %struct.edge_def** nonnull %e179) #7, !dbg !2692
  %tobool206 = icmp eq i8 %call205, 0, !dbg !2690
  br i1 %tobool206, label %for.end214, label %for.body207, !dbg !2690

for.body207:                                      ; preds = %for.cond204
  %148 = load i64, i64* %131, align 8, !dbg !2694
  %.cast = inttoptr i64 %148 to %struct.edge_def*, !dbg !2695
  call void @llvm.dbg.value(metadata %struct.edge_def* %.cast, metadata !2430, metadata !DIExpression()), !dbg !2681
  %dest208 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %.cast, i64 0, i32 1, !dbg !2696
  %149 = load %struct.basic_block_def*, %struct.basic_block_def** %dest208, align 8, !dbg !2696
  %index209 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %149, i64 0, i32 9, !dbg !2697
  %150 = load i32, i32* %index209, align 8, !dbg !2697
  %idxprom210 = sext i32 %150 to i64, !dbg !2698
  %arrayidx211 = getelementptr inbounds i64, i64* %21, i64 %idxprom210, !dbg !2698
  %151 = load i64, i64* %arrayidx211, align 8, !dbg !2699
  %sub212 = sub i64 %151, %148, !dbg !2699
  store i64 %sub212, i64* %arrayidx211, align 8, !dbg !2699
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei180, metadata !2432, metadata !DIExpression(DW_OP_deref)), !dbg !2681
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei180) #7, !dbg !2692
  br label %for.cond204, !dbg !2692, !llvm.loop !2700

for.end214:                                       ; preds = %for.cond204
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %123) #8, !dbg !2702
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #8, !dbg !2702
  %152 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2703
  %cfg216 = getelementptr inbounds %struct.function, %struct.function* %152, i64 0, i32 1, !dbg !2703
  %153 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg216, align 8, !dbg !2703
  %x_entry_block_ptr217 = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %153, i64 0, i32 0, !dbg !2703
  br label %for.cond218, !dbg !2703

for.cond218:                                      ; preds = %for.inc229, %for.end214
  %bb.2.in = phi %struct.basic_block_def** [ %x_entry_block_ptr217, %for.end214 ], [ %next_bb230, %for.inc229 ]
  %err.17 = phi i32 [ %err.3.lcssa, %for.end214 ], [ %err.18, %for.inc229 ], !dbg !2433
  %bb.2 = load %struct.basic_block_def*, %struct.basic_block_def** %bb.2.in, align 8, !dbg !2705
  call void @llvm.dbg.value(metadata i32 %err.17, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb.2, metadata !2415, metadata !DIExpression()), !dbg !2433
  %cmp219 = icmp eq %struct.basic_block_def* %bb.2, null, !dbg !2706
  br i1 %cmp219, label %for.end231, label %for.body221, !dbg !2703

for.body221:                                      ; preds = %for.cond218
  %index222 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 9, !dbg !2708
  %154 = load i32, i32* %index222, align 8, !dbg !2708
  %idxprom223 = sext i32 %154 to i64, !dbg !2710
  %arrayidx224 = getelementptr inbounds i64, i64* %21, i64 %idxprom223, !dbg !2710
  %155 = load i64, i64* %arrayidx224, align 8, !dbg !2710
  %tobool225 = icmp eq i64 %155, 0, !dbg !2710
  br i1 %tobool225, label %for.inc229, label %if.then226, !dbg !2711

if.then226:                                       ; preds = %for.body221
  call void (i8*, ...) @error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0), i32 %154) #6, !dbg !2712
  call void @llvm.dbg.value(metadata i32 1, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %for.inc229, !dbg !2714

for.inc229:                                       ; preds = %for.body221, %if.then226
  %err.18 = phi i32 [ 1, %if.then226 ], [ %err.17, %for.body221 ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.18, metadata !2414, metadata !DIExpression()), !dbg !2433
  %next_bb230 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb.2, i64 0, i32 6, !dbg !2706
  br label %for.cond218, !dbg !2706, !llvm.loop !2715

for.end231:                                       ; preds = %for.cond218
  %err.17.lcssa = phi i32 [ %err.17, %for.cond218 ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.17.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.17.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.17.lcssa, metadata !2414, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.value(metadata %struct.basic_block_def* undef, metadata !2416, metadata !DIExpression()), !dbg !2433
  call void @free(i8* %call) #6, !dbg !2717
  call void @free(i8* %call5) #6, !dbg !2718
  %156 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2719
  %verify_flow_info = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %156, i64 0, i32 1, !dbg !2721
  %157 = load i32 ()*, i32 ()** %verify_flow_info, align 8, !dbg !2721
  %tobool235 = icmp eq i32 ()* %157, null, !dbg !2719
  br i1 %tobool235, label %if.end239, label %if.then236, !dbg !2722

if.then236:                                       ; preds = %for.end231
  %call238 = call i32 %157() #6, !dbg !2723
  %or = or i32 %err.17.lcssa, %call238, !dbg !2724
  call void @llvm.dbg.value(metadata i32 %or, metadata !2414, metadata !DIExpression()), !dbg !2433
  br label %if.end239, !dbg !2725

if.end239:                                        ; preds = %for.end231, %if.then236
  %err.19 = phi i32 [ %or, %if.then236 ], [ %err.17.lcssa, %for.end231 ], !dbg !2433
  call void @llvm.dbg.value(metadata i32 %err.19, metadata !2414, metadata !DIExpression()), !dbg !2433
  %tobool240 = icmp eq i32 %err.19, 0, !dbg !2726
  br i1 %tobool240, label %do.body243, label %if.then241, !dbg !2728

if.then241:                                       ; preds = %if.end239
  call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.19, i64 0, i64 0)) #6, !dbg !2729
  br label %do.body243, !dbg !2729

do.body243:                                       ; preds = %if.end239, %if.then241
  %158 = load i8, i8* @timevar_enable, align 1, !dbg !2730
  %tobool244 = icmp eq i8 %158, 0, !dbg !2730
  br i1 %tobool244, label %do.end248, label %if.then245, !dbg !2733

if.then245:                                       ; preds = %do.body243
  call void @timevar_pop_1(i32 24) #6, !dbg !2730
  br label %do.end248, !dbg !2730

do.end248:                                        ; preds = %do.body243, %if.then245
  ret void, !dbg !2734
}

declare dso_local void @timevar_push_1(i32) local_unnamed_addr #2

declare dso_local i8* @xcalloc(i64, i64) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @VEC_basic_block_base_index(%struct.VEC_basic_block_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2735 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !2741, metadata !DIExpression()), !dbg !2743
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2742, metadata !DIExpression()), !dbg !2743
  br label %land.end, !dbg !2744

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2744
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2744
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %arrayidx, align 8, !dbg !2744
  ret %struct.basic_block_def* %0, !dbg !2744
}

declare dso_local void @error(i8*, ...) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %ev) unnamed_addr #0 !dbg !2745 {
entry:
  %retval = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.VEC_edge_gc** %ev, metadata !2749, metadata !DIExpression()), !dbg !2751
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 0, !dbg !2752
  store i32 0, i32* %index, align 8, !dbg !2753
  %container = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %retval, i64 0, i32 1, !dbg !2754
  store %struct.VEC_edge_gc** %ev, %struct.VEC_edge_gc*** %container, align 8, !dbg !2755
  %0 = bitcast %struct.edge_iterator* %retval to { i32, %struct.VEC_edge_gc** }*, !dbg !2756
  %1 = load { i32, %struct.VEC_edge_gc** }, { i32, %struct.VEC_edge_gc** }* %0, align 8, !dbg !2756
  ret { i32, %struct.VEC_edge_gc** } %1, !dbg !2756
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_cond(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1, %struct.edge_def** %p) unnamed_addr #0 !dbg !2757 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def** %p, metadata !2762, metadata !DIExpression()), !dbg !2763
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2764
  %tobool = icmp eq i8 %call, 0, !dbg !2764
  br i1 %tobool, label %if.then, label %if.else, !dbg !2766

if.then:                                          ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %ei.coerce0, %struct.VEC_edge_gc** %ei.coerce1) #7, !dbg !2767
  br label %return, !dbg !2769

if.else:                                          ; preds = %entry
  br label %return, !dbg !2770

return:                                           ; preds = %if.else, %if.then
  %storemerge = phi %struct.edge_def* [ %call1, %if.then ], [ null, %if.else ], !dbg !2772
  %retval.0 = phi i8 [ 1, %if.then ], [ 0, %if.else ], !dbg !2772
  store %struct.edge_def* %storemerge, %struct.edge_def** %p, align 8, !dbg !2772
  ret i8 %retval.0, !dbg !2773
}

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) local_unnamed_addr #2

declare dso_local void @dump_edge_info(%struct._IO_FILE*, %struct.edge_def*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @ei_next(%struct.edge_iterator* %i) unnamed_addr #0 !dbg !2774 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %i, metadata !2779, metadata !DIExpression()), !dbg !2780
  %index = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 0, !dbg !2781
  %0 = load i32, i32* %index, align 8, !dbg !2781
  %1 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %i, i64 0, i32 1, !dbg !2781
  %2 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2781
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %0, %struct.VEC_edge_gc** %2) #7, !dbg !2781
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !2781
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2781

cond.true:                                        ; preds = %entry
  %3 = load i32, i32* %index, align 8, !dbg !2781
  %4 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %1, align 8, !dbg !2781
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %3, %struct.VEC_edge_gc** %4) #7, !dbg !2781
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !2781
  br label %cond.end, !dbg !2781

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2781
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2781
  %cmp = icmp ult i32 %0, %call2, !dbg !2781
  br i1 %cmp, label %cond.end5, label %cond.true3, !dbg !2781

cond.true3:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 738, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2781
  br label %cond.end5, !dbg !2781

cond.end5:                                        ; preds = %cond.end, %cond.true3
  %5 = load i32, i32* %index, align 8, !dbg !2782
  %inc = add i32 %5, 1, !dbg !2782
  store i32 %inc, i32* %index, align 8, !dbg !2782
  ret void, !dbg !2783
}

declare dso_local i32 @fputs(i8*, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local i32 @fputc(i32, %struct._IO_FILE*) local_unnamed_addr #2

declare dso_local void @free(i8*) local_unnamed_addr #2

declare dso_local void @internal_error(i8*, ...) local_unnamed_addr #2

declare dso_local void @timevar_pop_1(i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @dump_bb(%struct.basic_block_def* %bb, %struct._IO_FILE* %outf, i32 %indent) local_unnamed_addr #5 !dbg !2784 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %tmp26 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2788, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata %struct._IO_FILE* %outf, metadata !2789, metadata !DIExpression()), !dbg !2794
  call void @llvm.dbg.value(metadata i32 %indent, metadata !2790, metadata !DIExpression()), !dbg !2794
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !2795
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2795
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !2796
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2796
  %conv = sext i32 %indent to i64, !dbg !2797
  %add = add nsw i64 %conv, 1, !dbg !2797
  %2 = alloca i8, i64 %add, align 16, !dbg !2797
  call void @llvm.dbg.value(metadata i8* %2, metadata !2793, metadata !DIExpression()), !dbg !2794
  %call = call i8* @memset(i8* nonnull %2, i32 32, i64 %conv) #6, !dbg !2798
  %arrayidx = getelementptr inbounds i8, i8* %2, i64 %conv, !dbg !2799
  store i8 0, i8* %arrayidx, align 1, !dbg !2800
  %index = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 9, !dbg !2801
  %3 = load i32, i32* %index, align 8, !dbg !2801
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !2802
  %4 = load i32, i32* %loop_depth, align 4, !dbg !2802
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.20, i64 0, i64 0), i8* nonnull %2, i32 %3, i32 %4) #6, !dbg !2803
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !2804
  %5 = load i64, i64* %count, align 8, !dbg !2804
  %call3 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i64 0, i64 0), i64 %5) #6, !dbg !2805
  %call4 = call i32 @putc(i32 10, %struct._IO_FILE* %outf) #6, !dbg !2806
  %call5 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i64 0, i64 0), i8* nonnull %2) #6, !dbg !2807
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 5, !dbg !2808
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !2808
  %tobool = icmp eq %struct.basic_block_def* %6, null, !dbg !2810
  br i1 %tobool, label %if.else, label %if.then, !dbg !2811

if.then:                                          ; preds = %entry
  %index7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %6, i64 0, i32 9, !dbg !2812
  %7 = load i32, i32* %index7, align 8, !dbg !2812
  %call8 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i64 0, i64 0), i32 %7) #6, !dbg !2813
  br label %if.end, !dbg !2813

if.else:                                          ; preds = %entry
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.24, i64 0, i64 0)) #6, !dbg !2814
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call10 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.25, i64 0, i64 0)) #6, !dbg !2815
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 6, !dbg !2816
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !2816
  %tobool11 = icmp eq %struct.basic_block_def* %8, null, !dbg !2818
  br i1 %tobool11, label %if.else16, label %if.then12, !dbg !2819

if.then12:                                        ; preds = %if.end
  %index14 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %8, i64 0, i32 9, !dbg !2820
  %9 = load i32, i32* %index14, align 8, !dbg !2820
  %call15 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.26, i64 0, i64 0), i32 %9) #6, !dbg !2821
  br label %if.end18, !dbg !2821

if.else16:                                        ; preds = %if.end
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.27, i64 0, i64 0)) #6, !dbg !2822
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then12
  %call19 = call i32 @putc(i32 10, %struct._IO_FILE* %outf) #6, !dbg !2823
  %call20 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.28, i64 0, i64 0), i8* nonnull %2) #6, !dbg !2824
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !2825
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2825
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !2825
  %call21 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !2825
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !2825
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 0, !dbg !2825
  store i32 %12, i32* %11, align 8, !dbg !2825
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !2825
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call21, 1, !dbg !2825
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !2825
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !2825
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !2825
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !2827
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !2827
  br label %for.cond, !dbg !2825

for.cond:                                         ; preds = %for.body, %if.end18
  %17 = load i32, i32* %15, align 8, !dbg !2829
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !2829
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2791, metadata !DIExpression(DW_OP_deref)), !dbg !2794
  %call22 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %e) #7, !dbg !2829
  %tobool23 = icmp eq i8 %call22, 0, !dbg !2825
  br i1 %tobool23, label %for.end, label %for.body, !dbg !2825

for.body:                                         ; preds = %for.cond
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2830
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @dump_edge_info(%struct._IO_FILE* %outf, %struct.edge_def* %19, i32 0) #6, !dbg !2831
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2794
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2829
  br label %for.cond, !dbg !2829, !llvm.loop !2832

for.end:                                          ; preds = %for.cond
  %call24 = call i32 @putc(i32 10, %struct._IO_FILE* %outf) #6, !dbg !2834
  %call25 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %outf, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.29, i64 0, i64 0), i8* nonnull %2) #6, !dbg !2835
  %20 = bitcast %struct.edge_iterator* %tmp26 to i8*, !dbg !2836
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #8, !dbg !2836
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !2836
  %call27 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !2836
  %21 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 0, !dbg !2836
  %22 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 0, !dbg !2836
  store i32 %22, i32* %21, align 8, !dbg !2836
  %23 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp26, i64 0, i32 1, !dbg !2836
  %24 = extractvalue { i32, %struct.VEC_edge_gc** } %call27, 1, !dbg !2836
  store %struct.VEC_edge_gc** %24, %struct.VEC_edge_gc*** %23, align 8, !dbg !2836
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %20, i64 16, i1 false), !dbg !2836
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #8, !dbg !2836
  br label %for.cond28, !dbg !2836

for.cond28:                                       ; preds = %for.body31, %for.end
  %25 = load i32, i32* %15, align 8, !dbg !2838
  %26 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !2838
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !2791, metadata !DIExpression(DW_OP_deref)), !dbg !2794
  %call29 = call fastcc zeroext i8 @ei_cond(i32 %25, %struct.VEC_edge_gc** %26, %struct.edge_def** nonnull %e) #7, !dbg !2838
  %tobool30 = icmp eq i8 %call29, 0, !dbg !2836
  br i1 %tobool30, label %for.end33, label %for.body31, !dbg !2836

for.body31:                                       ; preds = %for.cond28
  %27 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !2840
  call void @llvm.dbg.value(metadata %struct.edge_def* %27, metadata !2791, metadata !DIExpression()), !dbg !2794
  call void @dump_edge_info(%struct._IO_FILE* %outf, %struct.edge_def* %27, i32 1) #6, !dbg !2841
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !2792, metadata !DIExpression(DW_OP_deref)), !dbg !2794
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !2838
  br label %for.cond28, !dbg !2838, !llvm.loop !2842

for.end33:                                        ; preds = %for.cond28
  %call34 = call i32 @putc(i32 10, %struct._IO_FILE* %outf) #6, !dbg !2844
  %28 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2845
  %dump_bb = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %28, i64 0, i32 2, !dbg !2847
  %29 = load void (%struct.basic_block_def*, %struct._IO_FILE*, i32, i32)*, void (%struct.basic_block_def*, %struct._IO_FILE*, i32, i32)** %dump_bb, align 8, !dbg !2847
  %tobool35 = icmp eq void (%struct.basic_block_def*, %struct._IO_FILE*, i32, i32)* %29, null, !dbg !2845
  br i1 %tobool35, label %if.end38, label %if.then36, !dbg !2848

if.then36:                                        ; preds = %for.end33
  call void %29(%struct.basic_block_def* %bb, %struct._IO_FILE* %outf, i32 %indent, i32 0) #6, !dbg !2849
  br label %if.end38, !dbg !2849

if.end38:                                         ; preds = %for.end33, %if.then36
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !2850
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !2850
  ret void, !dbg !2850
}

declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %e, %struct.basic_block_def* %dest) local_unnamed_addr #5 !dbg !2851 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2853, metadata !DIExpression()), !dbg !2856
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !2854, metadata !DIExpression()), !dbg !2856
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2857
  %redirect_edge_and_branch = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 4, !dbg !2859
  %1 = load %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)*, %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)** %redirect_edge_and_branch, align 8, !dbg !2859
  %tobool = icmp eq %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)* %1, null, !dbg !2857
  br i1 %tobool, label %if.then, label %if.end, !dbg !2860

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !2861
  %2 = load i8*, i8** %name, align 8, !dbg !2861
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.30, i64 0, i64 0), i8* %2) #6, !dbg !2862
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2863
  %redirect_edge_and_branch1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 4, !dbg !2856
  %.pre1 = load %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)*, %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)** %redirect_edge_and_branch1.phi.trans.insert, align 8, !dbg !2864
  br label %if.end, !dbg !2862

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.edge_def* (%struct.edge_def*, %struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !2864
  %call = tail call %struct.edge_def* %3(%struct.edge_def* %e, %struct.basic_block_def* %dest) #6, !dbg !2863
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !2855, metadata !DIExpression()), !dbg !2856
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2865
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2865
  %5 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2865
  %cmp = icmp ne %struct.loops* %5, null, !dbg !2867
  %cmp2 = icmp eq %struct.edge_def* %call, %e, !dbg !2868
  %or.cond = and i1 %cmp, %cmp2, !dbg !2869
  br i1 %or.cond, label %if.then3, label %if.end4, !dbg !2869

if.then3:                                         ; preds = %if.end
  tail call void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext 0, i8 zeroext 0) #6, !dbg !2870
  br label %if.end4, !dbg !2870

if.end4:                                          ; preds = %if.then3, %if.end
  ret %struct.edge_def* %call, !dbg !2871
}

declare dso_local void @rescan_loop_exit(%struct.edge_def*, i8 zeroext, i8 zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_remove_branch_p(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !2872 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2874, metadata !DIExpression()), !dbg !2875
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2876
  %can_remove_branch_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 6, !dbg !2878
  %1 = load i8 (%struct.edge_def*)*, i8 (%struct.edge_def*)** %can_remove_branch_p, align 8, !dbg !2878
  %tobool = icmp eq i8 (%struct.edge_def*)* %1, null, !dbg !2876
  br i1 %tobool, label %if.then, label %if.end, !dbg !2879

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !2880
  %2 = load i8*, i8** %name, align 8, !dbg !2880
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.31, i64 0, i64 0), i8* %2) #6, !dbg !2881
  br label %if.end, !dbg !2881

if.end:                                           ; preds = %entry, %if.then
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2882
  %3 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2882
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %3, i64 0, i32 1, !dbg !2882
  %4 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2882
  %tobool1 = icmp eq %struct.VEC_edge_gc* %4, null, !dbg !2882
  br i1 %tobool1, label %cond.end, label %cond.true, !dbg !2882

cond.true:                                        ; preds = %if.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %4, i64 0, i32 0, !dbg !2882
  br label %cond.end, !dbg !2882

cond.end:                                         ; preds = %if.end, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %if.end ], !dbg !2882
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2882
  %cmp = icmp eq i32 %call, 2, !dbg !2884
  br i1 %cmp, label %if.end5, label %return, !dbg !2885

if.end5:                                          ; preds = %cond.end
  %5 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2886
  %can_remove_branch_p6 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %5, i64 0, i32 6, !dbg !2887
  %6 = load i8 (%struct.edge_def*)*, i8 (%struct.edge_def*)** %can_remove_branch_p6, align 8, !dbg !2887
  %call7 = tail call zeroext i8 %6(%struct.edge_def* %e) #6, !dbg !2886
  br label %return, !dbg !2888

return:                                           ; preds = %cond.end, %if.end5
  %retval.0 = phi i8 [ %call7, %if.end5 ], [ 0, %cond.end ], !dbg !2875
  ret i8 %retval.0, !dbg !2889
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %vec_) unnamed_addr #0 !dbg !2890 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2896, metadata !DIExpression()), !dbg !2897
  %tobool = icmp eq %struct.VEC_edge_base* %vec_, null, !dbg !2898
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2898

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 0, !dbg !2898
  %0 = load i32, i32* %num, align 8, !dbg !2898
  br label %cond.end, !dbg !2898

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !2898
  ret i32 %cond, !dbg !2898
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_branch(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !2899 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2901, metadata !DIExpression()), !dbg !2905
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2906
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8, !dbg !2906
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2903, metadata !DIExpression()), !dbg !2905
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %0, i64 0, i32 1, !dbg !2907
  %1 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2907
  %tobool = icmp eq %struct.VEC_edge_gc* %1, null, !dbg !2907
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !2907

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %1, i64 0, i32 0, !dbg !2907
  br label %cond.end, !dbg !2907

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !2907
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !2907
  %cmp = icmp eq i32 %call, 2, !dbg !2907
  br i1 %cmp, label %cond.end7, label %cond.true5, !dbg !2907

cond.true5:                                       ; preds = %cond.end
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 363, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2907
  br label %cond.end7, !dbg !2907

cond.end7:                                        ; preds = %cond.end, %cond.true5
  %2 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !2908
  %tobool10 = icmp eq %struct.VEC_edge_gc* %2, null, !dbg !2908
  br i1 %tobool10, label %cond.end15, label %cond.true11, !dbg !2908

cond.true11:                                      ; preds = %cond.end7
  %base13 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2908
  br label %cond.end15, !dbg !2908

cond.end15:                                       ; preds = %cond.end7, %cond.true11
  %cond16 = phi %struct.VEC_edge_base* [ %base13, %cond.true11 ], [ null, %cond.end7 ], !dbg !2908
  br i1 %tobool10, label %cond.end23, label %cond.true19, !dbg !2908

cond.true19:                                      ; preds = %cond.end15
  %base21 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %2, i64 0, i32 0, !dbg !2908
  br label %cond.end23, !dbg !2908

cond.end23:                                       ; preds = %cond.end15, %cond.true19
  %cond24 = phi %struct.VEC_edge_base* [ %base21, %cond.true19 ], [ null, %cond.end15 ], !dbg !2908
  %call25 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond24, i32 0) #7, !dbg !2908
  %cmp26 = icmp eq %struct.edge_def* %call25, %e, !dbg !2908
  %conv = zext i1 %cmp26 to i32, !dbg !2908
  %call27 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond16, i32 %conv) #7, !dbg !2908
  call void @llvm.dbg.value(metadata %struct.edge_def* %call27, metadata !2902, metadata !DIExpression()), !dbg !2905
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call27, i64 0, i32 7, !dbg !2909
  %3 = load i32, i32* %flags, align 8, !dbg !2909
  %and = and i32 %3, 128, !dbg !2910
  call void @llvm.dbg.value(metadata i32 %and, metadata !2904, metadata !DIExpression()), !dbg !2905
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call27, i64 0, i32 1, !dbg !2911
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !2911
  %call28 = tail call %struct.edge_def* @redirect_edge_and_branch(%struct.edge_def* %e, %struct.basic_block_def* %4) #7, !dbg !2912
  call void @llvm.dbg.value(metadata %struct.edge_def* %call28, metadata !2901, metadata !DIExpression()), !dbg !2905
  %cmp29 = icmp eq %struct.edge_def* %call28, null, !dbg !2913
  br i1 %cmp29, label %cond.true31, label %cond.end33, !dbg !2913

cond.true31:                                      ; preds = %cond.end23
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 369, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2913
  br label %cond.end33, !dbg !2913

cond.end33:                                       ; preds = %cond.end23, %cond.true31
  %flags35 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call28, i64 0, i32 7, !dbg !2914
  %5 = load i32, i32* %flags35, align 8, !dbg !2915
  %and36 = and i32 %5, -129, !dbg !2915
  %or = or i32 %and36, %and, !dbg !2916
  store i32 %or, i32* %flags35, align 8, !dbg !2916
  ret void, !dbg !2917
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !2918 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_edge_base* %vec_, metadata !2922, metadata !DIExpression()), !dbg !2924
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !2923, metadata !DIExpression()), !dbg !2924
  br label %land.end, !dbg !2925

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !2925
  %arrayidx = getelementptr inbounds %struct.VEC_edge_base, %struct.VEC_edge_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !2925
  %0 = load %struct.edge_def*, %struct.edge_def** %arrayidx, align 8, !dbg !2925
  ret %struct.edge_def* %0, !dbg !2925
}

; Function Attrs: nounwind uwtable
define dso_local void @remove_edge(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !2926 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2928, metadata !DIExpression()), !dbg !2929
  %0 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2930
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %0, i64 0, i32 4, !dbg !2930
  %1 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2930
  %cmp = icmp eq %struct.loops* %1, null, !dbg !2932
  br i1 %cmp, label %if.end, label %if.then, !dbg !2933

if.then:                                          ; preds = %entry
  tail call void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext 0, i8 zeroext 1) #6, !dbg !2934
  br label %if.end, !dbg !2934

if.end:                                           ; preds = %entry, %if.then
  tail call void @remove_edge_raw(%struct.edge_def* %e) #6, !dbg !2935
  ret void, !dbg !2936
}

declare dso_local void @remove_edge_raw(%struct.edge_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %e, %struct.basic_block_def* %dest) local_unnamed_addr #5 !dbg !2937 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !2939, metadata !DIExpression()), !dbg !2944
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %dest, metadata !2940, metadata !DIExpression()), !dbg !2944
  %src1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !2945
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src1, align 8, !dbg !2945
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %0, metadata !2942, metadata !DIExpression()), !dbg !2944
  %1 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2946
  %redirect_edge_and_branch_force = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %1, i64 0, i32 5, !dbg !2948
  %2 = load %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)*, %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)** %redirect_edge_and_branch_force, align 8, !dbg !2948
  %tobool = icmp eq %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)* %2, null, !dbg !2946
  br i1 %tobool, label %if.then, label %if.end, !dbg !2949

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %1, i64 0, i32 0, !dbg !2950
  %3 = load i8*, i8** %name, align 8, !dbg !2950
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.32, i64 0, i64 0), i8* %3) #6, !dbg !2951
  br label %if.end, !dbg !2951

if.end:                                           ; preds = %entry, %if.then
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2952
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !2952
  %5 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !2952
  %cmp = icmp eq %struct.loops* %5, null, !dbg !2954
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !2955

if.then2:                                         ; preds = %if.end
  tail call void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext 0, i8 zeroext 1) #6, !dbg !2956
  br label %if.end3, !dbg !2956

if.end3:                                          ; preds = %if.end, %if.then2
  %6 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !2957
  %redirect_edge_and_branch_force4 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %6, i64 0, i32 5, !dbg !2958
  %7 = load %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)*, %struct.basic_block_def* (%struct.edge_def*, %struct.basic_block_def*)** %redirect_edge_and_branch_force4, align 8, !dbg !2958
  %call = tail call %struct.basic_block_def* %7(%struct.edge_def* %e, %struct.basic_block_def* %dest) #6, !dbg !2957
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !2941, metadata !DIExpression()), !dbg !2944
  %cmp5 = icmp eq %struct.basic_block_def* %call, null, !dbg !2959
  br i1 %cmp5, label %if.end9, label %land.lhs.true, !dbg !2961

land.lhs.true:                                    ; preds = %if.end3
  %call6 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !2962
  %tobool7 = icmp eq i8 %call6, 0, !dbg !2962
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2963

if.then8:                                         ; preds = %land.lhs.true
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* nonnull %call, %struct.basic_block_def* %0) #6, !dbg !2964
  br label %if.end9, !dbg !2964

if.end9:                                          ; preds = %land.lhs.true, %if.end3, %if.then8
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !2965
  %x_current_loops11 = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 4, !dbg !2965
  %9 = load %struct.loops*, %struct.loops** %x_current_loops11, align 8, !dbg !2965
  %cmp12 = icmp eq %struct.loops* %9, null, !dbg !2967
  br i1 %cmp12, label %if.end28, label %if.then14, !dbg !2968

if.then14:                                        ; preds = %if.end9
  br i1 %cmp5, label %if.else, label %if.then17, !dbg !2969

if.then17:                                        ; preds = %if.then14
  %call18 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* nonnull %call) #7, !dbg !2971
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call18, i64 0, i32 3, !dbg !2974
  %10 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !2974
  %call19 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* nonnull %call) #7, !dbg !2975
  %loop_father20 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call19, i64 0, i32 3, !dbg !2976
  %11 = load %struct.loop*, %struct.loop** %loop_father20, align 8, !dbg !2976
  %call21 = tail call %struct.loop* @find_common_loop(%struct.loop* %10, %struct.loop* %11) #6, !dbg !2977
  call void @llvm.dbg.value(metadata %struct.loop* %call21, metadata !2943, metadata !DIExpression()), !dbg !2944
  tail call void @add_bb_to_loop(%struct.basic_block_def* nonnull %call, %struct.loop* %call21) #6, !dbg !2978
  br label %if.end28, !dbg !2979

if.else:                                          ; preds = %if.then14
  %call22 = tail call %struct.edge_def* @find_edge(%struct.basic_block_def* %0, %struct.basic_block_def* %dest) #6, !dbg !2980
  %cmp23 = icmp eq %struct.edge_def* %call22, %e, !dbg !2982
  br i1 %cmp23, label %if.then25, label %if.end28, !dbg !2983

if.then25:                                        ; preds = %if.else
  tail call void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext 1, i8 zeroext 0) #6, !dbg !2984
  br label %if.end28, !dbg !2984

if.end28:                                         ; preds = %if.end9, %if.then17, %if.then25, %if.else
  ret %struct.basic_block_def* %call, !dbg !2985
}

declare dso_local zeroext i8 @dom_info_available_p(i32) local_unnamed_addr #2

declare dso_local void @set_immediate_dominator(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.loop* @find_common_loop(%struct.loop*, %struct.loop*) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2986 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2990, metadata !DIExpression()), !dbg !2991
  %call = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) #7, !dbg !2992
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !2993
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !2993
  ret %struct.basic_block_def* %0, !dbg !2994
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !2995 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !2997, metadata !DIExpression()), !dbg !2998
  %call = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) #7, !dbg !2999
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3000
  %0 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3000
  ret %struct.basic_block_def* %0, !dbg !3001
}

declare dso_local void @add_bb_to_loop(%struct.basic_block_def*, %struct.loop*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @find_edge(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @split_block(%struct.basic_block_def* %bb, i8* %i) local_unnamed_addr #5 !dbg !3002 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3006, metadata !DIExpression()), !dbg !3010
  call void @llvm.dbg.value(metadata i8* %i, metadata !3007, metadata !DIExpression()), !dbg !3010
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3011
  %split_block = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 8, !dbg !3013
  %1 = load %struct.basic_block_def* (%struct.basic_block_def*, i8*)*, %struct.basic_block_def* (%struct.basic_block_def*, i8*)** %split_block, align 8, !dbg !3013
  %tobool = icmp eq %struct.basic_block_def* (%struct.basic_block_def*, i8*)* %1, null, !dbg !3011
  br i1 %tobool, label %if.then, label %if.end, !dbg !3014

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3015
  %2 = load i8*, i8** %name, align 8, !dbg !3015
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0), i8* %2) #6, !dbg !3016
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3017
  %split_block1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 8, !dbg !3010
  %.pre1 = load %struct.basic_block_def* (%struct.basic_block_def*, i8*)*, %struct.basic_block_def* (%struct.basic_block_def*, i8*)** %split_block1.phi.trans.insert, align 8, !dbg !3018
  br label %if.end, !dbg !3016

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.basic_block_def* (%struct.basic_block_def*, i8*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3018
  %call = tail call %struct.basic_block_def* %3(%struct.basic_block_def* %bb, i8* %i) #6, !dbg !3017
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3008, metadata !DIExpression()), !dbg !3010
  %tobool2 = icmp eq %struct.basic_block_def* %call, null, !dbg !3019
  br i1 %tobool2, label %cleanup, label %if.end4, !dbg !3021

if.end4:                                          ; preds = %if.end
  %count = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3022
  %4 = load i64, i64* %count, align 8, !dbg !3022
  %count5 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 8, !dbg !3023
  store i64 %4, i64* %count5, align 8, !dbg !3024
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3025
  %5 = load i32, i32* %frequency, align 8, !dbg !3025
  %frequency6 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3026
  store i32 %5, i32* %frequency6, align 8, !dbg !3027
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !3028
  %6 = load i32, i32* %loop_depth, align 4, !dbg !3028
  %loop_depth7 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 10, !dbg !3029
  store i32 %6, i32* %loop_depth7, align 4, !dbg !3030
  %discriminator = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 12, !dbg !3031
  %7 = load i32, i32* %discriminator, align 4, !dbg !3031
  %discriminator8 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 12, !dbg !3032
  store i32 %7, i32* %discriminator8, align 4, !dbg !3033
  %call9 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3034
  %tobool10 = icmp eq i8 %call9, 0, !dbg !3034
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !3036

if.then11:                                        ; preds = %if.end4
  tail call void @redirect_immediate_dominators(i32 1, %struct.basic_block_def* %bb, %struct.basic_block_def* nonnull %call) #6, !dbg !3037
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* nonnull %call, %struct.basic_block_def* %bb) #6, !dbg !3039
  br label %if.end12, !dbg !3040

if.end12:                                         ; preds = %if.end4, %if.then11
  %8 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3041
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %8, i64 0, i32 4, !dbg !3041
  %9 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3041
  %cmp = icmp eq %struct.loops* %9, null, !dbg !3043
  br i1 %cmp, label %if.end20, label %if.then13, !dbg !3044

if.then13:                                        ; preds = %if.end12
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !3045
  %10 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3045
  tail call void @add_bb_to_loop(%struct.basic_block_def* nonnull %call, %struct.loop* %10) #6, !dbg !3047
  %11 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3048
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %11, i64 0, i32 3, !dbg !3050
  %12 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3050
  %cmp15 = icmp eq %struct.basic_block_def* %12, %bb, !dbg !3051
  br i1 %cmp15, label %if.then16, label %if.end20, !dbg !3052

if.then16:                                        ; preds = %if.then13
  store %struct.basic_block_def* %call, %struct.basic_block_def** %latch, align 8, !dbg !3053
  br label %if.end20, !dbg !3054

if.end20:                                         ; preds = %if.end12, %if.then13, %if.then16
  %call21 = tail call %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def* %bb, %struct.basic_block_def* nonnull %call, i32 1) #6, !dbg !3055
  call void @llvm.dbg.value(metadata %struct.edge_def* %call21, metadata !3009, metadata !DIExpression()), !dbg !3010
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3056
  %13 = load i32, i32* %flags, align 8, !dbg !3056
  %and = and i32 %13, 4, !dbg !3058
  %tobool22 = icmp eq i32 %and, 0, !dbg !3058
  br i1 %tobool22, label %cleanup, label %if.then23, !dbg !3059

if.then23:                                        ; preds = %if.end20
  %flags24 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 13, !dbg !3060
  %14 = load i32, i32* %flags24, align 8, !dbg !3062
  %or = or i32 %14, 4, !dbg !3062
  store i32 %or, i32* %flags24, align 8, !dbg !3062
  %flags25 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call21, i64 0, i32 7, !dbg !3063
  %15 = load i32, i32* %flags25, align 8, !dbg !3064
  %or26 = or i32 %15, 128, !dbg !3064
  store i32 %or26, i32* %flags25, align 8, !dbg !3064
  br label %cleanup, !dbg !3065

cleanup:                                          ; preds = %if.end20, %if.end, %if.then23
  %retval.0 = phi %struct.edge_def* [ null, %if.end ], [ %call21, %if.then23 ], [ %call21, %if.end20 ], !dbg !3010
  ret %struct.edge_def* %retval.0, !dbg !3066
}

declare dso_local void @redirect_immediate_dominators(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.edge_def* @make_single_succ_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @split_block_after_labels(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3067 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3071, metadata !DIExpression()), !dbg !3072
  %call = tail call %struct.edge_def* @split_block(%struct.basic_block_def* %bb, i8* null) #7, !dbg !3073
  ret %struct.edge_def* %call, !dbg !3074
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @move_block_after(%struct.basic_block_def* %bb, %struct.basic_block_def* %after) local_unnamed_addr #5 !dbg !3075 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3077, metadata !DIExpression()), !dbg !3080
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !3078, metadata !DIExpression()), !dbg !3080
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3081
  %move_block_after = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 9, !dbg !3083
  %1 = load i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)** %move_block_after, align 8, !dbg !3083
  %tobool = icmp eq i8 (%struct.basic_block_def*, %struct.basic_block_def*)* %1, null, !dbg !3081
  br i1 %tobool, label %if.then, label %if.end, !dbg !3084

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3085
  %2 = load i8*, i8** %name, align 8, !dbg !3085
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.34, i64 0, i64 0), i8* %2) #6, !dbg !3086
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3087
  %move_block_after1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 9, !dbg !3080
  %.pre1 = load i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)** %move_block_after1.phi.trans.insert, align 8, !dbg !3088
  br label %if.end, !dbg !3086

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8 (%struct.basic_block_def*, %struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3088
  %call = tail call zeroext i8 %3(%struct.basic_block_def* %bb, %struct.basic_block_def* %after) #6, !dbg !3087
  call void @llvm.dbg.value(metadata i8 %call, metadata !3079, metadata !DIExpression()), !dbg !3080
  ret i8 %call, !dbg !3089
}

; Function Attrs: nounwind uwtable
define dso_local void @delete_basic_block(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3090 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3092, metadata !DIExpression()), !dbg !3096
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3097
  %delete_basic_block = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 7, !dbg !3099
  %1 = load void (%struct.basic_block_def*)*, void (%struct.basic_block_def*)** %delete_basic_block, align 8, !dbg !3099
  %tobool = icmp eq void (%struct.basic_block_def*)* %1, null, !dbg !3097
  br i1 %tobool, label %if.then, label %if.end, !dbg !3100

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3101
  %2 = load i8*, i8** %name, align 8, !dbg !3101
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.35, i64 0, i64 0), i8* %2) #6, !dbg !3102
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3103
  %delete_basic_block1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 7, !dbg !3096
  %.pre1 = load void (%struct.basic_block_def*)*, void (%struct.basic_block_def*)** %delete_basic_block1.phi.trans.insert, align 8, !dbg !3104
  br label %if.end, !dbg !3102

if.end:                                           ; preds = %entry, %if.then
  %3 = phi void (%struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3104
  tail call void %3(%struct.basic_block_def* %bb) #6, !dbg !3103
  %4 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3105
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %4, i64 0, i32 4, !dbg !3105
  %5 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3105
  %cmp = icmp eq %struct.loops* %5, null, !dbg !3106
  br i1 %cmp, label %if.end9, label %if.then2, !dbg !3107

if.then2:                                         ; preds = %if.end
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !3108
  %6 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3108
  call void @llvm.dbg.value(metadata %struct.loop* %6, metadata !3093, metadata !DIExpression()), !dbg !3109
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 3, !dbg !3110
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3110
  %cmp3 = icmp eq %struct.basic_block_def* %7, %bb, !dbg !3112
  br i1 %cmp3, label %if.then5, label %lor.lhs.false, !dbg !3113

lor.lhs.false:                                    ; preds = %if.then2
  %header = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 2, !dbg !3114
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3114
  %cmp4 = icmp eq %struct.basic_block_def* %8, %bb, !dbg !3115
  br i1 %cmp4, label %if.then5, label %if.end8, !dbg !3116

if.then5:                                         ; preds = %lor.lhs.false, %if.then2
  %header6 = getelementptr inbounds %struct.loop, %struct.loop* %6, i64 0, i32 2, !dbg !3117
  store %struct.basic_block_def* null, %struct.basic_block_def** %header6, align 8, !dbg !3119
  store %struct.basic_block_def* null, %struct.basic_block_def** %latch, align 8, !dbg !3120
  br label %if.end8, !dbg !3121

if.end8:                                          ; preds = %if.then5, %lor.lhs.false
  tail call void @remove_bb_from_loops(%struct.basic_block_def* %bb) #6, !dbg !3122
  br label %if.end9, !dbg !3123

if.end9:                                          ; preds = %if.end, %if.end8
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3096
  br label %while.cond, !dbg !3124

while.cond:                                       ; preds = %cond.end19, %if.end9
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3125
  %tobool10 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !3125
  br i1 %tobool10, label %cond.end, label %cond.true, !dbg !3125

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !3125
  br label %cond.end, !dbg !3125

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3125
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3125
  %cmp12 = icmp eq i32 %call, 0, !dbg !3126
  br i1 %cmp12, label %while.cond22.preheader, label %while.body, !dbg !3124

while.cond22.preheader:                           ; preds = %cond.end
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3096
  br label %while.cond22, !dbg !3127

while.body:                                       ; preds = %cond.end
  %10 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3128
  %tobool14 = icmp eq %struct.VEC_edge_gc* %10, null, !dbg !3128
  br i1 %tobool14, label %cond.end19, label %cond.true15, !dbg !3128

cond.true15:                                      ; preds = %while.body
  %base17 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %10, i64 0, i32 0, !dbg !3128
  br label %cond.end19, !dbg !3128

cond.end19:                                       ; preds = %while.body, %cond.true15
  %cond20 = phi %struct.VEC_edge_base* [ %base17, %cond.true15 ], [ null, %while.body ], !dbg !3128
  %call21 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond20, i32 0) #7, !dbg !3128
  tail call void @remove_edge(%struct.edge_def* %call21) #7, !dbg !3129
  br label %while.cond, !dbg !3124, !llvm.loop !3130

while.cond22:                                     ; preds = %while.cond22.preheader, %cond.end39
  %11 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3132
  %tobool23 = icmp eq %struct.VEC_edge_gc* %11, null, !dbg !3132
  br i1 %tobool23, label %cond.end28, label %cond.true24, !dbg !3132

cond.true24:                                      ; preds = %while.cond22
  %base26 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %11, i64 0, i32 0, !dbg !3132
  br label %cond.end28, !dbg !3132

cond.end28:                                       ; preds = %while.cond22, %cond.true24
  %cond29 = phi %struct.VEC_edge_base* [ %base26, %cond.true24 ], [ null, %while.cond22 ], !dbg !3132
  %call30 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond29) #7, !dbg !3132
  %cmp31 = icmp eq i32 %call30, 0, !dbg !3133
  br i1 %cmp31, label %while.end42, label %while.body32, !dbg !3127

while.body32:                                     ; preds = %cond.end28
  %12 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3134
  %tobool34 = icmp eq %struct.VEC_edge_gc* %12, null, !dbg !3134
  br i1 %tobool34, label %cond.end39, label %cond.true35, !dbg !3134

cond.true35:                                      ; preds = %while.body32
  %base37 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %12, i64 0, i32 0, !dbg !3134
  br label %cond.end39, !dbg !3134

cond.end39:                                       ; preds = %while.body32, %cond.true35
  %cond40 = phi %struct.VEC_edge_base* [ %base37, %cond.true35 ], [ null, %while.body32 ], !dbg !3134
  %call41 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond40, i32 0) #7, !dbg !3134
  tail call void @remove_edge(%struct.edge_def* %call41) #7, !dbg !3135
  br label %while.cond22, !dbg !3127, !llvm.loop !3136

while.end42:                                      ; preds = %cond.end28
  %call43 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3138
  %tobool44 = icmp eq i8 %call43, 0, !dbg !3138
  br i1 %tobool44, label %if.end46, label %if.then45, !dbg !3140

if.then45:                                        ; preds = %while.end42
  tail call void @delete_from_dominance_info(i32 1, %struct.basic_block_def* %bb) #6, !dbg !3141
  br label %if.end46, !dbg !3141

if.end46:                                         ; preds = %while.end42, %if.then45
  %call47 = tail call zeroext i8 @dom_info_available_p(i32 2) #6, !dbg !3142
  %tobool48 = icmp eq i8 %call47, 0, !dbg !3142
  br i1 %tobool48, label %if.end50, label %if.then49, !dbg !3144

if.then49:                                        ; preds = %if.end46
  tail call void @delete_from_dominance_info(i32 2, %struct.basic_block_def* %bb) #6, !dbg !3145
  br label %if.end50, !dbg !3145

if.end50:                                         ; preds = %if.end46, %if.then49
  tail call void @expunge_block(%struct.basic_block_def* %bb) #6, !dbg !3146
  ret void, !dbg !3147
}

declare dso_local void @remove_bb_from_loops(%struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @delete_from_dominance_info(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @expunge_block(%struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @split_edge(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !3148 {
entry:
  %f = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3150, metadata !DIExpression()), !dbg !3164
  %count1 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !3165
  %0 = load i64, i64* %count1, align 8, !dbg !3165
  call void @llvm.dbg.value(metadata i64 %0, metadata !3152, metadata !DIExpression()), !dbg !3164
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3166
  %1 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3166
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 11, !dbg !3166
  %2 = load i32, i32* %frequency, align 8, !dbg !3166
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3166
  %3 = load i32, i32* %probability, align 4, !dbg !3166
  %mul = mul nsw i32 %2, %3, !dbg !3166
  %add = add nsw i32 %mul, 5000, !dbg !3166
  %div = sdiv i32 %add, 10000, !dbg !3166
  call void @llvm.dbg.value(metadata i32 %div, metadata !3153, metadata !DIExpression()), !dbg !3164
  %4 = bitcast %struct.edge_def** %f to i8*, !dbg !3167
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3167
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 7, !dbg !3168
  %5 = load i32, i32* %flags, align 8, !dbg !3168
  %6 = trunc i32 %5 to i8, !dbg !3169
  call void @llvm.dbg.value(metadata i8 %6, metadata !3155, metadata !DIExpression(DW_OP_constu, 7, DW_OP_shr, DW_OP_stack_value)), !dbg !3164
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %1, metadata !3157, metadata !DIExpression()), !dbg !3164
  %dest5 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 1, !dbg !3170
  %7 = load %struct.basic_block_def*, %struct.basic_block_def** %dest5, align 8, !dbg !3170
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %7, metadata !3158, metadata !DIExpression()), !dbg !3164
  %8 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3171
  %split_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %8, i64 0, i32 16, !dbg !3173
  %9 = load %struct.basic_block_def* (%struct.edge_def*)*, %struct.basic_block_def* (%struct.edge_def*)** %split_edge, align 8, !dbg !3173
  %tobool = icmp eq %struct.basic_block_def* (%struct.edge_def*)* %9, null, !dbg !3171
  br i1 %tobool, label %if.then, label %if.end, !dbg !3174

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %8, i64 0, i32 0, !dbg !3175
  %10 = load i8*, i8** %name, align 8, !dbg !3175
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.36, i64 0, i64 0), i8* %10) #6, !dbg !3176
  br label %if.end, !dbg !3176

if.end:                                           ; preds = %entry, %if.then
  %11 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3177
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %11, i64 0, i32 4, !dbg !3177
  %12 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3177
  %cmp6 = icmp eq %struct.loops* %12, null, !dbg !3179
  br i1 %cmp6, label %if.end9, label %if.then8, !dbg !3180

if.then8:                                         ; preds = %if.end
  tail call void @rescan_loop_exit(%struct.edge_def* %e, i8 zeroext 0, i8 zeroext 1) #6, !dbg !3181
  br label %if.end9, !dbg !3181

if.end9:                                          ; preds = %if.end, %if.then8
  %13 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3182
  %split_edge10 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %13, i64 0, i32 16, !dbg !3183
  %14 = load %struct.basic_block_def* (%struct.edge_def*)*, %struct.basic_block_def* (%struct.edge_def*)** %split_edge10, align 8, !dbg !3183
  %call = tail call %struct.basic_block_def* %14(%struct.edge_def* %e) #6, !dbg !3182
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3151, metadata !DIExpression()), !dbg !3164
  %count11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 8, !dbg !3184
  store i64 %0, i64* %count11, align 8, !dbg !3185
  %frequency12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3186
  store i32 %div, i32* %frequency12, align 8, !dbg !3187
  %call13 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #7, !dbg !3188
  %probability14 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call13, i64 0, i32 8, !dbg !3189
  store i32 10000, i32* %probability14, align 4, !dbg !3190
  %call15 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #7, !dbg !3191
  %count16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call15, i64 0, i32 9, !dbg !3192
  store i64 %0, i64* %count16, align 8, !dbg !3193
  %tobool17 = icmp slt i8 %6, 0, !dbg !3194
  br i1 %tobool17, label %if.then18, label %if.end26, !dbg !3196

if.then18:                                        ; preds = %if.end9
  %flags19 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 13, !dbg !3197
  %15 = load i32, i32* %flags19, align 8, !dbg !3199
  %or = or i32 %15, 4, !dbg !3199
  store i32 %or, i32* %flags19, align 8, !dbg !3199
  %call20 = tail call fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %call) #7, !dbg !3200
  %flags21 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call20, i64 0, i32 7, !dbg !3201
  %16 = load i32, i32* %flags21, align 8, !dbg !3202
  %or22 = or i32 %16, 128, !dbg !3202
  store i32 %or22, i32* %flags21, align 8, !dbg !3202
  %call23 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #7, !dbg !3203
  %flags24 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call23, i64 0, i32 7, !dbg !3204
  %17 = load i32, i32* %flags24, align 8, !dbg !3205
  %or25 = or i32 %17, 128, !dbg !3205
  store i32 %or25, i32* %flags24, align 8, !dbg !3205
  br label %if.end26, !dbg !3206

if.end26:                                         ; preds = %if.then18, %if.end9
  %call27 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3207
  %tobool28 = icmp eq i8 %call27, 0, !dbg !3207
  br i1 %tobool28, label %if.end31, label %if.then29, !dbg !3209

if.then29:                                        ; preds = %if.end26
  %call30 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %call) #7, !dbg !3210
  tail call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call, %struct.basic_block_def* %call30) #6, !dbg !3211
  br label %if.end31, !dbg !3211

if.end31:                                         ; preds = %if.end26, %if.then29
  %call32 = tail call i32 @dom_info_state(i32 1) #6, !dbg !3212
  %cmp33 = icmp eq i32 %call32, 0, !dbg !3213
  br i1 %cmp33, label %if.end62, label %if.then35, !dbg !3214

if.then35:                                        ; preds = %if.end31
  %call36 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call) #7, !dbg !3215
  %call37 = tail call %struct.basic_block_def* @get_immediate_dominator(i32 1, %struct.basic_block_def* %call36) #6, !dbg !3216
  %call38 = tail call fastcc %struct.basic_block_def* @single_pred(%struct.basic_block_def* %call) #7, !dbg !3217
  %cmp39 = icmp eq %struct.basic_block_def* %call37, %call38, !dbg !3218
  br i1 %cmp39, label %if.then41, label %if.end62, !dbg !3219

if.then41:                                        ; preds = %if.then35
  %18 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3220
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3220
  %19 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3221
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #8, !dbg !3221
  %call42 = tail call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call) #7, !dbg !3221
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call42, i64 0, i32 0, !dbg !3221
  %call43 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3221
  %20 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3221
  %21 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 0, !dbg !3221
  store i32 %21, i32* %20, align 8, !dbg !3221
  %22 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3221
  %23 = extractvalue { i32, %struct.VEC_edge_gc** } %call43, 1, !dbg !3221
  store %struct.VEC_edge_gc** %23, %struct.VEC_edge_gc*** %22, align 8, !dbg !3221
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %18, i8* nonnull align 8 %19, i64 16, i1 false), !dbg !3221
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #8, !dbg !3221
  %24 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3223
  %25 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3223
  br label %for.cond, !dbg !3221

for.cond:                                         ; preds = %for.inc, %if.then41
  %26 = load i32, i32* %24, align 8, !dbg !3225
  %27 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %25, align 8, !dbg !3225
  call void @llvm.dbg.value(metadata %struct.edge_def** %f, metadata !3154, metadata !DIExpression(DW_OP_deref)), !dbg !3164
  %call44 = call fastcc zeroext i8 @ei_cond(i32 %26, %struct.VEC_edge_gc** %27, %struct.edge_def** nonnull %f) #7, !dbg !3225
  %tobool45 = icmp eq i8 %call44, 0, !dbg !3221
  br i1 %tobool45, label %for.end, label %for.body, !dbg !3221

for.body:                                         ; preds = %for.cond
  %28 = load %struct.edge_def*, %struct.edge_def** %f, align 8, !dbg !3226
  call void @llvm.dbg.value(metadata %struct.edge_def* %28, metadata !3154, metadata !DIExpression()), !dbg !3164
  %call46 = call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %call) #7, !dbg !3229
  %cmp47 = icmp eq %struct.edge_def* %28, %call46, !dbg !3230
  br i1 %cmp47, label %for.inc, label %if.end50, !dbg !3231

if.end50:                                         ; preds = %for.body
  %29 = load %struct.edge_def*, %struct.edge_def** %f, align 8, !dbg !3232
  call void @llvm.dbg.value(metadata %struct.edge_def* %29, metadata !3154, metadata !DIExpression()), !dbg !3164
  %src51 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %29, i64 0, i32 0, !dbg !3234
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %src51, align 8, !dbg !3234
  %call52 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call) #7, !dbg !3235
  %call53 = call zeroext i8 @dominated_by_p(i32 1, %struct.basic_block_def* %30, %struct.basic_block_def* %call52) #6, !dbg !3236
  %tobool54 = icmp eq i8 %call53, 0, !dbg !3236
  br i1 %tobool54, label %for.end, label %for.inc, !dbg !3237

for.inc:                                          ; preds = %if.end50, %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3159, metadata !DIExpression(DW_OP_deref)), !dbg !3238
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3225
  br label %for.cond, !dbg !3225, !llvm.loop !3239

for.end:                                          ; preds = %if.end50, %for.cond
  %31 = load %struct.edge_def*, %struct.edge_def** %f, align 8, !dbg !3241
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3154, metadata !DIExpression()), !dbg !3164
  %tobool57 = icmp eq %struct.edge_def* %31, null, !dbg !3241
  br i1 %tobool57, label %if.then58, label %if.end60, !dbg !3243

if.then58:                                        ; preds = %for.end
  %call59 = call fastcc %struct.basic_block_def* @single_succ(%struct.basic_block_def* %call) #7, !dbg !3244
  call void @set_immediate_dominator(i32 1, %struct.basic_block_def* %call59, %struct.basic_block_def* %call) #6, !dbg !3245
  br label %if.end60, !dbg !3245

if.end60:                                         ; preds = %for.end, %if.then58
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %18) #8, !dbg !3246
  br label %if.end62, !dbg !3247

if.end62:                                         ; preds = %if.end31, %if.then35, %if.end60
  %32 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3248
  %x_current_loops64 = getelementptr inbounds %struct.function, %struct.function* %32, i64 0, i32 4, !dbg !3248
  %33 = load %struct.loops*, %struct.loops** %x_current_loops64, align 8, !dbg !3248
  %cmp65 = icmp eq %struct.loops* %33, null, !dbg !3250
  br i1 %cmp65, label %if.end75, label %if.then67, !dbg !3251

if.then67:                                        ; preds = %if.end62
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %1, i64 0, i32 3, !dbg !3252
  %34 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3252
  %loop_father68 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 3, !dbg !3254
  %35 = load %struct.loop*, %struct.loop** %loop_father68, align 8, !dbg !3254
  %call69 = call %struct.loop* @find_common_loop(%struct.loop* %34, %struct.loop* %35) #6, !dbg !3255
  call void @llvm.dbg.value(metadata %struct.loop* %call69, metadata !3156, metadata !DIExpression()), !dbg !3164
  call void @add_bb_to_loop(%struct.basic_block_def* %call, %struct.loop* %call69) #6, !dbg !3256
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %call69, i64 0, i32 3, !dbg !3257
  %36 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3257
  %cmp70 = icmp eq %struct.basic_block_def* %36, %1, !dbg !3259
  br i1 %cmp70, label %if.then72, label %if.end75, !dbg !3260

if.then72:                                        ; preds = %if.then67
  store %struct.basic_block_def* %call, %struct.basic_block_def** %latch, align 8, !dbg !3261
  br label %if.end75, !dbg !3262

if.end75:                                         ; preds = %if.end62, %if.then67, %if.then72
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #8, !dbg !3263
  ret %struct.basic_block_def* %call, !dbg !3264
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3265 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3269, metadata !DIExpression()), !dbg !3270
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) #7, !dbg !3271
  %tobool = icmp eq i8 %call, 0, !dbg !3271
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3271

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 645, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3271
  br label %cond.end, !dbg !3271

cond.end:                                         ; preds = %entry, %cond.true
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3272
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3272
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3272
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3272

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3272
  br label %cond.end5, !dbg !3272

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3272
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3272
  ret %struct.edge_def* %call7, !dbg !3273
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @single_pred_edge(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3274 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3276, metadata !DIExpression()), !dbg !3277
  %call = tail call fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) #7, !dbg !3278
  %tobool = icmp eq i8 %call, 0, !dbg !3278
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3278

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 655, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3278
  br label %cond.end, !dbg !3278

cond.end:                                         ; preds = %entry, %cond.true
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3279
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3279
  %tobool1 = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3279
  br i1 %tobool1, label %cond.end5, label %cond.true2, !dbg !3279

cond.true2:                                       ; preds = %cond.end
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3279
  br label %cond.end5, !dbg !3279

cond.end5:                                        ; preds = %cond.end, %cond.true2
  %cond6 = phi %struct.VEC_edge_base* [ %base, %cond.true2 ], [ null, %cond.end ], !dbg !3279
  %call7 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond6, i32 0) #7, !dbg !3279
  ret %struct.edge_def* %call7, !dbg !3280
}

declare dso_local i32 @dom_info_state(i32) local_unnamed_addr #2

declare dso_local %struct.basic_block_def* @get_immediate_dominator(i32, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local zeroext i8 @dominated_by_p(i32, %struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @create_basic_block(i8* %head, i8* %end, %struct.basic_block_def* %after) local_unnamed_addr #5 !dbg !3281 {
entry:
  call void @llvm.dbg.value(metadata i8* %head, metadata !3283, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata i8* %end, metadata !3284, metadata !DIExpression()), !dbg !3287
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !3285, metadata !DIExpression()), !dbg !3287
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3288
  %create_basic_block = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 3, !dbg !3290
  %1 = load %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)*, %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)** %create_basic_block, align 8, !dbg !3290
  %tobool = icmp eq %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)* %1, null, !dbg !3288
  br i1 %tobool, label %if.then, label %if.end, !dbg !3291

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3292
  %2 = load i8*, i8** %name, align 8, !dbg !3292
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.37, i64 0, i64 0), i8* %2) #6, !dbg !3293
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3294
  %create_basic_block1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 3, !dbg !3287
  %.pre1 = load %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)*, %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)** %create_basic_block1.phi.trans.insert, align 8, !dbg !3295
  br label %if.end, !dbg !3293

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.basic_block_def* (i8*, i8*, %struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3295
  %call = tail call %struct.basic_block_def* %3(i8* %head, i8* %end, %struct.basic_block_def* %after) #6, !dbg !3294
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3286, metadata !DIExpression()), !dbg !3287
  %call2 = tail call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3296
  %tobool3 = icmp eq i8 %call2, 0, !dbg !3296
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3298

if.then4:                                         ; preds = %if.end
  tail call void @add_to_dominance_info(i32 1, %struct.basic_block_def* %call) #6, !dbg !3299
  br label %if.end5, !dbg !3299

if.end5:                                          ; preds = %if.end, %if.then4
  %call6 = tail call zeroext i8 @dom_info_available_p(i32 2) #6, !dbg !3300
  %tobool7 = icmp eq i8 %call6, 0, !dbg !3300
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3302

if.then8:                                         ; preds = %if.end5
  tail call void @add_to_dominance_info(i32 2, %struct.basic_block_def* %call) #6, !dbg !3303
  br label %if.end9, !dbg !3303

if.end9:                                          ; preds = %if.end5, %if.then8
  ret %struct.basic_block_def* %call, !dbg !3304
}

declare dso_local void @add_to_dominance_info(i32, %struct.basic_block_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @create_empty_bb(%struct.basic_block_def* %after) local_unnamed_addr #5 !dbg !3305 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !3307, metadata !DIExpression()), !dbg !3308
  %call = tail call %struct.basic_block_def* @create_basic_block(i8* null, i8* null, %struct.basic_block_def* %after) #7, !dbg !3309
  ret %struct.basic_block_def* %call, !dbg !3310
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_merge_blocks_p(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) local_unnamed_addr #5 !dbg !3311 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb1, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb2, metadata !3314, metadata !DIExpression()), !dbg !3316
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3317
  %can_merge_blocks_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 10, !dbg !3319
  %1 = load i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)** %can_merge_blocks_p, align 8, !dbg !3319
  %tobool = icmp eq i8 (%struct.basic_block_def*, %struct.basic_block_def*)* %1, null, !dbg !3317
  br i1 %tobool, label %if.then, label %if.end, !dbg !3320

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3321
  %2 = load i8*, i8** %name, align 8, !dbg !3321
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.38, i64 0, i64 0), i8* %2) #6, !dbg !3322
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3323
  %can_merge_blocks_p1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 10, !dbg !3316
  %.pre1 = load i8 (%struct.basic_block_def*, %struct.basic_block_def*)*, i8 (%struct.basic_block_def*, %struct.basic_block_def*)** %can_merge_blocks_p1.phi.trans.insert, align 8, !dbg !3324
  br label %if.end, !dbg !3322

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8 (%struct.basic_block_def*, %struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3324
  %call = tail call zeroext i8 %3(%struct.basic_block_def* %bb1, %struct.basic_block_def* %bb2) #6, !dbg !3323
  call void @llvm.dbg.value(metadata i8 %call, metadata !3315, metadata !DIExpression()), !dbg !3316
  ret i8 %call, !dbg !3325
}

; Function Attrs: nounwind uwtable
define dso_local void @predict_edge(%struct.edge_def* %e, i32 %predictor, i32 %probability) local_unnamed_addr #5 !dbg !3326 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3328, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %predictor, metadata !3329, metadata !DIExpression()), !dbg !3331
  call void @llvm.dbg.value(metadata i32 %probability, metadata !3330, metadata !DIExpression()), !dbg !3331
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3332
  %predict_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 12, !dbg !3334
  %1 = load void (%struct.edge_def*, i32, i32)*, void (%struct.edge_def*, i32, i32)** %predict_edge, align 8, !dbg !3334
  %tobool = icmp eq void (%struct.edge_def*, i32, i32)* %1, null, !dbg !3332
  br i1 %tobool, label %if.then, label %if.end, !dbg !3335

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3336
  %2 = load i8*, i8** %name, align 8, !dbg !3336
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.39, i64 0, i64 0), i8* %2) #6, !dbg !3337
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3338
  %predict_edge1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 12, !dbg !3331
  %.pre1 = load void (%struct.edge_def*, i32, i32)*, void (%struct.edge_def*, i32, i32)** %predict_edge1.phi.trans.insert, align 8, !dbg !3339
  br label %if.end, !dbg !3337

if.end:                                           ; preds = %entry, %if.then
  %3 = phi void (%struct.edge_def*, i32, i32)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3339
  tail call void %3(%struct.edge_def* %e, i32 %predictor, i32 %probability) #6, !dbg !3338
  ret void, !dbg !3340
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @predicted_by_p(%struct.basic_block_def* %bb, i32 %predictor) local_unnamed_addr #5 !dbg !3341 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3343, metadata !DIExpression()), !dbg !3345
  call void @llvm.dbg.value(metadata i32 %predictor, metadata !3344, metadata !DIExpression()), !dbg !3345
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3346
  %predict_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 12, !dbg !3348
  %1 = load void (%struct.edge_def*, i32, i32)*, void (%struct.edge_def*, i32, i32)** %predict_edge, align 8, !dbg !3348
  %tobool = icmp eq void (%struct.edge_def*, i32, i32)* %1, null, !dbg !3346
  br i1 %tobool, label %if.then, label %if.end, !dbg !3349

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3350
  %2 = load i8*, i8** %name, align 8, !dbg !3350
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.40, i64 0, i64 0), i8* %2) #6, !dbg !3351
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3352
  br label %if.end, !dbg !3351

if.end:                                           ; preds = %entry, %if.then
  %3 = phi %struct.cfg_hooks* [ %0, %entry ], [ %.pre, %if.then ], !dbg !3352
  %predicted_by_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %3, i64 0, i32 13, !dbg !3353
  %4 = load i8 (%struct.basic_block_def*, i32)*, i8 (%struct.basic_block_def*, i32)** %predicted_by_p, align 8, !dbg !3353
  %call = tail call zeroext i8 %4(%struct.basic_block_def* %bb, i32 %predictor) #6, !dbg !3352
  ret i8 %call, !dbg !3354
}

; Function Attrs: nounwind uwtable
define dso_local void @merge_blocks(%struct.basic_block_def* %a, %struct.basic_block_def* %b) local_unnamed_addr #5 !dbg !3355 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %a, metadata !3357, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !3358, metadata !DIExpression()), !dbg !3361
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3362
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3362
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3363
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3363
  %2 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3364
  %merge_blocks = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %2, i64 0, i32 11, !dbg !3366
  %3 = load void (%struct.basic_block_def*, %struct.basic_block_def*)*, void (%struct.basic_block_def*, %struct.basic_block_def*)** %merge_blocks, align 8, !dbg !3366
  %tobool = icmp eq void (%struct.basic_block_def*, %struct.basic_block_def*)* %3, null, !dbg !3364
  br i1 %tobool, label %if.then, label %if.end, !dbg !3367

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %2, i64 0, i32 0, !dbg !3368
  %4 = load i8*, i8** %name, align 8, !dbg !3368
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.41, i64 0, i64 0), i8* %4) #6, !dbg !3369
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3370
  %merge_blocks1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 11, !dbg !3361
  %.pre1 = load void (%struct.basic_block_def*, %struct.basic_block_def*)*, void (%struct.basic_block_def*, %struct.basic_block_def*)** %merge_blocks1.phi.trans.insert, align 8, !dbg !3371
  br label %if.end, !dbg !3369

if.end:                                           ; preds = %entry, %if.then
  %5 = phi void (%struct.basic_block_def*, %struct.basic_block_def*)* [ %3, %entry ], [ %.pre1, %if.then ], !dbg !3371
  tail call void %5(%struct.basic_block_def* %a, %struct.basic_block_def* %b) #6, !dbg !3370
  %6 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3372
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %6, i64 0, i32 4, !dbg !3372
  %7 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3372
  %cmp = icmp eq %struct.loops* %7, null, !dbg !3374
  br i1 %cmp, label %if.end3, label %if.then2, !dbg !3375

if.then2:                                         ; preds = %if.end
  tail call void @remove_bb_from_loops(%struct.basic_block_def* %b) #6, !dbg !3376
  br label %if.end3, !dbg !3376

if.end3:                                          ; preds = %if.end, %if.then2
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %a, i64 0, i32 1, !dbg !3361
  br label %while.cond, !dbg !3377

while.cond:                                       ; preds = %cond.end13, %if.end3
  %8 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3378
  %tobool4 = icmp eq %struct.VEC_edge_gc* %8, null, !dbg !3378
  br i1 %tobool4, label %cond.end, label %cond.true, !dbg !3378

cond.true:                                        ; preds = %while.cond
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %8, i64 0, i32 0, !dbg !3378
  br label %cond.end, !dbg !3378

cond.end:                                         ; preds = %while.cond, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %while.cond ], !dbg !3378
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3378
  %cmp6 = icmp eq i32 %call, 0, !dbg !3379
  br i1 %cmp6, label %while.end, label %while.body, !dbg !3377

while.body:                                       ; preds = %cond.end
  %9 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3380
  %tobool8 = icmp eq %struct.VEC_edge_gc* %9, null, !dbg !3380
  br i1 %tobool8, label %cond.end13, label %cond.true9, !dbg !3380

cond.true9:                                       ; preds = %while.body
  %base11 = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %9, i64 0, i32 0, !dbg !3380
  br label %cond.end13, !dbg !3380

cond.end13:                                       ; preds = %while.body, %cond.true9
  %cond14 = phi %struct.VEC_edge_base* [ %base11, %cond.true9 ], [ null, %while.body ], !dbg !3380
  %call15 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond14, i32 0) #7, !dbg !3380
  tail call void @remove_edge(%struct.edge_def* %call15) #7, !dbg !3381
  br label %while.cond, !dbg !3377, !llvm.loop !3382

while.end:                                        ; preds = %cond.end
  %10 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3384
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3384
  %succs16 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 1, !dbg !3384
  %call17 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs16) #7, !dbg !3384
  %11 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3384
  %12 = extractvalue { i32, %struct.VEC_edge_gc** } %call17, 0, !dbg !3384
  store i32 %12, i32* %11, align 8, !dbg !3384
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3384
  %14 = extractvalue { i32, %struct.VEC_edge_gc** } %call17, 1, !dbg !3384
  store %struct.VEC_edge_gc** %14, %struct.VEC_edge_gc*** %13, align 8, !dbg !3384
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %10, i64 16, i1 false), !dbg !3384
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #8, !dbg !3384
  %15 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3386
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3386
  br label %for.cond, !dbg !3384

for.cond:                                         ; preds = %for.inc, %while.end
  %17 = load i32, i32* %15, align 8, !dbg !3388
  %18 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %16, align 8, !dbg !3388
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3359, metadata !DIExpression(DW_OP_deref)), !dbg !3361
  %call18 = call fastcc zeroext i8 @ei_cond(i32 %17, %struct.VEC_edge_gc** %18, %struct.edge_def** nonnull %e) #7, !dbg !3388
  %tobool19 = icmp eq i8 %call18, 0, !dbg !3384
  br i1 %tobool19, label %for.end, label %for.body, !dbg !3384

for.body:                                         ; preds = %for.cond
  %19 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3389
  call void @llvm.dbg.value(metadata %struct.edge_def* %19, metadata !3359, metadata !DIExpression()), !dbg !3361
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %19, i64 0, i32 0, !dbg !3391
  store %struct.basic_block_def* %a, %struct.basic_block_def** %src, align 8, !dbg !3392
  %20 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3393
  %x_current_loops21 = getelementptr inbounds %struct.function, %struct.function* %20, i64 0, i32 4, !dbg !3393
  %21 = load %struct.loops*, %struct.loops** %x_current_loops21, align 8, !dbg !3393
  %cmp22 = icmp eq %struct.loops* %21, null, !dbg !3395
  br i1 %cmp22, label %for.inc, label %if.then23, !dbg !3396

if.then23:                                        ; preds = %for.body
  %22 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3397
  call void @llvm.dbg.value(metadata %struct.edge_def* %22, metadata !3359, metadata !DIExpression()), !dbg !3361
  call void @rescan_loop_exit(%struct.edge_def* %22, i8 zeroext 1, i8 zeroext 0) #6, !dbg !3398
  br label %for.inc, !dbg !3398

for.inc:                                          ; preds = %for.body, %if.then23
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3360, metadata !DIExpression(DW_OP_deref)), !dbg !3361
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3388
  br label %for.cond, !dbg !3388, !llvm.loop !3399

for.end:                                          ; preds = %for.cond
  %23 = bitcast %struct.VEC_edge_gc** %succs16 to i64*, !dbg !3401
  %24 = load i64, i64* %23, align 8, !dbg !3401
  %25 = bitcast %struct.VEC_edge_gc** %succs to i64*, !dbg !3402
  store i64 %24, i64* %25, align 8, !dbg !3402
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 13, !dbg !3403
  %26 = load i32, i32* %flags, align 8, !dbg !3403
  %flags27 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %a, i64 0, i32 13, !dbg !3404
  %27 = load i32, i32* %flags27, align 8, !dbg !3405
  %or = or i32 %27, %26, !dbg !3405
  store i32 %or, i32* %flags27, align 8, !dbg !3405
  store %struct.VEC_edge_gc* null, %struct.VEC_edge_gc** %succs16, align 8, !dbg !3406
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b, i64 0, i32 0, !dbg !3407
  store %struct.VEC_edge_gc* null, %struct.VEC_edge_gc** %preds, align 8, !dbg !3408
  %call29 = call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3409
  %tobool30 = icmp eq i8 %call29, 0, !dbg !3409
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !3411

if.then31:                                        ; preds = %for.end
  call void @redirect_immediate_dominators(i32 1, %struct.basic_block_def* %b, %struct.basic_block_def* %a) #6, !dbg !3412
  br label %if.end32, !dbg !3412

if.end32:                                         ; preds = %for.end, %if.then31
  %call33 = call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3413
  %tobool34 = icmp eq i8 %call33, 0, !dbg !3413
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3415

if.then35:                                        ; preds = %if.end32
  call void @delete_from_dominance_info(i32 1, %struct.basic_block_def* %b) #6, !dbg !3416
  br label %if.end36, !dbg !3416

if.end36:                                         ; preds = %if.end32, %if.then35
  %call37 = call zeroext i8 @dom_info_available_p(i32 2) #6, !dbg !3417
  %tobool38 = icmp eq i8 %call37, 0, !dbg !3417
  br i1 %tobool38, label %if.end40, label %if.then39, !dbg !3419

if.then39:                                        ; preds = %if.end36
  call void @delete_from_dominance_info(i32 2, %struct.basic_block_def* %b) #6, !dbg !3420
  br label %if.end40, !dbg !3420

if.end40:                                         ; preds = %if.end36, %if.then39
  call void @expunge_block(%struct.basic_block_def* %b) #6, !dbg !3421
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3422
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3422
  ret void, !dbg !3422
}

; Function Attrs: nounwind uwtable
define dso_local %struct.edge_def* @make_forwarder_block(%struct.basic_block_def* %bb, i8 (%struct.edge_def*)* %redirect_edge_p, void (%struct.basic_block_def*)* %new_bb_cbk) local_unnamed_addr #5 !dbg !3423 {
entry:
  %e = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  %doms_to_fix = alloca %struct.VEC_basic_block_heap*, align 8
  %tmp79 = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3430, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata i8 (%struct.edge_def*)* %redirect_edge_p, metadata !3431, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata void (%struct.basic_block_def*)* %new_bb_cbk, metadata !3432, metadata !DIExpression()), !dbg !3448
  %0 = bitcast %struct.edge_def** %e to i8*, !dbg !3449
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3449
  %1 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3450
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3450
  %2 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3451
  %make_forwarder_block = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %2, i64 0, i32 17, !dbg !3453
  %3 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %make_forwarder_block, align 8, !dbg !3453
  %tobool = icmp eq void (%struct.edge_def*)* %3, null, !dbg !3451
  br i1 %tobool, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %2, i64 0, i32 0, !dbg !3455
  %4 = load i8*, i8** %name, align 8, !dbg !3455
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.42, i64 0, i64 0), i8* %4) #6, !dbg !3456
  br label %if.end, !dbg !3456

if.end:                                           ; preds = %entry, %if.then
  %call = tail call %struct.edge_def* @split_block_after_labels(%struct.basic_block_def* %bb) #7, !dbg !3457
  call void @llvm.dbg.value(metadata %struct.edge_def* %call, metadata !3434, metadata !DIExpression()), !dbg !3448
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 0, !dbg !3458
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3458
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %5, metadata !3436, metadata !DIExpression()), !dbg !3448
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 1, !dbg !3459
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3459
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %6, metadata !3430, metadata !DIExpression()), !dbg !3448
  %7 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3460
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3460
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 0, !dbg !3460
  %call1 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3460
  %8 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3460
  %9 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 0, !dbg !3460
  store i32 %9, i32* %8, align 8, !dbg !3460
  %10 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3460
  %11 = extractvalue { i32, %struct.VEC_edge_gc** } %call1, 1, !dbg !3460
  store %struct.VEC_edge_gc** %11, %struct.VEC_edge_gc*** %10, align 8, !dbg !3460
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %7, i64 16, i1 false), !dbg !3460
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #8, !dbg !3460
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3461
  %13 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3461
  %frequency9 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 11, !dbg !3462
  %count10 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 8, !dbg !3462
  %count22 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call, i64 0, i32 9, !dbg !3462
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %5, i64 0, i32 3, !dbg !3463
  %cmp45 = icmp eq void (%struct.basic_block_def*)* %new_bb_cbk, null, !dbg !3467
  br i1 %cmp45, label %if.end.split.us, label %if.end.if.end.split_crit_edge, !dbg !3469

if.end.if.end.split_crit_edge:                    ; preds = %if.end
  br label %for.cond, !dbg !3469

if.end.split.us:                                  ; preds = %if.end
  br label %for.cond.us, !dbg !3469

for.cond.us:                                      ; preds = %cleanup.us, %if.end.split.us
  %14 = load i32, i32* %12, align 8, !dbg !3470
  %15 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3470
  %call2.us = call fastcc %struct.edge_def* @ei_safe_edge(i32 %14, %struct.VEC_edge_gc** %15) #7, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2.us, metadata !3433, metadata !DIExpression()), !dbg !3448
  store %struct.edge_def* %call2.us, %struct.edge_def** %e, align 8, !dbg !3471
  %tobool3.us = icmp eq %struct.edge_def* %call2.us, null, !dbg !3472
  br i1 %tobool3.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !3472

for.body.us:                                      ; preds = %for.cond.us
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2.us, metadata !3433, metadata !DIExpression()), !dbg !3448
  %call4.us = call zeroext i8 %redirect_edge_p(%struct.edge_def* nonnull %call2.us) #6, !dbg !3473
  %tobool5.us = icmp eq i8 %call4.us, 0, !dbg !3473
  br i1 %tobool5.us, label %if.end7.us, label %if.then6.us, !dbg !3475

if.then6.us:                                      ; preds = %for.body.us
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3476
  br label %cleanup.us, !dbg !3478, !llvm.loop !3479

if.end7.us:                                       ; preds = %for.body.us
  %16 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %src8.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 0, !dbg !3481
  %17 = load %struct.basic_block_def*, %struct.basic_block_def** %src8.us, align 8, !dbg !3481
  %frequency.us = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %17, i64 0, i32 11, !dbg !3481
  %18 = load i32, i32* %frequency.us, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %probability.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 8, !dbg !3481
  %19 = load i32, i32* %probability.us, align 4, !dbg !3481
  %mul.us = mul nsw i32 %18, %19, !dbg !3481
  %add.us = add nsw i32 %mul.us, 5000, !dbg !3481
  %div.us = sdiv i32 %add.us, 10000, !dbg !3481
  %20 = load i32, i32* %frequency9, align 8, !dbg !3482
  %sub.us = sub nsw i32 %20, %div.us, !dbg !3482
  store i32 %sub.us, i32* %frequency9, align 8, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %count.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %16, i64 0, i32 9, !dbg !3483
  %21 = load i64, i64* %count.us, align 8, !dbg !3483
  %22 = load i64, i64* %count10, align 8, !dbg !3484
  %sub11.us = sub nsw i64 %22, %21, !dbg !3484
  store i64 %sub11.us, i64* %count10, align 8, !dbg !3484
  %cmp.us = icmp slt i32 %sub.us, 0, !dbg !3485
  br i1 %cmp.us, label %if.then13.us, label %if.end15.us, !dbg !3487

if.then13.us:                                     ; preds = %if.end7.us
  store i32 0, i32* %frequency9, align 8, !dbg !3488
  br label %if.end15.us, !dbg !3489

if.end15.us:                                      ; preds = %if.then13.us, %if.end7.us
  %cmp17.us = icmp slt i64 %sub11.us, 0, !dbg !3490
  br i1 %cmp17.us, label %if.then18.us, label %if.end20.us, !dbg !3492

if.then18.us:                                     ; preds = %if.end15.us
  store i64 0, i64* %count10, align 8, !dbg !3493
  br label %if.end20.us, !dbg !3494

if.end20.us:                                      ; preds = %if.then18.us, %if.end15.us
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %23 = load i64, i64* %count.us, align 8, !dbg !3495
  %24 = load i64, i64* %count22, align 8, !dbg !3496
  %sub23.us = sub nsw i64 %24, %23, !dbg !3496
  %cmp25.us = icmp slt i64 %sub23.us, 0, !dbg !3497
  br i1 %cmp25.us, label %if.then26.us, label %if.end28.us, !dbg !3499

if.then26.us:                                     ; preds = %if.end20.us
  br label %if.end28.us, !dbg !3500

if.end28.us:                                      ; preds = %if.then26.us, %if.end20.us
  %storemerge1 = phi i64 [ 0, %if.then26.us ], [ %sub23.us, %if.end20.us ], !dbg !3462
  store i64 %storemerge1, i64* %count22, align 8, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %25 = load %struct.basic_block_def*, %struct.basic_block_def** %src8.us, align 8, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %25, metadata !3441, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata %struct.edge_def* %16, metadata !3433, metadata !DIExpression()), !dbg !3448
  %call30.us = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %16, %struct.basic_block_def* %6) #7, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call30.us, metadata !3437, metadata !DIExpression()), !dbg !3448
  %cmp31.us = icmp eq %struct.basic_block_def* %call30.us, null, !dbg !3503
  br i1 %cmp31.us, label %cleanup.us, label %if.then32.us, !dbg !3504

if.then32.us:                                     ; preds = %if.end28.us
  %26 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3505
  %x_current_loops.us = getelementptr inbounds %struct.function, %struct.function* %26, i64 0, i32 4, !dbg !3505
  %27 = load %struct.loops*, %struct.loops** %x_current_loops.us, align 8, !dbg !3505
  %cmp33.us = icmp eq %struct.loops* %27, null, !dbg !3506
  br i1 %cmp33.us, label %if.end44.us, label %land.lhs.true.us, !dbg !3507

land.lhs.true.us:                                 ; preds = %if.then32.us
  %28 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3508
  %cmp34.us = icmp eq %struct.loop* %28, null, !dbg !3509
  br i1 %cmp34.us, label %if.end44.us, label %land.lhs.true35.us, !dbg !3510

land.lhs.true35.us:                               ; preds = %land.lhs.true.us
  %header.us = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 2, !dbg !3511
  %29 = load %struct.basic_block_def*, %struct.basic_block_def** %header.us, align 8, !dbg !3511
  %cmp37.us = icmp eq %struct.basic_block_def* %29, %5, !dbg !3512
  br i1 %cmp37.us, label %land.lhs.true38.us, label %if.end44.us, !dbg !3513

land.lhs.true38.us:                               ; preds = %land.lhs.true35.us
  %latch.us = getelementptr inbounds %struct.loop, %struct.loop* %28, i64 0, i32 3, !dbg !3514
  %30 = load %struct.basic_block_def*, %struct.basic_block_def** %latch.us, align 8, !dbg !3514
  %cmp40.us = icmp eq %struct.basic_block_def* %30, %25, !dbg !3515
  br i1 %cmp40.us, label %if.then41.us, label %if.end44.us, !dbg !3516

if.then41.us:                                     ; preds = %land.lhs.true38.us
  store %struct.basic_block_def* %call30.us, %struct.basic_block_def** %latch.us, align 8, !dbg !3517
  br label %if.end44.us, !dbg !3518

if.end44.us:                                      ; preds = %if.then41.us, %land.lhs.true38.us, %land.lhs.true35.us, %land.lhs.true.us, %if.then32.us
  br label %cleanup.us, !dbg !3519

cleanup.us:                                       ; preds = %if.end44.us, %if.end28.us, %if.then6.us
  br label %for.cond.us

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !3520

for.cond:                                         ; preds = %cleanup, %if.end.if.end.split_crit_edge
  %31 = load i32, i32* %12, align 8, !dbg !3470
  %32 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3470
  %call2 = call fastcc %struct.edge_def* @ei_safe_edge(i32 %31, %struct.VEC_edge_gc** %32) #7, !dbg !3470
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2, metadata !3433, metadata !DIExpression()), !dbg !3448
  store %struct.edge_def* %call2, %struct.edge_def** %e, align 8, !dbg !3471
  %tobool3 = icmp eq %struct.edge_def* %call2, null, !dbg !3472
  br i1 %tobool3, label %for.end.us-lcssa, label %for.body, !dbg !3472

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.value(metadata %struct.edge_def* %call2, metadata !3433, metadata !DIExpression()), !dbg !3448
  %call4 = call zeroext i8 %redirect_edge_p(%struct.edge_def* nonnull %call2) #6, !dbg !3473
  %tobool5 = icmp eq i8 %call4, 0, !dbg !3473
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3475

if.then6:                                         ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3476
  br label %cleanup, !dbg !3478, !llvm.loop !3479

if.end7:                                          ; preds = %for.body
  %33 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %src8 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 0, !dbg !3481
  %34 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8, !dbg !3481
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %34, i64 0, i32 11, !dbg !3481
  %35 = load i32, i32* %frequency, align 8, !dbg !3481
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 8, !dbg !3481
  %36 = load i32, i32* %probability, align 4, !dbg !3481
  %mul = mul nsw i32 %35, %36, !dbg !3481
  %add = add nsw i32 %mul, 5000, !dbg !3481
  %div = sdiv i32 %add, 10000, !dbg !3481
  %37 = load i32, i32* %frequency9, align 8, !dbg !3482
  %sub = sub nsw i32 %37, %div, !dbg !3482
  store i32 %sub, i32* %frequency9, align 8, !dbg !3482
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %33, i64 0, i32 9, !dbg !3483
  %38 = load i64, i64* %count, align 8, !dbg !3483
  %39 = load i64, i64* %count10, align 8, !dbg !3484
  %sub11 = sub nsw i64 %39, %38, !dbg !3484
  store i64 %sub11, i64* %count10, align 8, !dbg !3484
  %cmp = icmp slt i32 %sub, 0, !dbg !3485
  br i1 %cmp, label %if.then13, label %if.end15, !dbg !3487

if.then13:                                        ; preds = %if.end7
  store i32 0, i32* %frequency9, align 8, !dbg !3488
  br label %if.end15, !dbg !3489

if.end15:                                         ; preds = %if.then13, %if.end7
  %cmp17 = icmp slt i64 %sub11, 0, !dbg !3490
  br i1 %cmp17, label %if.then18, label %if.end20, !dbg !3492

if.then18:                                        ; preds = %if.end15
  store i64 0, i64* %count10, align 8, !dbg !3493
  br label %if.end20, !dbg !3494

if.end20:                                         ; preds = %if.then18, %if.end15
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %40 = load i64, i64* %count, align 8, !dbg !3495
  %41 = load i64, i64* %count22, align 8, !dbg !3496
  %sub23 = sub nsw i64 %41, %40, !dbg !3496
  %cmp25 = icmp slt i64 %sub23, 0, !dbg !3497
  br i1 %cmp25, label %if.then26, label %if.end28, !dbg !3499

if.then26:                                        ; preds = %if.end20
  br label %if.end28, !dbg !3500

if.end28:                                         ; preds = %if.then26, %if.end20
  %storemerge = phi i64 [ 0, %if.then26 ], [ %sub23, %if.end20 ], !dbg !3462
  store i64 %storemerge, i64* %count22, align 8, !dbg !3462
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %42 = load %struct.basic_block_def*, %struct.basic_block_def** %src8, align 8, !dbg !3501
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %42, metadata !3441, metadata !DIExpression()), !dbg !3462
  call void @llvm.dbg.value(metadata %struct.edge_def* %33, metadata !3433, metadata !DIExpression()), !dbg !3448
  %call30 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* %33, %struct.basic_block_def* %6) #7, !dbg !3502
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call30, metadata !3437, metadata !DIExpression()), !dbg !3448
  %cmp31 = icmp eq %struct.basic_block_def* %call30, null, !dbg !3503
  br i1 %cmp31, label %cleanup, label %if.then32, !dbg !3504

if.then32:                                        ; preds = %if.end28
  %43 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3505
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %43, i64 0, i32 4, !dbg !3505
  %44 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3505
  %cmp33 = icmp eq %struct.loops* %44, null, !dbg !3506
  br i1 %cmp33, label %if.end44, label %land.lhs.true, !dbg !3507

land.lhs.true:                                    ; preds = %if.then32
  %45 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3508
  %cmp34 = icmp eq %struct.loop* %45, null, !dbg !3509
  br i1 %cmp34, label %if.end44, label %land.lhs.true35, !dbg !3510

land.lhs.true35:                                  ; preds = %land.lhs.true
  %header = getelementptr inbounds %struct.loop, %struct.loop* %45, i64 0, i32 2, !dbg !3511
  %46 = load %struct.basic_block_def*, %struct.basic_block_def** %header, align 8, !dbg !3511
  %cmp37 = icmp eq %struct.basic_block_def* %46, %5, !dbg !3512
  br i1 %cmp37, label %land.lhs.true38, label %if.end44, !dbg !3513

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %latch = getelementptr inbounds %struct.loop, %struct.loop* %45, i64 0, i32 3, !dbg !3514
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %latch, align 8, !dbg !3514
  %cmp40 = icmp eq %struct.basic_block_def* %47, %42, !dbg !3515
  br i1 %cmp40, label %if.then41, label %if.end44, !dbg !3516

if.then41:                                        ; preds = %land.lhs.true38
  store %struct.basic_block_def* %call30, %struct.basic_block_def** %latch, align 8, !dbg !3517
  br label %if.end44, !dbg !3518

if.end44:                                         ; preds = %land.lhs.true, %if.then32, %if.then41, %land.lhs.true38, %land.lhs.true35
  call void %new_bb_cbk(%struct.basic_block_def* nonnull %call30) #6, !dbg !3521
  br label %cleanup, !dbg !3521

cleanup:                                          ; preds = %if.end28, %if.end44, %if.then6
  br label %for.cond

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !3520

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  %call49 = call zeroext i8 @dom_info_available_p(i32 1) #6, !dbg !3520
  %tobool50 = icmp eq i8 %call49, 0, !dbg !3520
  br i1 %tobool50, label %if.end62, label %if.then51, !dbg !3522

if.then51:                                        ; preds = %for.end
  %48 = bitcast %struct.VEC_basic_block_heap** %doms_to_fix to i8*, !dbg !3523
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #8, !dbg !3523
  %call52 = call fastcc %struct.VEC_basic_block_heap* @VEC_basic_block_heap_alloc(i32 2) #7, !dbg !3524
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  store %struct.VEC_basic_block_heap* %call52, %struct.VEC_basic_block_heap** %doms_to_fix, align 8, !dbg !3526
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  %base = getelementptr inbounds %struct.VEC_basic_block_heap, %struct.VEC_basic_block_heap* %call52, i64 0, i32 0, !dbg !3527
  %call54 = call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %base, %struct.basic_block_def* %5) #7, !dbg !3527
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  %call61 = call fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %base, %struct.basic_block_def* %6) #7, !dbg !3528
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap* %call52, metadata !3445, metadata !DIExpression()), !dbg !3525
  call void @iterate_fix_dominators(i32 1, %struct.VEC_basic_block_heap* %call52, i8 zeroext 0) #6, !dbg !3529
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %doms_to_fix, metadata !3445, metadata !DIExpression(DW_OP_deref)), !dbg !3525
  call fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** nonnull %doms_to_fix) #7, !dbg !3530
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #8, !dbg !3531
  br label %if.end62, !dbg !3532

if.end62:                                         ; preds = %for.end, %if.then51
  %49 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3533
  %x_current_loops64 = getelementptr inbounds %struct.function, %struct.function* %49, i64 0, i32 4, !dbg !3533
  %50 = load %struct.loops*, %struct.loops** %x_current_loops64, align 8, !dbg !3533
  %cmp65 = icmp eq %struct.loops* %50, null, !dbg !3535
  br i1 %cmp65, label %if.end102, label %if.then66, !dbg !3536

if.then66:                                        ; preds = %if.end62
  %51 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3537
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !3438, metadata !DIExpression()), !dbg !3448
  %header68 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 2, !dbg !3539
  %52 = load %struct.basic_block_def*, %struct.basic_block_def** %header68, align 8, !dbg !3539
  %cmp69 = icmp eq %struct.basic_block_def* %52, %5, !dbg !3541
  br i1 %cmp69, label %land.lhs.true70, label %if.end90, !dbg !3542

land.lhs.true70:                                  ; preds = %if.then66
  %latch71 = getelementptr inbounds %struct.loop, %struct.loop* %51, i64 0, i32 3, !dbg !3543
  %53 = load %struct.basic_block_def*, %struct.basic_block_def** %latch71, align 8, !dbg !3543
  %cmp72 = icmp eq %struct.basic_block_def* %53, null, !dbg !3544
  br i1 %cmp72, label %if.end90, label %land.lhs.true73, !dbg !3545

land.lhs.true73:                                  ; preds = %land.lhs.true70
  %call75 = call %struct.edge_def* @find_edge(%struct.basic_block_def* nonnull %53, %struct.basic_block_def* %5) #6, !dbg !3546
  %cmp76 = icmp eq %struct.edge_def* %call75, null, !dbg !3547
  br i1 %cmp76, label %if.then77, label %if.end90, !dbg !3548

if.then77:                                        ; preds = %land.lhs.true73
  call void @remove_bb_from_loops(%struct.basic_block_def* %5) #6, !dbg !3549
  store %struct.basic_block_def* %6, %struct.basic_block_def** %header68, align 8, !dbg !3551
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !3440, metadata !DIExpression()), !dbg !3448
  %54 = bitcast %struct.edge_iterator* %tmp79 to i8*, !dbg !3552
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %54) #8, !dbg !3552
  %call81 = call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** %preds) #7, !dbg !3552
  %55 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp79, i64 0, i32 0, !dbg !3552
  %56 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 0, !dbg !3552
  store i32 %56, i32* %55, align 8, !dbg !3552
  %57 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp79, i64 0, i32 1, !dbg !3552
  %58 = extractvalue { i32, %struct.VEC_edge_gc** } %call81, 1, !dbg !3552
  store %struct.VEC_edge_gc** %58, %struct.VEC_edge_gc*** %57, align 8, !dbg !3552
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %1, i8* nonnull align 8 %54, i64 16, i1 false), !dbg !3552
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %54) #8, !dbg !3552
  br label %for.cond82, !dbg !3552

for.cond82:                                       ; preds = %for.body85, %if.then77
  %cloop.0 = phi %struct.loop* [ %51, %if.then77 ], [ %call88, %for.body85 ], !dbg !3554
  call void @llvm.dbg.value(metadata %struct.loop* %cloop.0, metadata !3440, metadata !DIExpression()), !dbg !3448
  %59 = load i32, i32* %12, align 8, !dbg !3555
  %60 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %13, align 8, !dbg !3555
  call void @llvm.dbg.value(metadata %struct.edge_def** %e, metadata !3433, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  %call83 = call fastcc zeroext i8 @ei_cond(i32 %59, %struct.VEC_edge_gc** %60, %struct.edge_def** nonnull %e) #7, !dbg !3555
  %tobool84 = icmp eq i8 %call83, 0, !dbg !3552
  br i1 %tobool84, label %for.end89, label %for.body85, !dbg !3552

for.body85:                                       ; preds = %for.cond82
  %61 = load %struct.edge_def*, %struct.edge_def** %e, align 8, !dbg !3557
  call void @llvm.dbg.value(metadata %struct.edge_def* %61, metadata !3433, metadata !DIExpression()), !dbg !3448
  %src86 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %61, i64 0, i32 0, !dbg !3559
  %62 = load %struct.basic_block_def*, %struct.basic_block_def** %src86, align 8, !dbg !3559
  %loop_father87 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %62, i64 0, i32 3, !dbg !3560
  %63 = load %struct.loop*, %struct.loop** %loop_father87, align 8, !dbg !3560
  %call88 = call %struct.loop* @find_common_loop(%struct.loop* %cloop.0, %struct.loop* %63) #6, !dbg !3561
  call void @llvm.dbg.value(metadata %struct.loop* %call88, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3435, metadata !DIExpression(DW_OP_deref)), !dbg !3448
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3555
  br label %for.cond82, !dbg !3555, !llvm.loop !3562

for.end89:                                        ; preds = %for.cond82
  %cloop.0.lcssa = phi %struct.loop* [ %cloop.0, %for.cond82 ], !dbg !3554
  call void @llvm.dbg.value(metadata %struct.loop* %cloop.0.lcssa, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.loop* %cloop.0.lcssa, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @llvm.dbg.value(metadata %struct.loop* %cloop.0.lcssa, metadata !3440, metadata !DIExpression()), !dbg !3448
  call void @add_bb_to_loop(%struct.basic_block_def* %5, %struct.loop* %cloop.0.lcssa) #6, !dbg !3564
  br label %if.end90, !dbg !3565

if.end90:                                         ; preds = %land.lhs.true70, %for.end89, %land.lhs.true73, %if.then66
  call void @llvm.dbg.value(metadata %struct.loop* %51, metadata !3439, metadata !DIExpression()), !dbg !3448
  br label %for.cond91, !dbg !3566

for.cond91:                                       ; preds = %for.inc99, %if.end90
  %ploop.0 = phi %struct.loop* [ %51, %if.end90 ], [ %call100, %for.inc99 ], !dbg !3568
  call void @llvm.dbg.value(metadata %struct.loop* %ploop.0, metadata !3439, metadata !DIExpression()), !dbg !3448
  %tobool92 = icmp eq %struct.loop* %ploop.0, null, !dbg !3569
  br i1 %tobool92, label %if.end102.loopexit, label %for.body93, !dbg !3569

for.body93:                                       ; preds = %for.cond91
  %latch94 = getelementptr inbounds %struct.loop, %struct.loop* %ploop.0, i64 0, i32 3, !dbg !3570
  %64 = load %struct.basic_block_def*, %struct.basic_block_def** %latch94, align 8, !dbg !3570
  %cmp95 = icmp eq %struct.basic_block_def* %64, %5, !dbg !3573
  br i1 %cmp95, label %if.then96, label %for.inc99, !dbg !3574

if.then96:                                        ; preds = %for.body93
  store %struct.basic_block_def* %6, %struct.basic_block_def** %latch94, align 8, !dbg !3575
  br label %for.inc99, !dbg !3576

for.inc99:                                        ; preds = %for.body93, %if.then96
  %call100 = call fastcc %struct.loop* @loop_outer(%struct.loop* nonnull %ploop.0) #7, !dbg !3577
  call void @llvm.dbg.value(metadata %struct.loop* %call100, metadata !3439, metadata !DIExpression()), !dbg !3448
  br label %for.cond91, !dbg !3578, !llvm.loop !3579

if.end102.loopexit:                               ; preds = %for.cond91
  br label %if.end102, !dbg !3581

if.end102:                                        ; preds = %if.end102.loopexit, %if.end62
  %65 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3581
  %make_forwarder_block103 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %65, i64 0, i32 17, !dbg !3582
  %66 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %make_forwarder_block103, align 8, !dbg !3582
  call void %66(%struct.edge_def* %call) #6, !dbg !3581
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #8, !dbg !3583
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3583
  ret %struct.edge_def* %call, !dbg !3584
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_safe_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3585 {
entry:
  %call = tail call fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3590
  %tobool = icmp eq i8 %call, 0, !dbg !3590
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3591

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3592
  br label %cond.end, !dbg !3591

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.edge_def* [ %call1, %cond.true ], [ null, %entry ], !dbg !3591
  ret %struct.edge_def* %cond, !dbg !3593
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_basic_block_heap* @VEC_basic_block_heap_alloc(i32 %alloc_) unnamed_addr #0 !dbg !3594 {
entry:
  call void @llvm.dbg.value(metadata i32 2, metadata !3598, metadata !DIExpression()), !dbg !3599
  %call = tail call i8* @vec_heap_p_reserve_exact(i8* null, i32 2) #6, !dbg !3600
  %0 = bitcast i8* %call to %struct.VEC_basic_block_heap*, !dbg !3600
  ret %struct.VEC_basic_block_heap* %0, !dbg !3600
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.basic_block_def** @VEC_basic_block_base_quick_push(%struct.VEC_basic_block_base* %vec_, %struct.basic_block_def* %obj_) unnamed_addr #0 !dbg !3601 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_base* %vec_, metadata !3606, metadata !DIExpression()), !dbg !3609
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %obj_, metadata !3607, metadata !DIExpression()), !dbg !3609
  %num1 = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 0, !dbg !3610
  %0 = load i32, i32* %num1, align 8, !dbg !3610
  %inc = add i32 %0, 1, !dbg !3610
  store i32 %inc, i32* %num1, align 8, !dbg !3610
  %idxprom = zext i32 %0 to i64, !dbg !3610
  %arrayidx = getelementptr inbounds %struct.VEC_basic_block_base, %struct.VEC_basic_block_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !3610
  call void @llvm.dbg.value(metadata %struct.basic_block_def** %arrayidx, metadata !3608, metadata !DIExpression()), !dbg !3609
  store %struct.basic_block_def* %obj_, %struct.basic_block_def** %arrayidx, align 8, !dbg !3610
  ret %struct.basic_block_def** %arrayidx, !dbg !3610
}

declare dso_local void @iterate_fix_dominators(i32, %struct.VEC_basic_block_heap*, i8 zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @VEC_basic_block_heap_free(%struct.VEC_basic_block_heap** %vec_) unnamed_addr #0 !dbg !3611 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_basic_block_heap** %vec_, metadata !3616, metadata !DIExpression()), !dbg !3617
  %0 = load %struct.VEC_basic_block_heap*, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !3618
  %tobool = icmp eq %struct.VEC_basic_block_heap* %0, null, !dbg !3618
  br i1 %tobool, label %if.end, label %if.then, !dbg !3620

if.then:                                          ; preds = %entry
  %1 = bitcast %struct.VEC_basic_block_heap* %0 to i8*, !dbg !3620
  tail call void @free(i8* nonnull %1) #6, !dbg !3618
  br label %if.end, !dbg !3618

if.end:                                           ; preds = %entry, %if.then
  store %struct.VEC_basic_block_heap* null, %struct.VEC_basic_block_heap** %vec_, align 8, !dbg !3620
  ret void, !dbg !3620
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @loop_outer(%struct.loop* %loop) unnamed_addr #0 !dbg !3621 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3627, metadata !DIExpression()), !dbg !3629
  %superloops = getelementptr inbounds %struct.loop, %struct.loop* %loop, i64 0, i32 7, !dbg !3630
  %0 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3630
  %tobool = icmp eq %struct.VEC_loop_p_gc* %0, null, !dbg !3630
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3630

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %0, i64 0, i32 0, !dbg !3630
  br label %cond.end, !dbg !3630

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_loop_p_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3630
  %call = tail call fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %cond) #7, !dbg !3630
  call void @llvm.dbg.value(metadata i32 %call, metadata !3628, metadata !DIExpression()), !dbg !3629
  %cmp = icmp eq i32 %call, 0, !dbg !3631
  br i1 %cmp, label %cleanup, label %if.end, !dbg !3633

if.end:                                           ; preds = %cond.end
  %1 = load %struct.VEC_loop_p_gc*, %struct.VEC_loop_p_gc** %superloops, align 8, !dbg !3634
  %tobool3 = icmp eq %struct.VEC_loop_p_gc* %1, null, !dbg !3634
  br i1 %tobool3, label %cond.end8, label %cond.true4, !dbg !3634

cond.true4:                                       ; preds = %if.end
  %base6 = getelementptr inbounds %struct.VEC_loop_p_gc, %struct.VEC_loop_p_gc* %1, i64 0, i32 0, !dbg !3634
  br label %cond.end8, !dbg !3634

cond.end8:                                        ; preds = %if.end, %cond.true4
  %cond9 = phi %struct.VEC_loop_p_base* [ %base6, %cond.true4 ], [ null, %if.end ], !dbg !3634
  %sub = add i32 %call, -1, !dbg !3634
  %call10 = tail call fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %cond9, i32 %sub) #7, !dbg !3634
  br label %cleanup, !dbg !3635

cleanup:                                          ; preds = %cond.end, %cond.end8
  %retval.0 = phi %struct.loop* [ %call10, %cond.end8 ], [ null, %cond.end ], !dbg !3629
  ret %struct.loop* %retval.0, !dbg !3636
}

; Function Attrs: nounwind uwtable
define dso_local void @tidy_fallthru_edge(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !3637 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3639, metadata !DIExpression()), !dbg !3640
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3641
  %tidy_fallthru_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 18, !dbg !3643
  %1 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %tidy_fallthru_edge, align 8, !dbg !3643
  %tobool = icmp eq void (%struct.edge_def*)* %1, null, !dbg !3641
  br i1 %tobool, label %if.end, label %if.then, !dbg !3644

if.then:                                          ; preds = %entry
  tail call void %1(%struct.edge_def* %e) #6, !dbg !3645
  br label %if.end, !dbg !3645

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3646
}

; Function Attrs: nounwind uwtable
define dso_local void @tidy_fallthru_edges() local_unnamed_addr #5 !dbg !3647 {
entry:
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3655
  %tidy_fallthru_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 18, !dbg !3657
  %1 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %tidy_fallthru_edge, align 8, !dbg !3657
  %tobool = icmp eq void (%struct.edge_def*)* %1, null, !dbg !3655
  br i1 %tobool, label %cleanup.cont, label %if.end, !dbg !3658

if.end:                                           ; preds = %entry
  %2 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3659
  %cfg = getelementptr inbounds %struct.function, %struct.function* %2, i64 0, i32 1, !dbg !3659
  %3 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3659
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 0, !dbg !3659
  %4 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3659
  %next_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %4, i64 0, i32 6, !dbg !3661
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb, align 8, !dbg !3661
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %3, i64 0, i32 1, !dbg !3662
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3662
  %cmp = icmp eq %struct.basic_block_def* %5, %6, !dbg !3663
  br i1 %cmp, label %cleanup.cont, label %if.end4, !dbg !3664

if.end4:                                          ; preds = %if.end
  br label %for.cond, !dbg !3665

for.cond:                                         ; preds = %for.inc, %if.end4
  %7 = phi %struct.basic_block_def* [ %6, %if.end4 ], [ %.pre3, %for.inc ], !dbg !3666
  %b.0 = phi %struct.basic_block_def* [ %5, %if.end4 ], [ %b.0.pre, %for.inc ], !dbg !3667
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b.0, metadata !3649, metadata !DIExpression()), !dbg !3668
  %prev_bb = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %7, i64 0, i32 5, !dbg !3666
  %8 = load %struct.basic_block_def*, %struct.basic_block_def** %prev_bb, align 8, !dbg !3666
  %cmp12 = icmp eq %struct.basic_block_def* %b.0, %8, !dbg !3666
  br i1 %cmp12, label %cleanup.cont.loopexit, label %for.body, !dbg !3665

for.body:                                         ; preds = %for.cond
  %next_bb13 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 6, !dbg !3669
  %9 = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb13, align 8, !dbg !3669
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %9, metadata !3650, metadata !DIExpression()), !dbg !3668
  %call = tail call fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %b.0) #7, !dbg !3670
  %tobool14 = icmp eq i8 %call, 0, !dbg !3670
  br i1 %tobool14, label %for.inc, label %if.then15, !dbg !3672

if.then15:                                        ; preds = %for.body
  %call16 = tail call fastcc %struct.edge_def* @single_succ_edge(%struct.basic_block_def* %b.0) #7, !dbg !3673
  call void @llvm.dbg.value(metadata %struct.edge_def* %call16, metadata !3651, metadata !DIExpression()), !dbg !3675
  %flags = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 7, !dbg !3676
  %10 = load i32, i32* %flags, align 8, !dbg !3676
  %and = and i32 %10, 14, !dbg !3678
  %tobool17 = icmp eq i32 %and, 0, !dbg !3678
  br i1 %tobool17, label %land.lhs.true, label %for.inc, !dbg !3679

land.lhs.true:                                    ; preds = %if.then15
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call16, i64 0, i32 1, !dbg !3680
  %11 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3680
  %cmp18 = icmp eq %struct.basic_block_def* %11, %9, !dbg !3681
  br i1 %cmp18, label %land.lhs.true19, label %for.inc, !dbg !3682

land.lhs.true19:                                  ; preds = %land.lhs.true
  %il = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %b.0, i64 0, i32 7, !dbg !3683
  %rtl = bitcast %union.basic_block_il_dependent* %il to %struct.rtl_bb_info**, !dbg !3683
  %12 = load %struct.rtl_bb_info*, %struct.rtl_bb_info** %rtl, align 8, !dbg !3683
  %end_ = getelementptr inbounds %struct.rtl_bb_info, %struct.rtl_bb_info* %12, i64 0, i32 1, !dbg !3683
  %13 = load %struct.rtx_def*, %struct.rtx_def** %end_, align 8, !dbg !3683
  %call20 = tail call %struct.rtx_def* @find_reg_note(%struct.rtx_def* %13, i32 29, %struct.rtx_def* null) #6, !dbg !3684
  %tobool21 = icmp eq %struct.rtx_def* %call20, null, !dbg !3684
  br i1 %tobool21, label %if.then22, label %for.inc, !dbg !3685

if.then22:                                        ; preds = %land.lhs.true19
  tail call void @tidy_fallthru_edge(%struct.edge_def* %call16) #7, !dbg !3686
  br label %for.inc, !dbg !3686

for.inc:                                          ; preds = %land.lhs.true19, %if.then15, %for.body, %if.then22, %land.lhs.true
  %b.0.pre = load %struct.basic_block_def*, %struct.basic_block_def** %next_bb13, align 8, !dbg !3667
  %.pre = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3666
  %cfg10.phi.trans.insert = getelementptr inbounds %struct.function, %struct.function* %.pre, i64 0, i32 1, !dbg !3687
  %.pre2 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg10.phi.trans.insert, align 8, !dbg !3666
  %x_exit_block_ptr11.phi.trans.insert = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %.pre2, i64 0, i32 1, !dbg !3687
  %.pre3 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr11.phi.trans.insert, align 8, !dbg !3666
  br label %for.cond, !dbg !3666, !llvm.loop !3688

cleanup.cont.loopexit:                            ; preds = %for.cond
  br label %cleanup.cont, !dbg !3690

cleanup.cont:                                     ; preds = %cleanup.cont.loopexit, %entry, %if.end
  ret void, !dbg !3690
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_succ_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3691 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3693, metadata !DIExpression()), !dbg !3694
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3695
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %succs, align 8, !dbg !3695
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3695
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3695

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3695
  br label %cond.end, !dbg !3695

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3695
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3695
  %cmp = icmp eq i32 %call, 1, !dbg !3696
  %conv2 = zext i1 %cmp to i8, !dbg !3695
  ret i8 %conv2, !dbg !3697
}

declare dso_local %struct.rtx_def* @find_reg_note(%struct.rtx_def*, i32, %struct.rtx_def*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @can_duplicate_block_p(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3698 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3700, metadata !DIExpression()), !dbg !3701
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3702
  %can_duplicate_block_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 14, !dbg !3704
  %1 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %can_duplicate_block_p, align 8, !dbg !3704
  %tobool = icmp eq i8 (%struct.basic_block_def*)* %1, null, !dbg !3702
  br i1 %tobool, label %if.then, label %if.end, !dbg !3705

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3706
  %2 = load i8*, i8** %name, align 8, !dbg !3706
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.43, i64 0, i64 0), i8* %2) #6, !dbg !3707
  br label %if.end, !dbg !3707

if.end:                                           ; preds = %entry, %if.then
  %3 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3708
  %cfg = getelementptr inbounds %struct.function, %struct.function* %3, i64 0, i32 1, !dbg !3708
  %4 = load %struct.control_flow_graph*, %struct.control_flow_graph** %cfg, align 8, !dbg !3708
  %x_exit_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 1, !dbg !3708
  %5 = load %struct.basic_block_def*, %struct.basic_block_def** %x_exit_block_ptr, align 8, !dbg !3708
  %cmp = icmp eq %struct.basic_block_def* %5, %bb, !dbg !3710
  br i1 %cmp, label %return, label %lor.lhs.false, !dbg !3711

lor.lhs.false:                                    ; preds = %if.end
  %x_entry_block_ptr = getelementptr inbounds %struct.control_flow_graph, %struct.control_flow_graph* %4, i64 0, i32 0, !dbg !3712
  %6 = load %struct.basic_block_def*, %struct.basic_block_def** %x_entry_block_ptr, align 8, !dbg !3712
  %cmp3 = icmp eq %struct.basic_block_def* %6, %bb, !dbg !3713
  br i1 %cmp3, label %return, label %if.end5, !dbg !3714

if.end5:                                          ; preds = %lor.lhs.false
  %7 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3715
  %can_duplicate_block_p6 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %7, i64 0, i32 14, !dbg !3716
  %8 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %can_duplicate_block_p6, align 8, !dbg !3716
  %call = tail call zeroext i8 %8(%struct.basic_block_def* %bb) #6, !dbg !3715
  br label %return, !dbg !3717

return:                                           ; preds = %if.end, %lor.lhs.false, %if.end5
  %retval.0 = phi i8 [ %call, %if.end5 ], [ 0, %lor.lhs.false ], [ 0, %if.end ], !dbg !3701
  ret i8 %retval.0, !dbg !3718
}

; Function Attrs: nounwind uwtable
define dso_local %struct.basic_block_def* @duplicate_block(%struct.basic_block_def* %bb, %struct.edge_def* %e, %struct.basic_block_def* %after) local_unnamed_addr #5 !dbg !3719 {
entry:
  %s = alloca %struct.edge_def*, align 8
  %ei = alloca %struct.edge_iterator, align 8
  %tmp = alloca %struct.edge_iterator, align 8
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3723, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3724, metadata !DIExpression()), !dbg !3735
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %after, metadata !3725, metadata !DIExpression()), !dbg !3735
  %0 = bitcast %struct.edge_def** %s to i8*, !dbg !3736
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3736
  %tobool = icmp eq %struct.edge_def* %e, null, !dbg !3737
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3737

cond.true:                                        ; preds = %entry
  %count = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 9, !dbg !3738
  %1 = load i64, i64* %count, align 8, !dbg !3738
  br label %cond.end, !dbg !3737

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i64 [ %1, %cond.true ], [ 0, %entry ], !dbg !3737
  call void @llvm.dbg.value(metadata i64 %cond, metadata !3729, metadata !DIExpression()), !dbg !3735
  %2 = bitcast %struct.edge_iterator* %ei to i8*, !dbg !3739
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3739
  %3 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3740
  %duplicate_block = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %3, i64 0, i32 15, !dbg !3742
  %4 = load %struct.basic_block_def* (%struct.basic_block_def*)*, %struct.basic_block_def* (%struct.basic_block_def*)** %duplicate_block, align 8, !dbg !3742
  %tobool1 = icmp eq %struct.basic_block_def* (%struct.basic_block_def*)* %4, null, !dbg !3740
  br i1 %tobool1, label %if.then, label %if.end, !dbg !3743

if.then:                                          ; preds = %cond.end
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %3, i64 0, i32 0, !dbg !3744
  %5 = load i8*, i8** %name, align 8, !dbg !3744
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.44, i64 0, i64 0), i8* %5) #6, !dbg !3745
  br label %if.end, !dbg !3745

if.end:                                           ; preds = %cond.end, %if.then
  %count2 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 8, !dbg !3746
  %6 = load i64, i64* %count2, align 8, !dbg !3746
  %cmp = icmp slt i64 %6, %cond, !dbg !3748
  br i1 %cmp, label %if.then3, label %if.end5, !dbg !3749

if.then3:                                         ; preds = %if.end
  call void @llvm.dbg.value(metadata i64 %6, metadata !3729, metadata !DIExpression()), !dbg !3735
  br label %if.end5, !dbg !3750

if.end5:                                          ; preds = %if.then3, %if.end
  %new_count.0 = phi i64 [ %6, %if.then3 ], [ %cond, %if.end ], !dbg !3735
  call void @llvm.dbg.value(metadata i64 %new_count.0, metadata !3729, metadata !DIExpression()), !dbg !3735
  %7 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3751
  %duplicate_block6 = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %7, i64 0, i32 15, !dbg !3752
  %8 = load %struct.basic_block_def* (%struct.basic_block_def*)*, %struct.basic_block_def* (%struct.basic_block_def*)** %duplicate_block6, align 8, !dbg !3752
  %call = tail call %struct.basic_block_def* %8(%struct.basic_block_def* %bb) #6, !dbg !3751
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %call, metadata !3728, metadata !DIExpression()), !dbg !3735
  %tobool7 = icmp eq %struct.basic_block_def* %after, null, !dbg !3753
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !3755

if.then8:                                         ; preds = %if.end5
  %call9 = tail call zeroext i8 @move_block_after(%struct.basic_block_def* %call, %struct.basic_block_def* nonnull %after) #7, !dbg !3756
  br label %if.end10, !dbg !3756

if.end10:                                         ; preds = %if.end5, %if.then8
  %loop_depth = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 10, !dbg !3757
  %9 = load i32, i32* %loop_depth, align 4, !dbg !3757
  %loop_depth11 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 10, !dbg !3758
  store i32 %9, i32* %loop_depth11, align 4, !dbg !3759
  %flags = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 13, !dbg !3760
  %10 = load i32, i32* %flags, align 8, !dbg !3760
  %flags12 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 13, !dbg !3761
  store i32 %10, i32* %flags12, align 8, !dbg !3762
  %11 = bitcast %struct.edge_iterator* %tmp to i8*, !dbg !3763
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3763
  %succs = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 1, !dbg !3763
  %call13 = tail call fastcc { i32, %struct.VEC_edge_gc** } @ei_start_1(%struct.VEC_edge_gc** nonnull %succs) #7, !dbg !3763
  %12 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 0, !dbg !3763
  %13 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 0, !dbg !3763
  store i32 %13, i32* %12, align 8, !dbg !3763
  %14 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %tmp, i64 0, i32 1, !dbg !3763
  %15 = extractvalue { i32, %struct.VEC_edge_gc** } %call13, 1, !dbg !3763
  store %struct.VEC_edge_gc** %15, %struct.VEC_edge_gc*** %14, align 8, !dbg !3763
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %2, i8* nonnull align 8 %11, i64 16, i1 false), !dbg !3763
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #8, !dbg !3763
  %16 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 0, !dbg !3765
  %17 = getelementptr inbounds %struct.edge_iterator, %struct.edge_iterator* %ei, i64 0, i32 1, !dbg !3765
  %mul = mul nsw i64 %new_count.0, 10000, !dbg !3767
  br i1 %tobool, label %if.end10.split.us, label %if.end10.if.end10.split_crit_edge, !dbg !3763

if.end10.if.end10.split_crit_edge:                ; preds = %if.end10
  br label %for.cond, !dbg !3763

if.end10.split.us:                                ; preds = %if.end10
  br label %for.cond.us, !dbg !3763

for.cond.us:                                      ; preds = %for.body.us, %if.end10.split.us
  %18 = load i32, i32* %16, align 8, !dbg !3771
  %19 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.edge_def** %s, metadata !3726, metadata !DIExpression(DW_OP_deref)), !dbg !3735
  %call14.us = call fastcc zeroext i8 @ei_cond(i32 %18, %struct.VEC_edge_gc** %19, %struct.edge_def** nonnull %s) #7, !dbg !3771
  %tobool15.us = icmp eq i8 %call14.us, 0, !dbg !3763
  br i1 %tobool15.us, label %for.end.us-lcssa.us, label %for.body.us, !dbg !3763

for.body.us:                                      ; preds = %for.cond.us
  %20 = load %struct.edge_def*, %struct.edge_def** %s, align 8, !dbg !3772
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3726, metadata !DIExpression()), !dbg !3735
  %dest.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 1, !dbg !3773
  %21 = load %struct.basic_block_def*, %struct.basic_block_def** %dest.us, align 8, !dbg !3773
  call void @llvm.dbg.value(metadata %struct.edge_def* %20, metadata !3726, metadata !DIExpression()), !dbg !3735
  %flags16.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %20, i64 0, i32 7, !dbg !3774
  %22 = load i32, i32* %flags16.us, align 8, !dbg !3774
  %call17.us = call %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def* %call, %struct.basic_block_def* %21, i32 %22) #6, !dbg !3775
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17.us, metadata !3727, metadata !DIExpression()), !dbg !3735
  %23 = load %struct.edge_def*, %struct.edge_def** %s, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3726, metadata !DIExpression()), !dbg !3735
  %probability.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 8, !dbg !3777
  %24 = load i32, i32* %probability.us, align 4, !dbg !3777
  %probability18.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17.us, i64 0, i32 8, !dbg !3778
  store i32 %24, i32* %probability18.us, align 4, !dbg !3779
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3726, metadata !DIExpression()), !dbg !3735
  %count30.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 9, !dbg !3780
  %25 = load i64, i64* %count30.us, align 8, !dbg !3780
  %count31.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17.us, i64 0, i32 9, !dbg !3781
  store i64 %25, i64* %count31.us, align 8, !dbg !3782
  call void @llvm.dbg.value(metadata %struct.edge_def* %23, metadata !3726, metadata !DIExpression()), !dbg !3735
  %aux.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %23, i64 0, i32 3, !dbg !3783
  %26 = bitcast i8** %aux.us to i64*, !dbg !3783
  %27 = load i64, i64* %26, align 8, !dbg !3783
  %aux33.us = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17.us, i64 0, i32 3, !dbg !3784
  %28 = bitcast i8** %aux33.us to i64*, !dbg !3785
  store i64 %27, i64* %28, align 8, !dbg !3785
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3730, metadata !DIExpression(DW_OP_deref)), !dbg !3735
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3771
  br label %for.cond.us, !dbg !3771, !llvm.loop !3786

for.end.us-lcssa.us:                              ; preds = %for.cond.us
  br label %for.end, !dbg !3788

for.cond:                                         ; preds = %if.end32, %if.end10.if.end10.split_crit_edge
  %29 = load i32, i32* %16, align 8, !dbg !3771
  %30 = load %struct.VEC_edge_gc**, %struct.VEC_edge_gc*** %17, align 8, !dbg !3771
  call void @llvm.dbg.value(metadata %struct.edge_def** %s, metadata !3726, metadata !DIExpression(DW_OP_deref)), !dbg !3735
  %call14 = call fastcc zeroext i8 @ei_cond(i32 %29, %struct.VEC_edge_gc** %30, %struct.edge_def** nonnull %s) #7, !dbg !3771
  %tobool15 = icmp eq i8 %call14, 0, !dbg !3763
  br i1 %tobool15, label %for.end.us-lcssa, label %for.body, !dbg !3763

for.body:                                         ; preds = %for.cond
  %31 = load %struct.edge_def*, %struct.edge_def** %s, align 8, !dbg !3772
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3726, metadata !DIExpression()), !dbg !3735
  %dest = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 1, !dbg !3773
  %32 = load %struct.basic_block_def*, %struct.basic_block_def** %dest, align 8, !dbg !3773
  call void @llvm.dbg.value(metadata %struct.edge_def* %31, metadata !3726, metadata !DIExpression()), !dbg !3735
  %flags16 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %31, i64 0, i32 7, !dbg !3774
  %33 = load i32, i32* %flags16, align 8, !dbg !3774
  %call17 = call %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def* %call, %struct.basic_block_def* %32, i32 %33) #6, !dbg !3775
  call void @llvm.dbg.value(metadata %struct.edge_def* %call17, metadata !3727, metadata !DIExpression()), !dbg !3735
  %34 = load %struct.edge_def*, %struct.edge_def** %s, align 8, !dbg !3776
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3726, metadata !DIExpression()), !dbg !3735
  %probability = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 8, !dbg !3777
  %35 = load i32, i32* %probability, align 4, !dbg !3777
  %probability18 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 8, !dbg !3778
  store i32 %35, i32* %probability18, align 4, !dbg !3779
  %36 = load i64, i64* %count2, align 8, !dbg !3790
  %tobool21 = icmp eq i64 %36, 0, !dbg !3791
  br i1 %tobool21, label %if.else, label %if.then22, !dbg !3792

if.then22:                                        ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3726, metadata !DIExpression()), !dbg !3735
  %count23 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 9, !dbg !3793
  %37 = load i64, i64* %count23, align 8, !dbg !3793
  %div = sdiv i64 %mul, %36, !dbg !3794
  %mul25 = mul nsw i64 %37, %div, !dbg !3795
  %div26 = sdiv i64 %mul25, 10000, !dbg !3796
  %count27 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 9, !dbg !3797
  store i64 %div26, i64* %count27, align 8, !dbg !3798
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3726, metadata !DIExpression()), !dbg !3735
  %38 = load i64, i64* %count23, align 8, !dbg !3799
  %sub = sub nsw i64 %38, %div26, !dbg !3799
  store i64 %sub, i64* %count23, align 8, !dbg !3799
  br label %if.end32, !dbg !3800

if.else:                                          ; preds = %for.body
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3726, metadata !DIExpression()), !dbg !3735
  %count30 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 9, !dbg !3780
  %39 = load i64, i64* %count30, align 8, !dbg !3780
  %count31 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 9, !dbg !3781
  store i64 %39, i64* %count31, align 8, !dbg !3782
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then22
  call void @llvm.dbg.value(metadata %struct.edge_def* %34, metadata !3726, metadata !DIExpression()), !dbg !3735
  %aux = getelementptr inbounds %struct.edge_def, %struct.edge_def* %34, i64 0, i32 3, !dbg !3783
  %40 = bitcast i8** %aux to i64*, !dbg !3783
  %41 = load i64, i64* %40, align 8, !dbg !3783
  %aux33 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %call17, i64 0, i32 3, !dbg !3784
  %42 = bitcast i8** %aux33 to i64*, !dbg !3785
  store i64 %41, i64* %42, align 8, !dbg !3785
  call void @llvm.dbg.value(metadata %struct.edge_iterator* %ei, metadata !3730, metadata !DIExpression(DW_OP_deref)), !dbg !3735
  call fastcc void @ei_next(%struct.edge_iterator* nonnull %ei) #7, !dbg !3771
  br label %for.cond, !dbg !3771, !llvm.loop !3786

for.end.us-lcssa:                                 ; preds = %for.cond
  br label %for.end, !dbg !3788

for.end:                                          ; preds = %for.end.us-lcssa.us, %for.end.us-lcssa
  br i1 %tobool, label %if.else62, label %if.then35, !dbg !3801

if.then35:                                        ; preds = %for.end
  %count36 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 8, !dbg !3802
  store i64 %new_count.0, i64* %count36, align 8, !dbg !3804
  %43 = load i64, i64* %count2, align 8, !dbg !3805
  %sub38 = sub nsw i64 %43, %new_count.0, !dbg !3805
  store i64 %sub38, i64* %count2, align 8, !dbg !3805
  %src = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 0, !dbg !3806
  %44 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3806
  %frequency = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %44, i64 0, i32 11, !dbg !3806
  %45 = load i32, i32* %frequency, align 8, !dbg !3806
  %probability39 = getelementptr inbounds %struct.edge_def, %struct.edge_def* %e, i64 0, i32 8, !dbg !3806
  %46 = load i32, i32* %probability39, align 4, !dbg !3806
  %mul40 = mul nsw i32 %45, %46, !dbg !3806
  %add = add nsw i32 %mul40, 5000, !dbg !3806
  %div41 = sdiv i32 %add, 10000, !dbg !3806
  %frequency42 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3807
  store i32 %div41, i32* %frequency42, align 8, !dbg !3808
  %47 = load %struct.basic_block_def*, %struct.basic_block_def** %src, align 8, !dbg !3809
  %frequency44 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %47, i64 0, i32 11, !dbg !3809
  %48 = load i32, i32* %frequency44, align 8, !dbg !3809
  %49 = load i32, i32* %probability39, align 4, !dbg !3809
  %mul46 = mul nsw i32 %48, %49, !dbg !3809
  %add47 = add nsw i32 %mul46, 5000, !dbg !3809
  %div48 = sdiv i32 %add47, 10000, !dbg !3809
  %frequency49 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3810
  %50 = load i32, i32* %frequency49, align 8, !dbg !3811
  %sub50 = sub nsw i32 %50, %div48, !dbg !3811
  store i32 %sub50, i32* %frequency49, align 8, !dbg !3811
  %call51 = call %struct.basic_block_def* @redirect_edge_and_branch_force(%struct.edge_def* nonnull %e, %struct.basic_block_def* %call) #7, !dbg !3812
  %51 = load i64, i64* %count2, align 8, !dbg !3813
  %cmp53 = icmp slt i64 %51, 0, !dbg !3815
  br i1 %cmp53, label %if.then54, label %if.end56, !dbg !3816

if.then54:                                        ; preds = %if.then35
  store i64 0, i64* %count2, align 8, !dbg !3817
  br label %if.end56, !dbg !3818

if.end56:                                         ; preds = %if.then54, %if.then35
  %52 = load i32, i32* %frequency49, align 8, !dbg !3819
  %cmp58 = icmp slt i32 %52, 0, !dbg !3821
  br i1 %cmp58, label %if.then59, label %if.end67, !dbg !3822

if.then59:                                        ; preds = %if.end56
  store i32 0, i32* %frequency49, align 8, !dbg !3823
  br label %if.end67, !dbg !3824

if.else62:                                        ; preds = %for.end
  %53 = load i64, i64* %count2, align 8, !dbg !3825
  %count64 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 8, !dbg !3827
  store i64 %53, i64* %count64, align 8, !dbg !3828
  %frequency65 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 11, !dbg !3829
  %54 = load i32, i32* %frequency65, align 8, !dbg !3829
  %frequency66 = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %call, i64 0, i32 11, !dbg !3830
  store i32 %54, i32* %frequency66, align 8, !dbg !3831
  br label %if.end67

if.end67:                                         ; preds = %if.end56, %if.then59, %if.else62
  call void @set_bb_original(%struct.basic_block_def* %call, %struct.basic_block_def* %bb) #6, !dbg !3832
  call void @set_bb_copy(%struct.basic_block_def* %bb, %struct.basic_block_def* %call) #6, !dbg !3833
  %55 = load %struct.function*, %struct.function** @cfun, align 8, !dbg !3834
  %x_current_loops = getelementptr inbounds %struct.function, %struct.function* %55, i64 0, i32 4, !dbg !3834
  %56 = load %struct.loops*, %struct.loops** %x_current_loops, align 8, !dbg !3834
  %cmp68 = icmp eq %struct.loops* %56, null, !dbg !3835
  br i1 %cmp68, label %if.end76, label %if.then69, !dbg !3836

if.then69:                                        ; preds = %if.end67
  %loop_father = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 3, !dbg !3837
  %57 = load %struct.loop*, %struct.loop** %loop_father, align 8, !dbg !3837
  call void @llvm.dbg.value(metadata %struct.loop* %57, metadata !3731, metadata !DIExpression()), !dbg !3838
  %call70 = call %struct.loop* @get_loop_copy(%struct.loop* %57) #6, !dbg !3839
  call void @llvm.dbg.value(metadata %struct.loop* %call70, metadata !3734, metadata !DIExpression()), !dbg !3838
  %tobool71 = icmp eq %struct.loop* %call70, null, !dbg !3840
  %call70. = select i1 %tobool71, %struct.loop* %57, %struct.loop* %call70, !dbg !3840
  call void @add_bb_to_loop(%struct.basic_block_def* %call, %struct.loop* %call70.) #6, !dbg !3841
  br label %if.end76, !dbg !3842

if.end76:                                         ; preds = %if.end67, %if.then69
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #8, !dbg !3843
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #8, !dbg !3843
  ret %struct.basic_block_def* %call, !dbg !3844
}

declare dso_local %struct.edge_def* @unchecked_make_edge(%struct.basic_block_def*, %struct.basic_block_def*, i32) local_unnamed_addr #2

declare dso_local void @set_bb_original(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local void @set_bb_copy(%struct.basic_block_def*, %struct.basic_block_def*) local_unnamed_addr #2

declare dso_local %struct.loop* @get_loop_copy(%struct.loop*) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @block_ends_with_call_p(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3845 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3847, metadata !DIExpression()), !dbg !3848
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3849
  %block_ends_with_call_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 19, !dbg !3851
  %1 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %block_ends_with_call_p, align 8, !dbg !3851
  %tobool = icmp eq i8 (%struct.basic_block_def*)* %1, null, !dbg !3849
  br i1 %tobool, label %if.then, label %if.end, !dbg !3852

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3853
  %2 = load i8*, i8** %name, align 8, !dbg !3853
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.45, i64 0, i64 0), i8* %2) #6, !dbg !3854
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3855
  %block_ends_with_call_p1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 19, !dbg !3848
  %.pre1 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %block_ends_with_call_p1.phi.trans.insert, align 8, !dbg !3856
  br label %if.end, !dbg !3854

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8 (%struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3856
  %call = tail call zeroext i8 %3(%struct.basic_block_def* %bb) #6, !dbg !3857
  ret i8 %call, !dbg !3858
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @block_ends_with_condjump_p(%struct.basic_block_def* %bb) local_unnamed_addr #5 !dbg !3859 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3861, metadata !DIExpression()), !dbg !3862
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3863
  %block_ends_with_condjump_p = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 20, !dbg !3865
  %1 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %block_ends_with_condjump_p, align 8, !dbg !3865
  %tobool = icmp eq i8 (%struct.basic_block_def*)* %1, null, !dbg !3863
  br i1 %tobool, label %if.then, label %if.end, !dbg !3866

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3867
  %2 = load i8*, i8** %name, align 8, !dbg !3867
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.46, i64 0, i64 0), i8* %2) #6, !dbg !3868
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3869
  %block_ends_with_condjump_p1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 20, !dbg !3862
  %.pre1 = load i8 (%struct.basic_block_def*)*, i8 (%struct.basic_block_def*)** %block_ends_with_condjump_p1.phi.trans.insert, align 8, !dbg !3870
  br label %if.end, !dbg !3868

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i8 (%struct.basic_block_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3870
  %call = tail call zeroext i8 %3(%struct.basic_block_def* %bb) #6, !dbg !3871
  ret i8 %call, !dbg !3872
}

; Function Attrs: nounwind uwtable
define dso_local i32 @flow_call_edges_add(%struct.simple_bitmap_def* %blocks) local_unnamed_addr #5 !dbg !3873 {
entry:
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %blocks, metadata !3875, metadata !DIExpression()), !dbg !3876
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3877
  %flow_call_edges_add = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 21, !dbg !3879
  %1 = load i32 (%struct.simple_bitmap_def*)*, i32 (%struct.simple_bitmap_def*)** %flow_call_edges_add, align 8, !dbg !3879
  %tobool = icmp eq i32 (%struct.simple_bitmap_def*)* %1, null, !dbg !3877
  br i1 %tobool, label %if.then, label %if.end, !dbg !3880

if.then:                                          ; preds = %entry
  %name = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 0, !dbg !3881
  %2 = load i8*, i8** %name, align 8, !dbg !3881
  tail call void (i8*, ...) @internal_error(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.47, i64 0, i64 0), i8* %2) #6, !dbg !3882
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3883
  %flow_call_edges_add1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 21, !dbg !3876
  %.pre1 = load i32 (%struct.simple_bitmap_def*)*, i32 (%struct.simple_bitmap_def*)** %flow_call_edges_add1.phi.trans.insert, align 8, !dbg !3884
  br label %if.end, !dbg !3882

if.end:                                           ; preds = %entry, %if.then
  %3 = phi i32 (%struct.simple_bitmap_def*)* [ %1, %entry ], [ %.pre1, %if.then ], !dbg !3884
  %call = tail call i32 %3(%struct.simple_bitmap_def* %blocks) #6, !dbg !3885
  ret i32 %call, !dbg !3886
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_on_growing_pred(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !3887 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3889, metadata !DIExpression()), !dbg !3890
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3891
  %execute_on_growing_pred = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 22, !dbg !3893
  %1 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %execute_on_growing_pred, align 8, !dbg !3893
  %tobool = icmp eq void (%struct.edge_def*)* %1, null, !dbg !3891
  br i1 %tobool, label %if.end, label %if.then, !dbg !3894

if.then:                                          ; preds = %entry
  tail call void %1(%struct.edge_def* %e) #6, !dbg !3895
  br label %if.end, !dbg !3895

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3896
}

; Function Attrs: nounwind uwtable
define dso_local void @execute_on_shrinking_pred(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !3897 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3899, metadata !DIExpression()), !dbg !3900
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3901
  %execute_on_shrinking_pred = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 23, !dbg !3903
  %1 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %execute_on_shrinking_pred, align 8, !dbg !3903
  %tobool = icmp eq void (%struct.edge_def*)* %1, null, !dbg !3901
  br i1 %tobool, label %if.end, label %if.then, !dbg !3904

if.then:                                          ; preds = %entry
  tail call void %1(%struct.edge_def* %e) #6, !dbg !3905
  br label %if.end, !dbg !3905

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3906
}

; Function Attrs: nounwind uwtable
define dso_local void @lv_flush_pending_stmts(%struct.edge_def* %e) local_unnamed_addr #5 !dbg !3907 {
entry:
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3909, metadata !DIExpression()), !dbg !3910
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3911
  %flush_pending_stmts = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 28, !dbg !3913
  %1 = load void (%struct.edge_def*)*, void (%struct.edge_def*)** %flush_pending_stmts, align 8, !dbg !3913
  %tobool = icmp eq void (%struct.edge_def*)* %1, null, !dbg !3911
  br i1 %tobool, label %if.end, label %if.then, !dbg !3914

if.then:                                          ; preds = %entry
  tail call void %1(%struct.edge_def* %e) #6, !dbg !3915
  br label %if.end, !dbg !3915

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3916
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i8 @cfg_hook_duplicate_loop_to_header_edge(%struct.loop* %loop, %struct.edge_def* %e, i32 %ndupl, %struct.simple_bitmap_def* %wont_exit, %struct.edge_def* %orig, %struct.VEC_edge_heap** %to_remove, i32 %flags) local_unnamed_addr #5 !dbg !3917 {
entry:
  call void @llvm.dbg.value(metadata %struct.loop* %loop, metadata !3919, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3920, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %ndupl, metadata !3921, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata %struct.simple_bitmap_def* %wont_exit, metadata !3922, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata %struct.edge_def* %orig, metadata !3923, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata %struct.VEC_edge_heap** %to_remove, metadata !3924, metadata !DIExpression()), !dbg !3926
  call void @llvm.dbg.value(metadata i32 %flags, metadata !3925, metadata !DIExpression()), !dbg !3926
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3927
  %cfg_hook_duplicate_loop_to_header_edge = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 24, !dbg !3927
  %1 = load i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)*, i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)** %cfg_hook_duplicate_loop_to_header_edge, align 8, !dbg !3927
  %tobool = icmp eq i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)* %1, null, !dbg !3927
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3927

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1062, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3927
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3928
  %cfg_hook_duplicate_loop_to_header_edge1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 24, !dbg !3926
  %.pre1 = load i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)*, i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)** %cfg_hook_duplicate_loop_to_header_edge1.phi.trans.insert, align 8, !dbg !3929
  br label %cond.end, !dbg !3927

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi i8 (%struct.loop*, %struct.edge_def*, i32, %struct.simple_bitmap_def*, %struct.edge_def*, %struct.VEC_edge_heap**, i32)* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !3929
  %call = tail call zeroext i8 %2(%struct.loop* %loop, %struct.edge_def* %e, i32 %ndupl, %struct.simple_bitmap_def* %wont_exit, %struct.edge_def* %orig, %struct.VEC_edge_heap** %to_remove, i32 %flags) #6, !dbg !3928
  ret i8 %call, !dbg !3930
}

; Function Attrs: nounwind uwtable
define dso_local void @extract_cond_bb_edges(%struct.basic_block_def* %b, %struct.edge_def** %e1, %struct.edge_def** %e2) local_unnamed_addr #5 !dbg !3931 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %b, metadata !3933, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata %struct.edge_def** %e1, metadata !3934, metadata !DIExpression()), !dbg !3936
  call void @llvm.dbg.value(metadata %struct.edge_def** %e2, metadata !3935, metadata !DIExpression()), !dbg !3936
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3937
  %extract_cond_bb_edges = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 27, !dbg !3937
  %1 = load void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)*, void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)** %extract_cond_bb_edges, align 8, !dbg !3937
  %tobool = icmp eq void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)* %1, null, !dbg !3937
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3937

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1076, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3937
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3938
  %extract_cond_bb_edges1.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 27, !dbg !3936
  %.pre1 = load void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)*, void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)** %extract_cond_bb_edges1.phi.trans.insert, align 8, !dbg !3939
  br label %cond.end, !dbg !3937

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi void (%struct.basic_block_def*, %struct.edge_def**, %struct.edge_def**)* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !3939
  tail call void %2(%struct.basic_block_def* %b, %struct.edge_def** %e1, %struct.edge_def** %e2) #6, !dbg !3938
  ret void, !dbg !3940
}

; Function Attrs: nounwind uwtable
define dso_local void @lv_adjust_loop_header_phi(%struct.basic_block_def* %first, %struct.basic_block_def* %second, %struct.basic_block_def* %new_block, %struct.edge_def* %e) local_unnamed_addr #5 !dbg !3941 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first, metadata !3943, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %second, metadata !3944, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_block, metadata !3945, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.value(metadata %struct.edge_def* %e, metadata !3946, metadata !DIExpression()), !dbg !3947
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3948
  %lv_adjust_loop_header_phi = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 26, !dbg !3950
  %1 = load void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def*)*, void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def*)** %lv_adjust_loop_header_phi, align 8, !dbg !3950
  %tobool = icmp eq void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, %struct.edge_def*)* %1, null, !dbg !3948
  br i1 %tobool, label %if.end, label %if.then, !dbg !3951

if.then:                                          ; preds = %entry
  tail call void %1(%struct.basic_block_def* %first, %struct.basic_block_def* %second, %struct.basic_block_def* %new_block, %struct.edge_def* %e) #6, !dbg !3952
  br label %if.end, !dbg !3952

if.end:                                           ; preds = %entry, %if.then
  ret void, !dbg !3953
}

; Function Attrs: nounwind uwtable
define dso_local void @lv_add_condition_to_bb(%struct.basic_block_def* %first, %struct.basic_block_def* %second, %struct.basic_block_def* %new_block, i8* %cond) local_unnamed_addr #5 !dbg !3954 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %first, metadata !3956, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %second, metadata !3957, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %new_block, metadata !3958, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.value(metadata i8* %cond, metadata !3959, metadata !DIExpression()), !dbg !3960
  %0 = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3961
  %lv_add_condition_to_bb = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %0, i64 0, i32 25, !dbg !3961
  %1 = load void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)** %lv_add_condition_to_bb, align 8, !dbg !3961
  %tobool = icmp eq void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)* %1, null, !dbg !3961
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3961

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 1097, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3961
  %.pre = load %struct.cfg_hooks*, %struct.cfg_hooks** @cfg_hooks, align 8, !dbg !3962
  %lv_add_condition_to_bb2.phi.trans.insert = getelementptr inbounds %struct.cfg_hooks, %struct.cfg_hooks* %.pre, i64 0, i32 25, !dbg !3960
  %.pre1 = load void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)*, void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)** %lv_add_condition_to_bb2.phi.trans.insert, align 8, !dbg !3963
  br label %cond.end, !dbg !3961

cond.end:                                         ; preds = %entry, %cond.true
  %2 = phi void (%struct.basic_block_def*, %struct.basic_block_def*, %struct.basic_block_def*, i8*)* [ %1, %entry ], [ %.pre1, %cond.true ], !dbg !3963
  tail call void %2(%struct.basic_block_def* %first, %struct.basic_block_def* %second, %struct.basic_block_def* %new_block, i8* %cond) #6, !dbg !3962
  ret void, !dbg !3964
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @ei_end_p(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3965 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3970
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3970
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3970

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3970
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3970
  br label %cond.end, !dbg !3970

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3970
  %call2 = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3970
  %cmp = icmp eq i32 %call2, %i.coerce0, !dbg !3971
  %conv3 = zext i1 %cmp to i8, !dbg !3972
  ret i8 %conv3, !dbg !3973
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.edge_def* @ei_edge(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3974 {
entry:
  %call = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3977
  %tobool = icmp eq %struct.VEC_edge_gc* %call, null, !dbg !3977
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3977

cond.true:                                        ; preds = %entry
  %call1 = tail call fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) #7, !dbg !3977
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %call1, i64 0, i32 0, !dbg !3977
  br label %cond.end, !dbg !3977

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3977
  %call2 = tail call fastcc %struct.edge_def* @VEC_edge_base_index(%struct.VEC_edge_base* %cond, i32 %i.coerce0) #7, !dbg !3977
  ret %struct.edge_def* %call2, !dbg !3978
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.VEC_edge_gc* @ei_container(i32 %i.coerce0, %struct.VEC_edge_gc** %i.coerce1) unnamed_addr #0 !dbg !3979 {
entry:
  %tobool = icmp eq %struct.VEC_edge_gc** %i.coerce1, null, !dbg !3984
  br i1 %tobool, label %cond.true, label %cond.end, !dbg !3984

cond.true:                                        ; preds = %entry
  tail call void @fancy_abort(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.48, i64 0, i64 0), i32 687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !3984
  br label %cond.end, !dbg !3984

cond.end:                                         ; preds = %entry, %cond.true
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %i.coerce1, align 8, !dbg !3985
  ret %struct.VEC_edge_gc* %0, !dbg !3986
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc zeroext i8 @single_pred_p(%struct.basic_block_def* %bb) unnamed_addr #0 !dbg !3987 {
entry:
  call void @llvm.dbg.value(metadata %struct.basic_block_def* %bb, metadata !3989, metadata !DIExpression()), !dbg !3990
  %preds = getelementptr inbounds %struct.basic_block_def, %struct.basic_block_def* %bb, i64 0, i32 0, !dbg !3991
  %0 = load %struct.VEC_edge_gc*, %struct.VEC_edge_gc** %preds, align 8, !dbg !3991
  %tobool = icmp eq %struct.VEC_edge_gc* %0, null, !dbg !3991
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !3991

cond.true:                                        ; preds = %entry
  %base = getelementptr inbounds %struct.VEC_edge_gc, %struct.VEC_edge_gc* %0, i64 0, i32 0, !dbg !3991
  br label %cond.end, !dbg !3991

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi %struct.VEC_edge_base* [ %base, %cond.true ], [ null, %entry ], !dbg !3991
  %call = tail call fastcc i32 @VEC_edge_base_length(%struct.VEC_edge_base* %cond) #7, !dbg !3991
  %cmp = icmp eq i32 %call, 1, !dbg !3992
  %conv2 = zext i1 %cmp to i8, !dbg !3991
  ret i8 %conv2, !dbg !3993
}

declare dso_local i8* @vec_heap_p_reserve_exact(i8*, i32) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @VEC_loop_p_base_length(%struct.VEC_loop_p_base* %vec_) unnamed_addr #0 !dbg !3994 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4000, metadata !DIExpression()), !dbg !4001
  %tobool = icmp eq %struct.VEC_loop_p_base* %vec_, null, !dbg !4002
  br i1 %tobool, label %cond.end, label %cond.true, !dbg !4002

cond.true:                                        ; preds = %entry
  %num = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 0, !dbg !4002
  %0 = load i32, i32* %num, align 8, !dbg !4002
  br label %cond.end, !dbg !4002

cond.end:                                         ; preds = %entry, %cond.true
  %cond = phi i32 [ %0, %cond.true ], [ 0, %entry ], !dbg !4002
  ret i32 %cond, !dbg !4002
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc %struct.loop* @VEC_loop_p_base_index(%struct.VEC_loop_p_base* %vec_, i32 %ix_) unnamed_addr #0 !dbg !4003 {
entry:
  call void @llvm.dbg.value(metadata %struct.VEC_loop_p_base* %vec_, metadata !4007, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.value(metadata i32 %ix_, metadata !4008, metadata !DIExpression()), !dbg !4009
  br label %land.end, !dbg !4010

land.rhs:                                         ; No predecessors!
  br label %land.end

land.end:                                         ; preds = %entry, %land.rhs
  %idxprom = zext i32 %ix_ to i64, !dbg !4010
  %arrayidx = getelementptr inbounds %struct.VEC_loop_p_base, %struct.VEC_loop_p_base* %vec_, i64 0, i32 2, i64 %idxprom, !dbg !4010
  %0 = load %struct.loop*, %struct.loop** %arrayidx, align 8, !dbg !4010
  ret %struct.loop* %0, !dbg !4010
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

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1972, !1973, !1974}
!llvm.ident = !{!1975}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cfg_hooks", scope: !2, file: !3, line: 35, type: !1799, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !428, globals: !1798, nameTableKind: None)
!3 = !DIFile(filename: "cfghooks.c", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!4 = !{!5, !134, !140, !145, !154, !158, !163, !182, !189, !196, !390, !422}
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
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lpt_dec", file: !146, line: 31, baseType: !7, size: 32, elements: !147)
!146 = !DIFile(filename: "./cfgloop.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!147 = !{!148, !149, !150, !151, !152, !153}
!148 = !DIEnumerator(name: "LPT_NONE", value: 0, isUnsigned: true)
!149 = !DIEnumerator(name: "LPT_PEEL_COMPLETELY", value: 1, isUnsigned: true)
!150 = !DIEnumerator(name: "LPT_PEEL_SIMPLE", value: 2, isUnsigned: true)
!151 = !DIEnumerator(name: "LPT_UNROLL_CONSTANT", value: 3, isUnsigned: true)
!152 = !DIEnumerator(name: "LPT_UNROLL_RUNTIME", value: 4, isUnsigned: true)
!153 = !DIEnumerator(name: "LPT_UNROLL_STUPID", value: 5, isUnsigned: true)
!154 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "loop_estimation", file: !146, line: 91, baseType: !7, size: 32, elements: !155)
!155 = !{!156, !157}
!156 = !DIEnumerator(name: "EST_NOT_COMPUTED", value: 0, isUnsigned: true)
!157 = !DIEnumerator(name: "EST_AVAILABLE", value: 1, isUnsigned: true)
!158 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "calling_abi", file: !159, line: 474, baseType: !7, size: 32, elements: !160)
!159 = !DIFile(filename: "./config/i386/i386.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!160 = !{!161, !162}
!161 = !DIEnumerator(name: "SYSV_ABI", value: 0, isUnsigned: true)
!162 = !DIEnumerator(name: "MS_ABI", value: 1, isUnsigned: true)
!163 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_code", file: !164, line: 280, baseType: !7, size: 32, elements: !165)
!164 = !DIFile(filename: "./tree.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!165 = !{!166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181}
!166 = !DIEnumerator(name: "OMP_CLAUSE_ERROR", value: 0, isUnsigned: true)
!167 = !DIEnumerator(name: "OMP_CLAUSE_PRIVATE", value: 1, isUnsigned: true)
!168 = !DIEnumerator(name: "OMP_CLAUSE_SHARED", value: 2, isUnsigned: true)
!169 = !DIEnumerator(name: "OMP_CLAUSE_FIRSTPRIVATE", value: 3, isUnsigned: true)
!170 = !DIEnumerator(name: "OMP_CLAUSE_LASTPRIVATE", value: 4, isUnsigned: true)
!171 = !DIEnumerator(name: "OMP_CLAUSE_REDUCTION", value: 5, isUnsigned: true)
!172 = !DIEnumerator(name: "OMP_CLAUSE_COPYIN", value: 6, isUnsigned: true)
!173 = !DIEnumerator(name: "OMP_CLAUSE_COPYPRIVATE", value: 7, isUnsigned: true)
!174 = !DIEnumerator(name: "OMP_CLAUSE_IF", value: 8, isUnsigned: true)
!175 = !DIEnumerator(name: "OMP_CLAUSE_NUM_THREADS", value: 9, isUnsigned: true)
!176 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE", value: 10, isUnsigned: true)
!177 = !DIEnumerator(name: "OMP_CLAUSE_NOWAIT", value: 11, isUnsigned: true)
!178 = !DIEnumerator(name: "OMP_CLAUSE_ORDERED", value: 12, isUnsigned: true)
!179 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT", value: 13, isUnsigned: true)
!180 = !DIEnumerator(name: "OMP_CLAUSE_COLLAPSE", value: 14, isUnsigned: true)
!181 = !DIEnumerator(name: "OMP_CLAUSE_UNTIED", value: 15, isUnsigned: true)
!182 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_default_kind", file: !164, line: 1817, baseType: !7, size: 32, elements: !183)
!183 = !{!184, !185, !186, !187, !188}
!184 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_UNSPECIFIED", value: 0, isUnsigned: true)
!185 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_SHARED", value: 1, isUnsigned: true)
!186 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_NONE", value: 2, isUnsigned: true)
!187 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_PRIVATE", value: 3, isUnsigned: true)
!188 = !DIEnumerator(name: "OMP_CLAUSE_DEFAULT_FIRSTPRIVATE", value: 4, isUnsigned: true)
!189 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "omp_clause_schedule_kind", file: !164, line: 1805, baseType: !7, size: 32, elements: !190)
!190 = !{!191, !192, !193, !194, !195}
!191 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_STATIC", value: 0, isUnsigned: true)
!192 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_DYNAMIC", value: 1, isUnsigned: true)
!193 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_GUIDED", value: 2, isUnsigned: true)
!194 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_AUTO", value: 3, isUnsigned: true)
!195 = !DIEnumerator(name: "OMP_CLAUSE_SCHEDULE_RUNTIME", value: 4, isUnsigned: true)
!196 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tree_code", file: !164, line: 39, baseType: !7, size: 32, elements: !197)
!197 = !{!198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389}
!198 = !DIEnumerator(name: "ERROR_MARK", value: 0, isUnsigned: true)
!199 = !DIEnumerator(name: "IDENTIFIER_NODE", value: 1, isUnsigned: true)
!200 = !DIEnumerator(name: "TREE_LIST", value: 2, isUnsigned: true)
!201 = !DIEnumerator(name: "TREE_VEC", value: 3, isUnsigned: true)
!202 = !DIEnumerator(name: "BLOCK", value: 4, isUnsigned: true)
!203 = !DIEnumerator(name: "OFFSET_TYPE", value: 5, isUnsigned: true)
!204 = !DIEnumerator(name: "ENUMERAL_TYPE", value: 6, isUnsigned: true)
!205 = !DIEnumerator(name: "BOOLEAN_TYPE", value: 7, isUnsigned: true)
!206 = !DIEnumerator(name: "INTEGER_TYPE", value: 8, isUnsigned: true)
!207 = !DIEnumerator(name: "REAL_TYPE", value: 9, isUnsigned: true)
!208 = !DIEnumerator(name: "POINTER_TYPE", value: 10, isUnsigned: true)
!209 = !DIEnumerator(name: "FIXED_POINT_TYPE", value: 11, isUnsigned: true)
!210 = !DIEnumerator(name: "REFERENCE_TYPE", value: 12, isUnsigned: true)
!211 = !DIEnumerator(name: "COMPLEX_TYPE", value: 13, isUnsigned: true)
!212 = !DIEnumerator(name: "VECTOR_TYPE", value: 14, isUnsigned: true)
!213 = !DIEnumerator(name: "ARRAY_TYPE", value: 15, isUnsigned: true)
!214 = !DIEnumerator(name: "RECORD_TYPE", value: 16, isUnsigned: true)
!215 = !DIEnumerator(name: "UNION_TYPE", value: 17, isUnsigned: true)
!216 = !DIEnumerator(name: "QUAL_UNION_TYPE", value: 18, isUnsigned: true)
!217 = !DIEnumerator(name: "VOID_TYPE", value: 19, isUnsigned: true)
!218 = !DIEnumerator(name: "FUNCTION_TYPE", value: 20, isUnsigned: true)
!219 = !DIEnumerator(name: "METHOD_TYPE", value: 21, isUnsigned: true)
!220 = !DIEnumerator(name: "LANG_TYPE", value: 22, isUnsigned: true)
!221 = !DIEnumerator(name: "INTEGER_CST", value: 23, isUnsigned: true)
!222 = !DIEnumerator(name: "REAL_CST", value: 24, isUnsigned: true)
!223 = !DIEnumerator(name: "FIXED_CST", value: 25, isUnsigned: true)
!224 = !DIEnumerator(name: "COMPLEX_CST", value: 26, isUnsigned: true)
!225 = !DIEnumerator(name: "VECTOR_CST", value: 27, isUnsigned: true)
!226 = !DIEnumerator(name: "STRING_CST", value: 28, isUnsigned: true)
!227 = !DIEnumerator(name: "FUNCTION_DECL", value: 29, isUnsigned: true)
!228 = !DIEnumerator(name: "LABEL_DECL", value: 30, isUnsigned: true)
!229 = !DIEnumerator(name: "FIELD_DECL", value: 31, isUnsigned: true)
!230 = !DIEnumerator(name: "VAR_DECL", value: 32, isUnsigned: true)
!231 = !DIEnumerator(name: "CONST_DECL", value: 33, isUnsigned: true)
!232 = !DIEnumerator(name: "PARM_DECL", value: 34, isUnsigned: true)
!233 = !DIEnumerator(name: "TYPE_DECL", value: 35, isUnsigned: true)
!234 = !DIEnumerator(name: "RESULT_DECL", value: 36, isUnsigned: true)
!235 = !DIEnumerator(name: "DEBUG_EXPR_DECL", value: 37, isUnsigned: true)
!236 = !DIEnumerator(name: "NAMESPACE_DECL", value: 38, isUnsigned: true)
!237 = !DIEnumerator(name: "IMPORTED_DECL", value: 39, isUnsigned: true)
!238 = !DIEnumerator(name: "TRANSLATION_UNIT_DECL", value: 40, isUnsigned: true)
!239 = !DIEnumerator(name: "COMPONENT_REF", value: 41, isUnsigned: true)
!240 = !DIEnumerator(name: "BIT_FIELD_REF", value: 42, isUnsigned: true)
!241 = !DIEnumerator(name: "REALPART_EXPR", value: 43, isUnsigned: true)
!242 = !DIEnumerator(name: "IMAGPART_EXPR", value: 44, isUnsigned: true)
!243 = !DIEnumerator(name: "ARRAY_REF", value: 45, isUnsigned: true)
!244 = !DIEnumerator(name: "ARRAY_RANGE_REF", value: 46, isUnsigned: true)
!245 = !DIEnumerator(name: "INDIRECT_REF", value: 47, isUnsigned: true)
!246 = !DIEnumerator(name: "ALIGN_INDIRECT_REF", value: 48, isUnsigned: true)
!247 = !DIEnumerator(name: "MISALIGNED_INDIRECT_REF", value: 49, isUnsigned: true)
!248 = !DIEnumerator(name: "OBJ_TYPE_REF", value: 50, isUnsigned: true)
!249 = !DIEnumerator(name: "CONSTRUCTOR", value: 51, isUnsigned: true)
!250 = !DIEnumerator(name: "COMPOUND_EXPR", value: 52, isUnsigned: true)
!251 = !DIEnumerator(name: "MODIFY_EXPR", value: 53, isUnsigned: true)
!252 = !DIEnumerator(name: "INIT_EXPR", value: 54, isUnsigned: true)
!253 = !DIEnumerator(name: "TARGET_EXPR", value: 55, isUnsigned: true)
!254 = !DIEnumerator(name: "COND_EXPR", value: 56, isUnsigned: true)
!255 = !DIEnumerator(name: "VEC_COND_EXPR", value: 57, isUnsigned: true)
!256 = !DIEnumerator(name: "BIND_EXPR", value: 58, isUnsigned: true)
!257 = !DIEnumerator(name: "CALL_EXPR", value: 59, isUnsigned: true)
!258 = !DIEnumerator(name: "WITH_CLEANUP_EXPR", value: 60, isUnsigned: true)
!259 = !DIEnumerator(name: "CLEANUP_POINT_EXPR", value: 61, isUnsigned: true)
!260 = !DIEnumerator(name: "PLACEHOLDER_EXPR", value: 62, isUnsigned: true)
!261 = !DIEnumerator(name: "PLUS_EXPR", value: 63, isUnsigned: true)
!262 = !DIEnumerator(name: "MINUS_EXPR", value: 64, isUnsigned: true)
!263 = !DIEnumerator(name: "MULT_EXPR", value: 65, isUnsigned: true)
!264 = !DIEnumerator(name: "POINTER_PLUS_EXPR", value: 66, isUnsigned: true)
!265 = !DIEnumerator(name: "TRUNC_DIV_EXPR", value: 67, isUnsigned: true)
!266 = !DIEnumerator(name: "CEIL_DIV_EXPR", value: 68, isUnsigned: true)
!267 = !DIEnumerator(name: "FLOOR_DIV_EXPR", value: 69, isUnsigned: true)
!268 = !DIEnumerator(name: "ROUND_DIV_EXPR", value: 70, isUnsigned: true)
!269 = !DIEnumerator(name: "TRUNC_MOD_EXPR", value: 71, isUnsigned: true)
!270 = !DIEnumerator(name: "CEIL_MOD_EXPR", value: 72, isUnsigned: true)
!271 = !DIEnumerator(name: "FLOOR_MOD_EXPR", value: 73, isUnsigned: true)
!272 = !DIEnumerator(name: "ROUND_MOD_EXPR", value: 74, isUnsigned: true)
!273 = !DIEnumerator(name: "RDIV_EXPR", value: 75, isUnsigned: true)
!274 = !DIEnumerator(name: "EXACT_DIV_EXPR", value: 76, isUnsigned: true)
!275 = !DIEnumerator(name: "FIX_TRUNC_EXPR", value: 77, isUnsigned: true)
!276 = !DIEnumerator(name: "FLOAT_EXPR", value: 78, isUnsigned: true)
!277 = !DIEnumerator(name: "NEGATE_EXPR", value: 79, isUnsigned: true)
!278 = !DIEnumerator(name: "MIN_EXPR", value: 80, isUnsigned: true)
!279 = !DIEnumerator(name: "MAX_EXPR", value: 81, isUnsigned: true)
!280 = !DIEnumerator(name: "ABS_EXPR", value: 82, isUnsigned: true)
!281 = !DIEnumerator(name: "LSHIFT_EXPR", value: 83, isUnsigned: true)
!282 = !DIEnumerator(name: "RSHIFT_EXPR", value: 84, isUnsigned: true)
!283 = !DIEnumerator(name: "LROTATE_EXPR", value: 85, isUnsigned: true)
!284 = !DIEnumerator(name: "RROTATE_EXPR", value: 86, isUnsigned: true)
!285 = !DIEnumerator(name: "BIT_IOR_EXPR", value: 87, isUnsigned: true)
!286 = !DIEnumerator(name: "BIT_XOR_EXPR", value: 88, isUnsigned: true)
!287 = !DIEnumerator(name: "BIT_AND_EXPR", value: 89, isUnsigned: true)
!288 = !DIEnumerator(name: "BIT_NOT_EXPR", value: 90, isUnsigned: true)
!289 = !DIEnumerator(name: "TRUTH_ANDIF_EXPR", value: 91, isUnsigned: true)
!290 = !DIEnumerator(name: "TRUTH_ORIF_EXPR", value: 92, isUnsigned: true)
!291 = !DIEnumerator(name: "TRUTH_AND_EXPR", value: 93, isUnsigned: true)
!292 = !DIEnumerator(name: "TRUTH_OR_EXPR", value: 94, isUnsigned: true)
!293 = !DIEnumerator(name: "TRUTH_XOR_EXPR", value: 95, isUnsigned: true)
!294 = !DIEnumerator(name: "TRUTH_NOT_EXPR", value: 96, isUnsigned: true)
!295 = !DIEnumerator(name: "LT_EXPR", value: 97, isUnsigned: true)
!296 = !DIEnumerator(name: "LE_EXPR", value: 98, isUnsigned: true)
!297 = !DIEnumerator(name: "GT_EXPR", value: 99, isUnsigned: true)
!298 = !DIEnumerator(name: "GE_EXPR", value: 100, isUnsigned: true)
!299 = !DIEnumerator(name: "EQ_EXPR", value: 101, isUnsigned: true)
!300 = !DIEnumerator(name: "NE_EXPR", value: 102, isUnsigned: true)
!301 = !DIEnumerator(name: "UNORDERED_EXPR", value: 103, isUnsigned: true)
!302 = !DIEnumerator(name: "ORDERED_EXPR", value: 104, isUnsigned: true)
!303 = !DIEnumerator(name: "UNLT_EXPR", value: 105, isUnsigned: true)
!304 = !DIEnumerator(name: "UNLE_EXPR", value: 106, isUnsigned: true)
!305 = !DIEnumerator(name: "UNGT_EXPR", value: 107, isUnsigned: true)
!306 = !DIEnumerator(name: "UNGE_EXPR", value: 108, isUnsigned: true)
!307 = !DIEnumerator(name: "UNEQ_EXPR", value: 109, isUnsigned: true)
!308 = !DIEnumerator(name: "LTGT_EXPR", value: 110, isUnsigned: true)
!309 = !DIEnumerator(name: "RANGE_EXPR", value: 111, isUnsigned: true)
!310 = !DIEnumerator(name: "PAREN_EXPR", value: 112, isUnsigned: true)
!311 = !DIEnumerator(name: "CONVERT_EXPR", value: 113, isUnsigned: true)
!312 = !DIEnumerator(name: "ADDR_SPACE_CONVERT_EXPR", value: 114, isUnsigned: true)
!313 = !DIEnumerator(name: "FIXED_CONVERT_EXPR", value: 115, isUnsigned: true)
!314 = !DIEnumerator(name: "NOP_EXPR", value: 116, isUnsigned: true)
!315 = !DIEnumerator(name: "NON_LVALUE_EXPR", value: 117, isUnsigned: true)
!316 = !DIEnumerator(name: "VIEW_CONVERT_EXPR", value: 118, isUnsigned: true)
!317 = !DIEnumerator(name: "COMPOUND_LITERAL_EXPR", value: 119, isUnsigned: true)
!318 = !DIEnumerator(name: "SAVE_EXPR", value: 120, isUnsigned: true)
!319 = !DIEnumerator(name: "ADDR_EXPR", value: 121, isUnsigned: true)
!320 = !DIEnumerator(name: "FDESC_EXPR", value: 122, isUnsigned: true)
!321 = !DIEnumerator(name: "COMPLEX_EXPR", value: 123, isUnsigned: true)
!322 = !DIEnumerator(name: "CONJ_EXPR", value: 124, isUnsigned: true)
!323 = !DIEnumerator(name: "PREDECREMENT_EXPR", value: 125, isUnsigned: true)
!324 = !DIEnumerator(name: "PREINCREMENT_EXPR", value: 126, isUnsigned: true)
!325 = !DIEnumerator(name: "POSTDECREMENT_EXPR", value: 127, isUnsigned: true)
!326 = !DIEnumerator(name: "POSTINCREMENT_EXPR", value: 128, isUnsigned: true)
!327 = !DIEnumerator(name: "VA_ARG_EXPR", value: 129, isUnsigned: true)
!328 = !DIEnumerator(name: "TRY_CATCH_EXPR", value: 130, isUnsigned: true)
!329 = !DIEnumerator(name: "TRY_FINALLY_EXPR", value: 131, isUnsigned: true)
!330 = !DIEnumerator(name: "DECL_EXPR", value: 132, isUnsigned: true)
!331 = !DIEnumerator(name: "LABEL_EXPR", value: 133, isUnsigned: true)
!332 = !DIEnumerator(name: "GOTO_EXPR", value: 134, isUnsigned: true)
!333 = !DIEnumerator(name: "RETURN_EXPR", value: 135, isUnsigned: true)
!334 = !DIEnumerator(name: "EXIT_EXPR", value: 136, isUnsigned: true)
!335 = !DIEnumerator(name: "LOOP_EXPR", value: 137, isUnsigned: true)
!336 = !DIEnumerator(name: "SWITCH_EXPR", value: 138, isUnsigned: true)
!337 = !DIEnumerator(name: "CASE_LABEL_EXPR", value: 139, isUnsigned: true)
!338 = !DIEnumerator(name: "ASM_EXPR", value: 140, isUnsigned: true)
!339 = !DIEnumerator(name: "SSA_NAME", value: 141, isUnsigned: true)
!340 = !DIEnumerator(name: "CATCH_EXPR", value: 142, isUnsigned: true)
!341 = !DIEnumerator(name: "EH_FILTER_EXPR", value: 143, isUnsigned: true)
!342 = !DIEnumerator(name: "SCEV_KNOWN", value: 144, isUnsigned: true)
!343 = !DIEnumerator(name: "SCEV_NOT_KNOWN", value: 145, isUnsigned: true)
!344 = !DIEnumerator(name: "POLYNOMIAL_CHREC", value: 146, isUnsigned: true)
!345 = !DIEnumerator(name: "STATEMENT_LIST", value: 147, isUnsigned: true)
!346 = !DIEnumerator(name: "ASSERT_EXPR", value: 148, isUnsigned: true)
!347 = !DIEnumerator(name: "TREE_BINFO", value: 149, isUnsigned: true)
!348 = !DIEnumerator(name: "WITH_SIZE_EXPR", value: 150, isUnsigned: true)
!349 = !DIEnumerator(name: "REALIGN_LOAD_EXPR", value: 151, isUnsigned: true)
!350 = !DIEnumerator(name: "TARGET_MEM_REF", value: 152, isUnsigned: true)
!351 = !DIEnumerator(name: "OMP_PARALLEL", value: 153, isUnsigned: true)
!352 = !DIEnumerator(name: "OMP_TASK", value: 154, isUnsigned: true)
!353 = !DIEnumerator(name: "OMP_FOR", value: 155, isUnsigned: true)
!354 = !DIEnumerator(name: "OMP_SECTIONS", value: 156, isUnsigned: true)
!355 = !DIEnumerator(name: "OMP_SINGLE", value: 157, isUnsigned: true)
!356 = !DIEnumerator(name: "OMP_SECTION", value: 158, isUnsigned: true)
!357 = !DIEnumerator(name: "OMP_MASTER", value: 159, isUnsigned: true)
!358 = !DIEnumerator(name: "OMP_ORDERED", value: 160, isUnsigned: true)
!359 = !DIEnumerator(name: "OMP_CRITICAL", value: 161, isUnsigned: true)
!360 = !DIEnumerator(name: "OMP_ATOMIC", value: 162, isUnsigned: true)
!361 = !DIEnumerator(name: "OMP_CLAUSE", value: 163, isUnsigned: true)
!362 = !DIEnumerator(name: "REDUC_MAX_EXPR", value: 164, isUnsigned: true)
!363 = !DIEnumerator(name: "REDUC_MIN_EXPR", value: 165, isUnsigned: true)
!364 = !DIEnumerator(name: "REDUC_PLUS_EXPR", value: 166, isUnsigned: true)
!365 = !DIEnumerator(name: "DOT_PROD_EXPR", value: 167, isUnsigned: true)
!366 = !DIEnumerator(name: "WIDEN_SUM_EXPR", value: 168, isUnsigned: true)
!367 = !DIEnumerator(name: "WIDEN_MULT_EXPR", value: 169, isUnsigned: true)
!368 = !DIEnumerator(name: "VEC_LSHIFT_EXPR", value: 170, isUnsigned: true)
!369 = !DIEnumerator(name: "VEC_RSHIFT_EXPR", value: 171, isUnsigned: true)
!370 = !DIEnumerator(name: "VEC_WIDEN_MULT_HI_EXPR", value: 172, isUnsigned: true)
!371 = !DIEnumerator(name: "VEC_WIDEN_MULT_LO_EXPR", value: 173, isUnsigned: true)
!372 = !DIEnumerator(name: "VEC_UNPACK_HI_EXPR", value: 174, isUnsigned: true)
!373 = !DIEnumerator(name: "VEC_UNPACK_LO_EXPR", value: 175, isUnsigned: true)
!374 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_HI_EXPR", value: 176, isUnsigned: true)
!375 = !DIEnumerator(name: "VEC_UNPACK_FLOAT_LO_EXPR", value: 177, isUnsigned: true)
!376 = !DIEnumerator(name: "VEC_PACK_TRUNC_EXPR", value: 178, isUnsigned: true)
!377 = !DIEnumerator(name: "VEC_PACK_SAT_EXPR", value: 179, isUnsigned: true)
!378 = !DIEnumerator(name: "VEC_PACK_FIX_TRUNC_EXPR", value: 180, isUnsigned: true)
!379 = !DIEnumerator(name: "VEC_EXTRACT_EVEN_EXPR", value: 181, isUnsigned: true)
!380 = !DIEnumerator(name: "VEC_EXTRACT_ODD_EXPR", value: 182, isUnsigned: true)
!381 = !DIEnumerator(name: "VEC_INTERLEAVE_HIGH_EXPR", value: 183, isUnsigned: true)
!382 = !DIEnumerator(name: "VEC_INTERLEAVE_LOW_EXPR", value: 184, isUnsigned: true)
!383 = !DIEnumerator(name: "PREDICT_EXPR", value: 185, isUnsigned: true)
!384 = !DIEnumerator(name: "OPTIMIZATION_NODE", value: 186, isUnsigned: true)
!385 = !DIEnumerator(name: "TARGET_OPTION_NODE", value: 187, isUnsigned: true)
!386 = !DIEnumerator(name: "LAST_AND_UNUSED_TREE_CODE", value: 188, isUnsigned: true)
!387 = !DIEnumerator(name: "C_MAYBE_CONST_EXPR", value: 189, isUnsigned: true)
!388 = !DIEnumerator(name: "EXCESS_PRECISION_EXPR", value: 190, isUnsigned: true)
!389 = !DIEnumerator(name: "MAX_TREE_CODES", value: 191, isUnsigned: true)
!390 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "br_predictor", file: !391, line: 24, baseType: !7, size: 32, elements: !392)
!391 = !DIFile(filename: "./predict.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!392 = !{!393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421}
!393 = !DIEnumerator(name: "PRED_COMBINED", value: 0, isUnsigned: true)
!394 = !DIEnumerator(name: "PRED_DS_THEORY", value: 1, isUnsigned: true)
!395 = !DIEnumerator(name: "PRED_FIRST_MATCH", value: 2, isUnsigned: true)
!396 = !DIEnumerator(name: "PRED_NO_PREDICTION", value: 3, isUnsigned: true)
!397 = !DIEnumerator(name: "PRED_UNCONDITIONAL", value: 4, isUnsigned: true)
!398 = !DIEnumerator(name: "PRED_LOOP_ITERATIONS", value: 5, isUnsigned: true)
!399 = !DIEnumerator(name: "PRED_BUILTIN_EXPECT", value: 6, isUnsigned: true)
!400 = !DIEnumerator(name: "PRED_LOOP_ITERATIONS_GUESSED", value: 7, isUnsigned: true)
!401 = !DIEnumerator(name: "PRED_CONTINUE", value: 8, isUnsigned: true)
!402 = !DIEnumerator(name: "PRED_NORETURN", value: 9, isUnsigned: true)
!403 = !DIEnumerator(name: "PRED_COLD_FUNCTION", value: 10, isUnsigned: true)
!404 = !DIEnumerator(name: "PRED_LOOP_BRANCH", value: 11, isUnsigned: true)
!405 = !DIEnumerator(name: "PRED_LOOP_EXIT", value: 12, isUnsigned: true)
!406 = !DIEnumerator(name: "PRED_POINTER", value: 13, isUnsigned: true)
!407 = !DIEnumerator(name: "PRED_TREE_POINTER", value: 14, isUnsigned: true)
!408 = !DIEnumerator(name: "PRED_OPCODE_POSITIVE", value: 15, isUnsigned: true)
!409 = !DIEnumerator(name: "PRED_OPCODE_NONEQUAL", value: 16, isUnsigned: true)
!410 = !DIEnumerator(name: "PRED_FPOPCODE", value: 17, isUnsigned: true)
!411 = !DIEnumerator(name: "PRED_TREE_OPCODE_POSITIVE", value: 18, isUnsigned: true)
!412 = !DIEnumerator(name: "PRED_TREE_OPCODE_NONEQUAL", value: 19, isUnsigned: true)
!413 = !DIEnumerator(name: "PRED_TREE_FPOPCODE", value: 20, isUnsigned: true)
!414 = !DIEnumerator(name: "PRED_CALL", value: 21, isUnsigned: true)
!415 = !DIEnumerator(name: "PRED_TREE_EARLY_RETURN", value: 22, isUnsigned: true)
!416 = !DIEnumerator(name: "PRED_GOTO", value: 23, isUnsigned: true)
!417 = !DIEnumerator(name: "PRED_CONST_RETURN", value: 24, isUnsigned: true)
!418 = !DIEnumerator(name: "PRED_NEGATIVE_RETURN", value: 25, isUnsigned: true)
!419 = !DIEnumerator(name: "PRED_NULL_RETURN", value: 26, isUnsigned: true)
!420 = !DIEnumerator(name: "PRED_MUDFLAP", value: 27, isUnsigned: true)
!421 = !DIEnumerator(name: "END_PREDICTORS", value: 28, isUnsigned: true)
!422 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ir_type", file: !423, line: 80, baseType: !7, size: 32, elements: !424)
!423 = !DIFile(filename: "./coretypes.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!424 = !{!425, !426, !427}
!425 = !DIEnumerator(name: "IR_GIMPLE", value: 0, isUnsigned: true)
!426 = !DIEnumerator(name: "IR_RTL_CFGRTL", value: 1, isUnsigned: true)
!427 = !DIEnumerator(name: "IR_RTL_CFGLAYOUT", value: 2, isUnsigned: true)
!428 = !{!429, !430, !431, !432, !435, !436, !438, !1792, !994, !433, !557, !672, !1793}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!431 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !434)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "basic_block", file: !423, line: 111, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "basic_block_def", file: !135, line: 217, size: 832, elements: !442)
!442 = !{!443, !1759, !1760, !1761, !1762, !1766, !1767, !1768, !1786, !1787, !1788, !1789, !1790, !1791}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "preds", scope: !441, file: !135, line: 219, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_gc", file: !135, line: 151, baseType: !446)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_gc", file: !135, line: 151, size: 128, elements: !447)
!447 = !{!448}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !446, file: !135, line: 151, baseType: !449, size: 128)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_base", file: !135, line: 150, baseType: !450)
!450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_base", file: !135, line: 150, size: 128, elements: !451)
!451 = !{!452, !453, !454}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !450, file: !135, line: 150, baseType: !7, size: 32)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !450, file: !135, line: 150, baseType: !7, size: 32, offset: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !450, file: !135, line: 150, baseType: !455, size: 64, offset: 64)
!455 = !DICompositeType(tag: DW_TAG_array_type, baseType: !456, size: 64, elements: !600)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge", file: !423, line: 108, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "edge_def", file: !135, line: 122, size: 512, elements: !459)
!459 = !{!460, !461, !462, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !458, file: !135, line: 124, baseType: !440, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !458, file: !135, line: 125, baseType: !440, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "insns", scope: !458, file: !135, line: 131, baseType: !463, size: 64, offset: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "edge_def_insns", file: !135, line: 128, size: 64, elements: !464)
!464 = !{!465, !1750}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !463, file: !135, line: 129, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq", file: !423, line: 66, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_d", file: !469, line: 143, size: 192, elements: !470)
!469 = !DIFile(filename: "./gimple.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!470 = !{!471, !1748, !1749}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !468, file: !469, line: 145, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple_seq_node", file: !423, line: 69, baseType: !473)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_seq_node_d", file: !469, line: 136, size: 192, elements: !475)
!475 = !{!476, !1746, !1747}
!476 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !474, file: !469, line: 137, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "gimple", file: !423, line: 58, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "gimple_statement_d", file: !469, line: 737, size: 768, elements: !480)
!480 = !{!481, !1593, !1603, !1609, !1614, !1619, !1626, !1632, !1638, !1643, !1657, !1662, !1668, !1673, !1683, !1688, !1704, !1711, !1718, !1724, !1729, !1735, !1741}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !479, file: !469, line: 738, baseType: !482, size: 256)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_base", file: !469, line: 271, size: 256, elements: !483)
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !499, !500, !501}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !482, file: !469, line: 274, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "no_warning", scope: !482, file: !469, line: 277, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !482, file: !469, line: 281, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "nontemporal_move", scope: !482, file: !469, line: 284, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "plf", scope: !482, file: !469, line: 291, baseType: !7, size: 2, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "modified", scope: !482, file: !469, line: 295, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "has_volatile_ops", scope: !482, file: !469, line: 298, baseType: !7, size: 1, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "pad", scope: !482, file: !469, line: 301, baseType: !7, size: 1, offset: 15, flags: DIFlagBitField, extraData: i64 0)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !482, file: !469, line: 307, baseType: !7, size: 16, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !482, file: !469, line: 312, baseType: !7, size: 32, offset: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "location", scope: !482, file: !469, line: 316, baseType: !495, size: 32, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "location_t", file: !496, line: 58, baseType: !497)
!496 = !DIFile(filename: "./input.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "source_location", file: !498, line: 44, baseType: !7)
!498 = !DIFile(filename: "./line-map.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!499 = !DIDerivedType(tag: DW_TAG_member, name: "num_ops", scope: !482, file: !469, line: 319, baseType: !7, size: 32, offset: 96)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "bb", scope: !482, file: !469, line: 323, baseType: !440, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !482, file: !469, line: 327, baseType: !502, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "tree", file: !423, line: 56, baseType: !503)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_node", file: !164, line: 3371, size: 1792, elements: !505)
!505 = !{!506, !539, !545, !558, !577, !588, !593, !602, !608, !621, !629, !667, !841, !869, !886, !887, !892, !901, !907, !912, !916, !920, !1244, !1291, !1297, !1303, !1310, !1323, !1337, !1354, !1366, !1388, !1403, !1575}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !504, file: !164, line: 3372, baseType: !507, size: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_base", file: !164, line: 360, size: 64, elements: !508)
!508 = !{!509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !507, file: !164, line: 361, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "side_effects_flag", scope: !507, file: !164, line: 363, baseType: !7, size: 1, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "constant_flag", scope: !507, file: !164, line: 364, baseType: !7, size: 1, offset: 17, flags: DIFlagBitField, extraData: i64 0)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "addressable_flag", scope: !507, file: !164, line: 365, baseType: !7, size: 1, offset: 18, flags: DIFlagBitField, extraData: i64 0)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "volatile_flag", scope: !507, file: !164, line: 366, baseType: !7, size: 1, offset: 19, flags: DIFlagBitField, extraData: i64 0)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "readonly_flag", scope: !507, file: !164, line: 367, baseType: !7, size: 1, offset: 20, flags: DIFlagBitField, extraData: i64 0)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "unsigned_flag", scope: !507, file: !164, line: 368, baseType: !7, size: 1, offset: 21, flags: DIFlagBitField, extraData: i64 0)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "asm_written_flag", scope: !507, file: !164, line: 369, baseType: !7, size: 1, offset: 22, flags: DIFlagBitField, extraData: i64 0)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "nowarning_flag", scope: !507, file: !164, line: 370, baseType: !7, size: 1, offset: 23, flags: DIFlagBitField, extraData: i64 0)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "used_flag", scope: !507, file: !164, line: 372, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "nothrow_flag", scope: !507, file: !164, line: 373, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "static_flag", scope: !507, file: !164, line: 374, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "public_flag", scope: !507, file: !164, line: 375, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "private_flag", scope: !507, file: !164, line: 376, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "protected_flag", scope: !507, file: !164, line: 377, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "deprecated_flag", scope: !507, file: !164, line: 378, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "saturating_flag", scope: !507, file: !164, line: 379, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "default_def_flag", scope: !507, file: !164, line: 381, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 0)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !507, file: !164, line: 382, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 0)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !507, file: !164, line: 383, baseType: !7, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 0)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !507, file: !164, line: 384, baseType: !7, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 0)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !507, file: !164, line: 385, baseType: !7, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 0)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !507, file: !164, line: 386, baseType: !7, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 0)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !507, file: !164, line: 387, baseType: !7, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 0)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !507, file: !164, line: 388, baseType: !7, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 0)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !507, file: !164, line: 390, baseType: !7, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 0)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "packed_flag", scope: !507, file: !164, line: 391, baseType: !7, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 0)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "user_align", scope: !507, file: !164, line: 392, baseType: !7, size: 1, offset: 42, flags: DIFlagBitField, extraData: i64 0)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "spare", scope: !507, file: !164, line: 394, baseType: !7, size: 13, offset: 43, flags: DIFlagBitField, extraData: i64 0)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "address_space", scope: !507, file: !164, line: 399, baseType: !7, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 0)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !504, file: !164, line: 3373, baseType: !540, size: 192)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_common", file: !164, line: 402, size: 192, elements: !541)
!541 = !{!542, !543, !544}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !540, file: !164, line: 403, baseType: !507, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "chain", scope: !540, file: !164, line: 404, baseType: !502, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !540, file: !164, line: 405, baseType: !502, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !504, file: !164, line: 3374, baseType: !546, size: 320)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_int_cst", file: !164, line: 1384, size: 320, elements: !547)
!547 = !{!548, !549}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !546, file: !164, line: 1385, baseType: !540, size: 192)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "int_cst", scope: !546, file: !164, line: 1386, baseType: !550, size: 128, offset: 192)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_int", file: !551, line: 58, baseType: !552)
!551 = !DIFile(filename: "./double-int.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !551, line: 54, size: 128, elements: !553)
!553 = !{!554, !556}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !552, file: !551, line: 56, baseType: !555, size: 64)
!555 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !552, file: !551, line: 57, baseType: !557, size: 64, offset: 64)
!557 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst", scope: !504, file: !164, line: 3375, baseType: !559, size: 256)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_real_cst", file: !164, line: 1397, size: 256, elements: !560)
!560 = !{!561, !562}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !559, file: !164, line: 1398, baseType: !540, size: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "real_cst_ptr", scope: !559, file: !164, line: 1399, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "real_value", file: !565, line: 52, size: 256, elements: !566)
!565 = !DIFile(filename: "./real.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!566 = !{!567, !568, !569, !570, !571, !572, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !564, file: !565, line: 56, baseType: !7, size: 2, flags: DIFlagBitField, extraData: i64 0)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "decimal", scope: !564, file: !565, line: 57, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sign", scope: !564, file: !565, line: 58, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "signalling", scope: !564, file: !565, line: 59, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !564, file: !565, line: 60, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "uexp", scope: !564, file: !565, line: 61, baseType: !7, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !564, file: !565, line: 62, baseType: !574, size: 192, offset: 64)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 192, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 3)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst", scope: !504, file: !164, line: 3376, baseType: !578, size: 256)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_fixed_cst", file: !164, line: 1408, size: 256, elements: !579)
!579 = !{!580, !581}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !578, file: !164, line: 1409, baseType: !540, size: 192)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_cst_ptr", scope: !578, file: !164, line: 1410, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fixed_value", file: !584, line: 27, size: 192, elements: !585)
!584 = !DIFile(filename: "./fixed-value.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !583, file: !584, line: 29, baseType: !550, size: 128)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !583, file: !584, line: 30, baseType: !5, size: 32, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vector", scope: !504, file: !164, line: 3377, baseType: !589, size: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vector", file: !164, line: 1437, size: 256, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !589, file: !164, line: 1438, baseType: !540, size: 192)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !589, file: !164, line: 1439, baseType: !502, size: 64, offset: 192)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !504, file: !164, line: 3378, baseType: !594, size: 256)
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_string", file: !164, line: 1418, size: 256, elements: !595)
!595 = !{!596, !597, !598}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !594, file: !164, line: 1419, baseType: !540, size: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !594, file: !164, line: 1420, baseType: !431, size: 32, offset: 192)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !594, file: !164, line: 1421, baseType: !599, size: 8, offset: 224)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 8, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 1)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "complex", scope: !504, file: !164, line: 3379, baseType: !603, size: 320)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_complex", file: !164, line: 1428, size: 320, elements: !604)
!604 = !{!605, !606, !607}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !603, file: !164, line: 1429, baseType: !540, size: 192)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "real", scope: !603, file: !164, line: 1430, baseType: !502, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "imag", scope: !603, file: !164, line: 1431, baseType: !502, size: 64, offset: 256)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "identifier", scope: !504, file: !164, line: 3380, baseType: !609, size: 320)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_identifier", file: !164, line: 1460, size: 320, elements: !610)
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !609, file: !164, line: 1461, baseType: !540, size: 192)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !609, file: !164, line: 1462, baseType: !613, size: 128, offset: 192)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ht_identifier", file: !614, line: 31, size: 128, elements: !615)
!614 = !DIFile(filename: "./symtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!615 = !{!616, !619, !620}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !613, file: !614, line: 32, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !430)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !613, file: !614, line: 33, baseType: !7, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hash_value", scope: !613, file: !614, line: 34, baseType: !7, size: 32, offset: 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "decl_minimal", scope: !504, file: !164, line: 3381, baseType: !622, size: 384)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_minimal", file: !164, line: 2507, size: 384, elements: !623)
!623 = !{!624, !625, !626, !627, !628}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !622, file: !164, line: 2508, baseType: !540, size: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !622, file: !164, line: 2509, baseType: !495, size: 32, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !622, file: !164, line: 2510, baseType: !7, size: 32, offset: 224)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !622, file: !164, line: 2511, baseType: !502, size: 64, offset: 256)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !622, file: !164, line: 2512, baseType: !502, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common", scope: !504, file: !164, line: 3382, baseType: !630, size: 896)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_common", file: !164, line: 2652, size: 896, elements: !631)
!631 = !{!632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662, !663, !664}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !630, file: !164, line: 2653, baseType: !622, size: 384)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !630, file: !164, line: 2654, baseType: !502, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !630, file: !164, line: 2656, baseType: !7, size: 8, offset: 448, flags: DIFlagBitField, extraData: i64 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_flag", scope: !630, file: !164, line: 2658, baseType: !7, size: 1, offset: 456, flags: DIFlagBitField, extraData: i64 448)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_flag", scope: !630, file: !164, line: 2659, baseType: !7, size: 1, offset: 457, flags: DIFlagBitField, extraData: i64 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "ignored_flag", scope: !630, file: !164, line: 2660, baseType: !7, size: 1, offset: 458, flags: DIFlagBitField, extraData: i64 448)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !630, file: !164, line: 2661, baseType: !7, size: 1, offset: 459, flags: DIFlagBitField, extraData: i64 448)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "artificial_flag", scope: !630, file: !164, line: 2662, baseType: !7, size: 1, offset: 460, flags: DIFlagBitField, extraData: i64 448)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "preserve_flag", scope: !630, file: !164, line: 2663, baseType: !7, size: 1, offset: 461, flags: DIFlagBitField, extraData: i64 448)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "debug_expr_is_from", scope: !630, file: !164, line: 2664, baseType: !7, size: 1, offset: 462, flags: DIFlagBitField, extraData: i64 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !630, file: !164, line: 2666, baseType: !7, size: 1, offset: 463, flags: DIFlagBitField, extraData: i64 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !630, file: !164, line: 2667, baseType: !7, size: 1, offset: 464, flags: DIFlagBitField, extraData: i64 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !630, file: !164, line: 2668, baseType: !7, size: 1, offset: 465, flags: DIFlagBitField, extraData: i64 448)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !630, file: !164, line: 2669, baseType: !7, size: 1, offset: 466, flags: DIFlagBitField, extraData: i64 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !630, file: !164, line: 2670, baseType: !7, size: 1, offset: 467, flags: DIFlagBitField, extraData: i64 448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !630, file: !164, line: 2671, baseType: !7, size: 1, offset: 468, flags: DIFlagBitField, extraData: i64 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !630, file: !164, line: 2672, baseType: !7, size: 1, offset: 469, flags: DIFlagBitField, extraData: i64 448)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_7", scope: !630, file: !164, line: 2673, baseType: !7, size: 1, offset: 470, flags: DIFlagBitField, extraData: i64 448)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_8", scope: !630, file: !164, line: 2674, baseType: !7, size: 1, offset: 471, flags: DIFlagBitField, extraData: i64 448)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_0", scope: !630, file: !164, line: 2678, baseType: !7, size: 1, offset: 472, flags: DIFlagBitField, extraData: i64 448)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_1", scope: !630, file: !164, line: 2682, baseType: !7, size: 1, offset: 473, flags: DIFlagBitField, extraData: i64 448)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "decl_flag_2", scope: !630, file: !164, line: 2685, baseType: !7, size: 1, offset: 474, flags: DIFlagBitField, extraData: i64 448)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reg_flag", scope: !630, file: !164, line: 2688, baseType: !7, size: 1, offset: 475, flags: DIFlagBitField, extraData: i64 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "decl_by_reference_flag", scope: !630, file: !164, line: 2690, baseType: !7, size: 1, offset: 476, flags: DIFlagBitField, extraData: i64 448)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "decl_restricted_flag", scope: !630, file: !164, line: 2692, baseType: !7, size: 1, offset: 477, flags: DIFlagBitField, extraData: i64 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "decl_common_unused", scope: !630, file: !164, line: 2695, baseType: !7, size: 2, offset: 478, flags: DIFlagBitField, extraData: i64 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "off_align", scope: !630, file: !164, line: 2698, baseType: !7, size: 8, offset: 480, flags: DIFlagBitField, extraData: i64 448)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !630, file: !164, line: 2703, baseType: !7, size: 32, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !630, file: !164, line: 2705, baseType: !502, size: 64, offset: 576)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !630, file: !164, line: 2706, baseType: !502, size: 64, offset: 640)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !630, file: !164, line: 2707, baseType: !502, size: 64, offset: 704)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !630, file: !164, line: 2708, baseType: !502, size: 64, offset: 768)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !630, file: !164, line: 2711, baseType: !665, size: 64, offset: 832)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_decl", file: !164, line: 2711, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_rtl", scope: !504, file: !164, line: 3383, baseType: !668, size: 960)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_rtl", file: !164, line: 2756, size: 960, elements: !669)
!669 = !{!670, !671}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !668, file: !164, line: 2757, baseType: !630, size: 896)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !668, file: !164, line: 2758, baseType: !672, size: 64, offset: 896)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtx", file: !423, line: 50, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtx_def", file: !675, line: 240, size: 384, elements: !676)
!675 = !DIFile(filename: "./rtl.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!676 = !{!677, !678, !679, !680, !681, !682, !683, !684, !685, !686, !687}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !674, file: !675, line: 242, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !674, file: !675, line: 245, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "jump", scope: !674, file: !675, line: 252, baseType: !7, size: 1, offset: 24, flags: DIFlagBitField, extraData: i64 0)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "call", scope: !674, file: !675, line: 257, baseType: !7, size: 1, offset: 25, flags: DIFlagBitField, extraData: i64 0)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "unchanging", scope: !674, file: !675, line: 265, baseType: !7, size: 1, offset: 26, flags: DIFlagBitField, extraData: i64 0)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "volatil", scope: !674, file: !675, line: 277, baseType: !7, size: 1, offset: 27, flags: DIFlagBitField, extraData: i64 0)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "in_struct", scope: !674, file: !675, line: 291, baseType: !7, size: 1, offset: 28, flags: DIFlagBitField, extraData: i64 0)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !674, file: !675, line: 298, baseType: !7, size: 1, offset: 29, flags: DIFlagBitField, extraData: i64 0)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "frame_related", scope: !674, file: !675, line: 305, baseType: !7, size: 1, offset: 30, flags: DIFlagBitField, extraData: i64 0)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "return_val", scope: !674, file: !675, line: 310, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !674, file: !675, line: 321, baseType: !688, size: 320, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "u", file: !675, line: 315, size: 320, elements: !689)
!689 = !{!690, !808, !810, !839, !840}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !688, file: !675, line: 316, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 64, elements: !600)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtunion", file: !675, line: 183, baseType: !693)
!693 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "rtunion_def", file: !675, line: 166, size: 64, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !707, !708, !720, !723, !783, !784, !785, !798, !805}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rt_int", scope: !693, file: !675, line: 168, baseType: !431, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rt_uint", scope: !693, file: !675, line: 169, baseType: !7, size: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "rt_str", scope: !693, file: !675, line: 170, baseType: !436, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtx", scope: !693, file: !675, line: 171, baseType: !672, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rt_rtvec", scope: !693, file: !675, line: 172, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtvec", file: !423, line: 53, baseType: !701)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtvec_def", file: !675, line: 359, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "num_elem", scope: !702, file: !675, line: 360, baseType: !431, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !702, file: !675, line: 361, baseType: !706, size: 64, offset: 64)
!706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 64, elements: !600)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "rt_type", scope: !693, file: !675, line: 173, baseType: !5, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rt_addr_diff_vec_flags", scope: !693, file: !675, line: 174, baseType: !709, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_diff_vec_flags", file: !675, line: 133, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !675, line: 115, size: 32, elements: !711)
!711 = !{!712, !713, !714, !715, !716, !717, !718, !719}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "min_align", scope: !710, file: !675, line: 118, baseType: !7, size: 8, flags: DIFlagBitField, extraData: i64 0)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "base_after_vec", scope: !710, file: !675, line: 120, baseType: !7, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_vec", scope: !710, file: !675, line: 121, baseType: !7, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_vec", scope: !710, file: !675, line: 123, baseType: !7, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "min_after_base", scope: !710, file: !675, line: 125, baseType: !7, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "max_after_base", scope: !710, file: !675, line: 127, baseType: !7, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "offset_unsigned", scope: !710, file: !675, line: 130, baseType: !7, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !710, file: !675, line: 132, baseType: !7, size: 8, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rt_cselib", scope: !693, file: !675, line: 175, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_structure_type, name: "cselib_val_struct", file: !675, line: 175, flags: DIFlagFwdDecl)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bit", scope: !693, file: !675, line: 176, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_head_def", file: !726, line: 75, size: 256, elements: !727)
!726 = !DIFile(filename: "./bitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!727 = !{!728, !742, !743, !744}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !725, file: !726, line: 76, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_element", file: !726, line: 68, baseType: !731)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_element_def", file: !726, line: 63, size: 320, elements: !732)
!732 = !{!733, !735, !736, !737}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !731, file: !726, line: 64, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !731, file: !726, line: 65, baseType: !734, size: 64, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !731, file: !726, line: 66, baseType: !7, size: 32, offset: 128)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !731, file: !726, line: 67, baseType: !738, size: 128, offset: 192)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !739, size: 128, elements: !740)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "BITMAP_WORD", file: !726, line: 29, baseType: !555)
!740 = !{!741}
!741 = !DISubrange(count: 2)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !725, file: !726, line: 77, baseType: !729, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "indx", scope: !725, file: !726, line: 78, baseType: !7, size: 32, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !725, file: !726, line: 79, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap_obstack", file: !726, line: 49, baseType: !747)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bitmap_obstack", file: !726, line: 45, size: 832, elements: !748)
!748 = !{!749, !750, !751}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !747, file: !726, line: 46, baseType: !734, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "heads", scope: !747, file: !726, line: 47, baseType: !724, size: 64, offset: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "obstack", scope: !747, file: !726, line: 48, baseType: !752, size: 704, offset: 128)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "obstack", file: !753, line: 164, size: 704, elements: !754)
!753 = !DIFile(filename: "./include/obstack.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!754 = !{!755, !756, !766, !767, !768, !769, !770, !771, !775, !779, !780, !781, !782}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_size", scope: !752, file: !753, line: 166, baseType: !557, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !752, file: !753, line: 167, baseType: !757, size: 64, offset: 64)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_obstack_chunk", file: !753, line: 157, size: 192, elements: !759)
!759 = !{!760, !761, !762}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "limit", scope: !758, file: !753, line: 159, baseType: !433, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !758, file: !753, line: 160, baseType: !757, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !758, file: !753, line: 161, baseType: !763, size: 32, offset: 128)
!763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 32, elements: !764)
!764 = !{!765}
!765 = !DISubrange(count: 4)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "object_base", scope: !752, file: !753, line: 168, baseType: !433, size: 64, offset: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !752, file: !753, line: 169, baseType: !433, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "chunk_limit", scope: !752, file: !753, line: 170, baseType: !433, size: 64, offset: 256)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "temp", scope: !752, file: !753, line: 171, baseType: !557, size: 64, offset: 320)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "alignment_mask", scope: !752, file: !753, line: 172, baseType: !431, size: 32, offset: 384)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "chunkfun", scope: !752, file: !753, line: 176, baseType: !772, size: 64, offset: 448)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!757, !435, !557}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "freefun", scope: !752, file: !753, line: 177, baseType: !776, size: 64, offset: 512)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{null, !435, !757}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "extra_arg", scope: !752, file: !753, line: 178, baseType: !435, size: 64, offset: 576)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "use_extra_arg", scope: !752, file: !753, line: 179, baseType: !7, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "maybe_empty_object", scope: !752, file: !753, line: 180, baseType: !7, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_failed", scope: !752, file: !753, line: 184, baseType: !7, size: 1, offset: 642, flags: DIFlagBitField, extraData: i64 640)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "rt_tree", scope: !693, file: !675, line: 177, baseType: !502, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "rt_bb", scope: !693, file: !675, line: 178, baseType: !440, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "rt_mem", scope: !693, file: !675, line: 179, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_attrs", file: !675, line: 150, baseType: !788)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mem_attrs", file: !675, line: 142, size: 320, elements: !789)
!789 = !{!790, !791, !792, !793, !796, !797}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "expr", scope: !788, file: !675, line: 144, baseType: !502, size: 64)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !788, file: !675, line: 145, baseType: !672, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !788, file: !675, line: 146, baseType: !672, size: 64, offset: 128)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "alias", scope: !788, file: !675, line: 147, baseType: !794, size: 32, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "alias_set_type", file: !795, line: 31, baseType: !431)
!795 = !DIFile(filename: "./alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!796 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !788, file: !675, line: 148, baseType: !7, size: 32, offset: 224)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "addrspace", scope: !788, file: !675, line: 149, baseType: !430, size: 8, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "rt_reg", scope: !693, file: !675, line: 180, baseType: !799, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "reg_attrs", file: !675, line: 162, baseType: !801)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "reg_attrs", file: !675, line: 159, size: 128, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !801, file: !675, line: 160, baseType: !502, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !801, file: !675, line: 161, baseType: !557, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "rt_constant", scope: !693, file: !675, line: 181, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DICompositeType(tag: DW_TAG_structure_type, name: "constant_descriptor_rtx", file: !675, line: 181, flags: DIFlagFwdDecl)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "hwint", scope: !688, file: !675, line: 317, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !557, size: 64, elements: !600)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "block_sym", scope: !688, file: !675, line: 318, baseType: !811, size: 320)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "block_symbol", file: !675, line: 188, size: 320, elements: !812)
!812 = !{!813, !815, !838}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "fld", scope: !811, file: !675, line: 190, baseType: !814, size: 192)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !692, size: 192, elements: !575)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !811, file: !675, line: 193, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "object_block", file: !675, line: 206, size: 320, elements: !818)
!818 = !{!819, !823, !824, !825, !837}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sect", scope: !817, file: !675, line: 208, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "section", file: !423, line: 62, baseType: !822)
!822 = !DICompositeType(tag: DW_TAG_union_type, name: "section", file: !423, line: 61, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !817, file: !675, line: 211, baseType: !7, size: 32, offset: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !817, file: !675, line: 214, baseType: !557, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !817, file: !675, line: 224, baseType: !826, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_gc", file: !675, line: 202, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_gc", file: !675, line: 202, size: 128, elements: !829)
!829 = !{!830}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !828, file: !675, line: 202, baseType: !831, size: 128)
!831 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_rtx_base", file: !675, line: 200, baseType: !832)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_rtx_base", file: !675, line: 200, size: 128, elements: !833)
!833 = !{!834, !835, !836}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !832, file: !675, line: 200, baseType: !7, size: 32)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !832, file: !675, line: 200, baseType: !7, size: 32, offset: 32)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !832, file: !675, line: 200, baseType: !706, size: 64, offset: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "anchors", scope: !817, file: !675, line: 234, baseType: !826, size: 64, offset: 256)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !811, file: !675, line: 197, baseType: !557, size: 64, offset: 256)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "rv", scope: !688, file: !675, line: 319, baseType: !564, size: 256)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "fv", scope: !688, file: !675, line: 320, baseType: !583, size: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "decl_non_common", scope: !504, file: !164, line: 3384, baseType: !842, size: 1472)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_non_common", file: !164, line: 3114, size: 1472, elements: !843)
!843 = !{!844, !865, !866, !867, !868}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !842, file: !164, line: 3115, baseType: !845, size: 1216)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_decl_with_vis", file: !164, line: 2984, size: 1216, elements: !846)
!846 = !{!847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !845, file: !164, line: 2985, baseType: !668, size: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "assembler_name", scope: !845, file: !164, line: 2986, baseType: !502, size: 64, offset: 960)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "section_name", scope: !845, file: !164, line: 2987, baseType: !502, size: 64, offset: 1024)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_group", scope: !845, file: !164, line: 2988, baseType: !502, size: 64, offset: 1088)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "defer_output", scope: !845, file: !164, line: 2991, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "hard_register", scope: !845, file: !164, line: 2992, baseType: !7, size: 1, offset: 1153, flags: DIFlagBitField, extraData: i64 1152)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "thread_local", scope: !845, file: !164, line: 2993, baseType: !7, size: 1, offset: 1154, flags: DIFlagBitField, extraData: i64 1152)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "common_flag", scope: !845, file: !164, line: 2994, baseType: !7, size: 1, offset: 1155, flags: DIFlagBitField, extraData: i64 1152)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "in_text_section", scope: !845, file: !164, line: 2995, baseType: !7, size: 1, offset: 1156, flags: DIFlagBitField, extraData: i64 1152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "dllimport_flag", scope: !845, file: !164, line: 2996, baseType: !7, size: 1, offset: 1157, flags: DIFlagBitField, extraData: i64 1152)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "shadowed_for_var_p", scope: !845, file: !164, line: 2998, baseType: !7, size: 1, offset: 1158, flags: DIFlagBitField, extraData: i64 1152)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "weak_flag", scope: !845, file: !164, line: 3000, baseType: !7, size: 1, offset: 1159, flags: DIFlagBitField, extraData: i64 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "seen_in_bind_expr", scope: !845, file: !164, line: 3002, baseType: !7, size: 1, offset: 1160, flags: DIFlagBitField, extraData: i64 1152)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "comdat_flag", scope: !845, file: !164, line: 3003, baseType: !7, size: 1, offset: 1161, flags: DIFlagBitField, extraData: i64 1152)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "visibility", scope: !845, file: !164, line: 3004, baseType: !7, size: 2, offset: 1162, flags: DIFlagBitField, extraData: i64 1152)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "visibility_specified", scope: !845, file: !164, line: 3005, baseType: !7, size: 1, offset: 1164, flags: DIFlagBitField, extraData: i64 1152)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tls_model", scope: !845, file: !164, line: 3007, baseType: !7, size: 3, offset: 1165, flags: DIFlagBitField, extraData: i64 1152)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "init_priority_p", scope: !845, file: !164, line: 3010, baseType: !7, size: 1, offset: 1168, flags: DIFlagBitField, extraData: i64 1152)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "saved_tree", scope: !842, file: !164, line: 3117, baseType: !502, size: 64, offset: 1216)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arguments", scope: !842, file: !164, line: 3119, baseType: !502, size: 64, offset: 1280)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !842, file: !164, line: 3121, baseType: !502, size: 64, offset: 1344)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "vindex", scope: !842, file: !164, line: 3123, baseType: !502, size: 64, offset: 1408)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "parm_decl", scope: !504, file: !164, line: 3385, baseType: !870, size: 1088)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_parm_decl", file: !164, line: 2874, size: 1088, elements: !871)
!871 = !{!872, !873, !874}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !870, file: !164, line: 2875, baseType: !668, size: 960)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "incoming_rtl", scope: !870, file: !164, line: 2876, baseType: !672, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !870, file: !164, line: 2877, baseType: !875, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "var_ann_d", file: !877, line: 172, size: 128, elements: !878)
!877 = !DIFile(filename: "./tree-flow.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!878 = !{!879, !880, !881, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "base_var_processed", scope: !876, file: !877, line: 174, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !876, file: !877, line: 178, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "need_phi_state", scope: !876, file: !877, line: 183, baseType: !7, size: 2, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "is_heapvar", scope: !876, file: !877, line: 187, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "noalias_state", scope: !876, file: !877, line: 192, baseType: !7, size: 2, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "base_index", scope: !876, file: !877, line: 195, baseType: !7, size: 32, offset: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "current_def", scope: !876, file: !877, line: 199, baseType: !502, size: 64, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "decl_with_vis", scope: !504, file: !164, line: 3386, baseType: !845, size: 1216)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "var_decl", scope: !504, file: !164, line: 3387, baseType: !888, size: 1280)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_var_decl", file: !164, line: 3093, size: 1280, elements: !889)
!889 = !{!890, !891}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !888, file: !164, line: 3094, baseType: !845, size: 1216)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !888, file: !164, line: 3095, baseType: !875, size: 64, offset: 1216)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "field_decl", scope: !504, file: !164, line: 3388, baseType: !893, size: 1216)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_field_decl", file: !164, line: 2824, size: 1216, elements: !894)
!894 = !{!895, !896, !897, !898, !899, !900}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !893, file: !164, line: 2825, baseType: !630, size: 896)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !893, file: !164, line: 2827, baseType: !502, size: 64, offset: 896)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "bit_field_type", scope: !893, file: !164, line: 2828, baseType: !502, size: 64, offset: 960)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "qualifier", scope: !893, file: !164, line: 2829, baseType: !502, size: 64, offset: 1024)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !893, file: !164, line: 2830, baseType: !502, size: 64, offset: 1088)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "fcontext", scope: !893, file: !164, line: 2831, baseType: !502, size: 64, offset: 1152)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl", scope: !504, file: !164, line: 3389, baseType: !902, size: 1024)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_label_decl", file: !164, line: 2850, size: 1024, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !902, file: !164, line: 2851, baseType: !668, size: 960)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "label_decl_uid", scope: !902, file: !164, line: 2852, baseType: !431, size: 32, offset: 960)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "eh_landing_pad_nr", scope: !902, file: !164, line: 2853, baseType: !431, size: 32, offset: 992)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "result_decl", scope: !504, file: !164, line: 3390, baseType: !908, size: 1024)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_result_decl", file: !164, line: 2857, size: 1024, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !908, file: !164, line: 2858, baseType: !668, size: 960)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ann", scope: !908, file: !164, line: 2859, baseType: !875, size: 64, offset: 960)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "const_decl", scope: !504, file: !164, line: 3391, baseType: !913, size: 960)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_const_decl", file: !164, line: 2862, size: 960, elements: !914)
!914 = !{!915}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !913, file: !164, line: 2863, baseType: !668, size: 960)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "type_decl", scope: !504, file: !164, line: 3392, baseType: !917, size: 1472)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type_decl", file: !164, line: 3304, size: 1472, elements: !918)
!918 = !{!919}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !917, file: !164, line: 3305, baseType: !842, size: 1472)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "function_decl", scope: !504, file: !164, line: 3393, baseType: !921, size: 1792)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_function_decl", file: !164, line: 3248, size: 1792, elements: !922)
!922 = !{!923, !924, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !921, file: !164, line: 3249, baseType: !842, size: 1472)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "f", scope: !921, file: !164, line: 3251, baseType: !925, size: 64, offset: 1472)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "function", file: !927, line: 463, size: 1152, elements: !928)
!927 = !DIFile(filename: "./function.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!928 = !{!929, !932, !962, !963, !1104, !1167, !1168, !1169, !1170, !1171, !1172, !1196, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "eh", scope: !926, file: !927, line: 464, baseType: !930, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !931, size: 64)
!931 = !DICompositeType(tag: DW_TAG_structure_type, name: "eh_status", file: !927, line: 464, flags: DIFlagFwdDecl)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "cfg", scope: !926, file: !927, line: 467, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "control_flow_graph", file: !135, line: 374, size: 640, elements: !935)
!935 = !{!936, !937, !938, !951, !952, !953, !954, !955, !956, !958, !960, !961}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "x_entry_block_ptr", scope: !934, file: !135, line: 377, baseType: !439, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "x_exit_block_ptr", scope: !934, file: !135, line: 378, baseType: !439, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "x_basic_block_info", scope: !934, file: !135, line: 381, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_gc", file: !135, line: 282, baseType: !941)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_gc", file: !135, line: 282, size: 128, elements: !942)
!942 = !{!943}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !941, file: !135, line: 282, baseType: !944, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_base", file: !135, line: 281, baseType: !945)
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_base", file: !135, line: 281, size: 128, elements: !946)
!946 = !{!947, !948, !949}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !945, file: !135, line: 281, baseType: !7, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !945, file: !135, line: 281, baseType: !7, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !945, file: !135, line: 281, baseType: !950, size: 64, offset: 64)
!950 = !DICompositeType(tag: DW_TAG_array_type, baseType: !439, size: 64, elements: !600)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_basic_blocks", scope: !934, file: !135, line: 384, baseType: !431, size: 32, offset: 192)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_edges", scope: !934, file: !135, line: 387, baseType: !431, size: 32, offset: 224)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "x_last_basic_block", scope: !934, file: !135, line: 390, baseType: !431, size: 32, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "x_label_to_block_map", scope: !934, file: !135, line: 394, baseType: !939, size: 64, offset: 320)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "x_profile_status", scope: !934, file: !135, line: 396, baseType: !134, size: 32, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "x_dom_computed", scope: !934, file: !135, line: 399, baseType: !957, size: 64, offset: 416)
!957 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 64, elements: !740)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "x_n_bbs_in_dom_tree", scope: !934, file: !135, line: 402, baseType: !959, size: 64, offset: 480)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !740)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "max_jumptable_ents", scope: !934, file: !135, line: 406, baseType: !431, size: 32, offset: 544)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "last_label_uid", scope: !934, file: !135, line: 409, baseType: !431, size: 32, offset: 576)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_body", scope: !926, file: !927, line: 470, baseType: !467, size: 64, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_df", scope: !926, file: !927, line: 473, baseType: !964, size: 64, offset: 192)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_df", file: !877, line: 39, size: 1152, elements: !966)
!966 = !{!967, !1019, !1032, !1045, !1046, !1058, !1059, !1063, !1064, !1065, !1066, !1067}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "referenced_vars", scope: !965, file: !877, line: 41, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_t", file: !969, line: 144, baseType: !970)
!969 = !DIFile(filename: "./include/hashtab.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "htab", file: !969, line: 100, size: 896, elements: !972)
!972 = !{!973, !981, !986, !991, !993, !996, !997, !998, !999, !1000, !1005, !1007, !1008, !1013, !1018}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "hash_f", scope: !971, file: !969, line: 102, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_hash", file: !969, line: 52, baseType: !975)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "hashval_t", file: !969, line: 47, baseType: !7)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "eq_f", scope: !971, file: !969, line: 105, baseType: !982, size: 64, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_eq", file: !969, line: 59, baseType: !983)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{!431, !979, !979}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "del_f", scope: !971, file: !969, line: 108, baseType: !987, size: 64, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_del", file: !969, line: 63, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{null, !435}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !971, file: !969, line: 111, baseType: !992, size: 64, offset: 192)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !971, file: !969, line: 114, baseType: !994, size: 64, offset: 256)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !995, line: 46, baseType: !555)
!995 = !DIFile(filename: "/scratch/install/llvm-install-release/lib/clang/9.0.1/include/stddef.h", directory: "")
!996 = !DIDerivedType(tag: DW_TAG_member, name: "n_elements", scope: !971, file: !969, line: 117, baseType: !994, size: 64, offset: 320)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "n_deleted", scope: !971, file: !969, line: 120, baseType: !994, size: 64, offset: 384)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "searches", scope: !971, file: !969, line: 124, baseType: !7, size: 32, offset: 448)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "collisions", scope: !971, file: !969, line: 128, baseType: !7, size: 32, offset: 480)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_f", scope: !971, file: !969, line: 131, baseType: !1001, size: 64, offset: 512)
!1001 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc", file: !969, line: 75, baseType: !1002)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DISubroutineType(types: !1004)
!1004 = !{!435, !994, !994}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "free_f", scope: !971, file: !969, line: 132, baseType: !1006, size: 64, offset: 576)
!1006 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free", file: !969, line: 78, baseType: !988)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_arg", scope: !971, file: !969, line: 135, baseType: !435, size: 64, offset: 640)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_with_arg_f", scope: !971, file: !969, line: 136, baseType: !1009, size: 64, offset: 704)
!1009 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_alloc_with_arg", file: !969, line: 82, baseType: !1010)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!435, !435, !994, !994}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "free_with_arg_f", scope: !971, file: !969, line: 137, baseType: !1014, size: 64, offset: 768)
!1014 = !DIDerivedType(tag: DW_TAG_typedef, name: "htab_free_with_arg", file: !969, line: 83, baseType: !1015)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DISubroutineType(types: !1017)
!1017 = !{null, !435, !435}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "size_prime_index", scope: !971, file: !969, line: 141, baseType: !7, size: 32, offset: 832)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "modified_noreturn_calls", scope: !965, file: !877, line: 48, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_gc", file: !469, line: 35, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_gc", file: !469, line: 35, size: 128, elements: !1023)
!1023 = !{!1024}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1022, file: !469, line: 35, baseType: !1025, size: 128)
!1025 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_gimple_base", file: !469, line: 33, baseType: !1026)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_gimple_base", file: !469, line: 33, size: 128, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1026, file: !469, line: 33, baseType: !7, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1026, file: !469, line: 33, baseType: !7, size: 32, offset: 32)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1026, file: !469, line: 33, baseType: !1031, size: 64, offset: 64)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 64, elements: !600)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_names", scope: !965, file: !877, line: 51, baseType: !1033, size: 64, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_gc", file: !164, line: 183, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_gc", file: !164, line: 183, size: 128, elements: !1036)
!1036 = !{!1037}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1035, file: !164, line: 183, baseType: !1038, size: 128)
!1038 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_base", file: !164, line: 182, baseType: !1039)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_base", file: !164, line: 182, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1039, file: !164, line: 182, baseType: !7, size: 32)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1039, file: !164, line: 182, baseType: !7, size: 32, offset: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1039, file: !164, line: 182, baseType: !1044, size: 64, offset: 64)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !502, size: 64, elements: !600)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "vop", scope: !965, file: !877, line: 54, baseType: !502, size: 64, offset: 192)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !965, file: !877, line: 57, baseType: !1047, size: 128, offset: 256)
!1047 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_solution", file: !1048, line: 31, size: 128, elements: !1049)
!1048 = !DIFile(filename: "./tree-ssa-alias.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1049 = !{!1050, !1051, !1052, !1053, !1054, !1055, !1056}
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "anything", scope: !1047, file: !1048, line: 35, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal", scope: !1047, file: !1048, line: 39, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "escaped", scope: !1047, file: !1048, line: 42, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "null", scope: !1047, file: !1048, line: 46, baseType: !7, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_global", scope: !1047, file: !1048, line: 50, baseType: !7, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "vars_contains_restrict", scope: !1047, file: !1048, line: 53, baseType: !7, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1047, file: !1048, line: 56, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "bitmap", file: !423, line: 47, baseType: !724)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "callused", scope: !965, file: !877, line: 60, baseType: !1047, size: 128, offset: 384)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "decls_to_pointers", scope: !965, file: !877, line: 64, baseType: !1060, size: 64, offset: 512)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = !DICompositeType(tag: DW_TAG_structure_type, name: "pointer_map_t", file: !1062, line: 33, flags: DIFlagFwdDecl)
!1062 = !DIFile(filename: "./pointer-set.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "free_ssanames", scope: !965, file: !877, line: 67, baseType: !502, size: 64, offset: 576)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "default_defs", scope: !965, file: !877, line: 73, baseType: !968, size: 64, offset: 640)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "syms_to_rename", scope: !965, file: !877, line: 77, baseType: !1057, size: 64, offset: 704)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "in_ssa_p", scope: !965, file: !877, line: 80, baseType: !7, size: 1, offset: 768, flags: DIFlagBitField, extraData: i64 768)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operands", scope: !965, file: !877, line: 82, baseType: !1068, size: 320, offset: 832)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operands", file: !1069, line: 62, size: 320, elements: !1070)
!1069 = !DIFile(filename: "./tree-ssa-operands.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1070 = !{!1071, !1077, !1078, !1079, !1080, !1087}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory", scope: !1068, file: !1069, line: 63, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_operand_memory_d", file: !1069, line: 56, size: 128, elements: !1074)
!1074 = !{!1075, !1076}
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1073, file: !1069, line: 57, baseType: !1072, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !1073, file: !1069, line: 58, baseType: !599, size: 8, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "operand_memory_index", scope: !1068, file: !1069, line: 64, baseType: !7, size: 32, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_operand_mem_size", scope: !1068, file: !1069, line: 66, baseType: !7, size: 32, offset: 96)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "ops_active", scope: !1068, file: !1069, line: 68, baseType: !430, size: 8, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "free_defs", scope: !1068, file: !1069, line: 70, baseType: !1081, size: 64, offset: 192)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "def_optype_d", file: !1069, line: 37, size: 128, elements: !1083)
!1083 = !{!1084, !1085}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1082, file: !1069, line: 39, baseType: !1081, size: 64)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "def_ptr", scope: !1082, file: !1069, line: 40, baseType: !1086, size: 64, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "free_uses", scope: !1068, file: !1069, line: 71, baseType: !1088, size: 64, offset: 256)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "use_optype_d", file: !1069, line: 45, size: 320, elements: !1090)
!1090 = !{!1091, !1092}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1089, file: !1069, line: 47, baseType: !1088, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "use_ptr", scope: !1089, file: !1069, line: 48, baseType: !1093, size: 256, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ssa_use_operand_d", file: !164, line: 1883, size: 256, elements: !1094)
!1094 = !{!1095, !1097, !1098, !1103}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1093, file: !164, line: 1884, baseType: !1096, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1093, file: !164, line: 1885, baseType: !1096, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "loc", scope: !1093, file: !164, line: 1891, baseType: !1099, size: 64, offset: 128)
!1099 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1093, file: !164, line: 1891, size: 64, elements: !1100)
!1100 = !{!1101, !1102}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1099, file: !164, line: 1891, baseType: !477, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !1099, file: !164, line: 1891, baseType: !502, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !1093, file: !164, line: 1892, baseType: !1086, size: 64, offset: 192)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "x_current_loops", scope: !926, file: !927, line: 476, baseType: !1105, size: 64, offset: 256)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loops", file: !146, line: 187, size: 256, elements: !1107)
!1107 = !{!1108, !1109, !1165, !1166}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1106, file: !146, line: 189, baseType: !431, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "larray", scope: !1106, file: !146, line: 192, baseType: !1110, size: 64, offset: 64)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_gc", file: !146, line: 87, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_gc", file: !146, line: 87, size: 128, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1112, file: !146, line: 87, baseType: !1115, size: 128)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_loop_p_base", file: !146, line: 85, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_loop_p_base", file: !146, line: 85, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1116, file: !146, line: 85, baseType: !7, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1116, file: !146, line: 85, baseType: !7, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1116, file: !146, line: 85, baseType: !1121, size: 64, offset: 64)
!1121 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1122, size: 64, elements: !600)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "loop_p", file: !146, line: 84, baseType: !1123)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop", file: !146, line: 100, size: 1216, elements: !1125)
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1135, !1136, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146, !1147, !1155, !1163, !1164}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1124, file: !146, line: 102, baseType: !431, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "ninsns", scope: !1124, file: !146, line: 105, baseType: !7, size: 32, offset: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1124, file: !146, line: 108, baseType: !440, size: 64, offset: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "latch", scope: !1124, file: !146, line: 111, baseType: !440, size: 64, offset: 128)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "lpt_decision", scope: !1124, file: !146, line: 114, baseType: !1131, size: 64, offset: 192)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lpt_decision", file: !146, line: 41, size: 64, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "decision", scope: !1131, file: !146, line: 42, baseType: !145, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "times", scope: !1131, file: !146, line: 43, baseType: !7, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "av_ninsns", scope: !1124, file: !146, line: 117, baseType: !7, size: 32, offset: 256)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_nodes", scope: !1124, file: !146, line: 120, baseType: !7, size: 32, offset: 288)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "superloops", scope: !1124, file: !146, line: 123, baseType: !1110, size: 64, offset: 320)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "inner", scope: !1124, file: !146, line: 126, baseType: !1123, size: 64, offset: 384)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1124, file: !146, line: 129, baseType: !1123, size: 64, offset: 448)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !1124, file: !146, line: 132, baseType: !435, size: 64, offset: 512)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations", scope: !1124, file: !146, line: 139, baseType: !502, size: 64, offset: 576)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_upper_bound", scope: !1124, file: !146, line: 143, baseType: !550, size: 128, offset: 640)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "nb_iterations_estimate", scope: !1124, file: !146, line: 146, baseType: !550, size: 128, offset: 768)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "any_upper_bound", scope: !1124, file: !146, line: 148, baseType: !430, size: 8, offset: 896)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "any_estimate", scope: !1124, file: !146, line: 149, baseType: !430, size: 8, offset: 904)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "estimate_state", scope: !1124, file: !146, line: 153, baseType: !154, size: 32, offset: 928)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "bounds", scope: !1124, file: !146, line: 156, baseType: !1148, size: 64, offset: 960)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nb_iter_bound", file: !146, line: 48, size: 320, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1149, file: !146, line: 50, baseType: !477, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1149, file: !146, line: 59, baseType: !550, size: 128, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "is_exit", scope: !1149, file: !146, line: 64, baseType: !430, size: 8, offset: 192)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1149, file: !146, line: 67, baseType: !1148, size: 64, offset: 256)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1124, file: !146, line: 159, baseType: !1156, size: 64, offset: 1024)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "loop_exit", file: !146, line: 72, size: 256, elements: !1158)
!1158 = !{!1159, !1160, !1161, !1162}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1157, file: !146, line: 74, baseType: !457, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1157, file: !146, line: 77, baseType: !1156, size: 64, offset: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1157, file: !146, line: 78, baseType: !1156, size: 64, offset: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "next_e", scope: !1157, file: !146, line: 81, baseType: !1156, size: 64, offset: 192)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "can_be_parallel", scope: !1124, file: !146, line: 162, baseType: !430, size: 8, offset: 1088)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "single_iv", scope: !1124, file: !146, line: 166, baseType: !502, size: 64, offset: 1152)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "exits", scope: !1106, file: !146, line: 197, baseType: !968, size: 64, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "tree_root", scope: !1106, file: !146, line: 200, baseType: !1123, size: 64, offset: 192)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "value_histograms", scope: !926, file: !927, line: 479, baseType: !968, size: 64, offset: 320)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "decl", scope: !926, file: !927, line: 484, baseType: !502, size: 64, offset: 384)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_decl", scope: !926, file: !927, line: 488, baseType: !502, size: 64, offset: 448)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocal_goto_save_area", scope: !926, file: !927, line: 493, baseType: !502, size: 64, offset: 512)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "local_decls", scope: !926, file: !927, line: 496, baseType: !502, size: 64, offset: 576)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "machine", scope: !926, file: !927, line: 501, baseType: !1173, size: 64, offset: 640)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_function", file: !159, line: 2355, size: 576, elements: !1175)
!1175 = !{!1176, !1179, !1180, !1181, !1182, !1184, !1185, !1190, !1191, !1192, !1193, !1194, !1195}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "stack_locals", scope: !1174, file: !159, line: 2356, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "stack_local_entry", file: !159, line: 2356, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "some_ld_name", scope: !1174, file: !159, line: 2357, baseType: !436, size: 64, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_gpr_size", scope: !1174, file: !159, line: 2358, baseType: !431, size: 32, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "varargs_fpr_size", scope: !1174, file: !159, line: 2359, baseType: !431, size: 32, offset: 160)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_mode_switching", scope: !1174, file: !159, line: 2360, baseType: !1183, size: 128, offset: 192)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 128, elements: !764)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue_nregs", scope: !1174, file: !159, line: 2364, baseType: !431, size: 32, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "cfa", scope: !1174, file: !159, line: 2367, baseType: !1186, size: 128, offset: 384)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "machine_cfa_state", file: !159, line: 2349, size: 128, elements: !1187)
!1187 = !{!1188, !1189}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "reg", scope: !1186, file: !159, line: 2351, baseType: !672, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1186, file: !159, line: 2352, baseType: !557, size: 64, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "call_abi", scope: !1174, file: !159, line: 2371, baseType: !158, size: 32, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "accesses_prev_frame", scope: !1174, file: !159, line: 2374, baseType: !7, size: 1, offset: 544, flags: DIFlagBitField, extraData: i64 544)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "needs_cld", scope: !1174, file: !159, line: 2377, baseType: !7, size: 1, offset: 545, flags: DIFlagBitField, extraData: i64 544)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "use_fast_prologue_epilogue", scope: !1174, file: !159, line: 2381, baseType: !7, size: 1, offset: 546, flags: DIFlagBitField, extraData: i64 544)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "tls_descriptor_call_expanded_p", scope: !1174, file: !159, line: 2392, baseType: !7, size: 1, offset: 547, flags: DIFlagBitField, extraData: i64 544)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "static_chain_on_stack", scope: !1174, file: !159, line: 2396, baseType: !7, size: 1, offset: 548, flags: DIFlagBitField, extraData: i64 544)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "language", scope: !926, file: !927, line: 504, baseType: !1197, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "language_function", file: !927, line: 504, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "used_types_hash", scope: !926, file: !927, line: 507, baseType: !968, size: 64, offset: 768)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "last_stmt_uid", scope: !926, file: !927, line: 510, baseType: !431, size: 32, offset: 832)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "funcdef_no", scope: !926, file: !927, line: 513, baseType: !431, size: 32, offset: 864)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "function_start_locus", scope: !926, file: !927, line: 516, baseType: !495, size: 32, offset: 896)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "function_end_locus", scope: !926, file: !927, line: 519, baseType: !495, size: 32, offset: 928)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "curr_properties", scope: !926, file: !927, line: 522, baseType: !7, size: 32, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "last_verified", scope: !926, file: !927, line: 523, baseType: !7, size: 32, offset: 992)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_reason", scope: !926, file: !927, line: 528, baseType: !436, size: 64, offset: 1024)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_gpr_size", scope: !926, file: !927, line: 535, baseType: !7, size: 8, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "va_list_fpr_size", scope: !926, file: !927, line: 539, baseType: !7, size: 8, offset: 1096, flags: DIFlagBitField, extraData: i64 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "function_frequency", scope: !926, file: !927, line: 543, baseType: !7, size: 2, offset: 1104, flags: DIFlagBitField, extraData: i64 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "calls_setjmp", scope: !926, file: !927, line: 546, baseType: !7, size: 1, offset: 1106, flags: DIFlagBitField, extraData: i64 1088)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "calls_alloca", scope: !926, file: !927, line: 550, baseType: !7, size: 1, offset: 1107, flags: DIFlagBitField, extraData: i64 1088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "has_nonlocal_label", scope: !926, file: !927, line: 554, baseType: !7, size: 1, offset: 1108, flags: DIFlagBitField, extraData: i64 1088)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "cannot_be_copied_set", scope: !926, file: !927, line: 559, baseType: !7, size: 1, offset: 1109, flags: DIFlagBitField, extraData: i64 1088)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "stdarg", scope: !926, file: !927, line: 562, baseType: !7, size: 1, offset: 1110, flags: DIFlagBitField, extraData: i64 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "dont_save_pending_sizes_p", scope: !926, file: !927, line: 571, baseType: !7, size: 1, offset: 1111, flags: DIFlagBitField, extraData: i64 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "after_inlining", scope: !926, file: !927, line: 573, baseType: !7, size: 1, offset: 1112, flags: DIFlagBitField, extraData: i64 1088)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "always_inline_functions_inlined", scope: !926, file: !927, line: 574, baseType: !7, size: 1, offset: 1113, flags: DIFlagBitField, extraData: i64 1088)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "returns_struct", scope: !926, file: !927, line: 581, baseType: !7, size: 1, offset: 1114, flags: DIFlagBitField, extraData: i64 1088)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "returns_pcc_struct", scope: !926, file: !927, line: 585, baseType: !7, size: 1, offset: 1115, flags: DIFlagBitField, extraData: i64 1088)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "after_tree_profile", scope: !926, file: !927, line: 588, baseType: !7, size: 1, offset: 1116, flags: DIFlagBitField, extraData: i64 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "has_local_explicit_reg_vars", scope: !926, file: !927, line: 592, baseType: !7, size: 1, offset: 1117, flags: DIFlagBitField, extraData: i64 1088)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "is_thunk", scope: !926, file: !927, line: 598, baseType: !7, size: 1, offset: 1118, flags: DIFlagBitField, extraData: i64 1088)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !921, file: !164, line: 3254, baseType: !502, size: 64, offset: 1536)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_target", scope: !921, file: !164, line: 3257, baseType: !502, size: 64, offset: 1600)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "function_specific_optimization", scope: !921, file: !164, line: 3258, baseType: !502, size: 64, offset: 1664)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "function_code", scope: !921, file: !164, line: 3264, baseType: !7, size: 11, offset: 1728, flags: DIFlagBitField, extraData: i64 1728)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "built_in_class", scope: !921, file: !164, line: 3265, baseType: !7, size: 2, offset: 1739, flags: DIFlagBitField, extraData: i64 1728)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "static_ctor_flag", scope: !921, file: !164, line: 3267, baseType: !7, size: 1, offset: 1741, flags: DIFlagBitField, extraData: i64 1728)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "static_dtor_flag", scope: !921, file: !164, line: 3268, baseType: !7, size: 1, offset: 1742, flags: DIFlagBitField, extraData: i64 1728)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "uninlinable", scope: !921, file: !164, line: 3269, baseType: !7, size: 1, offset: 1743, flags: DIFlagBitField, extraData: i64 1728)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "possibly_inlined", scope: !921, file: !164, line: 3271, baseType: !7, size: 1, offset: 1744, flags: DIFlagBitField, extraData: i64 1728)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "novops_flag", scope: !921, file: !164, line: 3272, baseType: !7, size: 1, offset: 1745, flags: DIFlagBitField, extraData: i64 1728)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "returns_twice_flag", scope: !921, file: !164, line: 3273, baseType: !7, size: 1, offset: 1746, flags: DIFlagBitField, extraData: i64 1728)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_flag", scope: !921, file: !164, line: 3274, baseType: !7, size: 1, offset: 1747, flags: DIFlagBitField, extraData: i64 1728)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "operator_new_flag", scope: !921, file: !164, line: 3275, baseType: !7, size: 1, offset: 1748, flags: DIFlagBitField, extraData: i64 1728)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "declared_inline_flag", scope: !921, file: !164, line: 3276, baseType: !7, size: 1, offset: 1749, flags: DIFlagBitField, extraData: i64 1728)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "regdecl_flag", scope: !921, file: !164, line: 3277, baseType: !7, size: 1, offset: 1750, flags: DIFlagBitField, extraData: i64 1728)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "no_inline_warning_flag", scope: !921, file: !164, line: 3279, baseType: !7, size: 1, offset: 1751, flags: DIFlagBitField, extraData: i64 1728)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "no_instrument_function_entry_exit", scope: !921, file: !164, line: 3280, baseType: !7, size: 1, offset: 1752, flags: DIFlagBitField, extraData: i64 1728)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "no_limit_stack", scope: !921, file: !164, line: 3281, baseType: !7, size: 1, offset: 1753, flags: DIFlagBitField, extraData: i64 1728)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "disregard_inline_limits", scope: !921, file: !164, line: 3282, baseType: !7, size: 1, offset: 1754, flags: DIFlagBitField, extraData: i64 1728)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pure_flag", scope: !921, file: !164, line: 3283, baseType: !7, size: 1, offset: 1755, flags: DIFlagBitField, extraData: i64 1728)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "looping_const_or_pure_flag", scope: !921, file: !164, line: 3284, baseType: !7, size: 1, offset: 1756, flags: DIFlagBitField, extraData: i64 1728)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !504, file: !164, line: 3394, baseType: !1245, size: 1344)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_type", file: !164, line: 2279, size: 1344, elements: !1246)
!1246 = !{!1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1270, !1271, !1272, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1245, file: !164, line: 2280, baseType: !540, size: 192)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !1245, file: !164, line: 2281, baseType: !502, size: 64, offset: 192)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1245, file: !164, line: 2282, baseType: !502, size: 64, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "size_unit", scope: !1245, file: !164, line: 2283, baseType: !502, size: 64, offset: 320)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "attributes", scope: !1245, file: !164, line: 2284, baseType: !502, size: 64, offset: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "uid", scope: !1245, file: !164, line: 2285, baseType: !7, size: 32, offset: 448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "precision", scope: !1245, file: !164, line: 2287, baseType: !7, size: 10, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "no_force_blk_flag", scope: !1245, file: !164, line: 2288, baseType: !7, size: 1, offset: 490, flags: DIFlagBitField, extraData: i64 480)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "needs_constructing_flag", scope: !1245, file: !164, line: 2289, baseType: !7, size: 1, offset: 491, flags: DIFlagBitField, extraData: i64 480)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "transparent_aggr_flag", scope: !1245, file: !164, line: 2290, baseType: !7, size: 1, offset: 492, flags: DIFlagBitField, extraData: i64 480)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "restrict_flag", scope: !1245, file: !164, line: 2291, baseType: !7, size: 1, offset: 493, flags: DIFlagBitField, extraData: i64 480)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "contains_placeholder_bits", scope: !1245, file: !164, line: 2292, baseType: !7, size: 2, offset: 494, flags: DIFlagBitField, extraData: i64 480)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1245, file: !164, line: 2294, baseType: !7, size: 8, offset: 496, flags: DIFlagBitField, extraData: i64 480)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "string_flag", scope: !1245, file: !164, line: 2296, baseType: !7, size: 1, offset: 504, flags: DIFlagBitField, extraData: i64 480)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_0", scope: !1245, file: !164, line: 2297, baseType: !7, size: 1, offset: 505, flags: DIFlagBitField, extraData: i64 480)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_1", scope: !1245, file: !164, line: 2298, baseType: !7, size: 1, offset: 506, flags: DIFlagBitField, extraData: i64 480)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_2", scope: !1245, file: !164, line: 2299, baseType: !7, size: 1, offset: 507, flags: DIFlagBitField, extraData: i64 480)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_3", scope: !1245, file: !164, line: 2300, baseType: !7, size: 1, offset: 508, flags: DIFlagBitField, extraData: i64 480)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_4", scope: !1245, file: !164, line: 2301, baseType: !7, size: 1, offset: 509, flags: DIFlagBitField, extraData: i64 480)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_5", scope: !1245, file: !164, line: 2302, baseType: !7, size: 1, offset: 510, flags: DIFlagBitField, extraData: i64 480)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "lang_flag_6", scope: !1245, file: !164, line: 2303, baseType: !7, size: 1, offset: 511, flags: DIFlagBitField, extraData: i64 480)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "align", scope: !1245, file: !164, line: 2305, baseType: !7, size: 32, offset: 512)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "alias_set", scope: !1245, file: !164, line: 2306, baseType: !794, size: 32, offset: 544)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "pointer_to", scope: !1245, file: !164, line: 2307, baseType: !502, size: 64, offset: 576)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "reference_to", scope: !1245, file: !164, line: 2308, baseType: !502, size: 64, offset: 640)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1245, file: !164, line: 2314, baseType: !1273, size: 64, offset: 704)
!1273 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "tree_type_symtab", file: !164, line: 2309, size: 64, elements: !1274)
!1274 = !{!1275, !1276, !1277}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !1273, file: !164, line: 2310, baseType: !431, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1273, file: !164, line: 2311, baseType: !436, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "die", scope: !1273, file: !164, line: 2312, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1279, size: 64)
!1279 = !DICompositeType(tag: DW_TAG_structure_type, name: "die_struct", file: !164, line: 2277, flags: DIFlagFwdDecl)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1245, file: !164, line: 2315, baseType: !502, size: 64, offset: 768)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "minval", scope: !1245, file: !164, line: 2316, baseType: !502, size: 64, offset: 832)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "maxval", scope: !1245, file: !164, line: 2317, baseType: !502, size: 64, offset: 896)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "next_variant", scope: !1245, file: !164, line: 2318, baseType: !502, size: 64, offset: 960)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "main_variant", scope: !1245, file: !164, line: 2319, baseType: !502, size: 64, offset: 1024)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !1245, file: !164, line: 2320, baseType: !502, size: 64, offset: 1088)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1245, file: !164, line: 2321, baseType: !502, size: 64, offset: 1152)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "canonical", scope: !1245, file: !164, line: 2322, baseType: !502, size: 64, offset: 1216)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "lang_specific", scope: !1245, file: !164, line: 2324, baseType: !1289, size: 64, offset: 1280)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DICompositeType(tag: DW_TAG_structure_type, name: "lang_type", file: !164, line: 2324, flags: DIFlagFwdDecl)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !504, file: !164, line: 3395, baseType: !1292, size: 320)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_list", file: !164, line: 1469, size: 320, elements: !1293)
!1293 = !{!1294, !1295, !1296}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1292, file: !164, line: 1470, baseType: !540, size: 192)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "purpose", scope: !1292, file: !164, line: 1471, baseType: !502, size: 64, offset: 192)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1292, file: !164, line: 1472, baseType: !502, size: 64, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !504, file: !164, line: 3396, baseType: !1298, size: 320)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_vec", file: !164, line: 1482, size: 320, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1298, file: !164, line: 1483, baseType: !540, size: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1298, file: !164, line: 1484, baseType: !431, size: 32, offset: 192)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !1298, file: !164, line: 1485, baseType: !1044, size: 64, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "exp", scope: !504, file: !164, line: 3397, baseType: !1304, size: 384)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_exp", file: !164, line: 1829, size: 384, elements: !1305)
!1305 = !{!1306, !1307, !1308, !1309}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1304, file: !164, line: 1830, baseType: !540, size: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1304, file: !164, line: 1831, baseType: !495, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1304, file: !164, line: 1832, baseType: !502, size: 64, offset: 256)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "operands", scope: !1304, file: !164, line: 1835, baseType: !1044, size: 64, offset: 320)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "ssa_name", scope: !504, file: !164, line: 3398, baseType: !1311, size: 704)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_ssa_name", file: !164, line: 1898, size: 704, elements: !1312)
!1312 = !{!1313, !1314, !1315, !1316, !1317, !1322}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1311, file: !164, line: 1899, baseType: !540, size: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "var", scope: !1311, file: !164, line: 1902, baseType: !502, size: 64, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "def_stmt", scope: !1311, file: !164, line: 1905, baseType: !477, size: 64, offset: 256)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !1311, file: !164, line: 1908, baseType: !7, size: 32, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ptr_info", scope: !1311, file: !164, line: 1911, baseType: !1318, size: 64, offset: 384)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ptr_info_def", file: !877, line: 117, size: 128, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pt", scope: !1319, file: !877, line: 120, baseType: !1047, size: 128)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "imm_uses", scope: !1311, file: !164, line: 1914, baseType: !1093, size: 256, offset: 448)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !504, file: !164, line: 3399, baseType: !1324, size: 704)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_block", file: !164, line: 2008, size: 704, elements: !1325)
!1325 = !{!1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1324, file: !164, line: 2009, baseType: !540, size: 192)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_flag", scope: !1324, file: !164, line: 2011, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "block_num", scope: !1324, file: !164, line: 2012, baseType: !7, size: 31, offset: 193, flags: DIFlagBitField, extraData: i64 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1324, file: !164, line: 2014, baseType: !495, size: 32, offset: 224)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1324, file: !164, line: 2016, baseType: !502, size: 64, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "nonlocalized_vars", scope: !1324, file: !164, line: 2017, baseType: !1033, size: 64, offset: 320)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "subblocks", scope: !1324, file: !164, line: 2019, baseType: !502, size: 64, offset: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "supercontext", scope: !1324, file: !164, line: 2020, baseType: !502, size: 64, offset: 448)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "abstract_origin", scope: !1324, file: !164, line: 2021, baseType: !502, size: 64, offset: 512)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_origin", scope: !1324, file: !164, line: 2022, baseType: !502, size: 64, offset: 576)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fragment_chain", scope: !1324, file: !164, line: 2023, baseType: !502, size: 64, offset: 640)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "binfo", scope: !504, file: !164, line: 3400, baseType: !1338, size: 832)
!1338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_binfo", file: !164, line: 2430, size: 832, elements: !1339)
!1339 = !{!1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349}
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1338, file: !164, line: 2431, baseType: !540, size: 192)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1338, file: !164, line: 2433, baseType: !502, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "vtable", scope: !1338, file: !164, line: 2434, baseType: !502, size: 64, offset: 256)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "virtuals", scope: !1338, file: !164, line: 2435, baseType: !502, size: 64, offset: 320)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "vptr_field", scope: !1338, file: !164, line: 2436, baseType: !502, size: 64, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "base_accesses", scope: !1338, file: !164, line: 2437, baseType: !1033, size: 64, offset: 448)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "inheritance", scope: !1338, file: !164, line: 2438, baseType: !502, size: 64, offset: 512)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_subvtt", scope: !1338, file: !164, line: 2440, baseType: !502, size: 64, offset: 576)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "vtt_vptr", scope: !1338, file: !164, line: 2441, baseType: !502, size: 64, offset: 640)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "base_binfos", scope: !1338, file: !164, line: 2443, baseType: !1350, size: 128, offset: 704)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_tree_none", file: !164, line: 182, baseType: !1351)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_tree_none", file: !164, line: 182, size: 128, elements: !1352)
!1352 = !{!1353}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1351, file: !164, line: 182, baseType: !1038, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_list", scope: !504, file: !164, line: 3401, baseType: !1355, size: 320)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list", file: !164, line: 3327, size: 320, elements: !1356)
!1356 = !{!1357, !1358, !1365}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1355, file: !164, line: 3329, baseType: !540, size: 192)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1355, file: !164, line: 3330, baseType: !1359, size: 64, offset: 192)
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1360, size: 64)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_statement_list_node", file: !164, line: 3320, size: 192, elements: !1361)
!1361 = !{!1362, !1363, !1364}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1360, file: !164, line: 3322, baseType: !1359, size: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1360, file: !164, line: 3323, baseType: !1359, size: 64, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !1360, file: !164, line: 3324, baseType: !502, size: 64, offset: 128)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1355, file: !164, line: 3331, baseType: !1359, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "constructor", scope: !504, file: !164, line: 3402, baseType: !1367, size: 256)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_constructor", file: !164, line: 1540, size: 256, elements: !1368)
!1368 = !{!1369, !1370}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1367, file: !164, line: 1541, baseType: !540, size: 192)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "elts", scope: !1367, file: !164, line: 1542, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_gc", file: !164, line: 1538, baseType: !1373)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_gc", file: !164, line: 1538, size: 192, elements: !1374)
!1374 = !{!1375}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1373, file: !164, line: 1538, baseType: !1376, size: 192)
!1376 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_constructor_elt_base", file: !164, line: 1537, baseType: !1377)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_constructor_elt_base", file: !164, line: 1537, size: 192, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1377, file: !164, line: 1537, baseType: !7, size: 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1377, file: !164, line: 1537, baseType: !7, size: 32, offset: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vec", scope: !1377, file: !164, line: 1537, baseType: !1382, size: 128, offset: 64)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 128, elements: !600)
!1383 = !DIDerivedType(tag: DW_TAG_typedef, name: "constructor_elt", file: !164, line: 1535, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "constructor_elt_d", file: !164, line: 1532, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1384, file: !164, line: 1533, baseType: !502, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1384, file: !164, line: 1534, baseType: !502, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "omp_clause", scope: !504, file: !164, line: 3403, baseType: !1389, size: 512)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_omp_clause", file: !164, line: 1938, size: 512, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394, !1400, !1401, !1402}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1389, file: !164, line: 1939, baseType: !540, size: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1389, file: !164, line: 1940, baseType: !495, size: 32, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1389, file: !164, line: 1941, baseType: !163, size: 32, offset: 224)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "subcode", scope: !1389, file: !164, line: 1946, baseType: !1395, size: 32, offset: 256)
!1395 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "omp_clause_subcode", file: !164, line: 1942, size: 32, elements: !1396)
!1396 = !{!1397, !1398, !1399}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "default_kind", scope: !1395, file: !164, line: 1943, baseType: !182, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "schedule_kind", scope: !1395, file: !164, line: 1944, baseType: !189, size: 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "reduction_code", scope: !1395, file: !164, line: 1945, baseType: !196, size: 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_init", scope: !1389, file: !164, line: 1950, baseType: !466, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_reduction_merge", scope: !1389, file: !164, line: 1951, baseType: !466, size: 64, offset: 384)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1389, file: !164, line: 1953, baseType: !1044, size: 64, offset: 448)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "optimization", scope: !504, file: !164, line: 3404, baseType: !1404, size: 1664)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_optimization_option", file: !164, line: 3337, size: 1664, elements: !1405)
!1405 = !{!1406, !1407}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1404, file: !164, line: 3338, baseType: !540, size: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1404, file: !164, line: 3341, baseType: !1408, size: 1472, offset: 192)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_optimization", file: !1409, line: 410, size: 1472, elements: !1410)
!1409 = !DIFile(filename: "./options.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1410 = !{!1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563, !1564, !1565, !1566, !1567, !1568, !1569, !1570, !1571, !1572, !1573, !1574}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "align_functions", scope: !1408, file: !1409, line: 412, baseType: !431, size: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "align_jumps", scope: !1408, file: !1409, line: 413, baseType: !431, size: 32, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "align_labels", scope: !1408, file: !1409, line: 414, baseType: !431, size: 32, offset: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "align_loops", scope: !1408, file: !1409, line: 415, baseType: !431, size: 32, offset: 96)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns", scope: !1408, file: !1409, line: 416, baseType: !431, size: 32, offset: 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_stalled_insns_dep", scope: !1408, file: !1409, line: 417, baseType: !431, size: 32, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "optimize", scope: !1408, file: !1409, line: 418, baseType: !430, size: 8, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "optimize_size", scope: !1408, file: !1409, line: 419, baseType: !430, size: 8, offset: 200)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "flag_argument_noalias", scope: !1408, file: !1409, line: 420, baseType: !1420, size: 8, offset: 208)
!1420 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "flag_asynchronous_unwind_tables", scope: !1408, file: !1409, line: 421, baseType: !1420, size: 8, offset: 216)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_on_count_reg", scope: !1408, file: !1409, line: 422, baseType: !1420, size: 8, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_probabilities", scope: !1408, file: !1409, line: 423, baseType: !1420, size: 8, offset: 232)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize", scope: !1408, file: !1409, line: 424, baseType: !1420, size: 8, offset: 240)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flag_branch_target_load_optimize2", scope: !1408, file: !1409, line: 425, baseType: !1420, size: 8, offset: 248)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "flag_btr_bb_exclusive", scope: !1408, file: !1409, line: 426, baseType: !1420, size: 8, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "flag_caller_saves", scope: !1408, file: !1409, line: 427, baseType: !1420, size: 8, offset: 264)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_common", scope: !1408, file: !1409, line: 428, baseType: !1420, size: 8, offset: 272)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "flag_conserve_stack", scope: !1408, file: !1409, line: 429, baseType: !1420, size: 8, offset: 280)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cprop_registers", scope: !1408, file: !1409, line: 430, baseType: !1420, size: 8, offset: 288)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "flag_crossjumping", scope: !1408, file: !1409, line: 431, baseType: !1420, size: 8, offset: 296)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cse_follow_jumps", scope: !1408, file: !1409, line: 432, baseType: !1420, size: 8, offset: 304)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_fortran_rules", scope: !1408, file: !1409, line: 433, baseType: !1420, size: 8, offset: 312)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "flag_cx_limited_range", scope: !1408, file: !1409, line: 434, baseType: !1420, size: 8, offset: 320)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "flag_data_sections", scope: !1408, file: !1409, line: 435, baseType: !1420, size: 8, offset: 328)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dce", scope: !1408, file: !1409, line: 436, baseType: !1420, size: 8, offset: 336)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "flag_defer_pop", scope: !1408, file: !1409, line: 437, baseType: !1420, size: 8, offset: 344)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delayed_branch", scope: !1408, file: !1409, line: 438, baseType: !1420, size: 8, offset: 352)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "flag_delete_null_pointer_checks", scope: !1408, file: !1409, line: 439, baseType: !1420, size: 8, offset: 360)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "flag_dse", scope: !1408, file: !1409, line: 440, baseType: !1420, size: 8, offset: 368)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "flag_early_inlining", scope: !1408, file: !1409, line: 441, baseType: !1420, size: 8, offset: 376)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "flag_exceptions", scope: !1408, file: !1409, line: 442, baseType: !1420, size: 8, offset: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flag_expensive_optimizations", scope: !1408, file: !1409, line: 443, baseType: !1420, size: 8, offset: 392)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "flag_finite_math_only", scope: !1408, file: !1409, line: 444, baseType: !1420, size: 8, offset: 400)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "flag_float_store", scope: !1408, file: !1409, line: 445, baseType: !1420, size: 8, offset: 408)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "flag_forward_propagate", scope: !1408, file: !1409, line: 446, baseType: !1420, size: 8, offset: 416)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse", scope: !1408, file: !1409, line: 447, baseType: !1420, size: 8, offset: 424)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_after_reload", scope: !1408, file: !1409, line: 448, baseType: !1420, size: 8, offset: 432)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_las", scope: !1408, file: !1409, line: 449, baseType: !1420, size: 8, offset: 440)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_lm", scope: !1408, file: !1409, line: 450, baseType: !1420, size: 8, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "flag_gcse_sm", scope: !1408, file: !1409, line: 451, baseType: !1420, size: 8, offset: 456)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "flag_graphite_identity", scope: !1408, file: !1409, line: 452, baseType: !1420, size: 8, offset: 464)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "flag_guess_branch_prob", scope: !1408, file: !1409, line: 453, baseType: !1420, size: 8, offset: 472)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion", scope: !1408, file: !1409, line: 454, baseType: !1420, size: 8, offset: 480)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "flag_if_conversion2", scope: !1408, file: !1409, line: 455, baseType: !1420, size: 8, offset: 488)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions", scope: !1408, file: !1409, line: 456, baseType: !1420, size: 8, offset: 496)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_functions_called_once", scope: !1408, file: !1409, line: 457, baseType: !1420, size: 8, offset: 504)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flag_inline_small_functions", scope: !1408, file: !1409, line: 458, baseType: !1420, size: 8, offset: 512)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp", scope: !1408, file: !1409, line: 459, baseType: !1420, size: 8, offset: 520)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_cp_clone", scope: !1408, file: !1409, line: 460, baseType: !1420, size: 8, offset: 528)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_matrix_reorg", scope: !1408, file: !1409, line: 461, baseType: !1420, size: 8, offset: 536)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pta", scope: !1408, file: !1409, line: 462, baseType: !1420, size: 8, offset: 544)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_pure_const", scope: !1408, file: !1409, line: 463, baseType: !1420, size: 8, offset: 552)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_reference", scope: !1408, file: !1409, line: 464, baseType: !1420, size: 8, offset: 560)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_sra", scope: !1408, file: !1409, line: 465, baseType: !1420, size: 8, offset: 568)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ipa_type_escape", scope: !1408, file: !1409, line: 466, baseType: !1420, size: 8, offset: 576)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ivopts", scope: !1408, file: !1409, line: 467, baseType: !1420, size: 8, offset: 584)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "flag_jump_tables", scope: !1408, file: !1409, line: 468, baseType: !1420, size: 8, offset: 592)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_block", scope: !1408, file: !1409, line: 469, baseType: !1420, size: 8, offset: 600)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_interchange", scope: !1408, file: !1409, line: 470, baseType: !1420, size: 8, offset: 608)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_parallelize_all", scope: !1408, file: !1409, line: 471, baseType: !1420, size: 8, offset: 616)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "flag_loop_strip_mine", scope: !1408, file: !1409, line: 472, baseType: !1420, size: 8, offset: 624)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "flag_lto_report", scope: !1408, file: !1409, line: 473, baseType: !1420, size: 8, offset: 632)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "flag_ltrans", scope: !1408, file: !1409, line: 474, baseType: !1420, size: 8, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "flag_errno_math", scope: !1408, file: !1409, line: 475, baseType: !1420, size: 8, offset: 648)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "flag_merge_constants", scope: !1408, file: !1409, line: 476, baseType: !1420, size: 8, offset: 656)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "flag_modulo_sched", scope: !1408, file: !1409, line: 477, baseType: !1420, size: 8, offset: 664)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "flag_move_loop_invariants", scope: !1408, file: !1409, line: 478, baseType: !1420, size: 8, offset: 672)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "flag_non_call_exceptions", scope: !1408, file: !1409, line: 479, baseType: !1420, size: 8, offset: 680)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "flag_omit_frame_pointer", scope: !1408, file: !1409, line: 480, baseType: !1420, size: 8, offset: 688)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "flag_regmove", scope: !1408, file: !1409, line: 481, baseType: !1420, size: 8, offset: 696)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flag_optimize_sibling_calls", scope: !1408, file: !1409, line: 482, baseType: !1420, size: 8, offset: 704)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pack_struct", scope: !1408, file: !1409, line: 483, baseType: !1420, size: 8, offset: 712)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peel_loops", scope: !1408, file: !1409, line: 484, baseType: !1420, size: 8, offset: 720)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flag_no_peephole", scope: !1408, file: !1409, line: 485, baseType: !1420, size: 8, offset: 728)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "flag_peephole2", scope: !1408, file: !1409, line: 486, baseType: !1420, size: 8, offset: 736)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flag_predictive_commoning", scope: !1408, file: !1409, line: 487, baseType: !1420, size: 8, offset: 744)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "flag_prefetch_loop_arrays", scope: !1408, file: !1409, line: 488, baseType: !1420, size: 8, offset: 752)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "flag_pcc_struct_return", scope: !1408, file: !1409, line: 489, baseType: !1420, size: 8, offset: 760)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rename_registers", scope: !1408, file: !1409, line: 490, baseType: !1420, size: 8, offset: 768)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks", scope: !1408, file: !1409, line: 491, baseType: !1420, size: 8, offset: 776)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_blocks_and_partition", scope: !1408, file: !1409, line: 492, baseType: !1420, size: 8, offset: 784)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "flag_reorder_functions", scope: !1408, file: !1409, line: 493, baseType: !1420, size: 8, offset: 792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rerun_cse_after_loop", scope: !1408, file: !1409, line: 494, baseType: !1420, size: 8, offset: 800)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "flag_resched_modulo_sched", scope: !1408, file: !1409, line: 495, baseType: !1420, size: 8, offset: 808)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "flag_rounding_math", scope: !1408, file: !1409, line: 496, baseType: !1420, size: 8, offset: 816)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_critical_path_heuristic", scope: !1408, file: !1409, line: 497, baseType: !1420, size: 8, offset: 824)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_dep_count_heuristic", scope: !1408, file: !1409, line: 498, baseType: !1420, size: 8, offset: 832)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_group_heuristic", scope: !1408, file: !1409, line: 499, baseType: !1420, size: 8, offset: 840)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_interblock", scope: !1408, file: !1409, line: 500, baseType: !1420, size: 8, offset: 848)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_last_insn_heuristic", scope: !1408, file: !1409, line: 501, baseType: !1420, size: 8, offset: 856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_pressure", scope: !1408, file: !1409, line: 502, baseType: !1420, size: 8, offset: 864)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_rank_heuristic", scope: !1408, file: !1409, line: 503, baseType: !1420, size: 8, offset: 872)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative", scope: !1408, file: !1409, line: 504, baseType: !1420, size: 8, offset: 880)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched_spec_insn_heuristic", scope: !1408, file: !1409, line: 505, baseType: !1420, size: 8, offset: 888)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load", scope: !1408, file: !1409, line: 506, baseType: !1420, size: 8, offset: 896)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_speculative_load_dangerous", scope: !1408, file: !1409, line: 507, baseType: !1420, size: 8, offset: 904)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sched2_use_superblocks", scope: !1408, file: !1409, line: 508, baseType: !1420, size: 8, offset: 912)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns", scope: !1408, file: !1409, line: 509, baseType: !1420, size: 8, offset: 920)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "flag_schedule_insns_after_reload", scope: !1408, file: !1409, line: 510, baseType: !1420, size: 8, offset: 928)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "flag_section_anchors", scope: !1408, file: !1409, line: 511, baseType: !1420, size: 8, offset: 936)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining", scope: !1408, file: !1409, line: 512, baseType: !1420, size: 8, offset: 944)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_pipelining_outer_loops", scope: !1408, file: !1409, line: 513, baseType: !1420, size: 8, offset: 952)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "flag_sel_sched_reschedule_pipelined", scope: !1408, file: !1409, line: 514, baseType: !1420, size: 8, offset: 960)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling", scope: !1408, file: !1409, line: 515, baseType: !1420, size: 8, offset: 968)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "flag_selective_scheduling2", scope: !1408, file: !1409, line: 516, baseType: !1420, size: 8, offset: 976)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signaling_nans", scope: !1408, file: !1409, line: 517, baseType: !1420, size: 8, offset: 984)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "flag_signed_zeros", scope: !1408, file: !1409, line: 518, baseType: !1420, size: 8, offset: 992)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "flag_single_precision_constant", scope: !1408, file: !1409, line: 519, baseType: !1420, size: 8, offset: 1000)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_ivs_in_unroller", scope: !1408, file: !1409, line: 520, baseType: !1420, size: 8, offset: 1008)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "flag_split_wide_types", scope: !1408, file: !1409, line: 521, baseType: !1420, size: 8, offset: 1016)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "flag_strict_aliasing", scope: !1408, file: !1409, line: 522, baseType: !1420, size: 8, offset: 1024)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "flag_thread_jumps", scope: !1408, file: !1409, line: 523, baseType: !1420, size: 8, offset: 1032)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "flag_toplevel_reorder", scope: !1408, file: !1409, line: 524, baseType: !1420, size: 8, offset: 1040)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapping_math", scope: !1408, file: !1409, line: 525, baseType: !1420, size: 8, offset: 1048)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "flag_trapv", scope: !1408, file: !1409, line: 526, baseType: !1420, size: 8, offset: 1056)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_builtin_call_dce", scope: !1408, file: !1409, line: 527, baseType: !1420, size: 8, offset: 1064)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ccp", scope: !1408, file: !1409, line: 528, baseType: !1420, size: 8, offset: 1072)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ch", scope: !1408, file: !1409, line: 529, baseType: !1420, size: 8, offset: 1080)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copy_prop", scope: !1408, file: !1409, line: 530, baseType: !1420, size: 8, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_copyrename", scope: !1408, file: !1409, line: 531, baseType: !1420, size: 8, offset: 1096)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_cselim", scope: !1408, file: !1409, line: 532, baseType: !1420, size: 8, offset: 1104)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dce", scope: !1408, file: !1409, line: 533, baseType: !1420, size: 8, offset: 1112)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dom", scope: !1408, file: !1409, line: 534, baseType: !1420, size: 8, offset: 1120)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_dse", scope: !1408, file: !1409, line: 535, baseType: !1420, size: 8, offset: 1128)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_forwprop", scope: !1408, file: !1409, line: 536, baseType: !1420, size: 8, offset: 1136)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_fre", scope: !1408, file: !1409, line: 537, baseType: !1420, size: 8, offset: 1144)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_distribution", scope: !1408, file: !1409, line: 538, baseType: !1420, size: 8, offset: 1152)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_im", scope: !1408, file: !1409, line: 539, baseType: !1420, size: 8, offset: 1160)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_ivcanon", scope: !1408, file: !1409, line: 540, baseType: !1420, size: 8, offset: 1168)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_linear", scope: !1408, file: !1409, line: 541, baseType: !1420, size: 8, offset: 1176)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_loop_optimize", scope: !1408, file: !1409, line: 542, baseType: !1420, size: 8, offset: 1184)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_live_range_split", scope: !1408, file: !1409, line: 543, baseType: !1420, size: 8, offset: 1192)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_phiprop", scope: !1408, file: !1409, line: 544, baseType: !1420, size: 8, offset: 1200)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pre", scope: !1408, file: !1409, line: 545, baseType: !1420, size: 8, offset: 1208)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_pta", scope: !1408, file: !1409, line: 546, baseType: !1420, size: 8, offset: 1216)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_reassoc", scope: !1408, file: !1409, line: 547, baseType: !1420, size: 8, offset: 1224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_scev_cprop", scope: !1408, file: !1409, line: 548, baseType: !1420, size: 8, offset: 1232)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sink", scope: !1408, file: !1409, line: 549, baseType: !1420, size: 8, offset: 1240)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_slp_vectorize", scope: !1408, file: !1409, line: 550, baseType: !1420, size: 8, offset: 1248)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_sra", scope: !1408, file: !1409, line: 551, baseType: !1420, size: 8, offset: 1256)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_switch_conversion", scope: !1408, file: !1409, line: 552, baseType: !1420, size: 8, offset: 1264)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_ter", scope: !1408, file: !1409, line: 553, baseType: !1420, size: 8, offset: 1272)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vect_loop_version", scope: !1408, file: !1409, line: 554, baseType: !1420, size: 8, offset: 1280)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vectorize", scope: !1408, file: !1409, line: 555, baseType: !1420, size: 8, offset: 1288)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "flag_tree_vrp", scope: !1408, file: !1409, line: 556, baseType: !1420, size: 8, offset: 1296)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unit_at_a_time", scope: !1408, file: !1409, line: 557, baseType: !1420, size: 8, offset: 1304)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_all_loops", scope: !1408, file: !1409, line: 558, baseType: !1420, size: 8, offset: 1312)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unroll_loops", scope: !1408, file: !1409, line: 559, baseType: !1420, size: 8, offset: 1320)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_loop_optimizations", scope: !1408, file: !1409, line: 560, baseType: !1420, size: 8, offset: 1328)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unsafe_math_optimizations", scope: !1408, file: !1409, line: 561, baseType: !1420, size: 8, offset: 1336)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unswitch_loops", scope: !1408, file: !1409, line: 562, baseType: !1420, size: 8, offset: 1344)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "flag_unwind_tables", scope: !1408, file: !1409, line: 563, baseType: !1420, size: 8, offset: 1352)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking", scope: !1408, file: !1409, line: 564, baseType: !1420, size: 8, offset: 1360)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments", scope: !1408, file: !1409, line: 565, baseType: !1420, size: 8, offset: 1368)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_assignments_toggle", scope: !1408, file: !1409, line: 566, baseType: !1420, size: 8, offset: 1376)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "flag_var_tracking_uninit", scope: !1408, file: !1409, line: 567, baseType: !1420, size: 8, offset: 1384)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flag_variable_expansion_in_unroller", scope: !1408, file: !1409, line: 568, baseType: !1420, size: 8, offset: 1392)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flag_vect_cost_model", scope: !1408, file: !1409, line: 569, baseType: !1420, size: 8, offset: 1400)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "flag_value_profile_transformations", scope: !1408, file: !1409, line: 570, baseType: !1420, size: 8, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "flag_web", scope: !1408, file: !1409, line: 571, baseType: !1420, size: 8, offset: 1416)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "flag_whole_program", scope: !1408, file: !1409, line: 572, baseType: !1420, size: 8, offset: 1424)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wpa", scope: !1408, file: !1409, line: 573, baseType: !1420, size: 8, offset: 1432)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "flag_wrapv", scope: !1408, file: !1409, line: 574, baseType: !1420, size: 8, offset: 1440)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "target_option", scope: !504, file: !164, line: 3405, baseType: !1576, size: 384)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tree_target_option", file: !164, line: 3352, size: 384, elements: !1577)
!1577 = !{!1578, !1579}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "common", scope: !1576, file: !164, line: 3353, baseType: !540, size: 192)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "opts", scope: !1576, file: !164, line: 3356, baseType: !1580, size: 192, offset: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cl_target_option", file: !1409, line: 578, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584, !1585, !1586, !1587, !1588, !1589, !1590, !1591, !1592}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags_explicit", scope: !1580, file: !1409, line: 580, baseType: !431, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags_explicit", scope: !1580, file: !1409, line: 581, baseType: !431, size: 32, offset: 32)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "target_flags", scope: !1580, file: !1409, line: 582, baseType: !431, size: 32, offset: 64)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "ix86_isa_flags", scope: !1580, file: !1409, line: 583, baseType: !431, size: 32, offset: 96)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1580, file: !1409, line: 584, baseType: !430, size: 8, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "arch_specified", scope: !1580, file: !1409, line: 585, baseType: !430, size: 8, offset: 136)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "branch_cost", scope: !1580, file: !1409, line: 586, baseType: !430, size: 8, offset: 144)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "fpmath", scope: !1580, file: !1409, line: 587, baseType: !430, size: 8, offset: 152)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "schedule", scope: !1580, file: !1409, line: 588, baseType: !430, size: 8, offset: 160)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "tune", scope: !1580, file: !1409, line: 589, baseType: !430, size: 8, offset: 168)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "tune_defaulted", scope: !1580, file: !1409, line: 590, baseType: !430, size: 8, offset: 176)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "gsops", scope: !479, file: !469, line: 739, baseType: !1594, size: 448)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops", file: !469, line: 350, size: 448, elements: !1595)
!1595 = !{!1596, !1602}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1594, file: !469, line: 353, baseType: !1597, size: 384)
!1597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_ops_base", file: !469, line: 333, size: 384, elements: !1598)
!1598 = !{!1599, !1600, !1601}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1597, file: !469, line: 336, baseType: !482, size: 256)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "def_ops", scope: !1597, file: !469, line: 343, baseType: !1081, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "use_ops", scope: !1597, file: !469, line: 344, baseType: !1088, size: 64, offset: 320)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1594, file: !469, line: 359, baseType: !1044, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "gsmembase", scope: !479, file: !469, line: 740, baseType: !1604, size: 512)
!1604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops_base", file: !469, line: 365, size: 512, elements: !1605)
!1605 = !{!1606, !1607, !1608}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "opbase", scope: !1604, file: !469, line: 368, baseType: !1597, size: 384)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "vdef", scope: !1604, file: !469, line: 373, baseType: !502, size: 64, offset: 384)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vuse", scope: !1604, file: !469, line: 374, baseType: !502, size: 64, offset: 448)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "gsmem", scope: !479, file: !469, line: 741, baseType: !1610, size: 576)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_with_memory_ops", file: !469, line: 380, size: 576, elements: !1611)
!1611 = !{!1612, !1613}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1610, file: !469, line: 383, baseType: !1604, size: 512)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1610, file: !469, line: 389, baseType: !1044, size: 64, offset: 512)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !479, file: !469, line: 742, baseType: !1615, size: 320)
!1615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp", file: !469, line: 395, size: 320, elements: !1616)
!1616 = !{!1617, !1618}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1615, file: !469, line: 397, baseType: !482, size: 256)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1615, file: !469, line: 400, baseType: !466, size: 64, offset: 256)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_bind", scope: !479, file: !469, line: 743, baseType: !1620, size: 448)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_bind", file: !469, line: 406, size: 448, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1620, file: !469, line: 408, baseType: !482, size: 256)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vars", scope: !1620, file: !469, line: 412, baseType: !502, size: 64, offset: 256)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !1620, file: !469, line: 420, baseType: !502, size: 64, offset: 320)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !1620, file: !469, line: 423, baseType: !466, size: 64, offset: 384)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_catch", scope: !479, file: !469, line: 744, baseType: !1627, size: 384)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_catch", file: !469, line: 429, size: 384, elements: !1628)
!1628 = !{!1629, !1630, !1631}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1627, file: !469, line: 431, baseType: !482, size: 256)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1627, file: !469, line: 434, baseType: !502, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1627, file: !469, line: 437, baseType: !466, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_filter", scope: !479, file: !469, line: 745, baseType: !1633, size: 384)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_filter", file: !469, line: 443, size: 384, elements: !1634)
!1634 = !{!1635, !1636, !1637}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1633, file: !469, line: 445, baseType: !482, size: 256)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !1633, file: !469, line: 449, baseType: !502, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "failure", scope: !1633, file: !469, line: 453, baseType: !466, size: 64, offset: 320)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_mnt", scope: !479, file: !469, line: 746, baseType: !1639, size: 320)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_mnt", file: !469, line: 459, size: 320, elements: !1640)
!1640 = !{!1641, !1642}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1639, file: !469, line: 461, baseType: !482, size: 256)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "fndecl", scope: !1639, file: !469, line: 464, baseType: !502, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_phi", scope: !479, file: !469, line: 747, baseType: !1644, size: 768)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_phi", file: !469, line: 469, size: 768, elements: !1645)
!1645 = !{!1646, !1647, !1648, !1649, !1650}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1644, file: !469, line: 471, baseType: !482, size: 256)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !1644, file: !469, line: 474, baseType: !7, size: 32, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1644, file: !469, line: 475, baseType: !7, size: 32, offset: 288)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !1644, file: !469, line: 478, baseType: !502, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1644, file: !469, line: 481, baseType: !1651, size: 384, offset: 384)
!1651 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1652, size: 384, elements: !600)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "phi_arg_d", file: !164, line: 1917, size: 384, elements: !1653)
!1653 = !{!1654, !1655, !1656}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "imm_use", scope: !1652, file: !164, line: 1920, baseType: !1093, size: 256)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !1652, file: !164, line: 1921, baseType: !502, size: 64, offset: 256)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "locus", scope: !1652, file: !164, line: 1922, baseType: !495, size: 32, offset: 320)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_eh_ctrl", scope: !479, file: !469, line: 748, baseType: !1658, size: 320)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_eh_ctrl", file: !469, line: 487, size: 320, elements: !1659)
!1659 = !{!1660, !1661}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1658, file: !469, line: 490, baseType: !482, size: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !1658, file: !469, line: 494, baseType: !431, size: 32, offset: 256)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_try", scope: !479, file: !469, line: 749, baseType: !1663, size: 384)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_try", file: !469, line: 500, size: 384, elements: !1664)
!1664 = !{!1665, !1666, !1667}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1663, file: !469, line: 502, baseType: !482, size: 256)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "eval", scope: !1663, file: !469, line: 506, baseType: !466, size: 64, offset: 256)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1663, file: !469, line: 510, baseType: !466, size: 64, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_wce", scope: !479, file: !469, line: 750, baseType: !1669, size: 320)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_wce", file: !469, line: 529, size: 320, elements: !1670)
!1670 = !{!1671, !1672}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1669, file: !469, line: 531, baseType: !482, size: 256)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !1669, file: !469, line: 540, baseType: !466, size: 64, offset: 256)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_asm", scope: !479, file: !469, line: 751, baseType: !1674, size: 704)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_asm", file: !469, line: 546, size: 704, elements: !1675)
!1675 = !{!1676, !1677, !1678, !1679, !1680, !1681, !1682}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "membase", scope: !1674, file: !469, line: 549, baseType: !1604, size: 512)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1674, file: !469, line: 553, baseType: !436, size: 64, offset: 512)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "ni", scope: !1674, file: !469, line: 557, baseType: !430, size: 8, offset: 576)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "no", scope: !1674, file: !469, line: 558, baseType: !430, size: 8, offset: 584)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "nc", scope: !1674, file: !469, line: 559, baseType: !430, size: 8, offset: 592)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "nl", scope: !1674, file: !469, line: 560, baseType: !430, size: 8, offset: 600)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "op", scope: !1674, file: !469, line: 566, baseType: !1044, size: 64, offset: 640)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_critical", scope: !479, file: !469, line: 752, baseType: !1684, size: 384)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_critical", file: !469, line: 571, size: 384, elements: !1685)
!1685 = !{!1686, !1687}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1684, file: !469, line: 573, baseType: !1615, size: 320)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1684, file: !469, line: 577, baseType: !502, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_for", scope: !479, file: !469, line: 753, baseType: !1689, size: 576)
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_for", file: !469, line: 600, size: 576, elements: !1690)
!1690 = !{!1691, !1692, !1693, !1694, !1703}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1689, file: !469, line: 602, baseType: !1615, size: 320)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1689, file: !469, line: 605, baseType: !502, size: 64, offset: 320)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "collapse", scope: !1689, file: !469, line: 609, baseType: !994, size: 64, offset: 384)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "iter", scope: !1689, file: !469, line: 612, baseType: !1695, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_omp_for_iter", file: !469, line: 581, size: 320, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1701, !1702}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "cond", scope: !1696, file: !469, line: 583, baseType: !196, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1696, file: !469, line: 586, baseType: !502, size: 64, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "initial", scope: !1696, file: !469, line: 589, baseType: !502, size: 64, offset: 128)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "final", scope: !1696, file: !469, line: 592, baseType: !502, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "incr", scope: !1696, file: !469, line: 595, baseType: !502, size: 64, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "pre_body", scope: !1689, file: !469, line: 616, baseType: !466, size: 64, offset: 512)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_parallel", scope: !479, file: !469, line: 754, baseType: !1705, size: 512)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_parallel", file: !469, line: 622, size: 512, elements: !1706)
!1706 = !{!1707, !1708, !1709, !1710}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1705, file: !469, line: 624, baseType: !1615, size: 320)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1705, file: !469, line: 628, baseType: !502, size: 64, offset: 320)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "child_fn", scope: !1705, file: !469, line: 632, baseType: !502, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "data_arg", scope: !1705, file: !469, line: 636, baseType: !502, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_task", scope: !479, file: !469, line: 755, baseType: !1712, size: 704)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_task", file: !469, line: 642, size: 704, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1717}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "par", scope: !1712, file: !469, line: 644, baseType: !1705, size: 512)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "copy_fn", scope: !1712, file: !469, line: 648, baseType: !502, size: 64, offset: 512)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "arg_size", scope: !1712, file: !469, line: 652, baseType: !502, size: 64, offset: 576)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "arg_align", scope: !1712, file: !469, line: 653, baseType: !502, size: 64, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_sections", scope: !479, file: !469, line: 756, baseType: !1719, size: 448)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_sections", file: !469, line: 663, size: 448, elements: !1720)
!1720 = !{!1721, !1722, !1723}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1719, file: !469, line: 665, baseType: !1615, size: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1719, file: !469, line: 668, baseType: !502, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1719, file: !469, line: 673, baseType: !502, size: 64, offset: 384)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_single", scope: !479, file: !469, line: 757, baseType: !1725, size: 384)
!1725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_single", file: !469, line: 694, size: 384, elements: !1726)
!1726 = !{!1727, !1728}
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "omp", scope: !1725, file: !469, line: 696, baseType: !1615, size: 320)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "clauses", scope: !1725, file: !469, line: 699, baseType: !502, size: 64, offset: 320)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_continue", scope: !479, file: !469, line: 758, baseType: !1730, size: 384)
!1730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_continue", file: !469, line: 681, size: 384, elements: !1731)
!1731 = !{!1732, !1733, !1734}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1730, file: !469, line: 683, baseType: !482, size: 256)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "control_def", scope: !1730, file: !469, line: 686, baseType: !502, size: 64, offset: 256)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "control_use", scope: !1730, file: !469, line: 689, baseType: !502, size: 64, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_load", scope: !479, file: !469, line: 759, baseType: !1736, size: 384)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_load", file: !469, line: 707, size: 384, elements: !1737)
!1737 = !{!1738, !1739, !1740}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1736, file: !469, line: 709, baseType: !482, size: 256)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "rhs", scope: !1736, file: !469, line: 712, baseType: !502, size: 64, offset: 256)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "lhs", scope: !1736, file: !469, line: 712, baseType: !502, size: 64, offset: 320)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "gimple_omp_atomic_store", scope: !479, file: !469, line: 760, baseType: !1742, size: 320)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_statement_omp_atomic_store", file: !469, line: 718, size: 320, elements: !1743)
!1743 = !{!1744, !1745}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1742, file: !469, line: 720, baseType: !482, size: 256)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1742, file: !469, line: 723, baseType: !502, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !474, file: !469, line: 138, baseType: !473, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !474, file: !469, line: 139, baseType: !473, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !468, file: !469, line: 146, baseType: !472, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "next_free", scope: !468, file: !469, line: 152, baseType: !466, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !463, file: !135, line: 130, baseType: !672, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !458, file: !135, line: 134, baseType: !435, size: 64, offset: 192)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "goto_block", scope: !458, file: !135, line: 137, baseType: !502, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "goto_locus", scope: !458, file: !135, line: 138, baseType: !495, size: 32, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "dest_idx", scope: !458, file: !135, line: 142, baseType: !7, size: 32, offset: 352)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !458, file: !135, line: 144, baseType: !431, size: 32, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "probability", scope: !458, file: !135, line: 145, baseType: !431, size: 32, offset: 416)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !135, line: 146, baseType: !1758, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_typedef, name: "gcov_type", file: !135, line: 119, baseType: !557)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "succs", scope: !441, file: !135, line: 220, baseType: !444, size: 64, offset: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "aux", scope: !441, file: !135, line: 223, baseType: !435, size: 64, offset: 128)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "loop_father", scope: !441, file: !135, line: 226, baseType: !1123, size: 64, offset: 192)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "dom", scope: !441, file: !135, line: 229, baseType: !1763, size: 128, offset: 256)
!1763 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1764, size: 128, elements: !740)
!1764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1765, size: 64)
!1765 = !DICompositeType(tag: DW_TAG_structure_type, name: "et_node", file: !135, line: 229, flags: DIFlagFwdDecl)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "prev_bb", scope: !441, file: !135, line: 232, baseType: !440, size: 64, offset: 384)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "next_bb", scope: !441, file: !135, line: 233, baseType: !440, size: 64, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "il", scope: !441, file: !135, line: 238, baseType: !1769, size: 64, offset: 512)
!1769 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "basic_block_il_dependent", file: !135, line: 235, size: 64, elements: !1770)
!1770 = !{!1771, !1777}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "gimple", scope: !1769, file: !135, line: 236, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gimple_bb_info", file: !135, line: 273, size: 128, elements: !1774)
!1774 = !{!1775, !1776}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1773, file: !135, line: 275, baseType: !466, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "phi_nodes", scope: !1773, file: !135, line: 278, baseType: !466, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "rtl", scope: !1769, file: !135, line: 237, baseType: !1778, size: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_bb_info", file: !135, line: 259, size: 320, elements: !1780)
!1780 = !{!1781, !1782, !1783, !1784, !1785}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "head_", scope: !1779, file: !135, line: 261, baseType: !672, size: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "end_", scope: !1779, file: !135, line: 262, baseType: !672, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1779, file: !135, line: 266, baseType: !672, size: 64, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "footer", scope: !1779, file: !135, line: 267, baseType: !672, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1779, file: !135, line: 270, baseType: !431, size: 32, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !135, line: 241, baseType: !1758, size: 64, offset: 576)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !441, file: !135, line: 244, baseType: !431, size: 32, offset: 640)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "loop_depth", scope: !441, file: !135, line: 247, baseType: !431, size: 32, offset: 672)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "frequency", scope: !441, file: !135, line: 250, baseType: !431, size: 32, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "discriminator", scope: !441, file: !135, line: 253, baseType: !431, size: 32, offset: 736)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !441, file: !135, line: 256, baseType: !431, size: 32, offset: 768)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_basic_block_heap", file: !135, line: 283, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_basic_block_heap", file: !135, line: 283, size: 128, elements: !1796)
!1796 = !{!1797}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1795, file: !135, line: 283, baseType: !944, size: 128)
!1798 = !{!0}
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfg_hooks", file: !1801, line: 25, size: 1856, elements: !1802)
!1801 = !DIFile(filename: "./cfghooks.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1802 = !{!1803, !1804, !1808, !1863, !1867, !1871, !1875, !1882, !1886, !1890, !1894, !1895, !1899, !1903, !1910, !1914, !1918, !1922, !1926, !1927, !1931, !1932, !1946, !1947, !1948, !1958, !1962, !1966, !1971}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !1801, line: 28, baseType: !436, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "verify_flow_info", scope: !1800, file: !1801, line: 31, baseType: !1805, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!431}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dump_bb", scope: !1800, file: !1801, line: 32, baseType: !1809, size: 64, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !439, !1812, !431, !431}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1814, line: 7, baseType: !1815)
!1814 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "")
!1815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1816, line: 49, size: 1728, elements: !1817)
!1816 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "")
!1817 = !{!1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1833, !1835, !1836, !1837, !1840, !1842, !1843, !1844, !1847, !1849, !1852, !1855, !1856, !1857, !1858, !1859}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1815, file: !1816, line: 51, baseType: !431, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1815, file: !1816, line: 54, baseType: !433, size: 64, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1815, file: !1816, line: 55, baseType: !433, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1815, file: !1816, line: 56, baseType: !433, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1815, file: !1816, line: 57, baseType: !433, size: 64, offset: 256)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1815, file: !1816, line: 58, baseType: !433, size: 64, offset: 320)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1815, file: !1816, line: 59, baseType: !433, size: 64, offset: 384)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1815, file: !1816, line: 60, baseType: !433, size: 64, offset: 448)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1815, file: !1816, line: 61, baseType: !433, size: 64, offset: 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1815, file: !1816, line: 64, baseType: !433, size: 64, offset: 576)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1815, file: !1816, line: 65, baseType: !433, size: 64, offset: 640)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1815, file: !1816, line: 66, baseType: !433, size: 64, offset: 704)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1815, file: !1816, line: 68, baseType: !1831, size: 64, offset: 768)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1816, line: 36, flags: DIFlagFwdDecl)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1815, file: !1816, line: 70, baseType: !1834, size: 64, offset: 832)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1815, file: !1816, line: 72, baseType: !431, size: 32, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1815, file: !1816, line: 73, baseType: !431, size: 32, offset: 928)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1815, file: !1816, line: 74, baseType: !1838, size: 64, offset: 960)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !1839, line: 152, baseType: !557)
!1839 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "")
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1815, file: !1816, line: 77, baseType: !1841, size: 16, offset: 1024)
!1841 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1815, file: !1816, line: 78, baseType: !1420, size: 8, offset: 1040)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1815, file: !1816, line: 79, baseType: !599, size: 8, offset: 1048)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1815, file: !1816, line: 81, baseType: !1845, size: 64, offset: 1088)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1816, line: 43, baseType: null)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1815, file: !1816, line: 89, baseType: !1848, size: 64, offset: 1152)
!1848 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !1839, line: 153, baseType: !557)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1815, file: !1816, line: 91, baseType: !1850, size: 64, offset: 1216)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1816, line: 37, flags: DIFlagFwdDecl)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1815, file: !1816, line: 92, baseType: !1853, size: 64, offset: 1280)
!1853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1854, size: 64)
!1854 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1816, line: 38, flags: DIFlagFwdDecl)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1815, file: !1816, line: 93, baseType: !1834, size: 64, offset: 1344)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1815, file: !1816, line: 94, baseType: !435, size: 64, offset: 1408)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1815, file: !1816, line: 95, baseType: !994, size: 64, offset: 1472)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1815, file: !1816, line: 96, baseType: !431, size: 32, offset: 1536)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1815, file: !1816, line: 98, baseType: !1860, size: 160, offset: 1568)
!1860 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 160, elements: !1861)
!1861 = !{!1862}
!1862 = !DISubrange(count: 20)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "create_basic_block", scope: !1800, file: !1801, line: 37, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!439, !435, !435, !439}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_edge_and_branch", scope: !1800, file: !1801, line: 43, baseType: !1868, size: 64, offset: 256)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!456, !456, !439}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "redirect_edge_and_branch_force", scope: !1800, file: !1801, line: 48, baseType: !1872, size: 64, offset: 320)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DISubroutineType(types: !1874)
!1874 = !{!439, !456, !439}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "can_remove_branch_p", scope: !1800, file: !1801, line: 52, baseType: !1876, size: 64, offset: 384)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DISubroutineType(types: !1878)
!1878 = !{!430, !1879}
!1879 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_edge", file: !423, line: 109, baseType: !1880)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "delete_basic_block", scope: !1800, file: !1801, line: 55, baseType: !1883, size: 64, offset: 448)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DISubroutineType(types: !1885)
!1885 = !{null, !439}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "split_block", scope: !1800, file: !1801, line: 59, baseType: !1887, size: 64, offset: 512)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{!439, !439, !435}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "move_block_after", scope: !1800, file: !1801, line: 62, baseType: !1891, size: 64, offset: 576)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!430, !439, !439}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "can_merge_blocks_p", scope: !1800, file: !1801, line: 65, baseType: !1891, size: 64, offset: 640)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "merge_blocks", scope: !1800, file: !1801, line: 68, baseType: !1896, size: 64, offset: 704)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DISubroutineType(types: !1898)
!1898 = !{null, !439, !439}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "predict_edge", scope: !1800, file: !1801, line: 71, baseType: !1900, size: 64, offset: 768)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{null, !456, !390, !431}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "predicted_by_p", scope: !1800, file: !1801, line: 75, baseType: !1904, size: 64, offset: 832)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!430, !1907, !390}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "const_basic_block", file: !423, line: 112, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !441)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "can_duplicate_block_p", scope: !1800, file: !1801, line: 78, baseType: !1911, size: 64, offset: 896)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!430, !1907}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "duplicate_block", scope: !1800, file: !1801, line: 81, baseType: !1915, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!439, !439}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "split_edge", scope: !1800, file: !1801, line: 85, baseType: !1919, size: 64, offset: 1024)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!439, !456}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "make_forwarder_block", scope: !1800, file: !1801, line: 86, baseType: !1923, size: 64, offset: 1088)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{null, !456}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "tidy_fallthru_edge", scope: !1800, file: !1801, line: 89, baseType: !1923, size: 64, offset: 1152)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "block_ends_with_call_p", scope: !1800, file: !1801, line: 93, baseType: !1928, size: 64, offset: 1216)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!430, !439}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "block_ends_with_condjump_p", scope: !1800, file: !1801, line: 97, baseType: !1911, size: 64, offset: 1280)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "flow_call_edges_add", scope: !1800, file: !1801, line: 106, baseType: !1933, size: 64, offset: 1344)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!431, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "sbitmap", file: !1937, line: 45, baseType: !1938)
!1937 = !DIFile(filename: "./sbitmap.h", directory: "/u/ziyangx/old_or_raw_benchmarks/spec2017-workspace/benchspec/CPU/502.gcc_r/src")
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "simple_bitmap_def", file: !1937, line: 39, size: 192, elements: !1940)
!1940 = !{!1941, !1942, !1943, !1944}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "popcount", scope: !1939, file: !1937, line: 41, baseType: !429, size: 64)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "n_bits", scope: !1939, file: !1937, line: 42, baseType: !7, size: 32, offset: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1939, file: !1937, line: 43, baseType: !7, size: 32, offset: 96)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "elms", scope: !1939, file: !1937, line: 44, baseType: !1945, size: 64, offset: 128)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !555, size: 64, elements: !600)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "execute_on_growing_pred", scope: !1800, file: !1801, line: 110, baseType: !1923, size: 64, offset: 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "execute_on_shrinking_pred", scope: !1800, file: !1801, line: 114, baseType: !1923, size: 64, offset: 1472)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "cfg_hook_duplicate_loop_to_header_edge", scope: !1800, file: !1801, line: 118, baseType: !1949, size: 64, offset: 1536)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!430, !1123, !456, !7, !1936, !456, !1952, !431}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_typedef, name: "VEC_edge_heap", file: !135, line: 152, baseType: !1955)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "VEC_edge_heap", file: !135, line: 152, size: 128, elements: !1956)
!1956 = !{!1957}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1955, file: !135, line: 152, baseType: !449, size: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "lv_add_condition_to_bb", scope: !1800, file: !1801, line: 125, baseType: !1959, size: 64, offset: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !439, !439, !439, !435}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "lv_adjust_loop_header_phi", scope: !1800, file: !1801, line: 128, baseType: !1963, size: 64, offset: 1664)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !439, !439, !439, !456}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "extract_cond_bb_edges", scope: !1800, file: !1801, line: 133, baseType: !1967, size: 64, offset: 1728)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{null, !439, !1970, !1970}
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "flush_pending_stmts", scope: !1800, file: !1801, line: 138, baseType: !1923, size: 64, offset: 1792)
!1972 = !{i32 2, !"Dwarf Version", i32 4}
!1973 = !{i32 2, !"Debug Info Version", i32 3}
!1974 = !{i32 1, !"wchar_size", i32 4}
!1975 = !{!"clang version 9.0.1 (https://github.com/llvm/llvm-project.git c1a0a213378a458fbea1a5c77b315c7dce08fd05)"}
!1976 = distinct !DISubprogram(name: "vprintf", scope: !1977, file: !1977, line: 39, type: !1978, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1988)
!1977 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "")
!1978 = !DISubroutineType(types: !1979)
!1979 = !{!431, !1980, !1981}
!1980 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !436)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1982, file: !3, baseType: !7, size: 32)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1982, file: !3, baseType: !7, size: 32, offset: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1982, file: !3, baseType: !435, size: 64, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1982, file: !3, baseType: !435, size: 64, offset: 128)
!1988 = !{!1989, !1990}
!1989 = !DILocalVariable(name: "__fmt", arg: 1, scope: !1976, file: !1977, line: 39, type: !1980)
!1990 = !DILocalVariable(name: "__arg", arg: 2, scope: !1976, file: !1977, line: 39, type: !1981)
!1991 = !DILocation(line: 0, scope: !1976)
!1992 = !DILocation(line: 41, column: 20, scope: !1976)
!1993 = !DILocation(line: 41, column: 10, scope: !1976)
!1994 = !DILocation(line: 41, column: 3, scope: !1976)
!1995 = distinct !DISubprogram(name: "getchar", scope: !1977, file: !1977, line: 47, type: !1806, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!1996 = !{}
!1997 = !DILocation(line: 49, column: 16, scope: !1995)
!1998 = !DILocation(line: 49, column: 10, scope: !1995)
!1999 = !DILocation(line: 49, column: 3, scope: !1995)
!2000 = distinct !DISubprogram(name: "fgetc_unlocked", scope: !1977, file: !1977, line: 56, type: !2001, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2003)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{!431, !1812}
!2003 = !{!2004}
!2004 = !DILocalVariable(name: "__fp", arg: 1, scope: !2000, file: !1977, line: 56, type: !1812)
!2005 = !DILocation(line: 0, scope: !2000)
!2006 = !DILocation(line: 58, column: 10, scope: !2000)
!2007 = !DILocation(line: 58, column: 3, scope: !2000)
!2008 = distinct !DISubprogram(name: "getc_unlocked", scope: !1977, file: !1977, line: 66, type: !2001, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2009 = !{!2010}
!2010 = !DILocalVariable(name: "__fp", arg: 1, scope: !2008, file: !1977, line: 66, type: !1812)
!2011 = !DILocation(line: 0, scope: !2008)
!2012 = !DILocation(line: 68, column: 10, scope: !2008)
!2013 = !DILocation(line: 68, column: 3, scope: !2008)
!2014 = distinct !DISubprogram(name: "getchar_unlocked", scope: !1977, file: !1977, line: 73, type: !1806, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2015 = !DILocation(line: 75, column: 10, scope: !2014)
!2016 = !DILocation(line: 75, column: 3, scope: !2014)
!2017 = distinct !DISubprogram(name: "putchar", scope: !1977, file: !1977, line: 82, type: !2018, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2020)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!431, !431}
!2020 = !{!2021}
!2021 = !DILocalVariable(name: "__c", arg: 1, scope: !2017, file: !1977, line: 82, type: !431)
!2022 = !DILocation(line: 0, scope: !2017)
!2023 = !DILocation(line: 84, column: 21, scope: !2017)
!2024 = !DILocation(line: 84, column: 10, scope: !2017)
!2025 = !DILocation(line: 84, column: 3, scope: !2017)
!2026 = distinct !DISubprogram(name: "fputc_unlocked", scope: !1977, file: !1977, line: 91, type: !2027, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2029)
!2027 = !DISubroutineType(types: !2028)
!2028 = !{!431, !431, !1812}
!2029 = !{!2030, !2031}
!2030 = !DILocalVariable(name: "__c", arg: 1, scope: !2026, file: !1977, line: 91, type: !431)
!2031 = !DILocalVariable(name: "__stream", arg: 2, scope: !2026, file: !1977, line: 91, type: !1812)
!2032 = !DILocation(line: 0, scope: !2026)
!2033 = !DILocation(line: 93, column: 10, scope: !2026)
!2034 = !DILocation(line: 93, column: 3, scope: !2026)
!2035 = distinct !DISubprogram(name: "putc_unlocked", scope: !1977, file: !1977, line: 101, type: !2027, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2036)
!2036 = !{!2037, !2038}
!2037 = !DILocalVariable(name: "__c", arg: 1, scope: !2035, file: !1977, line: 101, type: !431)
!2038 = !DILocalVariable(name: "__stream", arg: 2, scope: !2035, file: !1977, line: 101, type: !1812)
!2039 = !DILocation(line: 0, scope: !2035)
!2040 = !DILocation(line: 103, column: 10, scope: !2035)
!2041 = !DILocation(line: 103, column: 3, scope: !2035)
!2042 = distinct !DISubprogram(name: "putchar_unlocked", scope: !1977, file: !1977, line: 108, type: !2018, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2043)
!2043 = !{!2044}
!2044 = !DILocalVariable(name: "__c", arg: 1, scope: !2042, file: !1977, line: 108, type: !431)
!2045 = !DILocation(line: 0, scope: !2042)
!2046 = !DILocation(line: 110, column: 10, scope: !2042)
!2047 = !DILocation(line: 110, column: 3, scope: !2042)
!2048 = distinct !DISubprogram(name: "getline", scope: !1977, file: !1977, line: 118, type: !2049, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2052)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!2051, !432, !1792, !1812}
!2051 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !1839, line: 193, baseType: !557)
!2052 = !{!2053, !2054, !2055}
!2053 = !DILocalVariable(name: "__lineptr", arg: 1, scope: !2048, file: !1977, line: 118, type: !432)
!2054 = !DILocalVariable(name: "__n", arg: 2, scope: !2048, file: !1977, line: 118, type: !1792)
!2055 = !DILocalVariable(name: "__stream", arg: 3, scope: !2048, file: !1977, line: 118, type: !1812)
!2056 = !DILocation(line: 0, scope: !2048)
!2057 = !DILocation(line: 120, column: 10, scope: !2048)
!2058 = !DILocation(line: 120, column: 3, scope: !2048)
!2059 = distinct !DISubprogram(name: "feof_unlocked", scope: !1977, file: !1977, line: 128, type: !2001, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2060)
!2060 = !{!2061}
!2061 = !DILocalVariable(name: "__stream", arg: 1, scope: !2059, file: !1977, line: 128, type: !1812)
!2062 = !DILocation(line: 0, scope: !2059)
!2063 = !DILocation(line: 130, column: 10, scope: !2059)
!2064 = !DILocation(line: 130, column: 3, scope: !2059)
!2065 = distinct !DISubprogram(name: "ferror_unlocked", scope: !1977, file: !1977, line: 135, type: !2001, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2066)
!2066 = !{!2067}
!2067 = !DILocalVariable(name: "__stream", arg: 1, scope: !2065, file: !1977, line: 135, type: !1812)
!2068 = !DILocation(line: 0, scope: !2065)
!2069 = !DILocation(line: 137, column: 10, scope: !2065)
!2070 = !DILocation(line: 137, column: 3, scope: !2065)
!2071 = distinct !DISubprogram(name: "tolower", scope: !2072, file: !2072, line: 207, type: !2018, scopeLine: 208, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2073)
!2072 = !DIFile(filename: "/usr/include/ctype.h", directory: "")
!2073 = !{!2074}
!2074 = !DILocalVariable(name: "__c", arg: 1, scope: !2071, file: !2072, line: 207, type: !431)
!2075 = !DILocation(line: 0, scope: !2071)
!2076 = !DILocation(line: 209, column: 22, scope: !2071)
!2077 = !DILocation(line: 209, column: 39, scope: !2071)
!2078 = !DILocation(line: 209, column: 38, scope: !2071)
!2079 = !DILocation(line: 209, column: 37, scope: !2071)
!2080 = !DILocation(line: 209, column: 10, scope: !2071)
!2081 = !DILocation(line: 209, column: 3, scope: !2071)
!2082 = distinct !DISubprogram(name: "toupper", scope: !2072, file: !2072, line: 213, type: !2018, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2083)
!2083 = !{!2084}
!2084 = !DILocalVariable(name: "__c", arg: 1, scope: !2082, file: !2072, line: 213, type: !431)
!2085 = !DILocation(line: 0, scope: !2082)
!2086 = !DILocation(line: 215, column: 22, scope: !2082)
!2087 = !DILocation(line: 215, column: 39, scope: !2082)
!2088 = !DILocation(line: 215, column: 38, scope: !2082)
!2089 = !DILocation(line: 215, column: 37, scope: !2082)
!2090 = !DILocation(line: 215, column: 10, scope: !2082)
!2091 = !DILocation(line: 215, column: 3, scope: !2082)
!2092 = distinct !DISubprogram(name: "atoi", scope: !2093, file: !2093, line: 361, type: !2094, scopeLine: 362, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2093 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!431, !436}
!2096 = !{!2097}
!2097 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2092, file: !2093, line: 361, type: !436)
!2098 = !DILocation(line: 0, scope: !2092)
!2099 = !DILocation(line: 363, column: 16, scope: !2092)
!2100 = !DILocation(line: 363, column: 10, scope: !2092)
!2101 = !DILocation(line: 363, column: 3, scope: !2092)
!2102 = distinct !DISubprogram(name: "atol", scope: !2093, file: !2093, line: 366, type: !2103, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!557, !436}
!2105 = !{!2106}
!2106 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2102, file: !2093, line: 366, type: !436)
!2107 = !DILocation(line: 0, scope: !2102)
!2108 = !DILocation(line: 368, column: 10, scope: !2102)
!2109 = !DILocation(line: 368, column: 3, scope: !2102)
!2110 = distinct !DISubprogram(name: "atoll", scope: !2093, file: !2093, line: 373, type: !2111, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2114)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!2113, !436}
!2113 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!2114 = !{!2115}
!2115 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2110, file: !2093, line: 373, type: !436)
!2116 = !DILocation(line: 0, scope: !2110)
!2117 = !DILocation(line: 375, column: 10, scope: !2110)
!2118 = !DILocation(line: 375, column: 3, scope: !2110)
!2119 = distinct !DISubprogram(name: "bsearch", scope: !2120, file: !2120, line: 20, type: !2121, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2124)
!2120 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-bsearch.h", directory: "")
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!435, !979, !979, !994, !994, !2123}
!2123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !2093, line: 808, baseType: !983)
!2124 = !{!2125, !2126, !2127, !2128, !2129, !2130, !2131, !2132, !2133, !2134}
!2125 = !DILocalVariable(name: "__key", arg: 1, scope: !2119, file: !2120, line: 20, type: !979)
!2126 = !DILocalVariable(name: "__base", arg: 2, scope: !2119, file: !2120, line: 20, type: !979)
!2127 = !DILocalVariable(name: "__nmemb", arg: 3, scope: !2119, file: !2120, line: 20, type: !994)
!2128 = !DILocalVariable(name: "__size", arg: 4, scope: !2119, file: !2120, line: 20, type: !994)
!2129 = !DILocalVariable(name: "__compar", arg: 5, scope: !2119, file: !2120, line: 21, type: !2123)
!2130 = !DILocalVariable(name: "__l", scope: !2119, file: !2120, line: 23, type: !994)
!2131 = !DILocalVariable(name: "__u", scope: !2119, file: !2120, line: 23, type: !994)
!2132 = !DILocalVariable(name: "__idx", scope: !2119, file: !2120, line: 23, type: !994)
!2133 = !DILocalVariable(name: "__p", scope: !2119, file: !2120, line: 24, type: !979)
!2134 = !DILocalVariable(name: "__comparison", scope: !2119, file: !2120, line: 25, type: !431)
!2135 = !DILocation(line: 0, scope: !2119)
!2136 = !DILocation(line: 29, column: 3, scope: !2119)
!2137 = !DILocation(line: 27, column: 7, scope: !2119)
!2138 = !DILocation(line: 29, column: 14, scope: !2119)
!2139 = !DILocation(line: 31, column: 20, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2119, file: !2120, line: 30, column: 5)
!2141 = !DILocation(line: 31, column: 27, scope: !2140)
!2142 = !DILocation(line: 32, column: 56, scope: !2140)
!2143 = !DILocation(line: 32, column: 47, scope: !2140)
!2144 = !DILocation(line: 33, column: 22, scope: !2140)
!2145 = !DILocation(line: 34, column: 24, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2140, file: !2120, line: 34, column: 11)
!2147 = !DILocation(line: 34, column: 11, scope: !2140)
!2148 = !DILocation(line: 36, column: 29, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2146, file: !2120, line: 36, column: 16)
!2150 = !DILocation(line: 36, column: 16, scope: !2146)
!2151 = !DILocation(line: 37, column: 14, scope: !2149)
!2152 = distinct !{!2152, !2136, !2153}
!2153 = !DILocation(line: 40, column: 5, scope: !2119)
!2154 = !DILocation(line: 43, column: 1, scope: !2119)
!2155 = distinct !DISubprogram(name: "atof", scope: !2156, file: !2156, line: 25, type: !2157, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2160)
!2156 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h", directory: "")
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!2159, !436}
!2159 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!2160 = !{!2161}
!2161 = !DILocalVariable(name: "__nptr", arg: 1, scope: !2155, file: !2156, line: 25, type: !436)
!2162 = !DILocation(line: 0, scope: !2155)
!2163 = !DILocation(line: 27, column: 10, scope: !2155)
!2164 = !DILocation(line: 27, column: 3, scope: !2155)
!2165 = distinct !DISubprogram(name: "strtoimax", scope: !2166, file: !2166, line: 324, type: !2167, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2173)
!2166 = !DIFile(filename: "/usr/include/inttypes.h", directory: "")
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2169, !1980, !2172, !431}
!2169 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !2170, line: 101, baseType: !2171)
!2170 = !DIFile(filename: "/usr/include/stdint.h", directory: "")
!2171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intmax_t", file: !1839, line: 72, baseType: !557)
!2172 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !432)
!2173 = !{!2174, !2175, !2176}
!2174 = !DILocalVariable(name: "nptr", arg: 1, scope: !2165, file: !2166, line: 324, type: !1980)
!2175 = !DILocalVariable(name: "endptr", arg: 2, scope: !2165, file: !2166, line: 324, type: !2172)
!2176 = !DILocalVariable(name: "base", arg: 3, scope: !2165, file: !2166, line: 324, type: !431)
!2177 = !DILocation(line: 0, scope: !2165)
!2178 = !DILocation(line: 327, column: 10, scope: !2165)
!2179 = !DILocation(line: 327, column: 3, scope: !2165)
!2180 = distinct !DISubprogram(name: "strtoumax", scope: !2166, file: !2166, line: 336, type: !2181, scopeLine: 338, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!2183, !1980, !2172, !431}
!2183 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !2170, line: 102, baseType: !2184)
!2184 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintmax_t", file: !1839, line: 73, baseType: !555)
!2185 = !{!2186, !2187, !2188}
!2186 = !DILocalVariable(name: "nptr", arg: 1, scope: !2180, file: !2166, line: 336, type: !1980)
!2187 = !DILocalVariable(name: "endptr", arg: 2, scope: !2180, file: !2166, line: 336, type: !2172)
!2188 = !DILocalVariable(name: "base", arg: 3, scope: !2180, file: !2166, line: 336, type: !431)
!2189 = !DILocation(line: 0, scope: !2180)
!2190 = !DILocation(line: 339, column: 10, scope: !2180)
!2191 = !DILocation(line: 339, column: 3, scope: !2180)
!2192 = distinct !DISubprogram(name: "wcstoimax", scope: !2166, file: !2166, line: 348, type: !2193, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!2169, !2195, !2199, !431}
!2195 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2196)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2198)
!2198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gwchar_t", file: !2166, line: 34, baseType: !431)
!2199 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !2200)
!2200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2202 = !{!2203, !2204, !2205}
!2203 = !DILocalVariable(name: "nptr", arg: 1, scope: !2192, file: !2166, line: 348, type: !2195)
!2204 = !DILocalVariable(name: "endptr", arg: 2, scope: !2192, file: !2166, line: 348, type: !2199)
!2205 = !DILocalVariable(name: "base", arg: 3, scope: !2192, file: !2166, line: 348, type: !431)
!2206 = !DILocation(line: 0, scope: !2192)
!2207 = !DILocation(line: 351, column: 10, scope: !2192)
!2208 = !DILocation(line: 351, column: 3, scope: !2192)
!2209 = distinct !DISubprogram(name: "wcstoumax", scope: !2166, file: !2166, line: 362, type: !2210, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2212)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!2183, !2195, !2199, !431}
!2212 = !{!2213, !2214, !2215}
!2213 = !DILocalVariable(name: "nptr", arg: 1, scope: !2209, file: !2166, line: 362, type: !2195)
!2214 = !DILocalVariable(name: "endptr", arg: 2, scope: !2209, file: !2166, line: 362, type: !2199)
!2215 = !DILocalVariable(name: "base", arg: 3, scope: !2209, file: !2166, line: 362, type: !431)
!2216 = !DILocation(line: 0, scope: !2209)
!2217 = !DILocation(line: 365, column: 10, scope: !2209)
!2218 = !DILocation(line: 365, column: 3, scope: !2209)
!2219 = distinct !DISubprogram(name: "stat", scope: !2220, file: !2220, line: 453, type: !2221, scopeLine: 454, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2220 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/stat.h", directory: "")
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!431, !436, !2223}
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !2225, line: 46, size: 1152, elements: !2226)
!2225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stat.h", directory: "")
!2226 = !{!2227, !2229, !2231, !2233, !2235, !2237, !2239, !2240, !2241, !2242, !2244, !2246, !2254, !2255, !2256}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2224, file: !2225, line: 48, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !1839, line: 145, baseType: !555)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2224, file: !2225, line: 53, baseType: !2230, size: 64, offset: 64)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !1839, line: 148, baseType: !555)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2224, file: !2225, line: 61, baseType: !2232, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !1839, line: 151, baseType: !555)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2224, file: !2225, line: 62, baseType: !2234, size: 32, offset: 192)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !1839, line: 150, baseType: !7)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2224, file: !2225, line: 64, baseType: !2236, size: 32, offset: 224)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !1839, line: 146, baseType: !7)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2224, file: !2225, line: 65, baseType: !2238, size: 32, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !1839, line: 147, baseType: !7)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2224, file: !2225, line: 67, baseType: !431, size: 32, offset: 288)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2224, file: !2225, line: 69, baseType: !2228, size: 64, offset: 320)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2224, file: !2225, line: 74, baseType: !1838, size: 64, offset: 384)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2224, file: !2225, line: 78, baseType: !2243, size: 64, offset: 448)
!2243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !1839, line: 174, baseType: !557)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2224, file: !2225, line: 80, baseType: !2245, size: 64, offset: 512)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !1839, line: 179, baseType: !557)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2224, file: !2225, line: 91, baseType: !2247, size: 128, offset: 576)
!2247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !2248, line: 10, size: 128, elements: !2249)
!2248 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "")
!2249 = !{!2250, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !2247, file: !2248, line: 12, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !1839, line: 160, baseType: !557)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !2247, file: !2248, line: 16, baseType: !2253, size: 64, offset: 64)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !1839, line: 196, baseType: !557)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2224, file: !2225, line: 92, baseType: !2247, size: 128, offset: 704)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2224, file: !2225, line: 93, baseType: !2247, size: 128, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2224, file: !2225, line: 106, baseType: !2257, size: 192, offset: 960)
!2257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2253, size: 192, elements: !575)
!2258 = !{!2259, !2260}
!2259 = !DILocalVariable(name: "__path", arg: 1, scope: !2219, file: !2220, line: 453, type: !436)
!2260 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2219, file: !2220, line: 453, type: !2223)
!2261 = !DILocation(line: 0, scope: !2219)
!2262 = !DILocation(line: 455, column: 10, scope: !2219)
!2263 = !DILocation(line: 455, column: 3, scope: !2219)
!2264 = distinct !DISubprogram(name: "lstat", scope: !2220, file: !2220, line: 460, type: !2221, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2265 = !{!2266, !2267}
!2266 = !DILocalVariable(name: "__path", arg: 1, scope: !2264, file: !2220, line: 460, type: !436)
!2267 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2264, file: !2220, line: 460, type: !2223)
!2268 = !DILocation(line: 0, scope: !2264)
!2269 = !DILocation(line: 462, column: 10, scope: !2264)
!2270 = !DILocation(line: 462, column: 3, scope: !2264)
!2271 = distinct !DISubprogram(name: "fstat", scope: !2220, file: !2220, line: 467, type: !2272, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2274)
!2272 = !DISubroutineType(types: !2273)
!2273 = !{!431, !431, !2223}
!2274 = !{!2275, !2276}
!2275 = !DILocalVariable(name: "__fd", arg: 1, scope: !2271, file: !2220, line: 467, type: !431)
!2276 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2271, file: !2220, line: 467, type: !2223)
!2277 = !DILocation(line: 0, scope: !2271)
!2278 = !DILocation(line: 469, column: 10, scope: !2271)
!2279 = !DILocation(line: 469, column: 3, scope: !2271)
!2280 = distinct !DISubprogram(name: "fstatat", scope: !2220, file: !2220, line: 474, type: !2281, scopeLine: 476, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2283)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{!431, !431, !436, !2223, !431}
!2283 = !{!2284, !2285, !2286, !2287}
!2284 = !DILocalVariable(name: "__fd", arg: 1, scope: !2280, file: !2220, line: 474, type: !431)
!2285 = !DILocalVariable(name: "__filename", arg: 2, scope: !2280, file: !2220, line: 474, type: !436)
!2286 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2280, file: !2220, line: 474, type: !2223)
!2287 = !DILocalVariable(name: "__flag", arg: 4, scope: !2280, file: !2220, line: 474, type: !431)
!2288 = !DILocation(line: 0, scope: !2280)
!2289 = !DILocation(line: 477, column: 10, scope: !2280)
!2290 = !DILocation(line: 477, column: 3, scope: !2280)
!2291 = distinct !DISubprogram(name: "mknod", scope: !2220, file: !2220, line: 483, type: !2292, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2294)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!431, !436, !2234, !2228}
!2294 = !{!2295, !2296, !2297}
!2295 = !DILocalVariable(name: "__path", arg: 1, scope: !2291, file: !2220, line: 483, type: !436)
!2296 = !DILocalVariable(name: "__mode", arg: 2, scope: !2291, file: !2220, line: 483, type: !2234)
!2297 = !DILocalVariable(name: "__dev", arg: 3, scope: !2291, file: !2220, line: 483, type: !2228)
!2298 = !DILocation(line: 0, scope: !2291)
!2299 = !DILocation(line: 485, column: 10, scope: !2291)
!2300 = !DILocation(line: 485, column: 3, scope: !2291)
!2301 = distinct !DISubprogram(name: "mknodat", scope: !2220, file: !2220, line: 491, type: !2302, scopeLine: 493, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2304)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{!431, !431, !436, !2234, !2228}
!2304 = !{!2305, !2306, !2307, !2308}
!2305 = !DILocalVariable(name: "__fd", arg: 1, scope: !2301, file: !2220, line: 491, type: !431)
!2306 = !DILocalVariable(name: "__path", arg: 2, scope: !2301, file: !2220, line: 491, type: !436)
!2307 = !DILocalVariable(name: "__mode", arg: 3, scope: !2301, file: !2220, line: 491, type: !2234)
!2308 = !DILocalVariable(name: "__dev", arg: 4, scope: !2301, file: !2220, line: 491, type: !2228)
!2309 = !DILocation(line: 0, scope: !2301)
!2310 = !DILocation(line: 494, column: 10, scope: !2301)
!2311 = !DILocation(line: 494, column: 3, scope: !2301)
!2312 = distinct !DISubprogram(name: "stat64", scope: !2220, file: !2220, line: 502, type: !2313, scopeLine: 503, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2335)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!431, !436, !2315}
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat64", file: !2225, line: 119, size: 1152, elements: !2317)
!2317 = !{!2318, !2319, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2331, !2332, !2333, !2334}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !2316, file: !2225, line: 121, baseType: !2228, size: 64)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !2316, file: !2225, line: 123, baseType: !2320, size: 64, offset: 64)
!2320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino64_t", file: !1839, line: 149, baseType: !555)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !2316, file: !2225, line: 124, baseType: !2232, size: 64, offset: 128)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !2316, file: !2225, line: 125, baseType: !2234, size: 32, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !2316, file: !2225, line: 132, baseType: !2236, size: 32, offset: 224)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !2316, file: !2225, line: 133, baseType: !2238, size: 32, offset: 256)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !2316, file: !2225, line: 135, baseType: !431, size: 32, offset: 288)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !2316, file: !2225, line: 136, baseType: !2228, size: 64, offset: 320)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !2316, file: !2225, line: 137, baseType: !1838, size: 64, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !2316, file: !2225, line: 143, baseType: !2243, size: 64, offset: 448)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !2316, file: !2225, line: 144, baseType: !2330, size: 64, offset: 512)
!2330 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt64_t", file: !1839, line: 180, baseType: !557)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !2316, file: !2225, line: 152, baseType: !2247, size: 128, offset: 576)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !2316, file: !2225, line: 153, baseType: !2247, size: 128, offset: 704)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !2316, file: !2225, line: 154, baseType: !2247, size: 128, offset: 832)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !2316, file: !2225, line: 164, baseType: !2257, size: 192, offset: 960)
!2335 = !{!2336, !2337}
!2336 = !DILocalVariable(name: "__path", arg: 1, scope: !2312, file: !2220, line: 502, type: !436)
!2337 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2312, file: !2220, line: 502, type: !2315)
!2338 = !DILocation(line: 0, scope: !2312)
!2339 = !DILocation(line: 504, column: 10, scope: !2312)
!2340 = !DILocation(line: 504, column: 3, scope: !2312)
!2341 = distinct !DISubprogram(name: "lstat64", scope: !2220, file: !2220, line: 509, type: !2313, scopeLine: 510, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2342)
!2342 = !{!2343, !2344}
!2343 = !DILocalVariable(name: "__path", arg: 1, scope: !2341, file: !2220, line: 509, type: !436)
!2344 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2341, file: !2220, line: 509, type: !2315)
!2345 = !DILocation(line: 0, scope: !2341)
!2346 = !DILocation(line: 511, column: 10, scope: !2341)
!2347 = !DILocation(line: 511, column: 3, scope: !2341)
!2348 = distinct !DISubprogram(name: "fstat64", scope: !2220, file: !2220, line: 516, type: !2349, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2351)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!431, !431, !2315}
!2351 = !{!2352, !2353}
!2352 = !DILocalVariable(name: "__fd", arg: 1, scope: !2348, file: !2220, line: 516, type: !431)
!2353 = !DILocalVariable(name: "__statbuf", arg: 2, scope: !2348, file: !2220, line: 516, type: !2315)
!2354 = !DILocation(line: 0, scope: !2348)
!2355 = !DILocation(line: 518, column: 10, scope: !2348)
!2356 = !DILocation(line: 518, column: 3, scope: !2348)
!2357 = distinct !DISubprogram(name: "fstatat64", scope: !2220, file: !2220, line: 523, type: !2358, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2360)
!2358 = !DISubroutineType(types: !2359)
!2359 = !{!431, !431, !436, !2315, !431}
!2360 = !{!2361, !2362, !2363, !2364}
!2361 = !DILocalVariable(name: "__fd", arg: 1, scope: !2357, file: !2220, line: 523, type: !431)
!2362 = !DILocalVariable(name: "__filename", arg: 2, scope: !2357, file: !2220, line: 523, type: !436)
!2363 = !DILocalVariable(name: "__statbuf", arg: 3, scope: !2357, file: !2220, line: 523, type: !2315)
!2364 = !DILocalVariable(name: "__flag", arg: 4, scope: !2357, file: !2220, line: 523, type: !431)
!2365 = !DILocation(line: 0, scope: !2357)
!2366 = !DILocation(line: 526, column: 10, scope: !2357)
!2367 = !DILocation(line: 526, column: 3, scope: !2357)
!2368 = distinct !DISubprogram(name: "rtl_register_cfg_hooks", scope: !3, file: !3, line: 39, type: !2369, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null}
!2371 = !DILocation(line: 41, column: 13, scope: !2368)
!2372 = !DILocation(line: 42, column: 1, scope: !2368)
!2373 = distinct !DISubprogram(name: "cfg_layout_rtl_register_cfg_hooks", scope: !3, file: !3, line: 46, type: !2369, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2374 = !DILocation(line: 48, column: 13, scope: !2373)
!2375 = !DILocation(line: 49, column: 1, scope: !2373)
!2376 = distinct !DISubprogram(name: "gimple_register_cfg_hooks", scope: !3, file: !3, line: 54, type: !2369, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2377 = !DILocation(line: 56, column: 13, scope: !2376)
!2378 = !DILocation(line: 57, column: 1, scope: !2376)
!2379 = distinct !DISubprogram(name: "get_cfg_hooks", scope: !3, file: !3, line: 60, type: !2380, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2380 = !DISubroutineType(types: !2381)
!2381 = !{!1800}
!2382 = !DILocation(line: 62, column: 11, scope: !2379)
!2383 = !DILocation(line: 62, column: 10, scope: !2379)
!2384 = !DILocation(line: 62, column: 3, scope: !2379)
!2385 = distinct !DISubprogram(name: "set_cfg_hooks", scope: !3, file: !3, line: 66, type: !2386, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2388)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{null, !1800}
!2388 = !{!2389}
!2389 = !DILocalVariable(name: "new_cfg_hooks", arg: 1, scope: !2385, file: !3, line: 66, type: !1800)
!2390 = !DILocation(line: 66, column: 33, scope: !2385)
!2391 = !DILocation(line: 68, column: 4, scope: !2385)
!2392 = !DILocation(line: 68, column: 16, scope: !2385)
!2393 = !DILocation(line: 69, column: 1, scope: !2385)
!2394 = distinct !DISubprogram(name: "current_ir_type", scope: !3, file: !3, line: 74, type: !2395, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1996)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!422}
!2397 = !DILocation(line: 76, column: 7, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 76, column: 7)
!2399 = !DILocation(line: 76, column: 17, scope: !2398)
!2400 = !DILocation(line: 76, column: 7, scope: !2394)
!2401 = !DILocation(line: 78, column: 22, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 78, column: 12)
!2403 = !DILocation(line: 78, column: 12, scope: !2398)
!2404 = !DILocation(line: 80, column: 22, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 80, column: 12)
!2406 = !DILocation(line: 80, column: 12, scope: !2402)
!2407 = !DILocation(line: 83, column: 5, scope: !2405)
!2408 = !DILocation(line: 85, column: 5, scope: !2394)
!2409 = !DILocation(line: 0, scope: !2394)
!2410 = !DILocation(line: 87, column: 1, scope: !2394)
!2411 = distinct !DISubprogram(name: "verify_flow_info", scope: !3, file: !3, line: 95, type: !2369, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2412)
!2412 = !{!2413, !2414, !2415, !2416, !2417, !2418, !2422, !2423, !2430, !2432}
!2413 = !DILocalVariable(name: "edge_checksum", scope: !2411, file: !3, line: 97, type: !1792)
!2414 = !DILocalVariable(name: "err", scope: !2411, file: !3, line: 98, type: !431)
!2415 = !DILocalVariable(name: "bb", scope: !2411, file: !3, line: 99, type: !439)
!2416 = !DILocalVariable(name: "last_bb_seen", scope: !2411, file: !3, line: 99, type: !439)
!2417 = !DILocalVariable(name: "last_visited", scope: !2411, file: !3, line: 100, type: !438)
!2418 = !DILocalVariable(name: "n_fallthru", scope: !2419, file: !3, line: 130, type: !431)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 129, column: 5)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !3, line: 128, column: 3)
!2421 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 128, column: 3)
!2422 = !DILocalVariable(name: "e", scope: !2419, file: !3, line: 131, type: !456)
!2423 = !DILocalVariable(name: "ei", scope: !2419, file: !3, line: 132, type: !2424)
!2424 = !DIDerivedType(tag: DW_TAG_typedef, name: "edge_iterator", file: !135, line: 682, baseType: !2425)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !135, line: 679, size: 128, elements: !2426)
!2426 = !{!2427, !2428}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2425, file: !135, line: 680, baseType: !7, size: 32)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "container", scope: !2425, file: !135, line: 681, baseType: !2429, size: 64, offset: 64)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!2430 = !DILocalVariable(name: "e", scope: !2431, file: !3, line: 236, type: !456)
!2431 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 235, column: 3)
!2432 = !DILocalVariable(name: "ei", scope: !2431, file: !3, line: 237, type: !2424)
!2433 = !DILocation(line: 0, scope: !2411)
!2434 = !DILocation(line: 102, column: 3, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2436, file: !3, line: 102, column: 3)
!2436 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 102, column: 3)
!2437 = !DILocation(line: 102, column: 3, scope: !2436)
!2438 = !DILocation(line: 103, column: 18, scope: !2411)
!2439 = !DILocation(line: 104, column: 19, scope: !2411)
!2440 = !DILocation(line: 107, column: 18, scope: !2411)
!2441 = !DILocation(line: 108, column: 3, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 108, column: 3)
!2443 = !DILocation(line: 0, scope: !2442)
!2444 = !DILocation(line: 108, column: 3, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 108, column: 3)
!2446 = !DILocation(line: 110, column: 14, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 110, column: 11)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !3, line: 109, column: 5)
!2449 = !DILocation(line: 111, column: 4, scope: !2447)
!2450 = !DILocation(line: 111, column: 13, scope: !2447)
!2451 = !DILocation(line: 111, column: 10, scope: !2447)
!2452 = !DILocation(line: 110, column: 11, scope: !2448)
!2453 = !DILocation(line: 113, column: 39, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2447, file: !3, line: 112, column: 2)
!2455 = !DILocation(line: 113, column: 4, scope: !2454)
!2456 = !DILocation(line: 115, column: 2, scope: !2454)
!2457 = !DILocation(line: 117, column: 15, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 117, column: 11)
!2459 = !DILocation(line: 117, column: 23, scope: !2458)
!2460 = !DILocation(line: 117, column: 11, scope: !2448)
!2461 = !DILocation(line: 120, column: 8, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 118, column: 2)
!2463 = !DILocation(line: 120, column: 29, scope: !2462)
!2464 = !DILocation(line: 120, column: 49, scope: !2462)
!2465 = !DILocation(line: 119, column: 4, scope: !2462)
!2466 = !DILocation(line: 122, column: 2, scope: !2462)
!2467 = !DILocation(line: 0, scope: !2448)
!2468 = distinct !{!2468, !2441, !2469}
!2469 = !DILocation(line: 125, column: 5, scope: !2442)
!2470 = !DILocation(line: 0, scope: !2419)
!2471 = !DILocation(line: 0, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 158, column: 7)
!2473 = !DILocation(line: 0, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2472, file: !3, line: 158, column: 7)
!2475 = !DILocation(line: 0, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 159, column: 2)
!2477 = !DILocation(line: 0, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 204, column: 7)
!2479 = !DILocation(line: 128, column: 3, scope: !2421)
!2480 = !DILocation(line: 128, column: 3, scope: !2420)
!2481 = !DILocation(line: 0, scope: !2421)
!2482 = !DILocation(line: 131, column: 7, scope: !2419)
!2483 = !DILocation(line: 132, column: 7, scope: !2419)
!2484 = !DILocation(line: 134, column: 15, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 134, column: 11)
!2486 = !DILocation(line: 134, column: 27, scope: !2485)
!2487 = !DILocation(line: 134, column: 35, scope: !2485)
!2488 = !DILocation(line: 134, column: 38, scope: !2485)
!2489 = !DILocation(line: 134, column: 52, scope: !2485)
!2490 = !DILocation(line: 134, column: 11, scope: !2419)
!2491 = !DILocation(line: 137, column: 8, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2485, file: !3, line: 135, column: 2)
!2493 = !DILocation(line: 136, column: 4, scope: !2492)
!2494 = !DILocation(line: 140, column: 15, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 140, column: 11)
!2496 = !DILocation(line: 139, column: 2, scope: !2492)
!2497 = !DILocation(line: 140, column: 27, scope: !2495)
!2498 = !DILocation(line: 140, column: 35, scope: !2495)
!2499 = !DILocation(line: 140, column: 38, scope: !2495)
!2500 = !DILocation(line: 140, column: 52, scope: !2495)
!2501 = !DILocation(line: 140, column: 11, scope: !2419)
!2502 = !DILocation(line: 142, column: 63, scope: !2503)
!2503 = distinct !DILexicalBlock(scope: !2495, file: !3, line: 141, column: 2)
!2504 = !DILocation(line: 142, column: 4, scope: !2503)
!2505 = !DILocation(line: 144, column: 2, scope: !2503)
!2506 = !DILocation(line: 146, column: 15, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 146, column: 11)
!2508 = !DILocation(line: 146, column: 21, scope: !2507)
!2509 = !DILocation(line: 146, column: 11, scope: !2419)
!2510 = !DILocation(line: 149, column: 8, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 147, column: 2)
!2512 = !DILocation(line: 149, column: 15, scope: !2511)
!2513 = !DILocation(line: 148, column: 4, scope: !2511)
!2514 = !DILocation(line: 151, column: 2, scope: !2511)
!2515 = !DILocation(line: 152, column: 15, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 152, column: 11)
!2517 = !DILocation(line: 152, column: 25, scope: !2516)
!2518 = !DILocation(line: 152, column: 11, scope: !2419)
!2519 = !DILocation(line: 155, column: 8, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2516, file: !3, line: 153, column: 2)
!2521 = !DILocation(line: 154, column: 4, scope: !2520)
!2522 = !DILocation(line: 157, column: 2, scope: !2520)
!2523 = !DILocation(line: 158, column: 7, scope: !2472)
!2524 = !DILocation(line: 0, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !3, line: 185, column: 6)
!2526 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 184, column: 8)
!2527 = !DILocation(line: 158, column: 7, scope: !2474)
!2528 = !DILocation(line: 160, column: 22, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 160, column: 8)
!2530 = !DILocation(line: 160, column: 25, scope: !2529)
!2531 = !DILocation(line: 160, column: 31, scope: !2529)
!2532 = !DILocation(line: 160, column: 8, scope: !2529)
!2533 = !DILocation(line: 160, column: 38, scope: !2529)
!2534 = !DILocation(line: 160, column: 8, scope: !2476)
!2535 = !DILocation(line: 163, column: 11, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2529, file: !3, line: 161, column: 6)
!2537 = !DILocation(line: 163, column: 16, scope: !2536)
!2538 = !DILocation(line: 162, column: 8, scope: !2536)
!2539 = !DILocation(line: 166, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 166, column: 8)
!2541 = !DILocation(line: 165, column: 6, scope: !2536)
!2542 = !DILocation(line: 166, column: 11, scope: !2540)
!2543 = !DILocation(line: 166, column: 23, scope: !2540)
!2544 = !DILocation(line: 166, column: 27, scope: !2540)
!2545 = !DILocation(line: 166, column: 45, scope: !2540)
!2546 = !DILocation(line: 166, column: 8, scope: !2476)
!2547 = !DILocation(line: 169, column: 11, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2540, file: !3, line: 167, column: 6)
!2549 = !DILocation(line: 169, column: 16, scope: !2548)
!2550 = !DILocation(line: 169, column: 26, scope: !2548)
!2551 = !DILocation(line: 169, column: 32, scope: !2548)
!2552 = !DILocation(line: 168, column: 8, scope: !2548)
!2553 = !DILocation(line: 172, column: 8, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 172, column: 8)
!2555 = !DILocation(line: 171, column: 6, scope: !2548)
!2556 = !DILocation(line: 172, column: 11, scope: !2554)
!2557 = !DILocation(line: 172, column: 17, scope: !2554)
!2558 = !DILocation(line: 172, column: 8, scope: !2476)
!2559 = !DILocation(line: 175, column: 11, scope: !2560)
!2560 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 173, column: 6)
!2561 = !DILocation(line: 175, column: 16, scope: !2560)
!2562 = !DILocation(line: 175, column: 26, scope: !2560)
!2563 = !DILocation(line: 175, column: 32, scope: !2560)
!2564 = !DILocation(line: 175, column: 39, scope: !2560)
!2565 = !DILocation(line: 174, column: 8, scope: !2560)
!2566 = !DILocation(line: 179, column: 18, scope: !2476)
!2567 = !DILocation(line: 177, column: 6, scope: !2560)
!2568 = !DILocation(line: 179, column: 21, scope: !2476)
!2569 = !DILocation(line: 179, column: 27, scope: !2476)
!2570 = !DILocation(line: 179, column: 4, scope: !2476)
!2571 = !DILocation(line: 179, column: 34, scope: !2476)
!2572 = !DILocation(line: 181, column: 8, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 181, column: 8)
!2574 = !DILocation(line: 181, column: 11, scope: !2573)
!2575 = !DILocation(line: 181, column: 17, scope: !2573)
!2576 = !DILocation(line: 181, column: 8, scope: !2476)
!2577 = !DILocation(line: 184, column: 11, scope: !2526)
!2578 = !DILocation(line: 184, column: 15, scope: !2526)
!2579 = !DILocation(line: 184, column: 8, scope: !2476)
!2580 = !DILocation(line: 187, column: 12, scope: !2525)
!2581 = !DILocation(line: 186, column: 8, scope: !2525)
!2582 = !DILocation(line: 188, column: 17, scope: !2525)
!2583 = !DILocation(line: 188, column: 8, scope: !2525)
!2584 = !DILocation(line: 189, column: 24, scope: !2525)
!2585 = !DILocation(line: 189, column: 32, scope: !2525)
!2586 = !DILocation(line: 189, column: 8, scope: !2525)
!2587 = !DILocation(line: 190, column: 17, scope: !2525)
!2588 = !DILocation(line: 190, column: 8, scope: !2525)
!2589 = !DILocation(line: 191, column: 24, scope: !2525)
!2590 = !DILocation(line: 191, column: 32, scope: !2525)
!2591 = !DILocation(line: 191, column: 8, scope: !2525)
!2592 = !DILocation(line: 192, column: 17, scope: !2525)
!2593 = !DILocation(line: 192, column: 8, scope: !2525)
!2594 = !DILocation(line: 196, column: 46, scope: !2476)
!2595 = !DILocation(line: 194, column: 6, scope: !2525)
!2596 = !DILocation(line: 196, column: 18, scope: !2476)
!2597 = !DILocation(line: 196, column: 21, scope: !2476)
!2598 = !DILocation(line: 196, column: 27, scope: !2476)
!2599 = !DILocation(line: 196, column: 4, scope: !2476)
!2600 = !DILocation(line: 196, column: 34, scope: !2476)
!2601 = distinct !{!2601, !2523, !2602}
!2602 = !DILocation(line: 197, column: 2, scope: !2472)
!2603 = !DILocation(line: 198, column: 22, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2419, file: !3, line: 198, column: 11)
!2605 = !DILocation(line: 198, column: 11, scope: !2419)
!2606 = !DILocation(line: 200, column: 75, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 199, column: 2)
!2608 = !DILocation(line: 200, column: 4, scope: !2607)
!2609 = !DILocation(line: 202, column: 2, scope: !2607)
!2610 = !DILocation(line: 204, column: 7, scope: !2478)
!2611 = !DILocation(line: 204, column: 7, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 204, column: 7)
!2613 = !DILocation(line: 206, column: 8, scope: !2614)
!2614 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 206, column: 8)
!2615 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 205, column: 2)
!2616 = !DILocation(line: 206, column: 11, scope: !2614)
!2617 = !DILocation(line: 206, column: 16, scope: !2614)
!2618 = !DILocation(line: 206, column: 8, scope: !2615)
!2619 = !DILocation(line: 208, column: 60, scope: !2620)
!2620 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 207, column: 6)
!2621 = !DILocation(line: 208, column: 8, scope: !2620)
!2622 = !DILocation(line: 209, column: 32, scope: !2620)
!2623 = !DILocation(line: 209, column: 8, scope: !2620)
!2624 = !DILocation(line: 210, column: 24, scope: !2620)
!2625 = !DILocation(line: 210, column: 32, scope: !2620)
!2626 = !DILocation(line: 210, column: 8, scope: !2620)
!2627 = !DILocation(line: 211, column: 32, scope: !2620)
!2628 = !DILocation(line: 211, column: 8, scope: !2620)
!2629 = !DILocation(line: 212, column: 24, scope: !2620)
!2630 = !DILocation(line: 212, column: 32, scope: !2620)
!2631 = !DILocation(line: 212, column: 8, scope: !2620)
!2632 = !DILocation(line: 213, column: 21, scope: !2620)
!2633 = !DILocation(line: 213, column: 8, scope: !2620)
!2634 = !DILocation(line: 217, column: 20, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 217, column: 8)
!2636 = !DILocation(line: 215, column: 6, scope: !2620)
!2637 = !DILocation(line: 0, scope: !2615)
!2638 = !DILocation(line: 217, column: 11, scope: !2635)
!2639 = !DILocation(line: 217, column: 23, scope: !2635)
!2640 = !DILocation(line: 217, column: 17, scope: !2635)
!2641 = !DILocation(line: 217, column: 8, scope: !2615)
!2642 = !DILocation(line: 219, column: 60, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 218, column: 6)
!2644 = !DILocation(line: 219, column: 8, scope: !2643)
!2645 = !DILocation(line: 221, column: 11, scope: !2643)
!2646 = !DILocation(line: 221, column: 18, scope: !2643)
!2647 = !DILocation(line: 221, column: 21, scope: !2643)
!2648 = !DILocation(line: 220, column: 8, scope: !2643)
!2649 = !DILocation(line: 222, column: 32, scope: !2643)
!2650 = !DILocation(line: 222, column: 8, scope: !2643)
!2651 = !DILocation(line: 223, column: 24, scope: !2643)
!2652 = !DILocation(line: 223, column: 32, scope: !2643)
!2653 = !DILocation(line: 223, column: 8, scope: !2643)
!2654 = !DILocation(line: 224, column: 32, scope: !2643)
!2655 = !DILocation(line: 224, column: 8, scope: !2643)
!2656 = !DILocation(line: 225, column: 24, scope: !2643)
!2657 = !DILocation(line: 225, column: 32, scope: !2643)
!2658 = !DILocation(line: 225, column: 8, scope: !2643)
!2659 = !DILocation(line: 226, column: 21, scope: !2643)
!2660 = !DILocation(line: 226, column: 8, scope: !2643)
!2661 = !DILocation(line: 230, column: 46, scope: !2615)
!2662 = !DILocation(line: 228, column: 6, scope: !2643)
!2663 = !DILocation(line: 230, column: 18, scope: !2615)
!2664 = !DILocation(line: 230, column: 21, scope: !2615)
!2665 = !DILocation(line: 230, column: 27, scope: !2615)
!2666 = !DILocation(line: 230, column: 4, scope: !2615)
!2667 = !DILocation(line: 230, column: 34, scope: !2615)
!2668 = distinct !{!2668, !2610, !2669}
!2669 = !DILocation(line: 231, column: 2, scope: !2478)
!2670 = !DILocation(line: 232, column: 5, scope: !2420)
!2671 = !DILocation(line: 0, scope: !2420)
!2672 = distinct !{!2672, !2479, !2673}
!2673 = !DILocation(line: 232, column: 5, scope: !2421)
!2674 = !DILocation(line: 236, column: 5, scope: !2431)
!2675 = !DILocation(line: 237, column: 5, scope: !2431)
!2676 = !DILocation(line: 239, column: 5, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 239, column: 5)
!2678 = !DILocation(line: 0, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 239, column: 5)
!2680 = !DILocation(line: 239, column: 5, scope: !2679)
!2681 = !DILocation(line: 0, scope: !2431)
!2682 = !DILocation(line: 240, column: 49, scope: !2679)
!2683 = !DILocation(line: 240, column: 21, scope: !2679)
!2684 = !DILocation(line: 240, column: 24, scope: !2679)
!2685 = !DILocation(line: 240, column: 30, scope: !2679)
!2686 = !DILocation(line: 240, column: 7, scope: !2679)
!2687 = !DILocation(line: 240, column: 37, scope: !2679)
!2688 = distinct !{!2688, !2676, !2689}
!2689 = !DILocation(line: 240, column: 49, scope: !2677)
!2690 = !DILocation(line: 242, column: 5, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2431, file: !3, line: 242, column: 5)
!2692 = !DILocation(line: 242, column: 5, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 242, column: 5)
!2694 = !DILocation(line: 243, column: 49, scope: !2693)
!2695 = !DILocation(line: 243, column: 21, scope: !2693)
!2696 = !DILocation(line: 243, column: 24, scope: !2693)
!2697 = !DILocation(line: 243, column: 30, scope: !2693)
!2698 = !DILocation(line: 243, column: 7, scope: !2693)
!2699 = !DILocation(line: 243, column: 37, scope: !2693)
!2700 = distinct !{!2700, !2690, !2701}
!2701 = !DILocation(line: 243, column: 49, scope: !2691)
!2702 = !DILocation(line: 244, column: 3, scope: !2411)
!2703 = !DILocation(line: 246, column: 3, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 246, column: 3)
!2705 = !DILocation(line: 0, scope: !2704)
!2706 = !DILocation(line: 246, column: 3, scope: !2707)
!2707 = distinct !DILexicalBlock(scope: !2704, file: !3, line: 246, column: 3)
!2708 = !DILocation(line: 247, column: 27, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 247, column: 9)
!2710 = !DILocation(line: 247, column: 9, scope: !2709)
!2711 = !DILocation(line: 247, column: 9, scope: !2707)
!2712 = !DILocation(line: 249, column: 2, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2709, file: !3, line: 248, column: 7)
!2714 = !DILocation(line: 251, column: 7, scope: !2713)
!2715 = distinct !{!2715, !2703, !2716}
!2716 = !DILocation(line: 251, column: 7, scope: !2704)
!2717 = !DILocation(line: 256, column: 3, scope: !2411)
!2718 = !DILocation(line: 257, column: 3, scope: !2411)
!2719 = !DILocation(line: 259, column: 7, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 259, column: 7)
!2721 = !DILocation(line: 259, column: 18, scope: !2720)
!2722 = !DILocation(line: 259, column: 7, scope: !2411)
!2723 = !DILocation(line: 260, column: 12, scope: !2720)
!2724 = !DILocation(line: 260, column: 9, scope: !2720)
!2725 = !DILocation(line: 260, column: 5, scope: !2720)
!2726 = !DILocation(line: 261, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 261, column: 7)
!2728 = !DILocation(line: 261, column: 7, scope: !2411)
!2729 = !DILocation(line: 262, column: 5, scope: !2727)
!2730 = !DILocation(line: 263, column: 3, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2732, file: !3, line: 263, column: 3)
!2732 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 263, column: 3)
!2733 = !DILocation(line: 263, column: 3, scope: !2732)
!2734 = !DILocation(line: 264, column: 1, scope: !2411)
!2735 = distinct !DISubprogram(name: "VEC_basic_block_base_index", scope: !135, file: !135, line: 281, type: !2736, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2740)
!2736 = !DISubroutineType(types: !2737)
!2737 = !{!439, !2738, !7}
!2738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2739, size: 64)
!2739 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !944)
!2740 = !{!2741, !2742}
!2741 = !DILocalVariable(name: "vec_", arg: 1, scope: !2735, file: !135, line: 281, type: !2738)
!2742 = !DILocalVariable(name: "ix_", arg: 2, scope: !2735, file: !135, line: 281, type: !7)
!2743 = !DILocation(line: 0, scope: !2735)
!2744 = !DILocation(line: 281, column: 1, scope: !2735)
!2745 = distinct !DISubprogram(name: "ei_start_1", scope: !135, file: !135, line: 696, type: !2746, scopeLine: 697, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2748)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{!2424, !2429}
!2748 = !{!2749, !2750}
!2749 = !DILocalVariable(name: "ev", arg: 1, scope: !2745, file: !135, line: 696, type: !2429)
!2750 = !DILocalVariable(name: "i", scope: !2745, file: !135, line: 698, type: !2424)
!2751 = !DILocation(line: 0, scope: !2745)
!2752 = !DILocation(line: 700, column: 5, scope: !2745)
!2753 = !DILocation(line: 700, column: 11, scope: !2745)
!2754 = !DILocation(line: 701, column: 5, scope: !2745)
!2755 = !DILocation(line: 701, column: 15, scope: !2745)
!2756 = !DILocation(line: 703, column: 3, scope: !2745)
!2757 = distinct !DISubprogram(name: "ei_cond", scope: !135, file: !135, line: 771, type: !2758, scopeLine: 772, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{!430, !2424, !1970}
!2760 = !{!2761, !2762}
!2761 = !DILocalVariable(name: "ei", arg: 1, scope: !2757, file: !135, line: 771, type: !2424)
!2762 = !DILocalVariable(name: "p", arg: 2, scope: !2757, file: !135, line: 771, type: !1970)
!2763 = !DILocation(line: 0, scope: !2757)
!2764 = !DILocation(line: 773, column: 8, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2757, file: !135, line: 773, column: 7)
!2766 = !DILocation(line: 773, column: 7, scope: !2757)
!2767 = !DILocation(line: 775, column: 12, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2765, file: !135, line: 774, column: 5)
!2769 = !DILocation(line: 776, column: 7, scope: !2768)
!2770 = !DILocation(line: 781, column: 7, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2765, file: !135, line: 779, column: 5)
!2772 = !DILocation(line: 0, scope: !2765)
!2773 = !DILocation(line: 783, column: 1, scope: !2757)
!2774 = distinct !DISubprogram(name: "ei_next", scope: !135, file: !135, line: 736, type: !2775, scopeLine: 737, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2778)
!2775 = !DISubroutineType(types: !2776)
!2776 = !{null, !2777}
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2778 = !{!2779}
!2779 = !DILocalVariable(name: "i", arg: 1, scope: !2774, file: !135, line: 736, type: !2777)
!2780 = !DILocation(line: 0, scope: !2774)
!2781 = !DILocation(line: 738, column: 3, scope: !2774)
!2782 = !DILocation(line: 739, column: 11, scope: !2774)
!2783 = !DILocation(line: 740, column: 1, scope: !2774)
!2784 = distinct !DISubprogram(name: "dump_bb", scope: !3, file: !3, line: 271, type: !2785, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2787)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !439, !1812, !431}
!2787 = !{!2788, !2789, !2790, !2791, !2792, !2793}
!2788 = !DILocalVariable(name: "bb", arg: 1, scope: !2784, file: !3, line: 271, type: !439)
!2789 = !DILocalVariable(name: "outf", arg: 2, scope: !2784, file: !3, line: 271, type: !1812)
!2790 = !DILocalVariable(name: "indent", arg: 3, scope: !2784, file: !3, line: 271, type: !431)
!2791 = !DILocalVariable(name: "e", scope: !2784, file: !3, line: 273, type: !456)
!2792 = !DILocalVariable(name: "ei", scope: !2784, file: !3, line: 274, type: !2424)
!2793 = !DILocalVariable(name: "s_indent", scope: !2784, file: !3, line: 275, type: !433)
!2794 = !DILocation(line: 0, scope: !2784)
!2795 = !DILocation(line: 273, column: 3, scope: !2784)
!2796 = !DILocation(line: 274, column: 3, scope: !2784)
!2797 = !DILocation(line: 277, column: 23, scope: !2784)
!2798 = !DILocation(line: 278, column: 3, scope: !2784)
!2799 = !DILocation(line: 279, column: 3, scope: !2784)
!2800 = !DILocation(line: 279, column: 20, scope: !2784)
!2801 = !DILocation(line: 282, column: 19, scope: !2784)
!2802 = !DILocation(line: 282, column: 30, scope: !2784)
!2803 = !DILocation(line: 281, column: 3, scope: !2784)
!2804 = !DILocation(line: 283, column: 67, scope: !2784)
!2805 = !DILocation(line: 283, column: 3, scope: !2784)
!2806 = !DILocation(line: 284, column: 3, scope: !2784)
!2807 = !DILocation(line: 286, column: 3, scope: !2784)
!2808 = !DILocation(line: 287, column: 11, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 287, column: 7)
!2810 = !DILocation(line: 287, column: 7, scope: !2809)
!2811 = !DILocation(line: 287, column: 7, scope: !2784)
!2812 = !DILocation(line: 288, column: 41, scope: !2809)
!2813 = !DILocation(line: 288, column: 5, scope: !2809)
!2814 = !DILocation(line: 290, column: 5, scope: !2809)
!2815 = !DILocation(line: 291, column: 3, scope: !2784)
!2816 = !DILocation(line: 292, column: 11, scope: !2817)
!2817 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 292, column: 7)
!2818 = !DILocation(line: 292, column: 7, scope: !2817)
!2819 = !DILocation(line: 292, column: 7, scope: !2784)
!2820 = !DILocation(line: 293, column: 39, scope: !2817)
!2821 = !DILocation(line: 293, column: 5, scope: !2817)
!2822 = !DILocation(line: 295, column: 5, scope: !2817)
!2823 = !DILocation(line: 296, column: 3, scope: !2784)
!2824 = !DILocation(line: 298, column: 3, scope: !2784)
!2825 = !DILocation(line: 299, column: 3, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 299, column: 3)
!2827 = !DILocation(line: 0, scope: !2828)
!2828 = distinct !DILexicalBlock(scope: !2826, file: !3, line: 299, column: 3)
!2829 = !DILocation(line: 299, column: 3, scope: !2828)
!2830 = !DILocation(line: 300, column: 27, scope: !2828)
!2831 = !DILocation(line: 300, column: 5, scope: !2828)
!2832 = distinct !{!2832, !2825, !2833}
!2833 = !DILocation(line: 300, column: 31, scope: !2826)
!2834 = !DILocation(line: 301, column: 3, scope: !2784)
!2835 = !DILocation(line: 303, column: 3, scope: !2784)
!2836 = !DILocation(line: 304, column: 3, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 304, column: 3)
!2838 = !DILocation(line: 304, column: 3, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 304, column: 3)
!2840 = !DILocation(line: 305, column: 27, scope: !2839)
!2841 = !DILocation(line: 305, column: 5, scope: !2839)
!2842 = distinct !{!2842, !2836, !2843}
!2843 = !DILocation(line: 305, column: 31, scope: !2837)
!2844 = !DILocation(line: 306, column: 3, scope: !2784)
!2845 = !DILocation(line: 308, column: 7, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 308, column: 7)
!2847 = !DILocation(line: 308, column: 18, scope: !2846)
!2848 = !DILocation(line: 308, column: 7, scope: !2784)
!2849 = !DILocation(line: 309, column: 5, scope: !2846)
!2850 = !DILocation(line: 310, column: 1, scope: !2784)
!2851 = distinct !DISubprogram(name: "redirect_edge_and_branch", scope: !3, file: !3, line: 318, type: !1869, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2852)
!2852 = !{!2853, !2854, !2855}
!2853 = !DILocalVariable(name: "e", arg: 1, scope: !2851, file: !3, line: 318, type: !456)
!2854 = !DILocalVariable(name: "dest", arg: 2, scope: !2851, file: !3, line: 318, type: !439)
!2855 = !DILocalVariable(name: "ret", scope: !2851, file: !3, line: 320, type: !456)
!2856 = !DILocation(line: 0, scope: !2851)
!2857 = !DILocation(line: 322, column: 8, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 322, column: 7)
!2859 = !DILocation(line: 322, column: 19, scope: !2858)
!2860 = !DILocation(line: 322, column: 7, scope: !2851)
!2861 = !DILocation(line: 324, column: 18, scope: !2858)
!2862 = !DILocation(line: 323, column: 5, scope: !2858)
!2863 = !DILocation(line: 326, column: 9, scope: !2851)
!2864 = !DILocation(line: 326, column: 20, scope: !2851)
!2865 = !DILocation(line: 330, column: 7, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 330, column: 7)
!2867 = !DILocation(line: 330, column: 21, scope: !2866)
!2868 = !DILocation(line: 330, column: 36, scope: !2866)
!2869 = !DILocation(line: 330, column: 29, scope: !2866)
!2870 = !DILocation(line: 331, column: 5, scope: !2866)
!2871 = !DILocation(line: 333, column: 3, scope: !2851)
!2872 = distinct !DISubprogram(name: "can_remove_branch_p", scope: !3, file: !3, line: 340, type: !1877, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2873)
!2873 = !{!2874}
!2874 = !DILocalVariable(name: "e", arg: 1, scope: !2872, file: !3, line: 340, type: !1879)
!2875 = !DILocation(line: 0, scope: !2872)
!2876 = !DILocation(line: 342, column: 8, scope: !2877)
!2877 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 342, column: 7)
!2878 = !DILocation(line: 342, column: 19, scope: !2877)
!2879 = !DILocation(line: 342, column: 7, scope: !2872)
!2880 = !DILocation(line: 344, column: 18, scope: !2877)
!2881 = !DILocation(line: 343, column: 5, scope: !2877)
!2882 = !DILocation(line: 346, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 346, column: 7)
!2884 = !DILocation(line: 346, column: 34, scope: !2883)
!2885 = !DILocation(line: 346, column: 7, scope: !2872)
!2886 = !DILocation(line: 349, column: 10, scope: !2872)
!2887 = !DILocation(line: 349, column: 21, scope: !2872)
!2888 = !DILocation(line: 349, column: 3, scope: !2872)
!2889 = !DILocation(line: 350, column: 1, scope: !2872)
!2890 = distinct !DISubprogram(name: "VEC_edge_base_length", scope: !135, file: !135, line: 150, type: !2891, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2895)
!2891 = !DISubroutineType(types: !2892)
!2892 = !{!7, !2893}
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!2895 = !{!2896}
!2896 = !DILocalVariable(name: "vec_", arg: 1, scope: !2890, file: !135, line: 150, type: !2893)
!2897 = !DILocation(line: 0, scope: !2890)
!2898 = !DILocation(line: 150, column: 1, scope: !2890)
!2899 = distinct !DISubprogram(name: "remove_branch", scope: !3, file: !3, line: 357, type: !1924, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2900)
!2900 = !{!2901, !2902, !2903, !2904}
!2901 = !DILocalVariable(name: "e", arg: 1, scope: !2899, file: !3, line: 357, type: !456)
!2902 = !DILocalVariable(name: "other", scope: !2899, file: !3, line: 359, type: !456)
!2903 = !DILocalVariable(name: "src", scope: !2899, file: !3, line: 360, type: !439)
!2904 = !DILocalVariable(name: "irr", scope: !2899, file: !3, line: 361, type: !431)
!2905 = !DILocation(line: 0, scope: !2899)
!2906 = !DILocation(line: 360, column: 24, scope: !2899)
!2907 = !DILocation(line: 363, column: 3, scope: !2899)
!2908 = !DILocation(line: 365, column: 11, scope: !2899)
!2909 = !DILocation(line: 366, column: 16, scope: !2899)
!2910 = !DILocation(line: 366, column: 22, scope: !2899)
!2911 = !DILocation(line: 368, column: 43, scope: !2899)
!2912 = !DILocation(line: 368, column: 7, scope: !2899)
!2913 = !DILocation(line: 369, column: 3, scope: !2899)
!2914 = !DILocation(line: 371, column: 6, scope: !2899)
!2915 = !DILocation(line: 371, column: 12, scope: !2899)
!2916 = !DILocation(line: 372, column: 12, scope: !2899)
!2917 = !DILocation(line: 373, column: 1, scope: !2899)
!2918 = distinct !DISubprogram(name: "VEC_edge_base_index", scope: !135, file: !135, line: 150, type: !2919, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2921)
!2919 = !DISubroutineType(types: !2920)
!2920 = !{!456, !2893, !7}
!2921 = !{!2922, !2923}
!2922 = !DILocalVariable(name: "vec_", arg: 1, scope: !2918, file: !135, line: 150, type: !2893)
!2923 = !DILocalVariable(name: "ix_", arg: 2, scope: !2918, file: !135, line: 150, type: !7)
!2924 = !DILocation(line: 0, scope: !2918)
!2925 = !DILocation(line: 150, column: 1, scope: !2918)
!2926 = distinct !DISubprogram(name: "remove_edge", scope: !3, file: !3, line: 378, type: !1924, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2927)
!2927 = !{!2928}
!2928 = !DILocalVariable(name: "e", arg: 1, scope: !2926, file: !3, line: 378, type: !456)
!2929 = !DILocation(line: 0, scope: !2926)
!2930 = !DILocation(line: 380, column: 7, scope: !2931)
!2931 = distinct !DILexicalBlock(scope: !2926, file: !3, line: 380, column: 7)
!2932 = !DILocation(line: 380, column: 21, scope: !2931)
!2933 = !DILocation(line: 380, column: 7, scope: !2926)
!2934 = !DILocation(line: 381, column: 5, scope: !2931)
!2935 = !DILocation(line: 383, column: 3, scope: !2926)
!2936 = !DILocation(line: 384, column: 1, scope: !2926)
!2937 = distinct !DISubprogram(name: "redirect_edge_and_branch_force", scope: !3, file: !3, line: 391, type: !1873, scopeLine: 392, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2938)
!2938 = !{!2939, !2940, !2941, !2942, !2943}
!2939 = !DILocalVariable(name: "e", arg: 1, scope: !2937, file: !3, line: 391, type: !456)
!2940 = !DILocalVariable(name: "dest", arg: 2, scope: !2937, file: !3, line: 391, type: !439)
!2941 = !DILocalVariable(name: "ret", scope: !2937, file: !3, line: 393, type: !439)
!2942 = !DILocalVariable(name: "src", scope: !2937, file: !3, line: 393, type: !439)
!2943 = !DILocalVariable(name: "loop", scope: !2937, file: !3, line: 394, type: !1123)
!2944 = !DILocation(line: 0, scope: !2937)
!2945 = !DILocation(line: 393, column: 29, scope: !2937)
!2946 = !DILocation(line: 396, column: 8, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 396, column: 7)
!2948 = !DILocation(line: 396, column: 19, scope: !2947)
!2949 = !DILocation(line: 396, column: 7, scope: !2937)
!2950 = !DILocation(line: 398, column: 18, scope: !2947)
!2951 = !DILocation(line: 397, column: 5, scope: !2947)
!2952 = !DILocation(line: 400, column: 7, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 400, column: 7)
!2954 = !DILocation(line: 400, column: 21, scope: !2953)
!2955 = !DILocation(line: 400, column: 7, scope: !2937)
!2956 = !DILocation(line: 401, column: 5, scope: !2953)
!2957 = !DILocation(line: 403, column: 9, scope: !2937)
!2958 = !DILocation(line: 403, column: 20, scope: !2937)
!2959 = !DILocation(line: 404, column: 11, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 404, column: 7)
!2961 = !DILocation(line: 405, column: 7, scope: !2960)
!2962 = !DILocation(line: 405, column: 10, scope: !2960)
!2963 = !DILocation(line: 404, column: 7, scope: !2937)
!2964 = !DILocation(line: 406, column: 5, scope: !2960)
!2965 = !DILocation(line: 408, column: 7, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 408, column: 7)
!2967 = !DILocation(line: 408, column: 21, scope: !2966)
!2968 = !DILocation(line: 408, column: 7, scope: !2937)
!2969 = !DILocation(line: 410, column: 11, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 409, column: 5)
!2971 = !DILocation(line: 412, column: 29, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 411, column: 2)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 410, column: 11)
!2974 = !DILocation(line: 412, column: 48, scope: !2972)
!2975 = !DILocation(line: 413, column: 8, scope: !2972)
!2976 = !DILocation(line: 413, column: 27, scope: !2972)
!2977 = !DILocation(line: 412, column: 11, scope: !2972)
!2978 = !DILocation(line: 414, column: 4, scope: !2972)
!2979 = !DILocation(line: 415, column: 2, scope: !2972)
!2980 = !DILocation(line: 416, column: 16, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 416, column: 16)
!2982 = !DILocation(line: 416, column: 38, scope: !2981)
!2983 = !DILocation(line: 416, column: 16, scope: !2973)
!2984 = !DILocation(line: 417, column: 2, scope: !2981)
!2985 = !DILocation(line: 420, column: 3, scope: !2937)
!2986 = distinct !DISubprogram(name: "single_pred", scope: !135, file: !135, line: 672, type: !2987, scopeLine: 673, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2989)
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!439, !1907}
!2989 = !{!2990}
!2990 = !DILocalVariable(name: "bb", arg: 1, scope: !2986, file: !135, line: 672, type: !1907)
!2991 = !DILocation(line: 0, scope: !2986)
!2992 = !DILocation(line: 674, column: 10, scope: !2986)
!2993 = !DILocation(line: 674, column: 33, scope: !2986)
!2994 = !DILocation(line: 674, column: 3, scope: !2986)
!2995 = distinct !DISubprogram(name: "single_succ", scope: !135, file: !135, line: 663, type: !2987, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2996)
!2996 = !{!2997}
!2997 = !DILocalVariable(name: "bb", arg: 1, scope: !2995, file: !135, line: 663, type: !1907)
!2998 = !DILocation(line: 0, scope: !2995)
!2999 = !DILocation(line: 665, column: 10, scope: !2995)
!3000 = !DILocation(line: 665, column: 33, scope: !2995)
!3001 = !DILocation(line: 665, column: 3, scope: !2995)
!3002 = distinct !DISubprogram(name: "split_block", scope: !3, file: !3, line: 428, type: !3003, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3005)
!3003 = !DISubroutineType(types: !3004)
!3004 = !{!456, !439, !435}
!3005 = !{!3006, !3007, !3008, !3009}
!3006 = !DILocalVariable(name: "bb", arg: 1, scope: !3002, file: !3, line: 428, type: !439)
!3007 = !DILocalVariable(name: "i", arg: 2, scope: !3002, file: !3, line: 428, type: !435)
!3008 = !DILocalVariable(name: "new_bb", scope: !3002, file: !3, line: 430, type: !439)
!3009 = !DILocalVariable(name: "res", scope: !3002, file: !3, line: 431, type: !456)
!3010 = !DILocation(line: 0, scope: !3002)
!3011 = !DILocation(line: 433, column: 8, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 433, column: 7)
!3013 = !DILocation(line: 433, column: 19, scope: !3012)
!3014 = !DILocation(line: 433, column: 7, scope: !3002)
!3015 = !DILocation(line: 434, column: 67, scope: !3012)
!3016 = !DILocation(line: 434, column: 5, scope: !3012)
!3017 = !DILocation(line: 436, column: 12, scope: !3002)
!3018 = !DILocation(line: 436, column: 23, scope: !3002)
!3019 = !DILocation(line: 437, column: 8, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 437, column: 7)
!3021 = !DILocation(line: 437, column: 7, scope: !3002)
!3022 = !DILocation(line: 440, column: 23, scope: !3002)
!3023 = !DILocation(line: 440, column: 11, scope: !3002)
!3024 = !DILocation(line: 440, column: 17, scope: !3002)
!3025 = !DILocation(line: 441, column: 27, scope: !3002)
!3026 = !DILocation(line: 441, column: 11, scope: !3002)
!3027 = !DILocation(line: 441, column: 21, scope: !3002)
!3028 = !DILocation(line: 442, column: 28, scope: !3002)
!3029 = !DILocation(line: 442, column: 11, scope: !3002)
!3030 = !DILocation(line: 442, column: 22, scope: !3002)
!3031 = !DILocation(line: 443, column: 31, scope: !3002)
!3032 = !DILocation(line: 443, column: 11, scope: !3002)
!3033 = !DILocation(line: 443, column: 25, scope: !3002)
!3034 = !DILocation(line: 445, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 445, column: 7)
!3036 = !DILocation(line: 445, column: 7, scope: !3002)
!3037 = !DILocation(line: 447, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 446, column: 5)
!3039 = !DILocation(line: 448, column: 7, scope: !3038)
!3040 = !DILocation(line: 449, column: 5, scope: !3038)
!3041 = !DILocation(line: 451, column: 7, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 451, column: 7)
!3043 = !DILocation(line: 451, column: 21, scope: !3042)
!3044 = !DILocation(line: 451, column: 7, scope: !3002)
!3045 = !DILocation(line: 453, column: 35, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 452, column: 5)
!3047 = !DILocation(line: 453, column: 7, scope: !3046)
!3048 = !DILocation(line: 454, column: 15, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !3, line: 454, column: 11)
!3050 = !DILocation(line: 454, column: 28, scope: !3049)
!3051 = !DILocation(line: 454, column: 34, scope: !3049)
!3052 = !DILocation(line: 454, column: 11, scope: !3046)
!3053 = !DILocation(line: 455, column: 25, scope: !3049)
!3054 = !DILocation(line: 455, column: 2, scope: !3049)
!3055 = !DILocation(line: 458, column: 9, scope: !3002)
!3056 = !DILocation(line: 460, column: 11, scope: !3057)
!3057 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 460, column: 7)
!3058 = !DILocation(line: 460, column: 17, scope: !3057)
!3059 = !DILocation(line: 460, column: 7, scope: !3002)
!3060 = !DILocation(line: 462, column: 15, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !3, line: 461, column: 5)
!3062 = !DILocation(line: 462, column: 21, scope: !3061)
!3063 = !DILocation(line: 463, column: 12, scope: !3061)
!3064 = !DILocation(line: 463, column: 18, scope: !3061)
!3065 = !DILocation(line: 464, column: 5, scope: !3061)
!3066 = !DILocation(line: 467, column: 1, scope: !3002)
!3067 = distinct !DISubprogram(name: "split_block_after_labels", scope: !3, file: !3, line: 472, type: !3068, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!456, !439}
!3070 = !{!3071}
!3071 = !DILocalVariable(name: "bb", arg: 1, scope: !3067, file: !3, line: 472, type: !439)
!3072 = !DILocation(line: 0, scope: !3067)
!3073 = !DILocation(line: 474, column: 10, scope: !3067)
!3074 = !DILocation(line: 474, column: 3, scope: !3067)
!3075 = distinct !DISubprogram(name: "move_block_after", scope: !3, file: !3, line: 481, type: !1892, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3076)
!3076 = !{!3077, !3078, !3079}
!3077 = !DILocalVariable(name: "bb", arg: 1, scope: !3075, file: !3, line: 481, type: !439)
!3078 = !DILocalVariable(name: "after", arg: 2, scope: !3075, file: !3, line: 481, type: !439)
!3079 = !DILocalVariable(name: "ret", scope: !3075, file: !3, line: 483, type: !430)
!3080 = !DILocation(line: 0, scope: !3075)
!3081 = !DILocation(line: 485, column: 8, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3075, file: !3, line: 485, column: 7)
!3083 = !DILocation(line: 485, column: 19, scope: !3082)
!3084 = !DILocation(line: 485, column: 7, scope: !3075)
!3085 = !DILocation(line: 486, column: 72, scope: !3082)
!3086 = !DILocation(line: 486, column: 5, scope: !3082)
!3087 = !DILocation(line: 488, column: 9, scope: !3075)
!3088 = !DILocation(line: 488, column: 20, scope: !3075)
!3089 = !DILocation(line: 490, column: 3, scope: !3075)
!3090 = distinct !DISubprogram(name: "delete_basic_block", scope: !3, file: !3, line: 496, type: !1884, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3091)
!3091 = !{!3092, !3093}
!3092 = !DILocalVariable(name: "bb", arg: 1, scope: !3090, file: !3, line: 496, type: !439)
!3093 = !DILocalVariable(name: "loop", scope: !3094, file: !3, line: 505, type: !1123)
!3094 = distinct !DILexicalBlock(scope: !3095, file: !3, line: 504, column: 5)
!3095 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 503, column: 7)
!3096 = !DILocation(line: 0, scope: !3090)
!3097 = !DILocation(line: 498, column: 8, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 498, column: 7)
!3099 = !DILocation(line: 498, column: 19, scope: !3098)
!3100 = !DILocation(line: 498, column: 7, scope: !3090)
!3101 = !DILocation(line: 499, column: 74, scope: !3098)
!3102 = !DILocation(line: 499, column: 5, scope: !3098)
!3103 = !DILocation(line: 501, column: 3, scope: !3090)
!3104 = !DILocation(line: 501, column: 14, scope: !3090)
!3105 = !DILocation(line: 503, column: 7, scope: !3095)
!3106 = !DILocation(line: 503, column: 21, scope: !3095)
!3107 = !DILocation(line: 503, column: 7, scope: !3090)
!3108 = !DILocation(line: 505, column: 31, scope: !3094)
!3109 = !DILocation(line: 0, scope: !3094)
!3110 = !DILocation(line: 509, column: 17, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3094, file: !3, line: 509, column: 11)
!3112 = !DILocation(line: 509, column: 23, scope: !3111)
!3113 = !DILocation(line: 510, column: 4, scope: !3111)
!3114 = !DILocation(line: 510, column: 13, scope: !3111)
!3115 = !DILocation(line: 510, column: 20, scope: !3111)
!3116 = !DILocation(line: 509, column: 11, scope: !3094)
!3117 = !DILocation(line: 512, column: 10, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3111, file: !3, line: 511, column: 2)
!3119 = !DILocation(line: 512, column: 17, scope: !3118)
!3120 = !DILocation(line: 513, column: 16, scope: !3118)
!3121 = !DILocation(line: 514, column: 2, scope: !3118)
!3122 = !DILocation(line: 516, column: 7, scope: !3094)
!3123 = !DILocation(line: 517, column: 5, scope: !3094)
!3124 = !DILocation(line: 521, column: 3, scope: !3090)
!3125 = !DILocation(line: 521, column: 10, scope: !3090)
!3126 = !DILocation(line: 521, column: 33, scope: !3090)
!3127 = !DILocation(line: 523, column: 3, scope: !3090)
!3128 = !DILocation(line: 522, column: 18, scope: !3090)
!3129 = !DILocation(line: 522, column: 5, scope: !3090)
!3130 = distinct !{!3130, !3124, !3131}
!3131 = !DILocation(line: 522, column: 35, scope: !3090)
!3132 = !DILocation(line: 523, column: 10, scope: !3090)
!3133 = !DILocation(line: 523, column: 33, scope: !3090)
!3134 = !DILocation(line: 524, column: 18, scope: !3090)
!3135 = !DILocation(line: 524, column: 5, scope: !3090)
!3136 = distinct !{!3136, !3127, !3137}
!3137 = !DILocation(line: 524, column: 35, scope: !3090)
!3138 = !DILocation(line: 526, column: 7, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 526, column: 7)
!3140 = !DILocation(line: 526, column: 7, scope: !3090)
!3141 = !DILocation(line: 527, column: 5, scope: !3139)
!3142 = !DILocation(line: 528, column: 7, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3090, file: !3, line: 528, column: 7)
!3144 = !DILocation(line: 528, column: 7, scope: !3090)
!3145 = !DILocation(line: 529, column: 5, scope: !3143)
!3146 = !DILocation(line: 532, column: 3, scope: !3090)
!3147 = !DILocation(line: 533, column: 1, scope: !3090)
!3148 = distinct !DISubprogram(name: "split_edge", scope: !3, file: !3, line: 538, type: !1920, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3149)
!3149 = !{!3150, !3151, !3152, !3153, !3154, !3155, !3156, !3157, !3158, !3159}
!3150 = !DILocalVariable(name: "e", arg: 1, scope: !3148, file: !3, line: 538, type: !456)
!3151 = !DILocalVariable(name: "ret", scope: !3148, file: !3, line: 540, type: !439)
!3152 = !DILocalVariable(name: "count", scope: !3148, file: !3, line: 541, type: !1758)
!3153 = !DILocalVariable(name: "freq", scope: !3148, file: !3, line: 542, type: !431)
!3154 = !DILocalVariable(name: "f", scope: !3148, file: !3, line: 543, type: !456)
!3155 = !DILocalVariable(name: "irr", scope: !3148, file: !3, line: 544, type: !430)
!3156 = !DILocalVariable(name: "loop", scope: !3148, file: !3, line: 545, type: !1123)
!3157 = !DILocalVariable(name: "src", scope: !3148, file: !3, line: 546, type: !439)
!3158 = !DILocalVariable(name: "dest", scope: !3148, file: !3, line: 546, type: !439)
!3159 = !DILocalVariable(name: "ei", scope: !3160, file: !3, line: 584, type: !2424)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 583, column: 2)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !3, line: 581, column: 11)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 571, column: 5)
!3163 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 570, column: 7)
!3164 = !DILocation(line: 0, scope: !3148)
!3165 = !DILocation(line: 541, column: 24, scope: !3148)
!3166 = !DILocation(line: 542, column: 14, scope: !3148)
!3167 = !DILocation(line: 543, column: 3, scope: !3148)
!3168 = !DILocation(line: 544, column: 18, scope: !3148)
!3169 = !DILocation(line: 544, column: 49, scope: !3148)
!3170 = !DILocation(line: 546, column: 39, scope: !3148)
!3171 = !DILocation(line: 548, column: 8, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 548, column: 7)
!3173 = !DILocation(line: 548, column: 19, scope: !3172)
!3174 = !DILocation(line: 548, column: 7, scope: !3148)
!3175 = !DILocation(line: 549, column: 66, scope: !3172)
!3176 = !DILocation(line: 549, column: 5, scope: !3172)
!3177 = !DILocation(line: 551, column: 7, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 551, column: 7)
!3179 = !DILocation(line: 551, column: 21, scope: !3178)
!3180 = !DILocation(line: 551, column: 7, scope: !3148)
!3181 = !DILocation(line: 552, column: 5, scope: !3178)
!3182 = !DILocation(line: 554, column: 9, scope: !3148)
!3183 = !DILocation(line: 554, column: 20, scope: !3148)
!3184 = !DILocation(line: 555, column: 8, scope: !3148)
!3185 = !DILocation(line: 555, column: 14, scope: !3148)
!3186 = !DILocation(line: 556, column: 8, scope: !3148)
!3187 = !DILocation(line: 556, column: 18, scope: !3148)
!3188 = !DILocation(line: 557, column: 3, scope: !3148)
!3189 = !DILocation(line: 557, column: 27, scope: !3148)
!3190 = !DILocation(line: 557, column: 39, scope: !3148)
!3191 = !DILocation(line: 558, column: 3, scope: !3148)
!3192 = !DILocation(line: 558, column: 27, scope: !3148)
!3193 = !DILocation(line: 558, column: 33, scope: !3148)
!3194 = !DILocation(line: 560, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 560, column: 7)
!3196 = !DILocation(line: 560, column: 7, scope: !3148)
!3197 = !DILocation(line: 562, column: 12, scope: !3198)
!3198 = distinct !DILexicalBlock(scope: !3195, file: !3, line: 561, column: 5)
!3199 = !DILocation(line: 562, column: 18, scope: !3198)
!3200 = !DILocation(line: 563, column: 7, scope: !3198)
!3201 = !DILocation(line: 563, column: 31, scope: !3198)
!3202 = !DILocation(line: 563, column: 37, scope: !3198)
!3203 = !DILocation(line: 564, column: 7, scope: !3198)
!3204 = !DILocation(line: 564, column: 31, scope: !3198)
!3205 = !DILocation(line: 564, column: 37, scope: !3198)
!3206 = !DILocation(line: 565, column: 5, scope: !3198)
!3207 = !DILocation(line: 567, column: 7, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 567, column: 7)
!3209 = !DILocation(line: 567, column: 7, scope: !3148)
!3210 = !DILocation(line: 568, column: 51, scope: !3208)
!3211 = !DILocation(line: 568, column: 5, scope: !3208)
!3212 = !DILocation(line: 570, column: 7, scope: !3163)
!3213 = !DILocation(line: 570, column: 39, scope: !3163)
!3214 = !DILocation(line: 570, column: 7, scope: !3148)
!3215 = !DILocation(line: 581, column: 52, scope: !3161)
!3216 = !DILocation(line: 581, column: 11, scope: !3161)
!3217 = !DILocation(line: 582, column: 7, scope: !3161)
!3218 = !DILocation(line: 582, column: 4, scope: !3161)
!3219 = !DILocation(line: 581, column: 11, scope: !3162)
!3220 = !DILocation(line: 584, column: 4, scope: !3160)
!3221 = !DILocation(line: 585, column: 4, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 585, column: 4)
!3223 = !DILocation(line: 0, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3222, file: !3, line: 585, column: 4)
!3225 = !DILocation(line: 585, column: 4, scope: !3224)
!3226 = !DILocation(line: 587, column: 12, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 587, column: 12)
!3228 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 586, column: 6)
!3229 = !DILocation(line: 587, column: 17, scope: !3227)
!3230 = !DILocation(line: 587, column: 14, scope: !3227)
!3231 = !DILocation(line: 587, column: 12, scope: !3228)
!3232 = !DILocation(line: 590, column: 45, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3228, file: !3, line: 590, column: 12)
!3234 = !DILocation(line: 590, column: 48, scope: !3233)
!3235 = !DILocation(line: 591, column: 8, scope: !3233)
!3236 = !DILocation(line: 590, column: 13, scope: !3233)
!3237 = !DILocation(line: 590, column: 12, scope: !3228)
!3238 = !DILocation(line: 0, scope: !3160)
!3239 = distinct !{!3239, !3221, !3240}
!3240 = !DILocation(line: 593, column: 6, scope: !3222)
!3241 = !DILocation(line: 595, column: 9, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 595, column: 8)
!3243 = !DILocation(line: 595, column: 8, scope: !3160)
!3244 = !DILocation(line: 596, column: 47, scope: !3242)
!3245 = !DILocation(line: 596, column: 6, scope: !3242)
!3246 = !DILocation(line: 597, column: 2, scope: !3161)
!3247 = !DILocation(line: 597, column: 2, scope: !3160)
!3248 = !DILocation(line: 600, column: 7, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 600, column: 7)
!3250 = !DILocation(line: 600, column: 21, scope: !3249)
!3251 = !DILocation(line: 600, column: 7, scope: !3148)
!3252 = !DILocation(line: 602, column: 37, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3249, file: !3, line: 601, column: 5)
!3254 = !DILocation(line: 602, column: 56, scope: !3253)
!3255 = !DILocation(line: 602, column: 14, scope: !3253)
!3256 = !DILocation(line: 603, column: 7, scope: !3253)
!3257 = !DILocation(line: 605, column: 17, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3253, file: !3, line: 605, column: 11)
!3259 = !DILocation(line: 605, column: 23, scope: !3258)
!3260 = !DILocation(line: 605, column: 11, scope: !3253)
!3261 = !DILocation(line: 606, column: 14, scope: !3258)
!3262 = !DILocation(line: 606, column: 2, scope: !3258)
!3263 = !DILocation(line: 610, column: 1, scope: !3148)
!3264 = !DILocation(line: 609, column: 3, scope: !3148)
!3265 = distinct !DISubprogram(name: "single_succ_edge", scope: !135, file: !135, line: 643, type: !3266, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3268)
!3266 = !DISubroutineType(types: !3267)
!3267 = !{!456, !1907}
!3268 = !{!3269}
!3269 = !DILocalVariable(name: "bb", arg: 1, scope: !3265, file: !135, line: 643, type: !1907)
!3270 = !DILocation(line: 0, scope: !3265)
!3271 = !DILocation(line: 645, column: 3, scope: !3265)
!3272 = !DILocation(line: 646, column: 10, scope: !3265)
!3273 = !DILocation(line: 646, column: 3, scope: !3265)
!3274 = distinct !DISubprogram(name: "single_pred_edge", scope: !135, file: !135, line: 653, type: !3266, scopeLine: 654, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3275)
!3275 = !{!3276}
!3276 = !DILocalVariable(name: "bb", arg: 1, scope: !3274, file: !135, line: 653, type: !1907)
!3277 = !DILocation(line: 0, scope: !3274)
!3278 = !DILocation(line: 655, column: 3, scope: !3274)
!3279 = !DILocation(line: 656, column: 10, scope: !3274)
!3280 = !DILocation(line: 656, column: 3, scope: !3274)
!3281 = distinct !DISubprogram(name: "create_basic_block", scope: !3, file: !3, line: 617, type: !1865, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3282)
!3282 = !{!3283, !3284, !3285, !3286}
!3283 = !DILocalVariable(name: "head", arg: 1, scope: !3281, file: !3, line: 617, type: !435)
!3284 = !DILocalVariable(name: "end", arg: 2, scope: !3281, file: !3, line: 617, type: !435)
!3285 = !DILocalVariable(name: "after", arg: 3, scope: !3281, file: !3, line: 617, type: !439)
!3286 = !DILocalVariable(name: "ret", scope: !3281, file: !3, line: 619, type: !439)
!3287 = !DILocation(line: 0, scope: !3281)
!3288 = !DILocation(line: 621, column: 8, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 621, column: 7)
!3290 = !DILocation(line: 621, column: 19, scope: !3289)
!3291 = !DILocation(line: 621, column: 7, scope: !3281)
!3292 = !DILocation(line: 622, column: 74, scope: !3289)
!3293 = !DILocation(line: 622, column: 5, scope: !3289)
!3294 = !DILocation(line: 624, column: 9, scope: !3281)
!3295 = !DILocation(line: 624, column: 20, scope: !3281)
!3296 = !DILocation(line: 626, column: 7, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 626, column: 7)
!3298 = !DILocation(line: 626, column: 7, scope: !3281)
!3299 = !DILocation(line: 627, column: 5, scope: !3297)
!3300 = !DILocation(line: 628, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 628, column: 7)
!3302 = !DILocation(line: 628, column: 7, scope: !3281)
!3303 = !DILocation(line: 629, column: 5, scope: !3301)
!3304 = !DILocation(line: 631, column: 3, scope: !3281)
!3305 = distinct !DISubprogram(name: "create_empty_bb", scope: !3, file: !3, line: 637, type: !1916, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3306)
!3306 = !{!3307}
!3307 = !DILocalVariable(name: "after", arg: 1, scope: !3305, file: !3, line: 637, type: !439)
!3308 = !DILocation(line: 0, scope: !3305)
!3309 = !DILocation(line: 639, column: 10, scope: !3305)
!3310 = !DILocation(line: 639, column: 3, scope: !3305)
!3311 = distinct !DISubprogram(name: "can_merge_blocks_p", scope: !3, file: !3, line: 645, type: !1892, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3312 = !{!3313, !3314, !3315}
!3313 = !DILocalVariable(name: "bb1", arg: 1, scope: !3311, file: !3, line: 645, type: !439)
!3314 = !DILocalVariable(name: "bb2", arg: 2, scope: !3311, file: !3, line: 645, type: !439)
!3315 = !DILocalVariable(name: "ret", scope: !3311, file: !3, line: 647, type: !430)
!3316 = !DILocation(line: 0, scope: !3311)
!3317 = !DILocation(line: 649, column: 8, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 649, column: 7)
!3319 = !DILocation(line: 649, column: 19, scope: !3318)
!3320 = !DILocation(line: 649, column: 7, scope: !3311)
!3321 = !DILocation(line: 650, column: 74, scope: !3318)
!3322 = !DILocation(line: 650, column: 5, scope: !3318)
!3323 = !DILocation(line: 652, column: 9, scope: !3311)
!3324 = !DILocation(line: 652, column: 20, scope: !3311)
!3325 = !DILocation(line: 654, column: 3, scope: !3311)
!3326 = distinct !DISubprogram(name: "predict_edge", scope: !3, file: !3, line: 658, type: !1901, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3327)
!3327 = !{!3328, !3329, !3330}
!3328 = !DILocalVariable(name: "e", arg: 1, scope: !3326, file: !3, line: 658, type: !456)
!3329 = !DILocalVariable(name: "predictor", arg: 2, scope: !3326, file: !3, line: 658, type: !390)
!3330 = !DILocalVariable(name: "probability", arg: 3, scope: !3326, file: !3, line: 658, type: !431)
!3331 = !DILocation(line: 0, scope: !3326)
!3332 = !DILocation(line: 660, column: 8, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3326, file: !3, line: 660, column: 7)
!3334 = !DILocation(line: 660, column: 19, scope: !3333)
!3335 = !DILocation(line: 660, column: 7, scope: !3326)
!3336 = !DILocation(line: 661, column: 68, scope: !3333)
!3337 = !DILocation(line: 661, column: 5, scope: !3333)
!3338 = !DILocation(line: 663, column: 3, scope: !3326)
!3339 = !DILocation(line: 663, column: 14, scope: !3326)
!3340 = !DILocation(line: 664, column: 1, scope: !3326)
!3341 = distinct !DISubprogram(name: "predicted_by_p", scope: !3, file: !3, line: 667, type: !1905, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3342)
!3342 = !{!3343, !3344}
!3343 = !DILocalVariable(name: "bb", arg: 1, scope: !3341, file: !3, line: 667, type: !1907)
!3344 = !DILocalVariable(name: "predictor", arg: 2, scope: !3341, file: !3, line: 667, type: !390)
!3345 = !DILocation(line: 0, scope: !3341)
!3346 = !DILocation(line: 669, column: 8, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 669, column: 7)
!3348 = !DILocation(line: 669, column: 19, scope: !3347)
!3349 = !DILocation(line: 669, column: 7, scope: !3341)
!3350 = !DILocation(line: 670, column: 70, scope: !3347)
!3351 = !DILocation(line: 670, column: 5, scope: !3347)
!3352 = !DILocation(line: 672, column: 10, scope: !3341)
!3353 = !DILocation(line: 672, column: 21, scope: !3341)
!3354 = !DILocation(line: 672, column: 3, scope: !3341)
!3355 = distinct !DISubprogram(name: "merge_blocks", scope: !3, file: !3, line: 678, type: !1897, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3356 = !{!3357, !3358, !3359, !3360}
!3357 = !DILocalVariable(name: "a", arg: 1, scope: !3355, file: !3, line: 678, type: !439)
!3358 = !DILocalVariable(name: "b", arg: 2, scope: !3355, file: !3, line: 678, type: !439)
!3359 = !DILocalVariable(name: "e", scope: !3355, file: !3, line: 680, type: !456)
!3360 = !DILocalVariable(name: "ei", scope: !3355, file: !3, line: 681, type: !2424)
!3361 = !DILocation(line: 0, scope: !3355)
!3362 = !DILocation(line: 680, column: 3, scope: !3355)
!3363 = !DILocation(line: 681, column: 3, scope: !3355)
!3364 = !DILocation(line: 683, column: 8, scope: !3365)
!3365 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 683, column: 7)
!3366 = !DILocation(line: 683, column: 19, scope: !3365)
!3367 = !DILocation(line: 683, column: 7, scope: !3355)
!3368 = !DILocation(line: 684, column: 68, scope: !3365)
!3369 = !DILocation(line: 684, column: 5, scope: !3365)
!3370 = !DILocation(line: 686, column: 3, scope: !3355)
!3371 = !DILocation(line: 686, column: 14, scope: !3355)
!3372 = !DILocation(line: 688, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 688, column: 7)
!3374 = !DILocation(line: 688, column: 21, scope: !3373)
!3375 = !DILocation(line: 688, column: 7, scope: !3355)
!3376 = !DILocation(line: 689, column: 5, scope: !3373)
!3377 = !DILocation(line: 696, column: 3, scope: !3355)
!3378 = !DILocation(line: 696, column: 10, scope: !3355)
!3379 = !DILocation(line: 696, column: 32, scope: !3355)
!3380 = !DILocation(line: 697, column: 18, scope: !3355)
!3381 = !DILocation(line: 697, column: 5, scope: !3355)
!3382 = distinct !{!3382, !3377, !3383}
!3383 = !DILocation(line: 697, column: 34, scope: !3355)
!3384 = !DILocation(line: 700, column: 3, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 700, column: 3)
!3386 = !DILocation(line: 0, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 700, column: 3)
!3388 = !DILocation(line: 700, column: 3, scope: !3387)
!3389 = !DILocation(line: 702, column: 7, scope: !3390)
!3390 = distinct !DILexicalBlock(scope: !3387, file: !3, line: 701, column: 5)
!3391 = !DILocation(line: 702, column: 10, scope: !3390)
!3392 = !DILocation(line: 702, column: 14, scope: !3390)
!3393 = !DILocation(line: 703, column: 11, scope: !3394)
!3394 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 703, column: 11)
!3395 = !DILocation(line: 703, column: 25, scope: !3394)
!3396 = !DILocation(line: 703, column: 11, scope: !3390)
!3397 = !DILocation(line: 704, column: 20, scope: !3394)
!3398 = !DILocation(line: 704, column: 2, scope: !3394)
!3399 = distinct !{!3399, !3384, !3400}
!3400 = !DILocation(line: 705, column: 5, scope: !3385)
!3401 = !DILocation(line: 706, column: 17, scope: !3355)
!3402 = !DILocation(line: 706, column: 12, scope: !3355)
!3403 = !DILocation(line: 707, column: 18, scope: !3355)
!3404 = !DILocation(line: 707, column: 6, scope: !3355)
!3405 = !DILocation(line: 707, column: 12, scope: !3355)
!3406 = !DILocation(line: 710, column: 23, scope: !3355)
!3407 = !DILocation(line: 710, column: 6, scope: !3355)
!3408 = !DILocation(line: 710, column: 12, scope: !3355)
!3409 = !DILocation(line: 712, column: 7, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 712, column: 7)
!3411 = !DILocation(line: 712, column: 7, scope: !3355)
!3412 = !DILocation(line: 713, column: 5, scope: !3410)
!3413 = !DILocation(line: 715, column: 7, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 715, column: 7)
!3415 = !DILocation(line: 715, column: 7, scope: !3355)
!3416 = !DILocation(line: 716, column: 5, scope: !3414)
!3417 = !DILocation(line: 717, column: 7, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3355, file: !3, line: 717, column: 7)
!3419 = !DILocation(line: 717, column: 7, scope: !3355)
!3420 = !DILocation(line: 718, column: 5, scope: !3418)
!3421 = !DILocation(line: 720, column: 3, scope: !3355)
!3422 = !DILocation(line: 721, column: 1, scope: !3355)
!3423 = distinct !DISubprogram(name: "make_forwarder_block", scope: !3, file: !3, line: 728, type: !3424, scopeLine: 730, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3429)
!3424 = !DISubroutineType(types: !3425)
!3425 = !{!456, !439, !3426, !1883}
!3426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3427, size: 64)
!3427 = !DISubroutineType(types: !3428)
!3428 = !{!430, !456}
!3429 = !{!3430, !3431, !3432, !3433, !3434, !3435, !3436, !3437, !3438, !3439, !3440, !3441, !3445}
!3430 = !DILocalVariable(name: "bb", arg: 1, scope: !3423, file: !3, line: 728, type: !439)
!3431 = !DILocalVariable(name: "redirect_edge_p", arg: 2, scope: !3423, file: !3, line: 728, type: !3426)
!3432 = !DILocalVariable(name: "new_bb_cbk", arg: 3, scope: !3423, file: !3, line: 729, type: !1883)
!3433 = !DILocalVariable(name: "e", scope: !3423, file: !3, line: 731, type: !456)
!3434 = !DILocalVariable(name: "fallthru", scope: !3423, file: !3, line: 731, type: !456)
!3435 = !DILocalVariable(name: "ei", scope: !3423, file: !3, line: 732, type: !2424)
!3436 = !DILocalVariable(name: "dummy", scope: !3423, file: !3, line: 733, type: !439)
!3437 = !DILocalVariable(name: "jump", scope: !3423, file: !3, line: 733, type: !439)
!3438 = !DILocalVariable(name: "loop", scope: !3423, file: !3, line: 734, type: !1123)
!3439 = !DILocalVariable(name: "ploop", scope: !3423, file: !3, line: 734, type: !1123)
!3440 = !DILocalVariable(name: "cloop", scope: !3423, file: !3, line: 734, type: !1123)
!3441 = !DILocalVariable(name: "e_src", scope: !3442, file: !3, line: 747, type: !439)
!3442 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 746, column: 5)
!3443 = distinct !DILexicalBlock(scope: !3444, file: !3, line: 745, column: 3)
!3444 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 745, column: 3)
!3445 = !DILocalVariable(name: "doms_to_fix", scope: !3446, file: !3, line: 784, type: !1793)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 783, column: 5)
!3447 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 782, column: 7)
!3448 = !DILocation(line: 0, scope: !3423)
!3449 = !DILocation(line: 731, column: 3, scope: !3423)
!3450 = !DILocation(line: 732, column: 3, scope: !3423)
!3451 = !DILocation(line: 736, column: 8, scope: !3452)
!3452 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 736, column: 7)
!3453 = !DILocation(line: 736, column: 19, scope: !3452)
!3454 = !DILocation(line: 736, column: 7, scope: !3423)
!3455 = !DILocation(line: 738, column: 18, scope: !3452)
!3456 = !DILocation(line: 737, column: 5, scope: !3452)
!3457 = !DILocation(line: 740, column: 14, scope: !3423)
!3458 = !DILocation(line: 741, column: 21, scope: !3423)
!3459 = !DILocation(line: 742, column: 18, scope: !3423)
!3460 = !DILocation(line: 745, column: 13, scope: !3444)
!3461 = !DILocation(line: 0, scope: !3443)
!3462 = !DILocation(line: 0, scope: !3442)
!3463 = !DILocation(line: 0, scope: !3464)
!3464 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 771, column: 15)
!3465 = distinct !DILexicalBlock(scope: !3466, file: !3, line: 768, column: 9)
!3466 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 767, column: 11)
!3467 = !DILocation(line: 0, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 777, column: 15)
!3469 = !DILocation(line: 745, column: 8, scope: !3444)
!3470 = !DILocation(line: 745, column: 43, scope: !3443)
!3471 = !DILocation(line: 745, column: 41, scope: !3443)
!3472 = !DILocation(line: 745, column: 3, scope: !3444)
!3473 = !DILocation(line: 749, column: 11, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 749, column: 11)
!3475 = !DILocation(line: 749, column: 11, scope: !3442)
!3476 = !DILocation(line: 751, column: 4, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 750, column: 2)
!3478 = !DILocation(line: 752, column: 4, scope: !3477)
!3479 = distinct !{!3479, !3472, !3480}
!3480 = !DILocation(line: 780, column: 5, scope: !3444)
!3481 = !DILocation(line: 755, column: 27, scope: !3442)
!3482 = !DILocation(line: 755, column: 24, scope: !3442)
!3483 = !DILocation(line: 756, column: 26, scope: !3442)
!3484 = !DILocation(line: 756, column: 20, scope: !3442)
!3485 = !DILocation(line: 757, column: 28, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 757, column: 11)
!3487 = !DILocation(line: 757, column: 11, scope: !3442)
!3488 = !DILocation(line: 758, column: 19, scope: !3486)
!3489 = !DILocation(line: 758, column: 2, scope: !3486)
!3490 = !DILocation(line: 759, column: 24, scope: !3491)
!3491 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 759, column: 11)
!3492 = !DILocation(line: 759, column: 11, scope: !3442)
!3493 = !DILocation(line: 760, column: 15, scope: !3491)
!3494 = !DILocation(line: 760, column: 2, scope: !3491)
!3495 = !DILocation(line: 761, column: 29, scope: !3442)
!3496 = !DILocation(line: 761, column: 23, scope: !3442)
!3497 = !DILocation(line: 762, column: 27, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3442, file: !3, line: 762, column: 11)
!3499 = !DILocation(line: 762, column: 11, scope: !3442)
!3500 = !DILocation(line: 763, column: 2, scope: !3498)
!3501 = !DILocation(line: 765, column: 18, scope: !3442)
!3502 = !DILocation(line: 766, column: 14, scope: !3442)
!3503 = !DILocation(line: 767, column: 16, scope: !3466)
!3504 = !DILocation(line: 767, column: 11, scope: !3442)
!3505 = !DILocation(line: 771, column: 15, scope: !3464)
!3506 = !DILocation(line: 771, column: 29, scope: !3464)
!3507 = !DILocation(line: 772, column: 15, scope: !3464)
!3508 = !DILocation(line: 772, column: 25, scope: !3464)
!3509 = !DILocation(line: 772, column: 37, scope: !3464)
!3510 = !DILocation(line: 773, column: 15, scope: !3464)
!3511 = !DILocation(line: 773, column: 38, scope: !3464)
!3512 = !DILocation(line: 773, column: 45, scope: !3464)
!3513 = !DILocation(line: 774, column: 15, scope: !3464)
!3514 = !DILocation(line: 774, column: 38, scope: !3464)
!3515 = !DILocation(line: 774, column: 44, scope: !3464)
!3516 = !DILocation(line: 771, column: 15, scope: !3465)
!3517 = !DILocation(line: 775, column: 39, scope: !3464)
!3518 = !DILocation(line: 775, column: 13, scope: !3464)
!3519 = !DILocation(line: 777, column: 15, scope: !3465)
!3520 = !DILocation(line: 782, column: 7, scope: !3447)
!3521 = !DILocation(line: 778, column: 13, scope: !3468)
!3522 = !DILocation(line: 782, column: 7, scope: !3423)
!3523 = !DILocation(line: 784, column: 7, scope: !3446)
!3524 = !DILocation(line: 784, column: 46, scope: !3446)
!3525 = !DILocation(line: 0, scope: !3446)
!3526 = !DILocation(line: 784, column: 32, scope: !3446)
!3527 = !DILocation(line: 785, column: 7, scope: !3446)
!3528 = !DILocation(line: 786, column: 7, scope: !3446)
!3529 = !DILocation(line: 787, column: 7, scope: !3446)
!3530 = !DILocation(line: 788, column: 7, scope: !3446)
!3531 = !DILocation(line: 789, column: 5, scope: !3447)
!3532 = !DILocation(line: 789, column: 5, scope: !3446)
!3533 = !DILocation(line: 791, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 791, column: 7)
!3535 = !DILocation(line: 791, column: 21, scope: !3534)
!3536 = !DILocation(line: 791, column: 7, scope: !3423)
!3537 = !DILocation(line: 799, column: 21, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 792, column: 5)
!3539 = !DILocation(line: 800, column: 17, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 800, column: 11)
!3541 = !DILocation(line: 800, column: 24, scope: !3540)
!3542 = !DILocation(line: 801, column: 4, scope: !3540)
!3543 = !DILocation(line: 801, column: 13, scope: !3540)
!3544 = !DILocation(line: 801, column: 19, scope: !3540)
!3545 = !DILocation(line: 802, column: 4, scope: !3540)
!3546 = !DILocation(line: 802, column: 7, scope: !3540)
!3547 = !DILocation(line: 802, column: 38, scope: !3540)
!3548 = !DILocation(line: 800, column: 11, scope: !3538)
!3549 = !DILocation(line: 804, column: 4, scope: !3550)
!3550 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 803, column: 2)
!3551 = !DILocation(line: 805, column: 17, scope: !3550)
!3552 = !DILocation(line: 808, column: 4, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3550, file: !3, line: 808, column: 4)
!3554 = !DILocation(line: 0, scope: !3550)
!3555 = !DILocation(line: 808, column: 4, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 808, column: 4)
!3557 = !DILocation(line: 810, column: 41, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 809, column: 6)
!3559 = !DILocation(line: 810, column: 44, scope: !3558)
!3560 = !DILocation(line: 810, column: 49, scope: !3558)
!3561 = !DILocation(line: 810, column: 16, scope: !3558)
!3562 = distinct !{!3562, !3552, !3563}
!3563 = !DILocation(line: 811, column: 6, scope: !3553)
!3564 = !DILocation(line: 812, column: 4, scope: !3550)
!3565 = !DILocation(line: 813, column: 2, scope: !3550)
!3566 = !DILocation(line: 816, column: 12, scope: !3567)
!3567 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 816, column: 7)
!3568 = !DILocation(line: 0, scope: !3567)
!3569 = !DILocation(line: 816, column: 7, scope: !3567)
!3570 = !DILocation(line: 817, column: 13, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 817, column: 6)
!3572 = distinct !DILexicalBlock(scope: !3567, file: !3, line: 816, column: 7)
!3573 = !DILocation(line: 817, column: 19, scope: !3571)
!3574 = !DILocation(line: 817, column: 6, scope: !3572)
!3575 = !DILocation(line: 818, column: 17, scope: !3571)
!3576 = !DILocation(line: 818, column: 4, scope: !3571)
!3577 = !DILocation(line: 816, column: 41, scope: !3572)
!3578 = !DILocation(line: 816, column: 7, scope: !3572)
!3579 = distinct !{!3579, !3569, !3580}
!3580 = !DILocation(line: 818, column: 19, scope: !3567)
!3581 = !DILocation(line: 821, column: 3, scope: !3423)
!3582 = !DILocation(line: 821, column: 14, scope: !3423)
!3583 = !DILocation(line: 824, column: 1, scope: !3423)
!3584 = !DILocation(line: 823, column: 3, scope: !3423)
!3585 = distinct !DISubprogram(name: "ei_safe_edge", scope: !135, file: !135, line: 761, type: !3586, scopeLine: 762, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3588)
!3586 = !DISubroutineType(types: !3587)
!3587 = !{!456, !2424}
!3588 = !{!3589}
!3589 = !DILocalVariable(name: "i", arg: 1, scope: !3585, file: !135, line: 761, type: !2424)
!3590 = !DILocation(line: 763, column: 11, scope: !3585)
!3591 = !DILocation(line: 763, column: 10, scope: !3585)
!3592 = !DILocation(line: 763, column: 26, scope: !3585)
!3593 = !DILocation(line: 763, column: 3, scope: !3585)
!3594 = distinct !DISubprogram(name: "VEC_basic_block_heap_alloc", scope: !135, file: !135, line: 283, type: !3595, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3597)
!3595 = !DISubroutineType(types: !3596)
!3596 = !{!1793, !431}
!3597 = !{!3598}
!3598 = !DILocalVariable(name: "alloc_", arg: 1, scope: !3594, file: !135, line: 283, type: !431)
!3599 = !DILocation(line: 0, scope: !3594)
!3600 = !DILocation(line: 283, column: 1, scope: !3594)
!3601 = distinct !DISubprogram(name: "VEC_basic_block_base_quick_push", scope: !135, file: !135, line: 281, type: !3602, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3605)
!3602 = !DISubroutineType(types: !3603)
!3603 = !{!438, !3604, !439}
!3604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!3605 = !{!3606, !3607, !3608}
!3606 = !DILocalVariable(name: "vec_", arg: 1, scope: !3601, file: !135, line: 281, type: !3604)
!3607 = !DILocalVariable(name: "obj_", arg: 2, scope: !3601, file: !135, line: 281, type: !439)
!3608 = !DILocalVariable(name: "slot_", scope: !3601, file: !135, line: 281, type: !438)
!3609 = !DILocation(line: 0, scope: !3601)
!3610 = !DILocation(line: 281, column: 1, scope: !3601)
!3611 = distinct !DISubprogram(name: "VEC_basic_block_heap_free", scope: !135, file: !135, line: 283, type: !3612, scopeLine: 283, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3615)
!3612 = !DISubroutineType(types: !3613)
!3613 = !{null, !3614}
!3614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!3615 = !{!3616}
!3616 = !DILocalVariable(name: "vec_", arg: 1, scope: !3611, file: !135, line: 283, type: !3614)
!3617 = !DILocation(line: 0, scope: !3611)
!3618 = !DILocation(line: 283, column: 1, scope: !3619)
!3619 = distinct !DILexicalBlock(scope: !3611, file: !135, line: 283, column: 1)
!3620 = !DILocation(line: 283, column: 1, scope: !3611)
!3621 = distinct !DISubprogram(name: "loop_outer", scope: !146, file: !146, line: 434, type: !3622, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3626)
!3622 = !DISubroutineType(types: !3623)
!3623 = !{!1123, !3624}
!3624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3625, size: 64)
!3625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1124)
!3626 = !{!3627, !3628}
!3627 = !DILocalVariable(name: "loop", arg: 1, scope: !3621, file: !146, line: 434, type: !3624)
!3628 = !DILocalVariable(name: "n", scope: !3621, file: !146, line: 436, type: !7)
!3629 = !DILocation(line: 0, scope: !3621)
!3630 = !DILocation(line: 436, column: 16, scope: !3621)
!3631 = !DILocation(line: 438, column: 9, scope: !3632)
!3632 = distinct !DILexicalBlock(scope: !3621, file: !146, line: 438, column: 7)
!3633 = !DILocation(line: 438, column: 7, scope: !3621)
!3634 = !DILocation(line: 441, column: 10, scope: !3621)
!3635 = !DILocation(line: 441, column: 3, scope: !3621)
!3636 = !DILocation(line: 442, column: 1, scope: !3621)
!3637 = distinct !DISubprogram(name: "tidy_fallthru_edge", scope: !3, file: !3, line: 827, type: !1924, scopeLine: 828, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3638)
!3638 = !{!3639}
!3639 = !DILocalVariable(name: "e", arg: 1, scope: !3637, file: !3, line: 827, type: !456)
!3640 = !DILocation(line: 0, scope: !3637)
!3641 = !DILocation(line: 829, column: 7, scope: !3642)
!3642 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 829, column: 7)
!3643 = !DILocation(line: 829, column: 18, scope: !3642)
!3644 = !DILocation(line: 829, column: 7, scope: !3637)
!3645 = !DILocation(line: 830, column: 5, scope: !3642)
!3646 = !DILocation(line: 831, column: 1, scope: !3637)
!3647 = distinct !DISubprogram(name: "tidy_fallthru_edges", scope: !3, file: !3, line: 839, type: !2369, scopeLine: 840, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3648)
!3648 = !{!3649, !3650, !3651}
!3649 = !DILocalVariable(name: "b", scope: !3647, file: !3, line: 841, type: !439)
!3650 = !DILocalVariable(name: "c", scope: !3647, file: !3, line: 841, type: !439)
!3651 = !DILocalVariable(name: "s", scope: !3652, file: !3, line: 851, type: !456)
!3652 = distinct !DILexicalBlock(scope: !3653, file: !3, line: 850, column: 5)
!3653 = distinct !DILexicalBlock(scope: !3654, file: !3, line: 849, column: 3)
!3654 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 849, column: 3)
!3655 = !DILocation(line: 843, column: 8, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 843, column: 7)
!3657 = !DILocation(line: 843, column: 19, scope: !3656)
!3658 = !DILocation(line: 843, column: 7, scope: !3647)
!3659 = !DILocation(line: 846, column: 7, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3647, file: !3, line: 846, column: 7)
!3661 = !DILocation(line: 846, column: 24, scope: !3660)
!3662 = !DILocation(line: 846, column: 35, scope: !3660)
!3663 = !DILocation(line: 846, column: 32, scope: !3660)
!3664 = !DILocation(line: 846, column: 7, scope: !3647)
!3665 = !DILocation(line: 849, column: 3, scope: !3654)
!3666 = !DILocation(line: 849, column: 3, scope: !3653)
!3667 = !DILocation(line: 0, scope: !3654)
!3668 = !DILocation(line: 0, scope: !3647)
!3669 = !DILocation(line: 853, column: 14, scope: !3652)
!3670 = !DILocation(line: 867, column: 11, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3652, file: !3, line: 867, column: 11)
!3672 = !DILocation(line: 867, column: 11, scope: !3652)
!3673 = !DILocation(line: 869, column: 8, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3671, file: !3, line: 868, column: 2)
!3675 = !DILocation(line: 0, scope: !3652)
!3676 = !DILocation(line: 870, column: 14, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !3, line: 870, column: 8)
!3678 = !DILocation(line: 870, column: 20, scope: !3677)
!3679 = !DILocation(line: 871, column: 8, scope: !3677)
!3680 = !DILocation(line: 871, column: 14, scope: !3677)
!3681 = !DILocation(line: 871, column: 19, scope: !3677)
!3682 = !DILocation(line: 872, column: 8, scope: !3677)
!3683 = !DILocation(line: 872, column: 27, scope: !3677)
!3684 = !DILocation(line: 872, column: 12, scope: !3677)
!3685 = !DILocation(line: 870, column: 8, scope: !3674)
!3686 = !DILocation(line: 873, column: 6, scope: !3677)
!3687 = !DILocation(line: 0, scope: !3653)
!3688 = distinct !{!3688, !3665, !3689}
!3689 = !DILocation(line: 875, column: 5, scope: !3654)
!3690 = !DILocation(line: 876, column: 1, scope: !3647)
!3691 = distinct !DISubprogram(name: "single_succ_p", scope: !135, file: !135, line: 626, type: !1912, scopeLine: 627, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3692)
!3692 = !{!3693}
!3693 = !DILocalVariable(name: "bb", arg: 1, scope: !3691, file: !135, line: 626, type: !1907)
!3694 = !DILocation(line: 0, scope: !3691)
!3695 = !DILocation(line: 628, column: 10, scope: !3691)
!3696 = !DILocation(line: 628, column: 33, scope: !3691)
!3697 = !DILocation(line: 628, column: 3, scope: !3691)
!3698 = distinct !DISubprogram(name: "can_duplicate_block_p", scope: !3, file: !3, line: 881, type: !1912, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3699)
!3699 = !{!3700}
!3700 = !DILocalVariable(name: "bb", arg: 1, scope: !3698, file: !3, line: 881, type: !1907)
!3701 = !DILocation(line: 0, scope: !3698)
!3702 = !DILocation(line: 883, column: 8, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 883, column: 7)
!3704 = !DILocation(line: 883, column: 19, scope: !3703)
!3705 = !DILocation(line: 883, column: 7, scope: !3698)
!3706 = !DILocation(line: 885, column: 18, scope: !3703)
!3707 = !DILocation(line: 884, column: 5, scope: !3703)
!3708 = !DILocation(line: 887, column: 13, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 887, column: 7)
!3710 = !DILocation(line: 887, column: 10, scope: !3709)
!3711 = !DILocation(line: 887, column: 28, scope: !3709)
!3712 = !DILocation(line: 887, column: 37, scope: !3709)
!3713 = !DILocation(line: 887, column: 34, scope: !3709)
!3714 = !DILocation(line: 887, column: 7, scope: !3698)
!3715 = !DILocation(line: 890, column: 10, scope: !3698)
!3716 = !DILocation(line: 890, column: 21, scope: !3698)
!3717 = !DILocation(line: 890, column: 3, scope: !3698)
!3718 = !DILocation(line: 891, column: 1, scope: !3698)
!3719 = distinct !DISubprogram(name: "duplicate_block", scope: !3, file: !3, line: 898, type: !3720, scopeLine: 899, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3722)
!3720 = !DISubroutineType(types: !3721)
!3721 = !{!439, !439, !456, !439}
!3722 = !{!3723, !3724, !3725, !3726, !3727, !3728, !3729, !3730, !3731, !3734}
!3723 = !DILocalVariable(name: "bb", arg: 1, scope: !3719, file: !3, line: 898, type: !439)
!3724 = !DILocalVariable(name: "e", arg: 2, scope: !3719, file: !3, line: 898, type: !456)
!3725 = !DILocalVariable(name: "after", arg: 3, scope: !3719, file: !3, line: 898, type: !439)
!3726 = !DILocalVariable(name: "s", scope: !3719, file: !3, line: 900, type: !456)
!3727 = !DILocalVariable(name: "n", scope: !3719, file: !3, line: 900, type: !456)
!3728 = !DILocalVariable(name: "new_bb", scope: !3719, file: !3, line: 901, type: !439)
!3729 = !DILocalVariable(name: "new_count", scope: !3719, file: !3, line: 902, type: !1758)
!3730 = !DILocalVariable(name: "ei", scope: !3719, file: !3, line: 903, type: !2424)
!3731 = !DILocalVariable(name: "cloop", scope: !3732, file: !3, line: 968, type: !1123)
!3732 = distinct !DILexicalBlock(scope: !3733, file: !3, line: 967, column: 5)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 966, column: 7)
!3734 = !DILocalVariable(name: "copy", scope: !3732, file: !3, line: 969, type: !1123)
!3735 = !DILocation(line: 0, scope: !3719)
!3736 = !DILocation(line: 900, column: 3, scope: !3719)
!3737 = !DILocation(line: 902, column: 25, scope: !3719)
!3738 = !DILocation(line: 902, column: 32, scope: !3719)
!3739 = !DILocation(line: 903, column: 3, scope: !3719)
!3740 = !DILocation(line: 905, column: 8, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 905, column: 7)
!3742 = !DILocation(line: 905, column: 19, scope: !3741)
!3743 = !DILocation(line: 905, column: 7, scope: !3719)
!3744 = !DILocation(line: 907, column: 18, scope: !3741)
!3745 = !DILocation(line: 906, column: 5, scope: !3741)
!3746 = !DILocation(line: 909, column: 11, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 909, column: 7)
!3748 = !DILocation(line: 909, column: 17, scope: !3747)
!3749 = !DILocation(line: 909, column: 7, scope: !3719)
!3750 = !DILocation(line: 910, column: 5, scope: !3747)
!3751 = !DILocation(line: 916, column: 12, scope: !3719)
!3752 = !DILocation(line: 916, column: 23, scope: !3719)
!3753 = !DILocation(line: 917, column: 7, scope: !3754)
!3754 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 917, column: 7)
!3755 = !DILocation(line: 917, column: 7, scope: !3719)
!3756 = !DILocation(line: 918, column: 5, scope: !3754)
!3757 = !DILocation(line: 920, column: 28, scope: !3719)
!3758 = !DILocation(line: 920, column: 11, scope: !3719)
!3759 = !DILocation(line: 920, column: 22, scope: !3719)
!3760 = !DILocation(line: 921, column: 23, scope: !3719)
!3761 = !DILocation(line: 921, column: 11, scope: !3719)
!3762 = !DILocation(line: 921, column: 17, scope: !3719)
!3763 = !DILocation(line: 922, column: 3, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 922, column: 3)
!3765 = !DILocation(line: 0, scope: !3766)
!3766 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 922, column: 3)
!3767 = !DILocation(line: 0, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3769, file: !3, line: 930, column: 2)
!3769 = distinct !DILexicalBlock(scope: !3770, file: !3, line: 929, column: 11)
!3770 = distinct !DILexicalBlock(scope: !3766, file: !3, line: 923, column: 5)
!3771 = !DILocation(line: 922, column: 3, scope: !3766)
!3772 = !DILocation(line: 927, column: 40, scope: !3770)
!3773 = !DILocation(line: 927, column: 43, scope: !3770)
!3774 = !DILocation(line: 927, column: 52, scope: !3770)
!3775 = !DILocation(line: 927, column: 11, scope: !3770)
!3776 = !DILocation(line: 928, column: 24, scope: !3770)
!3777 = !DILocation(line: 928, column: 27, scope: !3770)
!3778 = !DILocation(line: 928, column: 10, scope: !3770)
!3779 = !DILocation(line: 928, column: 22, scope: !3770)
!3780 = !DILocation(line: 936, column: 16, scope: !3769)
!3781 = !DILocation(line: 936, column: 5, scope: !3769)
!3782 = !DILocation(line: 936, column: 11, scope: !3769)
!3783 = !DILocation(line: 937, column: 19, scope: !3770)
!3784 = !DILocation(line: 937, column: 10, scope: !3770)
!3785 = !DILocation(line: 937, column: 14, scope: !3770)
!3786 = distinct !{!3786, !3763, !3787}
!3787 = !DILocation(line: 938, column: 5, scope: !3764)
!3788 = !DILocation(line: 940, column: 7, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 940, column: 7)
!3790 = !DILocation(line: 929, column: 20, scope: !3769)
!3791 = !DILocation(line: 929, column: 16, scope: !3769)
!3792 = !DILocation(line: 929, column: 11, scope: !3770)
!3793 = !DILocation(line: 932, column: 18, scope: !3768)
!3794 = !DILocation(line: 932, column: 45, scope: !3768)
!3795 = !DILocation(line: 932, column: 24, scope: !3768)
!3796 = !DILocation(line: 932, column: 58, scope: !3768)
!3797 = !DILocation(line: 932, column: 7, scope: !3768)
!3798 = !DILocation(line: 932, column: 13, scope: !3768)
!3799 = !DILocation(line: 933, column: 13, scope: !3768)
!3800 = !DILocation(line: 934, column: 2, scope: !3768)
!3801 = !DILocation(line: 940, column: 7, scope: !3719)
!3802 = !DILocation(line: 942, column: 15, scope: !3803)
!3803 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 941, column: 5)
!3804 = !DILocation(line: 942, column: 21, scope: !3803)
!3805 = !DILocation(line: 943, column: 17, scope: !3803)
!3806 = !DILocation(line: 945, column: 27, scope: !3803)
!3807 = !DILocation(line: 945, column: 15, scope: !3803)
!3808 = !DILocation(line: 945, column: 25, scope: !3803)
!3809 = !DILocation(line: 946, column: 24, scope: !3803)
!3810 = !DILocation(line: 946, column: 11, scope: !3803)
!3811 = !DILocation(line: 946, column: 21, scope: !3803)
!3812 = !DILocation(line: 948, column: 7, scope: !3803)
!3813 = !DILocation(line: 950, column: 15, scope: !3814)
!3814 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 950, column: 11)
!3815 = !DILocation(line: 950, column: 21, scope: !3814)
!3816 = !DILocation(line: 950, column: 11, scope: !3803)
!3817 = !DILocation(line: 951, column: 12, scope: !3814)
!3818 = !DILocation(line: 951, column: 2, scope: !3814)
!3819 = !DILocation(line: 952, column: 15, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 952, column: 11)
!3821 = !DILocation(line: 952, column: 25, scope: !3820)
!3822 = !DILocation(line: 952, column: 11, scope: !3803)
!3823 = !DILocation(line: 953, column: 16, scope: !3820)
!3824 = !DILocation(line: 953, column: 2, scope: !3820)
!3825 = !DILocation(line: 957, column: 27, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 956, column: 5)
!3827 = !DILocation(line: 957, column: 15, scope: !3826)
!3828 = !DILocation(line: 957, column: 21, scope: !3826)
!3829 = !DILocation(line: 958, column: 31, scope: !3826)
!3830 = !DILocation(line: 958, column: 15, scope: !3826)
!3831 = !DILocation(line: 958, column: 25, scope: !3826)
!3832 = !DILocation(line: 961, column: 3, scope: !3719)
!3833 = !DILocation(line: 962, column: 3, scope: !3719)
!3834 = !DILocation(line: 966, column: 7, scope: !3733)
!3835 = !DILocation(line: 966, column: 21, scope: !3733)
!3836 = !DILocation(line: 966, column: 7, scope: !3719)
!3837 = !DILocation(line: 968, column: 32, scope: !3732)
!3838 = !DILocation(line: 0, scope: !3732)
!3839 = !DILocation(line: 969, column: 27, scope: !3732)
!3840 = !DILocation(line: 970, column: 31, scope: !3732)
!3841 = !DILocation(line: 970, column: 7, scope: !3732)
!3842 = !DILocation(line: 971, column: 5, scope: !3732)
!3843 = !DILocation(line: 974, column: 1, scope: !3719)
!3844 = !DILocation(line: 973, column: 3, scope: !3719)
!3845 = distinct !DISubprogram(name: "block_ends_with_call_p", scope: !3, file: !3, line: 980, type: !1929, scopeLine: 981, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3846)
!3846 = !{!3847}
!3847 = !DILocalVariable(name: "bb", arg: 1, scope: !3845, file: !3, line: 980, type: !439)
!3848 = !DILocation(line: 0, scope: !3845)
!3849 = !DILocation(line: 982, column: 8, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3845, file: !3, line: 982, column: 7)
!3851 = !DILocation(line: 982, column: 19, scope: !3850)
!3852 = !DILocation(line: 982, column: 7, scope: !3845)
!3853 = !DILocation(line: 983, column: 78, scope: !3850)
!3854 = !DILocation(line: 983, column: 5, scope: !3850)
!3855 = !DILocation(line: 985, column: 11, scope: !3845)
!3856 = !DILocation(line: 985, column: 22, scope: !3845)
!3857 = !DILocation(line: 985, column: 10, scope: !3845)
!3858 = !DILocation(line: 985, column: 3, scope: !3845)
!3859 = distinct !DISubprogram(name: "block_ends_with_condjump_p", scope: !3, file: !3, line: 991, type: !1912, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3860)
!3860 = !{!3861}
!3861 = !DILocalVariable(name: "bb", arg: 1, scope: !3859, file: !3, line: 991, type: !1907)
!3862 = !DILocation(line: 0, scope: !3859)
!3863 = !DILocation(line: 993, column: 8, scope: !3864)
!3864 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 993, column: 7)
!3865 = !DILocation(line: 993, column: 19, scope: !3864)
!3866 = !DILocation(line: 993, column: 7, scope: !3859)
!3867 = !DILocation(line: 995, column: 18, scope: !3864)
!3868 = !DILocation(line: 994, column: 5, scope: !3864)
!3869 = !DILocation(line: 997, column: 11, scope: !3859)
!3870 = !DILocation(line: 997, column: 22, scope: !3859)
!3871 = !DILocation(line: 997, column: 10, scope: !3859)
!3872 = !DILocation(line: 997, column: 3, scope: !3859)
!3873 = distinct !DISubprogram(name: "flow_call_edges_add", scope: !3, file: !3, line: 1009, type: !1934, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3874)
!3874 = !{!3875}
!3875 = !DILocalVariable(name: "blocks", arg: 1, scope: !3873, file: !3, line: 1009, type: !1936)
!3876 = !DILocation(line: 0, scope: !3873)
!3877 = !DILocation(line: 1011, column: 8, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 1011, column: 7)
!3879 = !DILocation(line: 1011, column: 19, scope: !3878)
!3880 = !DILocation(line: 1011, column: 7, scope: !3873)
!3881 = !DILocation(line: 1013, column: 18, scope: !3878)
!3882 = !DILocation(line: 1012, column: 5, scope: !3878)
!3883 = !DILocation(line: 1015, column: 11, scope: !3873)
!3884 = !DILocation(line: 1015, column: 22, scope: !3873)
!3885 = !DILocation(line: 1015, column: 10, scope: !3873)
!3886 = !DILocation(line: 1015, column: 3, scope: !3873)
!3887 = distinct !DISubprogram(name: "execute_on_growing_pred", scope: !3, file: !3, line: 1022, type: !1924, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3888)
!3888 = !{!3889}
!3889 = !DILocalVariable(name: "e", arg: 1, scope: !3887, file: !3, line: 1022, type: !456)
!3890 = !DILocation(line: 0, scope: !3887)
!3891 = !DILocation(line: 1024, column: 7, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3887, file: !3, line: 1024, column: 7)
!3893 = !DILocation(line: 1024, column: 18, scope: !3892)
!3894 = !DILocation(line: 1024, column: 7, scope: !3887)
!3895 = !DILocation(line: 1025, column: 5, scope: !3892)
!3896 = !DILocation(line: 1026, column: 1, scope: !3887)
!3897 = distinct !DISubprogram(name: "execute_on_shrinking_pred", scope: !3, file: !3, line: 1032, type: !1924, scopeLine: 1033, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3898)
!3898 = !{!3899}
!3899 = !DILocalVariable(name: "e", arg: 1, scope: !3897, file: !3, line: 1032, type: !456)
!3900 = !DILocation(line: 0, scope: !3897)
!3901 = !DILocation(line: 1034, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3897, file: !3, line: 1034, column: 7)
!3903 = !DILocation(line: 1034, column: 18, scope: !3902)
!3904 = !DILocation(line: 1034, column: 7, scope: !3897)
!3905 = !DILocation(line: 1035, column: 5, scope: !3902)
!3906 = !DILocation(line: 1036, column: 1, scope: !3897)
!3907 = distinct !DISubprogram(name: "lv_flush_pending_stmts", scope: !3, file: !3, line: 1042, type: !1924, scopeLine: 1043, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3908 = !{!3909}
!3909 = !DILocalVariable(name: "e", arg: 1, scope: !3907, file: !3, line: 1042, type: !456)
!3910 = !DILocation(line: 0, scope: !3907)
!3911 = !DILocation(line: 1044, column: 7, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1044, column: 7)
!3913 = !DILocation(line: 1044, column: 18, scope: !3912)
!3914 = !DILocation(line: 1044, column: 7, scope: !3907)
!3915 = !DILocation(line: 1045, column: 5, scope: !3912)
!3916 = !DILocation(line: 1046, column: 1, scope: !3907)
!3917 = distinct !DISubprogram(name: "cfg_hook_duplicate_loop_to_header_edge", scope: !3, file: !3, line: 1056, type: !1950, scopeLine: 1061, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3918)
!3918 = !{!3919, !3920, !3921, !3922, !3923, !3924, !3925}
!3919 = !DILocalVariable(name: "loop", arg: 1, scope: !3917, file: !3, line: 1056, type: !1123)
!3920 = !DILocalVariable(name: "e", arg: 2, scope: !3917, file: !3, line: 1056, type: !456)
!3921 = !DILocalVariable(name: "ndupl", arg: 3, scope: !3917, file: !3, line: 1057, type: !7)
!3922 = !DILocalVariable(name: "wont_exit", arg: 4, scope: !3917, file: !3, line: 1058, type: !1936)
!3923 = !DILocalVariable(name: "orig", arg: 5, scope: !3917, file: !3, line: 1058, type: !456)
!3924 = !DILocalVariable(name: "to_remove", arg: 6, scope: !3917, file: !3, line: 1059, type: !1952)
!3925 = !DILocalVariable(name: "flags", arg: 7, scope: !3917, file: !3, line: 1060, type: !431)
!3926 = !DILocation(line: 0, scope: !3917)
!3927 = !DILocation(line: 1062, column: 3, scope: !3917)
!3928 = !DILocation(line: 1063, column: 10, scope: !3917)
!3929 = !DILocation(line: 1063, column: 21, scope: !3917)
!3930 = !DILocation(line: 1063, column: 3, scope: !3917)
!3931 = distinct !DISubprogram(name: "extract_cond_bb_edges", scope: !3, file: !3, line: 1074, type: !1968, scopeLine: 1075, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3932)
!3932 = !{!3933, !3934, !3935}
!3933 = !DILocalVariable(name: "b", arg: 1, scope: !3931, file: !3, line: 1074, type: !439)
!3934 = !DILocalVariable(name: "e1", arg: 2, scope: !3931, file: !3, line: 1074, type: !1970)
!3935 = !DILocalVariable(name: "e2", arg: 3, scope: !3931, file: !3, line: 1074, type: !1970)
!3936 = !DILocation(line: 0, scope: !3931)
!3937 = !DILocation(line: 1076, column: 3, scope: !3931)
!3938 = !DILocation(line: 1077, column: 3, scope: !3931)
!3939 = !DILocation(line: 1077, column: 14, scope: !3931)
!3940 = !DILocation(line: 1078, column: 1, scope: !3931)
!3941 = distinct !DISubprogram(name: "lv_adjust_loop_header_phi", scope: !3, file: !3, line: 1083, type: !1964, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3942)
!3942 = !{!3943, !3944, !3945, !3946}
!3943 = !DILocalVariable(name: "first", arg: 1, scope: !3941, file: !3, line: 1083, type: !439)
!3944 = !DILocalVariable(name: "second", arg: 2, scope: !3941, file: !3, line: 1083, type: !439)
!3945 = !DILocalVariable(name: "new_block", arg: 3, scope: !3941, file: !3, line: 1084, type: !439)
!3946 = !DILocalVariable(name: "e", arg: 4, scope: !3941, file: !3, line: 1084, type: !456)
!3947 = !DILocation(line: 0, scope: !3941)
!3948 = !DILocation(line: 1086, column: 7, scope: !3949)
!3949 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 1086, column: 7)
!3950 = !DILocation(line: 1086, column: 18, scope: !3949)
!3951 = !DILocation(line: 1086, column: 7, scope: !3941)
!3952 = !DILocation(line: 1087, column: 5, scope: !3949)
!3953 = !DILocation(line: 1088, column: 1, scope: !3941)
!3954 = distinct !DISubprogram(name: "lv_add_condition_to_bb", scope: !3, file: !3, line: 1094, type: !1960, scopeLine: 1096, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3955)
!3955 = !{!3956, !3957, !3958, !3959}
!3956 = !DILocalVariable(name: "first", arg: 1, scope: !3954, file: !3, line: 1094, type: !439)
!3957 = !DILocalVariable(name: "second", arg: 2, scope: !3954, file: !3, line: 1094, type: !439)
!3958 = !DILocalVariable(name: "new_block", arg: 3, scope: !3954, file: !3, line: 1095, type: !439)
!3959 = !DILocalVariable(name: "cond", arg: 4, scope: !3954, file: !3, line: 1095, type: !435)
!3960 = !DILocation(line: 0, scope: !3954)
!3961 = !DILocation(line: 1097, column: 3, scope: !3954)
!3962 = !DILocation(line: 1098, column: 3, scope: !3954)
!3963 = !DILocation(line: 1098, column: 14, scope: !3954)
!3964 = !DILocation(line: 1099, column: 1, scope: !3954)
!3965 = distinct !DISubprogram(name: "ei_end_p", scope: !135, file: !135, line: 721, type: !3966, scopeLine: 722, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3968)
!3966 = !DISubroutineType(types: !3967)
!3967 = !{!430, !2424}
!3968 = !{!3969}
!3969 = !DILocalVariable(name: "i", arg: 1, scope: !3965, file: !135, line: 721, type: !2424)
!3970 = !DILocation(line: 723, column: 22, scope: !3965)
!3971 = !DILocation(line: 723, column: 19, scope: !3965)
!3972 = !DILocation(line: 723, column: 10, scope: !3965)
!3973 = !DILocation(line: 723, column: 3, scope: !3965)
!3974 = distinct !DISubprogram(name: "ei_edge", scope: !135, file: !135, line: 752, type: !3586, scopeLine: 753, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "i", arg: 1, scope: !3974, file: !135, line: 752, type: !2424)
!3977 = !DILocation(line: 754, column: 10, scope: !3974)
!3978 = !DILocation(line: 754, column: 3, scope: !3974)
!3979 = distinct !DISubprogram(name: "ei_container", scope: !135, file: !135, line: 685, type: !3980, scopeLine: 686, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{!444, !2424}
!3982 = !{!3983}
!3983 = !DILocalVariable(name: "i", arg: 1, scope: !3979, file: !135, line: 685, type: !2424)
!3984 = !DILocation(line: 687, column: 3, scope: !3979)
!3985 = !DILocation(line: 688, column: 10, scope: !3979)
!3986 = !DILocation(line: 688, column: 3, scope: !3979)
!3987 = distinct !DISubprogram(name: "single_pred_p", scope: !135, file: !135, line: 634, type: !1912, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3988)
!3988 = !{!3989}
!3989 = !DILocalVariable(name: "bb", arg: 1, scope: !3987, file: !135, line: 634, type: !1907)
!3990 = !DILocation(line: 0, scope: !3987)
!3991 = !DILocation(line: 636, column: 10, scope: !3987)
!3992 = !DILocation(line: 636, column: 33, scope: !3987)
!3993 = !DILocation(line: 636, column: 3, scope: !3987)
!3994 = distinct !DISubprogram(name: "VEC_loop_p_base_length", scope: !146, file: !146, line: 85, type: !3995, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3999)
!3995 = !DISubroutineType(types: !3996)
!3996 = !{!7, !3997}
!3997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3998, size: 64)
!3998 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1115)
!3999 = !{!4000}
!4000 = !DILocalVariable(name: "vec_", arg: 1, scope: !3994, file: !146, line: 85, type: !3997)
!4001 = !DILocation(line: 0, scope: !3994)
!4002 = !DILocation(line: 85, column: 1, scope: !3994)
!4003 = distinct !DISubprogram(name: "VEC_loop_p_base_index", scope: !146, file: !146, line: 85, type: !4004, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4006)
!4004 = !DISubroutineType(types: !4005)
!4005 = !{!1122, !3997, !7}
!4006 = !{!4007, !4008}
!4007 = !DILocalVariable(name: "vec_", arg: 1, scope: !4003, file: !146, line: 85, type: !3997)
!4008 = !DILocalVariable(name: "ix_", arg: 2, scope: !4003, file: !146, line: 85, type: !7)
!4009 = !DILocation(line: 0, scope: !4003)
!4010 = !DILocation(line: 85, column: 1, scope: !4003)
